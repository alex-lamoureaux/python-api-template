# python-api-template

Basic python api project using flask

Disclaimer: this project is only intended as a basic sample application. In a production environment, it is not recommended to directly load a Flask application in this way. For more information, see [this page](https://flask.palletsprojects.com/en/2.3.x/tutorial/deploy/) in Flask's official documentation.

# How to run

## Local

Running this application requires you to have python/pip set up locally.

Step 1: Install dependencies
`pip3 install -r requirements.txt`

Step 2: Run the app
python3 -m flask --app main run --host=0.0.0.0


## Docker

Running over docker requires you to have docker installed and the docker engine running

Step 1: Build the image
`docker build -t python-api-template .`

Step 2: Run the image
`docker run --name python-api-template --rm -p 5000:5000 python-api-template`

# Validate

When the app is running, it should be accessible over the local network. You can either open the address `localhost:5000/` in your browser, or enter the following command in a terminal:

`curl http://localhost:5000/`
