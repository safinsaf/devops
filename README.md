# Moscow watch

Moscow watch is a Moscow time knowledge application written in Python

It takes **utc time**, converts it to **Moscow time** and shows in browser


## Installation

1. Clone this git repository.
2. Install Python3 and modules from ```app_python\requirements.txt```

## Usage
1. Run the following command

```bash
python app_python\main.py
```

2. Open [link](http://127.0.0.1:8080/)

## Docker

1. You can launch the app by running

```bash
docker run --publish 8080:8080 safinsaf/devops_app_python
```

2. Then check the  [link](http://127.0.0.1:8080/)