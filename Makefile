dev:
	docker-compose build
	docker-compose run api yarn install
	docker-compose run -T api npx @prisma/cli generate
	docker-compose up -d

clean:
	docker-compose down -v
	rm -rf ./apps/api/node_modules
