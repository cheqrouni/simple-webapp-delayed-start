FROM python:alpine

ARG http_proxy=http://localhost:3128
ARG https_proxy=http://localhost:3128
ARG HTTP_PROXY=http://localhost:3128
ARG HTTPS_PROXY=http://localhost:3128

ADD ./requirements.txt /opt/webapp/

WORKDIR /opt/webapp

RUN pip install -r requirements.txt

ADD . /opt/webapp

EXPOSE 8080

CMD python /opt/webapp/app.py
