
# Terraform Lab - S3, DynamoDB e EC2

Este laboratório demonstra como criar recursos AWS usando Terraform.  
Funciona tanto com LocalStack (local) quanto com AWS real (nuvem).

## Estrutura dos arquivos

- `provider.tf` - Configuração do provedor AWS
- `variables.tf` - Declaração de variáveis parametrizáveis
- `terraform.tfvars` - Valores concretos das variáveis
- `main.tf` - Criação dos recursos (S3, DynamoDB, EC2)
- `outputs.tf` - Exibição de informações importantes após a criação

## Como rodar

### Com LocalStack

```powershell
docker run -d --name localstack -p 4566:4566 -e SERVICES="s3,ec2,dynamodb" -e DEBUG=1 localstack/localstack
terraform init
terraform apply -auto-approve
terraform output
