# Docker orchestration scripts for Remark App

## Overall architecture

Remark App has the next architecture:

![Overall architecture](https://raw.githubusercontent.com/alterego-labs/remark_docker_orchestra/master/imgs/overall_architecture.png)

Regarding to the schema above the whole system consists from the following components:

- For DB storage *PostgreSQL* is used.
- JSON API layer which is written on *Elixir*: no view or assets, just API.
- Web part which is written on nodejs with using *react + redux*. The most wanted feature which we want to try is server side rendering and this one will be implemeneted in this layer.
- iOS mobile application which is created using *react native*.
- Native Mac OS application which is created using *electron*. Actually it is written using webpack + react and wrapped by electron.

## Server arhitecture

Server side we want manage by *docker* and this fact affects on server archtecture at all. So the architecture is on the following picture:

![Server architecture](https://raw.githubusercontent.com/alterego-labs/remark_docker_orchestra/master/imgs/server_architecture.png)
