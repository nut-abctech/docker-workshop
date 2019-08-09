FROM ubuntu:16.04
LABEL name=""

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential git
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "run.py"]
