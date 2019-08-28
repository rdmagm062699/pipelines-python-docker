FROM python:3.5.7-slim-buster

# Create app directory
WORKDIR /usr/src/app

COPY requirements.txt ./
COPY src/* ./src/
COPY test/* ./test/

RUN python -m venv venv
RUN . venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pytest --junitxml=test-results.xml
