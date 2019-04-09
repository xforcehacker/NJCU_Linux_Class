from flask import Flask
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


students = []

class Student(Resource):
    def get(self, name):
        for s in students:
            if s['name'] == name:
                return s, 200
        return {"student": None}, 404

    def post(self, name):
        new_student = {'name': name }
        students.append( new_student )
        return new_student, 201

api.add_resource( Student, '/student/<string:name>')


professor = {'name': None, 'age': None}

class Professor(Resource):
    def get(self):
        return professor, 200

    def put(self):
        data = request.get_json()
        professor['name']  = data['name']
        professor['age'] = data['age']
        return professor, 201

api.add_resource( Professor, '/professor')


if __name__== "__main__":
    app.run()
