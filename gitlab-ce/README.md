# installing gitlab
this is a docker-compose based installation guide for [gitlab](https://gitlab.com), private [registry](), [runner]() with [dind](). 
## (1) ##
First, make the certs for communications between gitlab and registry.
```
mkdir -p certs
openssl req -new -newkey rsa:4096 -subj "/CN=gitlab-issuer" -nodes -x509 -keyout certs/registry-example-com.key -out certs/registry-example-com.crt
```

## (2) ##
```
sudo docker-compose up -d gitlab
sudo docker-compose up -d registry
sudo docker-compose up -d dind
sudo docker-compose up -d runner
sudo docker-compose up register-runner
```
the last command is for registering runner

## notice:
two things should be considered to add multiple concurrent runners.
first ``` path-to/runner/config.toml ``` should be edited. and the value of ``` concurrent ``` should be relative to the number of CPU cores.
``` grep -c ^processor /proc/cpuinfo ```
second more instances of runners should be instantiated and registered.