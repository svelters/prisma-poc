dev:
	docker-compose build
	docker-compose run -T api yarn install
	docker-compose up -d

clean:
	docker-compose down -v
	rm -rf ./apps/api/node_modules
