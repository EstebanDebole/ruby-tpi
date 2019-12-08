# Trabajo Final Integrador - TTPS Ruby 2019

## Link to app
- [Heroku](https://inventory-management-tpi.herokuapp.com/)

## Dependencias
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Docker [linux](https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/) [mac](https://docs.docker.com/v17.09/docker-for-mac/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Descargar el proyecto

Para instalar el proyecto es necesario abrir la terminal y ejecutar los siguientes comandos:

```sh
git clone git@github.com:EstebanDebole/ruby-tpi.git tpi && cd tpi
```
## Contruir imagen de la aplicacion

```
docker-compose build
```
> Asumo que tu usuario esta incluido en el grupo docker, si no es asi podes optar por ejecutar el comando con privilegios de sudo, o [agregar tu usuario al grupo docker](https://docs.docker.com/install/linux/linux-postinstall/)


## Levantando el servidor

```sh
docker-compose up -d
docker-compose exec web rails db:setup
```

Una vez hecho esto, se podrá acceder al sitio desde http://localhost:3000

## Corriendo los tests
Para correr todos los tests juntos utilizando el comando:
```sh
docker-compose exec web rails spec
```
Para correrlos uno por uno:
```sh
docker-compose exec web rails spec spec/models/product_spec.rb
docker-compose exec web rails spec spec/models/item_spec.rb
```

## Eliminar
Para finalizar es necesario ejecutar:

```sh
docker-compose down
```



