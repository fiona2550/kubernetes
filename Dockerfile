FROM python:stretch


#Work Directory
COPY . /examples
WORKDIR /examples

# install dependencies
RUN pip install --upgrade pip
RUN pip install pytest==4.0.2
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
