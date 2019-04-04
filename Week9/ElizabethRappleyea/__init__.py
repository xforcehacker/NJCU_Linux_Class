from flask import Flask
from flask_restful import Resource, Api, reqparse



app = Flask(__name__)
api = Api(app)

favArtists = []

parser = reqparse.RequestParser()
parser.add_argument('name')

class Artist(Resource):
    def get(self, name):
        for a in favArtists:
            if a['name'] == name:
                return a, 200
        return {"artist": None}, 404

    def post(self, name):
        oldName = {'name': name}
        args = parser.parse_args()
        i = favArtists.index(oldName)
        favArtists[i] = {'name': args['name']}
        return "name changed", 200
    
api.add_resource( Artist, '/artist/<string:name>')

#gets a list of Artists
class Artist_List(Resource):
    def get(self):
        return favArtists

    def post(self):
        args = parser.parse_args()
        new_artist = {'name': args['name']}
        favArtists.append( new_artist )
        return new_artist, 201

api.add_resource( Artist_List, '/artist')


#@app.route("/")
#def index():
#    return "Hello World!"


if __name__== "__main__":
    app.run()
