pwd
ls
docker build -t test:0.1 ./
docker rm -f api-server
docker run -d --rm --name api-server -p 8000:8000 test:0.1
docker ps
docker logs api-server
