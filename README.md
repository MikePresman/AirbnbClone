  # README
 ## First Time Setup
 ```
cp .env{.example,}
source .env
```
### Then...
run `make local-dev`   
### OR
 ```
docker-compose up -d
cd ./airbnb
- rails db:create
- rails db:migrate
- rails db:seed
- rails s
```
 
 ## After First Time
  ### Start Rails Server
  ```rails s```

### Stop Containers
`docker-compose stop`

### Start Containers
`docker-compose start`

### Delete Containers, Network, and Volumes
` docker-compose down`

  ## Auth Info
~

