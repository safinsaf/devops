# Instructions
## 1. Create VM on AWS using Terraform

1.1 Put your private key to ```Terraform/dev/python_project/aws/``` and name it aws_key

1.2 Move to ```Terraform/dev/python_project/aws```

1.3 Change ```main.tf```: put your public key in it, put path to your private key

1.4 Run
```
terraform init
terraform apply
```

## 2. Run playbook prepare_docker.yml
2.1 Move to ```ansible/playbooks```

2.2 Run
```
ansible-playbook -i ../dynamic-inventory/inventory_aws_ec2.yml prepare_docker.yml --key-file "path_to_private_key_file"
```

## 3. Run playbook install_app.yml
3.1 Move to ```ansible/playbooks```

3.2 Run
```
ansible-playbook -i ../dynamic-inventory/inventory_aws_ec2.yml install_app.yml --key-file "path_to_private_key_file"
```

## 4. Check ip_of_your_VM:8080