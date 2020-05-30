#!/usr/bin/env python
FROM python:stretch

# Work Directory

COPY . /examples
WORKDIR /examples

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /examples/requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", "8080", "main:APP"]
