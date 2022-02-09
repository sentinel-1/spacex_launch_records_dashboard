#!/bin/bash

VENV_NAME=env_spacex_launch_records_dashboard

if [ ! -d "${VENV_NAME}" ];then
	python3 -m venv "${VENV_NAME}"
	"${VENV_NAME}/bin/pip" install -U pip
	"${VENV_NAME}/bin/pip" install -U wheel setuptools
	"${VENV_NAME}/bin/pip" install -r requirements.txt
fi

echo "Starting dash aplication with PID=$$"
exec "${VENV_NAME}/bin/python" spacex_dash_app.py

