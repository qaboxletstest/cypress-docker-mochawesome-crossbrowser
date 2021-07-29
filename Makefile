specificFile:
	docker-compose run e2e-electron 

e2e:
	docker-compose run e2e-chrome

build:
	docker build -t cyp-dock-mocha-report .

rebuild:
	docker build --no-cache -t cyp-dock-mocha-report .