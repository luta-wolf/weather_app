FROM python:3.11.2-alpine3.17

WORKDIR /app

COPY src .

COPY requirements.txt .

RUN pip3 install --upgrade pip -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000
