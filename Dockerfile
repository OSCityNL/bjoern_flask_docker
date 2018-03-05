FROM debian
MAINTAINER Mark van der Net <info@oscity.nl>
RUN apt-get -y update
RUN apt-get -y install python python-dev python-pip libev-dev gcc nano
RUN pip install flask flask-restplus flask-restful flask-login bjoern

CMD ["python","/app/bjoern.wsgi"]
