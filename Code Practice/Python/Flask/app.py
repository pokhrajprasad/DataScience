from flask import Flask

app=Flask(__name__)

@app.route("/")
def welcome():
    return "Welcome to this BEST Flask App. This should be an amazing App."

@app.route("/index")
def index():
    return "Welcome to this index page."

if __name__=="__main__":
    app.run(debug=True)