# fish-docker

Abbreviations and completions for [`docker`](https://docker.com) for the [fish shell](https://fishshell.com/) :fish:.

## Installing

Using [`fisher`](https://github.com/jorgebucaran/fisher):

```fish
fisher add lewisacidic/fish-docker
```

## Usage

Fish abbreviations replace typed text with an extended command after pressing \<Space> or \<Enter>.

### Docker

abbreviation | result
-------------|-------
`dk` | `docker`
`dka` | `docker attach`
`dkb` | `docker build`
`dkd` | `docker diff`
`dkdf` | `docker system df`
`dke` | `docker exec`
`dkE` | `docker exec -e COLUMNS=(tput cols) -e LINES=(tput lines) -i -t`
`dkh` | `docker history`
`dki` | `docker images`
`dkin` | `docker inspect`
`dkim` | `docker import`
`dkk` | `docker kill`
`dkkh` | `docker kill -s HUP`
`dkl` | `docker logs`
`dkL` | `docker logs -f`
`dkli` | `docker login`
`dklo` | `docker logout`
`dkls` | `docker ps`
`dkp` | `docker pause`
`dkP` | `docker unpause`
`dkpl` | `docker pull`
`dkph` | `docker push`
`dkps` | `docker ps`
`dkpsa` | `docker ps -a`
`dkr` | `docker run`
`dkR` | `docker run -e COLUMNS=(tput cols) -e LINES=(tput lines) -i -t --rm`
`dkRe` | `docker run -e COLUMNS=(tput cols) -e LINES=(tput lines) -i -t --rm --entrypoint /bin/bash`
`dkRM` | `docker system prune`
`dkrm` | `docker rm`
`dkrmi` | `docker rmi`
`dkrn` | `docker rename`
`dks` | `docker start`
`dkS` | `docker restart`
`dkss` | `docker stats`
`dksv` | `docker save`
`dkt` | `docker tag`
`dktop` | `docker top`
`dkup` | `docker update`
`dkV` | `docker volume`
`dkv` | `docker version`
`dkw` | `docker wait`
`dkx` | `docker stop`

### Container

abbreviation | result
-------------|-------
`dkC` | `docker container`
`dkCa` | `docker container attach`
`dkCcp` | `docker container cp`
`dkCd` | `docker container diff`
`dkCe` | `docker container exec`
`dkCE` | `docker container exec -e COLUMNS=(tput cols) -e LINES=(tput lines) -i -t`
`dkCin` | `docker container inspect`
`dkCk` | `docker container kill`
`dkCl` | `docker container logs`
`dkCL` | `docker container logs -f`
`dkCls` | `docker container ls`
`dkCp` | `docker container pause`
`dkCpr` | `docker container prune`
`dkCrn` | `docker container rename`
`dkCS` | `docker container restart`
`dkCrm` | `docker container rm`
`dkCr` | `docker container run`
`dkCR` | `docker container run -e COLUMNS=(tput cols) -e LINES=(tput lines) -i -t --rm`
`dkCRe` | `docker container run -e COLUMNS=(tput cols) -e LINES=(tput lines) -i -t --rm --entrypoint /bin/bash`
`dkCs` | `docker container start`
`dkCss` | `docker container stats`
`dkCx` | `docker container stop`
`dkCtop` | `docker container top`
`dkCP` | `docker container unpause`
`dkCup` | `docker container update`
`dkCw` | `docker container wait`

### Image

abbreviation | result
-------------|-------
`dkI` | `docker image`
`dkIb` | `docker image build`
`dkIh` | `docker image history`
`dkIim` | `docker image import`
`dkIin` | `docker image inspect`
`dkIls` | `docker image ls`
`dkIpr` | `docker image prune`
`dkIpl` | `docker image pull`
`dkIph` | `docker image push`
`dkIrm` | `docker image rm`
`dkIsv` | `docker image save`
`dkIt` | `docker image tag`

### Volume

abbreviation | result
-------------|-------
`dkV` | `docker volume`
`dkVin` | `docker volume inspect`
`dkVls` | `docker volume ls`
`dkVpr` | `docker volume prune`
`dkVrm` | `docker volume rm`

### Network

abbreviation | result
-------------|-------
`dkN` | `docker network`
`dkNs` | `docker network connect`
`dkNx` | `docker network disconnect`
`dkNin` | `docker network inspect`
`dkNls` | `docker network ls`
`dkNpr` | `docker network prune`
`dkNrm` | `docker network rm`

### System

abbreviation | result
-------------|-------
`dkY` | `docker system`
`dkYdf` | `docker system df`
`dkYpr` | `docker system prune`

### Stack

abbreviation | result
-------------|-------
`dkK` | `docker stack`
`dkKls` | `docker stack ls`
`dkKps` | `docker stack ps`
`dkKrm` | `docker stack rm`

### Swarm

abbreviation | result
-------------|-------
`dkW` | `docker swarm`

### Machine

abbreviation | result
-------------|-------
`dkm` | `docker-machine`
`dkma` | `docker-machine active`
`dkmcp` | `docker-machine scp`
`dkmin` | `docker-machine inspect`
`dkmip` | `docker-machine ip`
`dkmk` | `docker-machine kill`
`dkmls` | `docker-machine ls`
`dkmpr` | `docker-machine provision`
`dkmps` | `docker-machine ps`
`dkmrg` | `docker-machine regenerate-certs`
`dkmrm` | `docker-machine rm`
`dkms` | `docker-machine start`
`dkmsh` | `docker-machine ssh`
`dkmst` | `docker-machine status`
`dkmS` | `docker-machine restart`
`dkmu` | `docker-machine url`
`dkmup` | `docker-machine upgrade`
`dkmv` | `docker-machine version`
`dkmx` | `docker-machine stop`

### Compose

abbreviation | result
-------------|-------
`dkc` | `docker-compose`
`dkcb` | `docker-compose build`
`dkcB` | `docker-compose build --no-cache`
`dkcd` | `docker-compose down`
`dkce` | `docker-compose exec -e COLUMNS=(tput cols) -e LINES=(tput lines)`
`dkck` | `docker-compose kill`
`dkcl` | `docker-compose logs`
`dkcL` | `docker-compose logs -f`
`dkcls` | `docker-compose ps`
`dkcp` | `docker-compose pause`
`dkcP` | `docker-compose unpause`
`dkcpl` | `docker-compose pull`
`dkcph` | `docker-compose push`
`dkcps` | `docker-compose ps`
`dkcr` | `docker-compose run -e COLUMNS=(tput cols) -e LINES=(tput lines)`
`dkcR` | `docker-compose run -e COLUMNS=(tput cols) -e LINES=(tput lines) --rm`
`dkcrm` | `docker-compose rm`
`dkcs` | `docker-compose start`
`dkcsc` | `docker-compose scale`
`dkcS` | `docker-compose restart`
`dkcu` | `docker-compose up`
`dkcU` | `docker-compose up -d`
`dkcv` | `docker-compose version`
`dkcx` | `docker-compose stop`


### Cleanup scripts

`dkrmC` | `docker rm $(docker ps -qaf status=exited)`
`dkrmI` | `docker rmi $(docker images -qf dangling=true)`
`dkplI` | `docker images --format "{{ .Repository }}" | grep -v "^<none>$" | xargs -L1 docker pull`
`dkrmV` | `docker volume rm $(docker volume ls -qf dangling=true)`

