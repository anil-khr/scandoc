FROM python:3.10
COPY . /main
WORKDIR /main
RUN pip install -r requirements_app.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app