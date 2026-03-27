# 1. Criando o Security Group (Nome interno: sg_projeto)
resource "aws_security_group" "sg_projeto" {
  name        = "sg_projeto_final"
  description = "Liberar portas 80 e 5000"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 2. Criando a Instância (Nome interno: minha_maquina)
resource "aws_instance" "minha_maquina" {
  ami           = var.aws_sistema
  instance_type = var.aws_maquina
  key_name      = var.aws_key

  # Aqui o nome agora bate com o recurso lá de cima!
  vpc_security_group_ids = [aws_security_group.sg_projeto.id]

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y docker.io
              systemctl start docker
              systemctl enable docker
              
              docker run -d -p 80:80 --name front ${var.docker_image_front}
              docker run -d -p 5000:5000 --name back ${var.docker_image_back}
              EOF

  tags = {
    Name = "LandingPage-V2"
  }
}

# 3. Output (Nome interno: minha_maquina)
output "link_do_site" {
  # Aqui o nome agora bate com a instância!
  value = "http://${aws_instance.minha_maquina.public_ip}"
}


