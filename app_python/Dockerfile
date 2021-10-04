# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
LABEL maintainer="i.safin@innopolis.university"

RUN apt update && apt -y upgrade && apt dist-upgrade && apt install --yes --no-install-recommends curl

WORKDIR /python_app
RUN adduser --disabled-password myuser && \
    chown -R myuser /python_app
USER myuser

COPY ./requirements.txt /python_app/requirements.txt
RUN pip install --no-cache-dir -r /python_app/requirements.txt

COPY ./app /python_app/app
EXPOSE 8080
CMD ["python", "-m", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
HEALTHCHECK --interval=5s --retries=3\
    CMD curl -f http://localhost:8080 || exit 1