# Automl Webapp with Pycaret

## Run with Docker
1. Install Docker Desktop
2. Open terminal and run to pull docker image from docker hub
```
$ docker pull hazirafidi/myautoml-webapp:autmoltag
```
3. After successfully pull the image, run the following command

```
$ docker run -p 8501:8501 hazirafidi/myautoml-webapp:autmoltag
```
To view your app, users can browse to http://0.0.0.0:8501 or http://localhost:8501
