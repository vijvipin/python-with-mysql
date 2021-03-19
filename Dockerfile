FROM python:alpine

ADD ./requirements.txt /opt/webapp-mysql/

WORKDIR /opt/webapp-mysql

RUN pip install -r requirements.txt

ADD . /opt/webapp-mysql

EXPOSE 5000

CMD python /opt/webapp-mysql/app.py
