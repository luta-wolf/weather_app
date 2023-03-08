FROM python:alpine3.17

WORKDIR /app

COPY src .

COPY requirements.txt .

RUN pip install --upgrade pip -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000
