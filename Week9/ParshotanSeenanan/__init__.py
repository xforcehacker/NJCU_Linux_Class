from flask import Flask, request
from flask_restful import Resource, Api


app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def index():
	if request.method == 'POST':
	#	return "You POSTed"
		input1 = request.form['X']
		input2 = request.form['Y']
		return 'You POSTed: ' + input1 + " and " + input2 + "\n"
	else:
   		return "Hello, world! \n"

movies = ["Godfather", "Godfather II", "Godfather III", "Us", "Citizen Kane", "Avengers"]

@app.route("/movieList", methods=['GET', 'POST'])
def movieList():
	if request.method == 'POST':
		inputOne = request.form['findMovie']
		for movie in movies:
			if movie == inputOne:
				return 'Your movie is in the list! \n'
			else:
				return 'Nah that movies trash, not on the list \n'
	else:
		outputMovie = ""
		for movie in movies:
			outputMovie += movie + " "
		return 'The greatest movies are ' + outputMovie + '\n'


if __name__== "__main__":
    app.run()
