# Best practices
## 1. Small initial image for fast built
I have used a **python:3.8-slim-buster**.

It has fewer packages than the usual **python:3**

## 2. pip install --no-cache-dir
It decreases the size of docker image comparing to **pip install**

## 3. Requirements.txt
* **Shortness**: Dockerfile becomes smaller with **requirements.txt**
* **Stability**: You change only **requirements.txt** and Dockerfile stays the same
* **Prevalence**: Other developers widely know this practice, so **requirements.txt** saves their time  

## 4. Hadolint
This is linter for Dockerfiles. It shows errors in you dockerfile and gives suggestions

## 5. Minimize the number of layers
Instructions RUN, COPY, ADD create layers, when possible merge them to multi-stage builds.

My application is pretty simple, so I do not demonstrate this practice explicitly.

## 6. Use build cashes
Time of developing matters, so build **docker images** so that first layers change less that last layers.

When rebuilding the image, docker will reuse layers that did not change.

For example installing requirements before copying all other files demonstrates this practice.

## 7. Avoid unnecessary privileges
The application only has access to the resources and information necessary to perform its purpose.

## How to run
Clone this git repository.
cd to app_python directory
Run the following commands

```bash
docker build -t app_python .
docker run -p 8080:8080 app_python
```