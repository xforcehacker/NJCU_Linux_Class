#!/usr/bin/python3

from flask import Flask
from flask_restful import reqparse, abort, Api, Resource
import sqlite3
import os.path

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
db_path = "/var/www/flaskapps/api/test.db"
#print(db_path)

app = Flask(__name__)
api = Api(app)

conn = sqlite3.connect(db_path)
c = conn.cursor()
c.execute("SELECT MAX(taskID) FROM tasks")
rowID = c.fetchone()[0]
conn.commit()
conn.close()

parser = reqparse.RequestParser()
parser.add_argument('task')

def validateID(tgtID):
    if (tgtID > rowID):
        abort(404, message="Invalid ID number")

# Todo
# shows a single todo item and lets you delete a todo item
class Todo(Resource):
    def get(self, todo_id):
        tgtID = int(todo_id)
        validateID(tgtID)
        result = selectByID(tgtID)
        if (result is None):
            abort(404, message="Invalid ID number")
        return result
            
    def delete(self, todo_id):
        tgtID = int(todo_id)
        validateID(tgtID)
        deleteByID(tgtID)
        return '', 204

    def post(self, todo_id):
        tgtID = (int(todo_id))
        validateID(tgtID)
        args = parser.parse_args()
        task = args['task']
        updateByID(tgtID, task)
        return task, 201


# TodoList
# shows a list of all todos, and lets you POST to add new tasks
class TodoList(Resource):
    def get(self):
        return selectAll()

    def post(self):
        args = parser.parse_args()
        tgtID = insertDB(args['task'])
        return selectByID(tgtID), 201

# db handlers
def insertDB(task):
    with sqlite3.connect(db_path) as conn:
        global rowID
        rowID += 1
        c = conn.cursor()
        c.execute("INSERT INTO tasks VALUES (?,?)", (rowID, task,))
        conn.commit()
        return c.lastrowid

def selectByID(tgtID):
    with sqlite3.connect(db_path) as conn:
        c = conn.cursor()
        c.execute("SELECT * FROM tasks WHERE taskID=?", (tgtID,))
        conn.commit()
        data = c.fetchone()
        return parseSingleJSON(data)

def selectAll():
    with sqlite3.connect(db_path) as conn :
        c = conn.cursor()
        c.execute("SELECT * FROM tasks")
        conn.commit()
        data = c.fetchall()
        return parseMultJSON(data)

def deleteByID(tgtID):
    with sqlite3.connect(db_path) as conn :
        c = conn.cursor()
        c.execute("DELETE FROM tasks WHERE taskID=?", (tgtID,))
        conn.commit()

def updateByID(tgtID, task):
    with sqlite3.connect(db_path) as conn:
        c = conn.cursor()
        c.execute("SELECT * FROM tasks WHERE taskID=?", (tgtID,))
        data = c.fetchone()
        if (data is None):
            c.execute("INSERT INTO tasks VALUES(?, ?)",(tgtID, task))
        else:
            c.execute("UPDATE tasks SET task=? WHERE taskID=?", (task, tgtID))
        conn.commit()
        


# json parsing
def parseSingleJSON(data):
    if (data is None):
        return None
    result = {
            'task' : data[1],
            'taskID' : data[0]
            }    
    return result

def parseMultJSON(data):
    if (data is None):
        return None
    results = []
    for row in data:
        results.append(parseSingleJSON(row))
    return results

##
## Actually setup the Api resource routing here
##
api.add_resource(TodoList, '/todos')
api.add_resource(Todo, '/todos/<todo_id>')


if __name__ == '__main__': 
    app.run()
