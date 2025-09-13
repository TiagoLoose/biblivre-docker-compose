# Biblivre - Implantação via Docker e DockerCompose

Este projeto foi baseado no repositório original: https://github.com/cleydyr/biblivre

Este projeto tem como objetivo fornecer uma maneira mais simples e prática de implantar o Biblivre utilizando Docker e Docker Compose, facilitando o processo de instalação e configuração.

## Biblivre
Biblioteca Livre Internacional - an open source library management system and OPAC: www.biblivre.org.br

## Tecnologias Utilizadas
- Java 17
- PostgreSQL 16

## Requisitos
- Git
- Docker
- Docker Compose

## Como implantar
1. Instale o Docker e o Docker Compose em sua máquina.
2. Execute o comando abaixo na raiz do projeto, a primeira vez será demorado pois será feito o build da imagem:
	```sh
	docker-compose up -d
	```
3. Serão criados dois containers:
	- **app**: container com a aplicação Biblivre
	- **postgres**: container com o banco de dados PostgreSQL

## Como acessar
Acesse a aplicação pelo navegador na URL:

http://localhost:8080/Biblivre6

Usuário padrão: **admin**
Senha padrão: **abracadabra**

## Erro 404
Caso receba um erro 404 ao tentar acessar, aguarde alguns minutos e execute o seguinte comando:
	```sh
	docker-compose restart
	```
O banco de dados pode demorar um pouco para inicializar e a aplicação não executa a primeira vez.

## Persistência dos Dados
Os dados do banco de dados serão persistidos no diretório `postgres-data` na raiz do projeto. **Faça backup desse diretório** para não perder seus dados.

## Atualizando para uma nova versão do repositório
Para obter a versão mais recente do projeto, basta executar o comando abaixo dentro do diretório `repo/biblivre`:

```sh
git pull
```

Após atualizar o repositório, realize uma nova implantação conforme instruções acima.

