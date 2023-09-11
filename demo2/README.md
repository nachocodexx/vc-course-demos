# MictlanX Sharing && MictlanX Xolo
It is a simple qr generator to share whatever you want using a qr code but first you need to generate an authorization token that must attach to every request in order to be an authorized user. MictlanX Xolo is responsible for the authentication process.

## Getting started

- 1. Create a new docker image using the following command: 

QR Sharing image: 
```sh
docker build -f Dockerfile_sharing -t <username>/demo2 . 
```
Xolo image: 
```sh
docker build -f Dockerfile_xolo -t <username>/xolo-demo2. 
```

- 2. Deploy a container using the bash script: 
```
sudo chmod +x ./demo1.sh && ./demo1.sh
```
- 3. Get the list of all the deployed containers in your computer:
```
docker ps -a
```

