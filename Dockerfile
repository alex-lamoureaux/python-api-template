# syntax=docker/dockerfile:1

FROM docker.io/python:3.8

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]
