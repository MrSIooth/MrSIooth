FROM python:3.10-alpine

RUN apk add --no-cache bash
SHELL ["/bin/bash", "-c"]

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
CMD ["python", "-m", "app"]
