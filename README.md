### README
# First Time Setup
  - cp .env{.example,}
  - source .env
  - docker-compose up -d
  - docker exec -it airbnb_postgres_db psql -U postgres
  - \password
  - first -> "password"
  - confirm -> "password"

  rails db:create
  rails db:migrate
  rails db:seed

  rails s

## Auth Info
username: mikepresman@gmail.com
password: Apple1234