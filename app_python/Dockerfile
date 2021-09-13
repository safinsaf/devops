# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
LABEL maintainer="i.safin@innopolis.university"

RUN apt update && apt upgrade && apt install -y curl

WORKDIR /app
RUN adduser --disabled-password myuser && \
    chown -R myuser /app
USER myuser

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py api.py /app/
EXPOSE 8080
CMD [ "python", "main.py"]
HEALTHCHECK --interval=5s --retries=3\
    CMD curl -f http://localhost:8080 || exit 1