FROM python:3.6-alpine3.6
RUN apk --update add git openssh curl && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ENV WORK_ENV=DEV
ADD requirements.txt .
RUN pip install -r requirements.txt

COPY api /workshop-app/api
WORKDIR /workshop-app
ADD run.py .

EXPOSE 5000

CMD ["python3.6", "run.py"]