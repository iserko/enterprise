FROM python:2.7.8

MAINTAINER Steve Peak <steve@codecov.io>

RUN useradd --create-home --shell /bin/bash --system codecov

USER codecov

WORKDIR /opt/codecov

ADD . /opt/codecov

CMD [ "/opt/codecov/codecov" ]
