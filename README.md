# RFLinkGatewayDocker
Dockerized version of RFLinkGateway by [dmartinpro/RFLinkGateway](https://github.com/dmartinpro/RFLinkGateway) 

## Purpose
Firstly to be able to run the RFLinkGateway as a docker instance, but also to make it easier to scale up, it you have several [RFLink](http://www.rflink.nl/blog2/) Gateways 

## Build
```sh
Dockerfile
requirements.txt
```
Is for the actual build of the docker image. But it is awailable for download [here](https://hub.docker.com/r/magpern/rflinkgateway) from DockerHub.

Example of a docker build command
```sh
docker build -t "magpern/rflinkgateway" .
```

## More
the file
```sh
config.json
```
is not really used. It is an example of a config file from dmartinpro/RFLinkGateway, slightly modified for this docker image.
The config file wants a docker container with the name mqtt that hosts the mqtt broker and the username and password for the mqtt broker is myuser:secretpassword
Of course, you need to change this config for your own usage.

## Docker-compose
```sh
docker-compose.yml
```
The docker-compose file is an example of how a multi docker setup could look.
The docker-compose file sets up a mosquitto container and a RFLinkGateway container and links them together.
For set up of the Mosquitto Broker, please see the Mosquitto Docker information here https://hub.docker.com/_/eclipse-mosquitto

Build the docker containers with 
```sh
docker-compose up -d
```
If you already have a MQTT Broker. Modify the config.json for RFLinkGateway to point to your MQTT Broker.

## References

- RFLink Gateway project http://www.nemcon.nl/blog2/
- RFLink Gateway protocol http://www.nemcon.nl/blog2/protref
- dmartinpro/RFLinkGateway https://github.com/dmartinpro/RFLinkGateway
- Mosquitto Broker https://hub.docker.com/_/eclipse-mosquitto

