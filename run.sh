#!/bin/bash

python3.10 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
cd src
python3 manage.py migrate
python3 manage.py runserver
