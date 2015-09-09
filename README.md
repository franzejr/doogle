# Doogle

Doogle dictionary API.


This application basically is divided in two parts:

1. Rails Dictionary API - using http://www.dictionaryapi.com/
2. SPA(Single Page Application) using emberJS

## Features

- The application stores all the words and definitions which are searched.

- If the word is already searched, it should be stored in the database and not consumed by the DictionaryAPI.


## How to setup

```
$ bundle install
$ rake db:create && rake db:migrate && rake db:seeds

```

## How to run the app

```
$ foreman start
```


## Using 

- rails-api
- active-model serializers
- rspec
- foreman
- simplecov
- puma