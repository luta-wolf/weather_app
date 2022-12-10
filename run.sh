#!/bin/bash

python3.10 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
python3 src/manage.py migrate
python3 src/manage.py runserver
