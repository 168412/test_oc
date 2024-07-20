FROM python:3.8-slim-buster

RUN pip install flask

WORKDIR /myapp

COPY app.py /myapp

ENTRYPOINT FLASK_APP=/myapp/app.py flask run --host=0.0.0.0
