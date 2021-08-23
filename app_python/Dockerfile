# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
LABEL maintainer="i.safin@innopolis.university"

WORKDIR /app
RUN adduser --disabled-password myuser && \
    chown -R myuser /app
USER myuser

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py api.py /app/
EXPOSE 8080
CMD [ "python", "main.py"]