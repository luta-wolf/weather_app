#!/bin/bash

python3.10 -m venv venv
source venv/bin/activate
export appid='30814faf0bf2eaa9e852c19ea73a6522'
export  SECRET_KEY='django-insecure-ulhabxzak&@@v=s8yhw$&ad01gw)5%cjty4-7f%%sa-a!mm&nj'
pip install --upgrade pip
pip install -r requirements.txt
python3 src/manage.py migrate
python src/manage.py createsuperuser
python3 src/manage.py runserver
