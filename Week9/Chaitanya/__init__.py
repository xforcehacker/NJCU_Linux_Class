from flask import Flask, request
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)
@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        input1 = request.form['inputOne']
        input2 = request.form['inputTwo']
        return 'You POSTed:' + input1 + " and " + input2 + "\n"
    else:
        return 'Hello,World!'
Animals = []
class Animal(Resource):
    def get(self, name):
        for s in Animals:
            if s['name'] == name:
                return s, 200
        return {"Animal Name ": None}, 404

    def post(self, name):
        new_Animal = {'name': name }
        Animal.append( new_Animal )
        return new_Animal, 201
api.add_resource( Animal, '/animal/<string:name>')
StudentSearch = {'name': None, 'age': None}
class Student_Search(Resource):
    def get(self):
        return StudentSearch, 200
    def put(self):
        data = request.get_json()
        student_search['name']  = data['name']
        student_search['age'] = data['age']
        return student_search, 201

api.add_resource( Student_Search, '/StudentSearch')

TeacherInfo = {'name': None, 'ssn': None}
class Teacherinfo(Resource):
    def get(self):
        return TeacherInfo, 200
    def put(self):
        dataInfo = request.get_json()
        teacher_search['name'] = dataInfo['name']
        teacher_search['name'] = dataInfo['ssn']
        return teacher_search['age'], 201
api.add_resource( Teacherinfo , '/teachersearch')


app.run()
