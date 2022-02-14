local-dev:
	docker-compose up -d 
	cd ./airbnb && rails db:create db:migrate db:seed
	cd ./airbnb && rails s