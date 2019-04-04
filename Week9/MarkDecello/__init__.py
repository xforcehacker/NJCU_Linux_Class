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
        return 'Hello, World!!'

anime = []

class Anime(Resource):
    def get(self, name):
        for a in anime:
            if a['name'] == name:
                return a, 200
        return {"anime": None}, 404

    def post(self, name):
        new_anime = {'name': name}
        anime.append(new_anime)
        return new_anime, 201

api.add_resource( Anime, '/anime/<string:name>')

if __name__== "__main__":
    app.run()
