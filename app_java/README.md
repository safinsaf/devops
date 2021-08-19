# Moscow watch

Moscow watch is a Moscow time knowledge application written in Python

It takes **utc time**, converts it to **Moscow time** and shows in browser


## Installation

1. Clone this git repository.
2. Install java:16 

## Usage
1. cd to **app_java/** directory and run the following commands

```bash
./mvnw install
java -jar ./target/demo2-0.0.1-SNAPSHOT.jar 
# jar file is created in target directory by previous command and can have different name
```

2. Open [link](http://127.0.0.1:8081/)

## Docker

1. You can launch the app by running

```bash
docker run --publish 8081:8081 safinsaf/devops_app_java
```

2. Then check the  [link](http://127.0.0.1:8081/)