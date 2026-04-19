Projeto DevOps: Deploy de Microserviços na AWS com Terraform e Docker
📌 Visão Geral

Este projeto demonstra a criação e implantação de uma aplicação simples baseada em microserviços na nuvem, utilizando infraestrutura como código e conteinerização.

A aplicação consiste em:

Frontend servido com Nginx
Backend em Python (Flask)
Ambos rodando em containers na mesma instância

Toda a infraestrutura foi provisionada na Amazon Web Services utilizando Terraform.

🛠️ Stack Utilizada
☁️ Cloud: Amazon Web Services (EC2, Security Groups, IAM)
📦 Containerização: Docker
🏗️ Infraestrutura como código: Terraform
🐍 Backend: Python (Flask)
🌐 Frontend: HTML/CSS (Nginx)
🏗️ Arquitetura
1 instância EC2 (t3.micro)
Docker rodando múltiplos containers
Frontend exposto na porta 80
Backend exposto internamente na porta 5000

📌 Modelo utilizado: Single Node (ambiente de estudo e validação)

⚙️ Processo de Deploy (ponto forte do projeto)

Durante o desenvolvimento, optei por realizar o deploy manual via SSH, sem uso de registry como Amazon ECR.

🔧 Etapas:
Provisionamento da infraestrutura com Terraform
Acesso à instância via SSH
Build das imagens Docker diretamente na VM
Execução dos containers manualmente
💥 Aprendizados Importantes
Entendimento prático do processo de deploy sem abstrações
Funcionamento real do Docker em ambiente remoto
Importância do contexto de build (erros com COPY no Dockerfile)
Gestão de infraestrutura via código com Terraform
⚠️ Limitações atuais
Deploy manual (sem CI/CD)
Infraestrutura não escalável (single node)
Sem uso de registry de imagens
🚀 Próximos passos
Implementar CI/CD com GitHub Actions
Utilizar Amazon ECR para versionamento de imagens
Evoluir para arquitetura mais escalável
Automatizar deploy completo
▶️ Como executar
cd terraform
terraform init
terraform apply -auto-approve

Após isso:

acessar via SSH
subir containers manualmente
🧠 Conclusão

Este projeto foca em entender o processo real de deploy e infraestrutura, sem depender de abstrações completas.

O objetivo não foi apenas “subir um projeto”, mas compreender:

como containers são executados em produção
como a infraestrutura é provisionada
e como automatizar esse processo gradualmente
👊 Resultado

✔ Infra provisionada via código
✔ Aplicação rodando em containers
✔ Deploy funcional em ambiente cloud
✔ Base pronta para evolução com CI/CD
