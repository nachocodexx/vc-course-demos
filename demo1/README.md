# Mictlanx Sharing
It is a simple qr generator to share whatever you want using a qr code. 

## Getting started

- 1. Create a new docker image using the following command: 
```sh
docker build -f Dockerfile_sharing -t <username>/demo1 . 
```
- 2. Deploy a container using the bash script: 
```
sudo chmod +x ./demo1.sh && ./demo1.sh
```
- 3. Get the list of all the deployed containers in your computer:
```
docker ps -a
```

