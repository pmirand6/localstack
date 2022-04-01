# Localstack 

Esta imágen de docker tiene como objetivo levantar un ambiente similar a AWS utilizando [Localstack](https://localstack.cloud/) y [Portainer](https://www.portainer.io/)

 ***Debes tener instalado [AWS CLI](https://docs.aws.amazon.com/es_es/cli/v1/userguide/cli-chap-install.html)***



## Como utilizar el proyecto
```console
# Definir carpeta donde se creará el proyecto
foo@bar:~$ mkdir $HOME/localstack/host_tmp_dir

# Clonar proyecto
foo@bar:~$ git clone git@github.com:pmirand6/localstack.git localstack

# Levantar el proyecto
foo@bar:~$ TMPDIR=$HOME/localstack/host_tmp_dir docker-compose up -d --build
```

## Utilizando S3:
```console
# Crear un bucket: 
foo@bar:~$ aws --endpoint-url=http://localhost:4572 s3 mb s3://profile

# Listar contenido de un bucket: 
foo@bar:~$ aws --endpoint-url=http://localhost:4572 s3 ls s3://profile

# Copiar contenido a un bucket 
foo@bar:~$ aws --endpoint-url=http://localhost:4572 s3 cp test.txt s3://profile
```

### TODO:
- Testing local de conexión de SNS y SQS
- Crear servicios con Terraform