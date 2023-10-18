# Create a network
```sh
docker network create -d bridge tec_mante_net
```
# Demo 0: First container 
```sh
docker build -f ./Dockerfile -t demo0 .
```
```sh
docker run --name demo0-container -e NAME=yourname -d demo0
```
# Demo 0.1: Web server
```sh
docker build -f ./Dockerfile_server -t demo0_server .
```

```sh
 docker run --name demo0_server -e PORT=5000 -v /source/html:/source/html -v ./data:/data -p 5000:5000 -d demo0_server
```

# Demo 0.2: Web Server (Compose)

```sh
docker compose up --build 
```