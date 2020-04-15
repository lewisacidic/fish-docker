#!/usr/bin/env fish
#
# Copyright (c) 2020 Rich Lewis and François VANTOMME
# License: MIT

# Adapted from https://github.com/akarzim/zsh-docker-aliases

# Docker
abbr dk 'docker'
abbr dka 'docker attach'
abbr dkb 'docker build'
abbr dkd 'docker diff'
abbr dkdf 'docker system df'
abbr dke 'docker exec'
abbr dkei 'docker exec -it'
abbr dkh 'docker history'
abbr dki 'docker images'
abbr dkin 'docker inspect'
abbr dkim 'docker import'
abbr dkk 'docker kill'
abbr dkkh 'docker kill -s HUP'
abbr dkl 'docker logs'
abbr dkL 'docker logs -f'
abbr dkli 'docker login'
abbr dklo 'docker logout'
abbr dkls 'docker ps'
abbr dkp 'docker pause'
abbr dkP 'docker unpause'
abbr dkpl 'docker pull'
abbr dkph 'docker push'
abbr dkps 'docker ps'
abbr dkpsa 'docker ps -a'
abbr dkr 'docker run'
abbr dkri 'docker run -it --rm'
abbr dkrie 'docker run -it --rm --entrypoint /bin/bash'
abbr dkRM 'docker system prune'
abbr dkrm 'docker rm'
abbr dkrmi 'docker rmi'
abbr dkrn 'docker rename'
abbr dks 'docker start'
abbr dkS 'docker restart'
abbr dkss 'docker stats'
abbr dksv 'docker save'
abbr dkt 'docker tag'
abbr dktop 'docker top'
abbr dkup 'docker update'
abbr dkV 'docker volume'
abbr dkv 'docker version'
abbr dkw 'docker wait'
abbr dkx 'docker stop'

# Docker Compose (c)
abbr dkc 'docker-compose'
abbr dkcb 'docker-compose build'
abbr dkcB 'docker-compose build --no-cache'
abbr dkcd 'docker-compose down'
abbr dkce 'docker-compose exec'
abbr dkck 'docker-compose kill'
abbr dkcl 'docker-compose logs'
abbr dkcL 'docker-compose logs -f'
abbr dkcls 'docker-compose ps'
abbr dkcp 'docker-compose pause'
abbr dkcP 'docker-compose unpause'
abbr dkcpl 'docker-compose pull'
abbr dkcph 'docker-compose push'
abbr dkcps 'docker-compose ps'
abbr dkcr 'docker-compose run'
abbr dkcR 'docker-compose run --rm'
abbr dkcrm 'docker-compose rm'
abbr dkcs 'docker-compose start'
abbr dkcsc 'docker-compose scale'
abbr dkcS 'docker-compose restart'
abbr dkcu 'docker-compose up'
abbr dkcU 'docker-compose up -d'
abbr dkcv 'docker-compose version'
abbr dkcx 'docker-compose stop'
#
## Container (C)
abbr dkC 'docker container'
abbr dkCa 'docker container attach'
abbr dkCcp 'docker container cp'
abbr dkCd 'docker container diff'
abbr dkCe 'docker container exec'
abbr dkCei 'docker container exec -it'
abbr dkCin 'docker container inspect'
abbr dkCk 'docker container kill'
abbr dkCl 'docker container logs'
abbr dkCL 'docker container logs -f'
abbr dkCls 'docker container ls'
abbr dkCp 'docker container pause'
abbr dkCpr 'docker container prune'
abbr dkCrn 'docker container rename'
abbr dkCS 'docker container restart'
abbr dkCrm 'docker container rm'
abbr dkCr 'docker container run'
abbr dkCri 'docker container run -it --rm'
abbr dkCrie 'docker container run -it --rm --entrypoint /bin/bash'
abbr dkCs 'docker container start'
abbr dkCss 'docker container stats'
abbr dkCx 'docker container stop'
abbr dkCtop 'docker container top'
abbr dkCP 'docker container unpause'
abbr dkCup 'docker container update'
abbr dkCw 'docker container wait'

## Image (I)
abbr dkI 'docker image'
abbr dkIb 'docker image build'
abbr dkIh 'docker image history'
abbr dkIim 'docker image import'
abbr dkIin 'docker image inspect'
abbr dkIls 'docker image ls'
abbr dkIpr 'docker image prune'
abbr dkIpl 'docker image pull'
abbr dkIph 'docker image push'
abbr dkIrm 'docker image rm'
abbr dkIsv 'docker image save'
abbr dkIt 'docker image tag'

## Volume (V)
abbr dkV 'docker volume'
abbr dkVin 'docker volume inspect'
abbr dkVls 'docker volume ls'
abbr dkVpr 'docker volume prune'
abbr dkVrm 'docker volume rm'

## Network (N)
abbr dkN 'docker network'
abbr dkNs 'docker network connect'
abbr dkNx 'docker network disconnect'
abbr dkNin 'docker network inspect'
abbr dkNls 'docker network ls'
abbr dkNpr 'docker network prune'
abbr dkNrm 'docker network rm'

## System (Y)
abbr dkY 'docker system'
abbr dkYdf 'docker system df'
abbr dkYpr 'docker system prune'

## Stack (K)
abbr dkK 'docker stack'
abbr dkKls 'docker stack ls'
abbr dkKps 'docker stack ps'
abbr dkKrm 'docker stack rm'

## Swarm (W)
abbr dkW 'docker swarm'

## CleanUp (rm)
# Clean up exited containers (docker < 1.13)
abbr dkrmC 'docker rm (docker ps -qaf status=exited)'

# Clean up dangling images (docker < 1.13)
abbr dkrmI 'docker rmi (docker images -qf dangling=true)'

# Pull all tagged images
abbr dkplI 'docker images --format "{{ .Repository }}" | grep -v "^<none>$" | xargs -L1 docker pull'

# Clean up dangling volumes (docker < 1.13)
abbr dkrmV 'docker volume rm (docker volume ls -qf dangling=true)'

# Docker Machine (m)
abbr dkm 'docker-machine'
abbr dkma 'docker-machine active'
abbr dkmcp 'docker-machine scp'
abbr dkmin 'docker-machine inspect'
abbr dkmip 'docker-machine ip'
abbr dkmk 'docker-machine kill'
abbr dkmls 'docker-machine ls'
abbr dkmpr 'docker-machine provision'
abbr dkmps 'docker-machine ps'
abbr dkmrg 'docker-machine regenerate-certs'
abbr dkmrm 'docker-machine rm'
abbr dkms 'docker-machine start'
abbr dkmsh 'docker-machine ssh'
abbr dkmst 'docker-machine status'
abbr dkmS 'docker-machine restart'
abbr dkmu 'docker-machine url'
abbr dkmup 'docker-machine upgrade'
abbr dkmv 'docker-machine version'
abbr dkmx 'docker-machine stop'

function __fish_docker_abbr_uninstall --on-event fish_docker_abbr_uninstall
    abbr --erase dk
    abbr --erase dka
    abbr --erase dkb
    abbr --erase dkd
    abbr --erase dkdf
    abbr --erase dke
    abbr --erase dkei
    abbr --erase dkh
    abbr --erase dki
    abbr --erase dkin
    abbr --erase dkim
    abbr --erase dkk
    abbr --erase dkkh
    abbr --erase dkl
    abbr --erase dkL
    abbr --erase dkli
    abbr --erase dklo
    abbr --erase dkls
    abbr --erase dkp
    abbr --erase dkP
    abbr --erase dkpl
    abbr --erase dkph
    abbr --erase dkps
    abbr --erase dkpsa
    abbr --erase dkr
    abbr --erase dkri
    abbr --erase dkrie
    abbr --erase dkRM
    abbr --erase dkrm
    abbr --erase dkrmi
    abbr --erase dkrn
    abbr --erase dks
    abbr --erase dkS
    abbr --erase dkss
    abbr --erase dksv
    abbr --erase dkt
    abbr --erase dktop
    abbr --erase dkup
    abbr --erase dkV
    abbr --erase dkv
    abbr --erase dkw
    abbr --erase dkx
    abbr --erase dkc
    abbr --erase dkcb
    abbr --erase dkcB
    abbr --erase dkcd
    abbr --erase dkce
    abbr --erase dkck
    abbr --erase dkcl
    abbr --erase dkcL
    abbr --erase dkcls
    abbr --erase dkcp
    abbr --erase dkcP
    abbr --erase dkcpl
    abbr --erase dkcph
    abbr --erase dkcps
    abbr --erase dkcr
    abbr --erase dkcR
    abbr --erase dkcrm
    abbr --erase dkcs
    abbr --erase dkcsc
    abbr --erase dkcS
    abbr --erase dkcu
    abbr --erase dkcU
    abbr --erase dkcv
    abbr --erase dkcx
    abbr --erase dkC
    abbr --erase dkCa
    abbr --erase dkCcp
    abbr --erase dkCd
    abbr --erase dkCe
    abbr --erase dkCei
    abbr --erase dkCin
    abbr --erase dkCk
    abbr --erase dkCl
    abbr --erase dkCL
    abbr --erase dkCls
    abbr --erase dkCp
    abbr --erase dkCpr
    abbr --erase dkCrn
    abbr --erase dkCS
    abbr --erase dkCrm
    abbr --erase dkCr
    abbr --erase dkCri
    abbr --erase dkCrie
    abbr --erase dkCs
    abbr --erase dkCss
    abbr --erase dkCx
    abbr --erase dkCtop
    abbr --erase dkCP
    abbr --erase dkCup
    abbr --erase dkCw
    abbr --erase dkI
    abbr --erase dkIb
    abbr --erase dkIh
    abbr --erase dkIim
    abbr --erase dkIin
    abbr --erase dkIls
    abbr --erase dkIpr
    abbr --erase dkIpl
    abbr --erase dkIph
    abbr --erase dkIrm
    abbr --erase dkIsv
    abbr --erase dkIt
    abbr --erase dkVin
    abbr --erase dkVls
    abbr --erase dkVpr
    abbr --erase dkVrm
    abbr --erase dkN
    abbr --erase dkNs
    abbr --erase dkNx
    abbr --erase dkNin
    abbr --erase dkNls
    abbr --erase dkNpr
    abbr --erase dkNrm
    abbr --erase dkY
    abbr --erase dkYdf
    abbr --erase dkYpr
    abbr --erase dkK
    abbr --erase dkKls
    abbr --erase dkKps
    abbr --erase dkKrm
    abbr --erase dkW
    abbr --erase dkrmC
    abbr --erase dkrmI
    abbr --erase dkplI
    abbr --erase dkrmV
    abbr --erase dkm
    abbr --erase dkma
    abbr --erase dkmcp
    abbr --erase dkmin
    abbr --erase dkmip
    abbr --erase dkmk
    abbr --erase dkmls
    abbr --erase dkmpr
    abbr --erase dkmps
    abbr --erase dkmrg
    abbr --erase dkmrm
    abbr --erase dkms
    abbr --erase dkmsh
    abbr --erase dkmst
    abbr --erase dkmS
    abbr --erase dkmu
    abbr --erase dkmup
    abbr --erase dkmv
    abbr --erase dkmx
end
