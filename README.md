# Django_stuff
playing with django in docker

# admin
Username: admin
Passowrd: 123

# running
```
$ podman build --tag django_stuff .
$ podman run --rm -i -t --name django-stuff -p "127.0.0.1:8000:8000" django-stuff:latest
```

Then you can visit [http://localhost:8000](http://localhost:8000)

# developing
```
$ podman build --tag django_stuff .
$ podman run --rm -i -t -v .:/workarea --name django-stuff -p "127.0.0.1:8000:8000" --workdir=/workarea 
django-stuff:latest /bin/busybox sh
```
then when inside container:
```
/workarea # gunicorn
```

Then you can visit [http://localhost:8000](http://localhost:8000)