from flask import Flask
import json

app = Flask(__name__)

@app.route('/')
def hello_world():
  return '<h1>Hello, World!</h1>'

@app.route('/users')
def get_users():
  with open('users.json') as f:
    data = json.load(f)
    return data

if __name__ == "__main__":
  app.run(debug=True)
