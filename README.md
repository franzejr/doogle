# Doogle

[![Code Climate](https://codeclimate.com/github/franzejr/doogle/badges/gpa.svg)](https://codeclimate.com/github/franzejr/doogle)

Doogle dictionary API.


This application basically is divided in two parts:

1. Rails Dictionary API - using http://www.dictionaryapi.com/
2. [SPA-ember](/spa_ember) (Single Page Application) using emberJS
2. [SPA-angular](/spa_angular) (Single Page Application) using angularJS

## Features

- The application stores all the words and definitions which are searched.

- If the word is already searched, it should be stored in the database and not consumed by the DictionaryAPI.


## How to setup

1. Setup the API KEY from DictionaryAPI

	- You should create an API_KEY in the following website: http://www.dictionaryapi.com/
	- Once you have created, you might use dotenv and create ENV['API_KEY'] in your environment.

2. Running the application

```
$ bundle install
$ rake db:create && rake db:migrate
```

## How to run the app

```
$ foreman start
```

Foreman will start:

- Rails API - [http://localhost:3000](http://localhost:3000)
- Ember application - [http://localhost:8080](http://localhost:8080)
- Angular application - [http://localhost:8000](http://localhost:8000)

## Using

- rails-api
- active-model serializers
- rspec
- foreman
- simplecov
- puma
- vcr
- spring
