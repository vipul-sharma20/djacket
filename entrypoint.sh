#!/bin/bash

DJACKETPATH=core/backend

python3 $DJACKETPATH/manage.py makemigrations

python3 $DJACKETPATH/manage.py migrate contenttypes
python3 $DJACKETPATH/manage.py migrate auth
python3 $DJACKETPATH/manage.py migrate sessions
python3 $DJACKETPATH/manage.py migrate admin
python3 $DJACKETPATH/manage.py showmigrations

python3 $DJACKETPATH/manage.py runserver 0.0.0.0:8000
