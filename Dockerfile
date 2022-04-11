from alpine:3.15.4

run apk add python3
run python3 -m ensurepip

# Django itself
run python3 -m pip install Django tzdata

# Gunicorn to serve things
run python3 -m pip install gunicorn

# Copy in application
copy . /buildarea

workdir /buildarea

run python3 manage.py collectstatic

expose 8000

cmd gunicorn