from flask import Flask, request
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        input1 = request.form['inputOne']
        input2 = request.form['inputTwo']
    else:
         return 'Hello,World'

students = []

class Student(Resource):
    def get(self, name):
        for s in students:
            if s['name'] == name:
                return s, 200
        return {"student": None}, 404

    def post(self, name):
         new_student = {'name': name }
         students.append(new_student)
         return new_student, 201

api.add_resource( Student, '/student/<string:name>')

if __name__== "__main__":
    app.run()
