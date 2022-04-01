# Crear un alias para correrlo local
`alias awslocal="AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=${DEFAULT_REGION:-$AWS_DEFAULT_REGION} aws --endpoint-url=http://${LOCALSTACK_HOST:-localhost}:4566"`

# Levantar el servicio
`TMPDIR=$HOME/localstack/host_tmp_dir docker-compose up -d --build`

# S3
## Crear un bucket: 
`aws --endpoint-url=http://localhost:4566 s3 mb s3://profile`

## Listar contenido de un bucket: 
`aws --endpoint-url=http://localhost:4566 s3 ls s3://profile`

## Copiar contenido a un bucket 
`aws --endpoint-url=http://localhost:4566 s3 cp test.txt s3://profile`