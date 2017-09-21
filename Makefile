run:
	docker run -d -p 127.0.0.1\:8080\:8080 --restart always --name token-dispenser -v ${CURDIR}:/var/tmp/token-dispenser/ token-dispenser

start:
	docker start token-dispenser

stop: 
	docker stop token-dispenser

build: 
	docker build -t token-dispenser -f Dockerfile .

status: 
	docker inspect token-dispenser

remove:
	docker rm token-dispenser
