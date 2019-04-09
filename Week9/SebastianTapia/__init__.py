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
        return 'Hello,Worldz!'

studentz = []
class Studentz(Resource):
    def get(self, name):
        for s in studentz:
            if s['name'] == name:
                return s, 200
        return {"studentz": None}, 404
    
    def post(self, name):
        new_studentz = {'name' name }
        studentz.append( new_studentz )
        return new_studentz, 201

api.add_resource( Studentz, '/studentz/<string:name>')

if __name__== "__main__":
    app.run()
