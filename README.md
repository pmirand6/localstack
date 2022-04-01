# Localstack 

# Levantar el servicio
`TMPDIR=$HOME/localstack/host_tmp_dir docker-compose up -d --build` 

## S3:
### Crear un bucket: 
`aws --endpoint-url=http://localhost:4572 s3 mb s3://profile`

### Listar contenido de un bucket: 
`aws --endpoint-url=http://localhost:4572 s3 ls s3://profile`

### Copiar contenido a un bucket 
`aws --endpoint-url=http://localhost:4572 s3 cp test.txt s3://profile`

### TODO:
- Testing local de conexión de SNS y SQS
- Deploy desde Terraform