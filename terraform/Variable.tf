variable "aws_maquina" {
    default = "t3.micro"


  
}


variable "aws_sistema" {
    default = "ami-09040d770ffe2224f"
  
}



variable "aws_region" {

    default = "us-east-2"
  
}


variable "aws_key" {
  default = "Devops-Automation"
}


variable "docker_image_front" {
  default = "jesusmaia12/devcars-frontend:v2"
}

variable "docker_image_back" {
  default = "jesusmaia12/devcars-backend:v2"
}