# Moscow watch

[![CI to Docker Hub](https://github.com/safinsaf/devops/actions/workflows/CI_to_Docker_Hub.yml/badge.svg)](
    https://github.com/safinsaf/devops/actions/workflows/CI_to_Docker_Hub.yml)

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
docker build -t app_python .
docker run -p 8080:8080 app_python
```

2. Then check the  [link](http://127.0.0.1:8080/)

## Docker hub

Also you can run it using
```bash
docker run --publish 8080:8080 safinsaf/devops_app_python
```

## Unit tests

1. To run unit tests install following packages:
```
pytest==6.2.4
requests==2.26.0
```

2. Run the following command in **app_python** directory
```
pytest
```

## Github Actions

Each commit for app_python is checked by linters, tests
After all tests pass, image is deployed to Docker Hub

## References

https://www.datree.io/resources/github-actions-best-practices
https://docs.docker.com/ci-cd/github-actions/
https://www.docker.com/blog/best-practices-for-using-docker-hub-for-ci-cd/
https://www.lambdatest.com/blog/jenkins-best-practices/
https://gist.github.com/adelmofilho/5a30a87eaf1cd4a03052f37b516d6714
https://registry.terraform.io/providers/bmatcuk/vagrant/latest/docs
https://learn.hashicorp.com/tutorials/terraform/aws-buildye
https://github.com/bmatcuk/terraform-provider-vagrant
https://github.com/geerlingguy/ansible-role-pip/blob/master/tasks/main.yml