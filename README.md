# README
## First Time Setup
####  From root directory
```
cp .env{.example,}
source .env
```
 
###### Easy Command: `make local-dev`

## OR
```
  docker-compose up -d
```
#####  then cd into ./airbnb and run...
```
  - rails db:create
  - rails db:migrate
  - rails db:seed
  - rails s
```

## Start after First time
```rails s```
## Auth Info
