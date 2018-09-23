FROM debian
MAINTAINER Mark van der Net <info@oscity.nl>
RUN apt-get -y update
RUN apt-get -y install python python-dev python-pip libev-dev gcc nano

ADD requirements.txt .
RUN pip install -r requirements.txt

CMD ["python","/app/bjoern.wsgi"]
