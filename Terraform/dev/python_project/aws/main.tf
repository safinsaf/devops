terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
  access_key = var.accessKey
  secret_key = var.secretKey
}

resource "aws_instance" "app_server" {
  ami           = "ami-080471172a731411b"
  instance_type = "t2.micro"
  key_name= "aws_key"
  vpc_security_group_ids = [aws_security_group.main.id]

  tags = {
    Name = "VM1"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("/home/insaf/devops/Terraform/dev/python_project/aws/aws_key")
    timeout     = "4m"
  }
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  },
   {
     description = "User-service port"
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     security_groups  = []
     from_port   = 8080
     to_port     = 8080
     protocol    = "tcp"
     self        = false
     cidr_blocks = ["0.0.0.0/0", ]
   }
  ]
}


resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDzhFHzvFNn5TvjOOPjU2JA11RHV8bf51tVRqg9J9VL5VZm4G+s0fCD7Do2XkI1vRuBsN8jxYLv257IdrilEJOwBQO3PVwWrisNMcDnNqdvgMVru1tia7ttISirb9tgL7CRkqGTDgGkhFEl5w+oA6lVtezeMkiwBHLlxld8gGEjyOPFDOkKGkWZkp5mkA80Q323GEbWDpj6IDCj9jeM/8L+DT4fACktEW992SMdWSSatG6WzgwLbR52jaoOL6duVHuuviAla37Sh12nnickdSIS22ujztU97yD3+iiURyFRYHi/nDSD6glOKyr54+AMYb7Ohdn42//y0hazieCRLV6N insaf@DESKTOP-E38DT9F"
}

variable "accessKey" {
  description = "Access key for AWS account"
  type        = string
  sensitive = true
}
variable "secretKey" {
  description = "Secret key for AWS account"
  type        = string
  sensitive = true
}