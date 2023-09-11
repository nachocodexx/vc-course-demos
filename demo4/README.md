# Demo 4: Deploying a container using a Compose
In this demo we use a YAML file that describe a container, to execute the containers using compose please type the following commands:
```bash
docker compose -f ./docker-compose.yml up # use the flag -d to run the compose in detached mode
```

to stop and remove the containers Press Cntrl + C or if you run the compose in detached mode u can use the following command:
```bash
docker compose -f ./docker-compose.yml down
```
