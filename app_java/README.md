# Moscow watch

Moscow watch is a Moscow time knowledge application written in Python

It takes **utc time**, converts it to **Moscow time** and shows in browser


## Installation

1. Clone this git repository.
2. Install java:16 

## Usage
1. cd to **app_java/** directory and run the following commands

```bash
mvnw spring-boot:run
```

2. Open [link](http://127.0.0.1:8081/)

## Docker

1. You can launch the app by running

```bash
docker build -t app_java .
docker run -p 8081:8081 app_java
```

2. Then check the  [link](http://127.0.0.1:8081/)