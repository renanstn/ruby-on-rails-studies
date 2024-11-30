# Ruby on Rails Studies

## Objetivo

- Ter uma aplicação simples no Ruby on Rails funcionando
- Ter testes unitários escritos com o **rspec**
- Ter testes utilizando o **Capybara**
- Conseguir executar todos os testes com a aplicação dockerizada
  - Resolver o problema do binário do chrome em docker

## Todos os comandos utilizados para criar este app:

### Create app

```sh
rails new blog
```

### Start server

```sh
bin/rails server
```

### Generate a new route action

```sh
bin/rails generate controller Articles index --skip-routes
```

### Create a model

```sh
bin/rails generate model Article title:string body:text
```

### Create a child model

```sh
bin/rails generate model Comment commenter:string body:text article:references
```

### Migrate

```sh
bin/rails db:migrate
```

## Logs

Criei uma nova rota editando o `config/routes.rb` e adicionando:

```rb
get "/articles", to: "articles#index"
```

Este comando gera tudo, inclusive o HTML da página em `app/views/articles/index.html.erb`.

Defini o endpoint /articles como root adicionando a linha:

```rb
root "articles#index"
```

No arquivo `config/routes.rb`.

Um console para brincar com as models está disponível em

```sh
bin/rails console
```

Para criar uma model nesse playground:

```rb
article = Article.new(title: "Hello Rails", body: "I am on Rails!")
article.save
```

Para encontrar ela pelo ID (1) usando o ORM do ruby:

```rb
Article.find(1)
```

List all:

```rb
Article.all()
```

> Lembre-se que o `()` quando não há argumentos é opcional

Foi introduzido o [resourceful routing](https://guides.rubyonrails.org/getting_started.html#resourceful-routing),
agora não é mais necessário ter uma linha para cada action no `config/routes.rb`.

```sh
bin/rails routes
```

Exibe as routes existentes

Repare nos campos `belongs_to` e `has_many` usados para indicar o parentesco
entre as models article e comment.

Parei aqui: https://guides.rubyonrails.org/getting_started.html#using-concerns

## Referências utilizadas

- https://guides.rubyonrails.org/getting_started.html

# README (gerado pelo próprio rails)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
