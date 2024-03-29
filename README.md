# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Init encryption
```bash
docker exec -it world_scout-rails-1 bin/rails db:encryption:init
```

## Init encryption
```bash
docker exec -it world_scout-rails-1 EDITOR="code --wait" bin/rails credentials:edit
```

## Create Database
```bash
docker exec -it world_scout-rails-1 bin/rails db:create
```

## Migrate Database
```bash
docker exec -it world_scout-rails-1 bin/rails db:migrate
```

## Create sacffold
```bash
rails g scaffold <table> <properties:type>
#eg rails g scaffold user name:string
```
## Migrate
```bash
# see more at https://guides.rubyonrails.org/active_record_migrations.html
rails g migration <data>
```

## Migrate
```bash
rails db:migrate
```

## Update Swagger
```bash
# it will updtae swagger based on swagger_helper
rake rswag
```

# world_scout
