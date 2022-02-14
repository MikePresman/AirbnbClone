.PHONY: local kill

local:
	docker-compose up -d 
	cd ./airbnb && rails db:create db:migrate db:seed
	cd ./airbnb && rails s

kill:
	docker-compose down