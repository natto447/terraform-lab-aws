# Criar bucket S3
resource "aws_s3_bucket" "meu_bucket" {
  bucket = "meu-bucket-lab"
}

# Criar tabela DynamoDB
resource "aws_dynamodb_table" "minha_tabela" {
  name           = "minha-tabela-lab"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

# Criar instância EC2 (simulada)
resource "aws_instance" "minha_ec2" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "minha-ec2-lab"
  }
}
