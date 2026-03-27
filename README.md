# 🚀 Cloud Infrastructure & DevOps Project - V2

Este repositório contém o projeto de automação de infraestrutura e deploy realizado para a Pós-Graduação em DevOps. O objetivo foi criar uma arquitetura escalável e automatizada na nuvem AWS.

## 🛠️ Tecnologias Utilizadas
* **Cloud:** AWS (EC2, Security Groups, IAM)
* **IaC:** Terraform (Provisionamento de recursos)
* **Container:** Docker (Orquestração de microserviços)
* **Backend:** Python Flask
* **Frontend:** Template Ethereal (Static HTML/CSS)

## 🏗️ Arquitetura do Projeto
O projeto utiliza o conceito de **Single Node** rodando Docker Engine:
1. **Frontend:** Container rodando Nginx na porta 80.
2. **Backend:** Container Python na porta 5000 (API).
3. **Infraestrutura:** Instância t3.micro provisionada via código em Ohio (us-east-2).

## 🚀 Como reproduzir
1. Configure suas credenciais AWS.
2. Navegue até a pasta `/terraform`.
3. Execute `terraform init`.
4. Execute `terraform apply -auto-approve`.
