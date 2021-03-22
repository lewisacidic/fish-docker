#!/usr/bin/env fish
#
# Copyright (c) 2020 Rich Lewis and François VANTOMME
# License: MIT

# Adapted from https://github.com/akarzim/zsh-docker-aliases

function __docker_abbr_install --on-event fish_docker_install
    set -U __docker_abbr_abbreviations

    function __docker_abbr -d "Create docker abbreviations"
        set -l name $argv[1]
        set -l body $argv[2..-1]
        abbr -a $name $body
        set -a __docker_abbr_abbreviations $name
    end

    # Docker
    __docker_abbr dk 'docker'
    __docker_abbr dka 'docker attach'
    __docker_abbr dkb 'docker build'
    __docker_abbr dkd 'docker diff'
    __docker_abbr dkdf 'docker system df'
    __docker_abbr dke 'docker exec'
    __docker_abbr dkei 'docker exec -it'
    __docker_abbr dkh 'docker history'
    __docker_abbr dki 'docker images'
    __docker_abbr dkin 'docker inspect'
    __docker_abbr dkim 'docker import'
    __docker_abbr dkk 'docker kill'
    __docker_abbr dkkh 'docker kill -s HUP'
    __docker_abbr dkl 'docker logs'
    __docker_abbr dkL 'docker logs -f'
    __docker_abbr dkli 'docker login'
    __docker_abbr dklo 'docker logout'
    __docker_abbr dkls 'docker ps'
    __docker_abbr dkp 'docker pause'
    __docker_abbr dkP 'docker unpause'
    __docker_abbr dkpl 'docker pull'
    __docker_abbr dkph 'docker push'
    __docker_abbr dkps 'docker ps'
    __docker_abbr dkpsa 'docker ps -a'
    __docker_abbr dkr 'docker run'
    __docker_abbr dkri 'docker run -it --rm'
    __docker_abbr dkrie 'docker run -it --rm --entrypoint /bin/bash'
    __docker_abbr dkRM 'docker system prune'
    __docker_abbr dkrm 'docker rm'
    __docker_abbr dkrmi 'docker rmi'
    __docker_abbr dkrn 'docker rename'
    __docker_abbr dks 'docker start'
    __docker_abbr dkS 'docker restart'
    __docker_abbr dkss 'docker stats'
    __docker_abbr dksv 'docker save'
    __docker_abbr dkt 'docker tag'
    __docker_abbr dktop 'docker top'
    __docker_abbr dkup 'docker update'
    __docker_abbr dkv 'docker version'
    __docker_abbr dkw 'docker wait'
    __docker_abbr dkx 'docker stop'
    __docker_abbr dkstop 'docker stop (docker ps -aq)'

    # Docker Compose (c)
    __docker_abbr dkc 'docker-compose'
    __docker_abbr dkcb 'docker-compose build'
    __docker_abbr dkcB 'docker-compose build --no-cache'
    __docker_abbr dkcd 'docker-compose down'
    __docker_abbr dkce 'docker-compose exec'
    __docker_abbr dkck 'docker-compose kill'
    __docker_abbr dkcl 'docker-compose logs'
    __docker_abbr dkcL 'docker-compose logs -f'
    __docker_abbr dkcls 'docker-compose ps'
    __docker_abbr dkcp 'docker-compose pause'
    __docker_abbr dkcP 'docker-compose unpause'
    __docker_abbr dkcpl 'docker-compose pull'
    __docker_abbr dkcph 'docker-compose push'
    __docker_abbr dkcps 'docker-compose ps'
    __docker_abbr dkcr 'docker-compose run'
    __docker_abbr dkcR 'docker-compose run --rm'
    __docker_abbr dkcrm 'docker-compose rm'
    __docker_abbr dkcs 'docker-compose start'
    __docker_abbr dkcsc 'docker-compose scale'
    __docker_abbr dkcS 'docker-compose restart'
    __docker_abbr dkcu 'docker-compose up'
    __docker_abbr dkcU 'docker-compose up -d'
    __docker_abbr dkcv 'docker-compose version'
    __docker_abbr dkcx 'docker-compose stop'
    #
    ## Container (C)
    __docker_abbr dkC 'docker container'
    __docker_abbr dkCa 'docker container attach'
    __docker_abbr dkCcp 'docker container cp'
    __docker_abbr dkCd 'docker container diff'
    __docker_abbr dkCe 'docker container exec'
    __docker_abbr dkCei 'docker container exec -it'
    __docker_abbr dkCin 'docker container inspect'
    __docker_abbr dkCk 'docker container kill'
    __docker_abbr dkCl 'docker container logs'
    __docker_abbr dkCL 'docker container logs -f'
    __docker_abbr dkCls 'docker container ls'
    __docker_abbr dkCp 'docker container pause'
    __docker_abbr dkCpr 'docker container prune'
    __docker_abbr dkCrn 'docker container rename'
    __docker_abbr dkCS 'docker container restart'
    __docker_abbr dkCrm 'docker container rm'
    __docker_abbr dkCr 'docker container run'
    __docker_abbr dkCri 'docker container run -it --rm'
    __docker_abbr dkCrie 'docker container run -it --rm --entrypoint /bin/bash'
    __docker_abbr dkCs 'docker container start'
    __docker_abbr dkCss 'docker container stats'
    __docker_abbr dkCx 'docker container stop'
    __docker_abbr dkCtop 'docker container top'
    __docker_abbr dkCP 'docker container unpause'
    __docker_abbr dkCup 'docker container update'
    __docker_abbr dkCw 'docker container wait'

    ## Image (I)
    __docker_abbr dkI 'docker image'
    __docker_abbr dkIb 'docker image build'
    __docker_abbr dkIh 'docker image history'
    __docker_abbr dkIim 'docker image import'
    __docker_abbr dkIin 'docker image inspect'
    __docker_abbr dkIls 'docker image ls'
    __docker_abbr dkIpr 'docker image prune'
    __docker_abbr dkIpl 'docker image pull'
    __docker_abbr dkIph 'docker image push'
    __docker_abbr dkIrm 'docker image rm'
    __docker_abbr dkIsv 'docker image save'
    __docker_abbr dkIt 'docker image tag'

    ## Volume (V)
    __docker_abbr dkV 'docker volume'
    __docker_abbr dkVin 'docker volume inspect'
    __docker_abbr dkVls 'docker volume ls'
    __docker_abbr dkVpr 'docker volume prune'
    __docker_abbr dkVrm 'docker volume rm'

    ## Network (N)
    __docker_abbr dkN 'docker network'
    __docker_abbr dkNs 'docker network connect'
    __docker_abbr dkNx 'docker network disconnect'
    __docker_abbr dkNin 'docker network inspect'
    __docker_abbr dkNls 'docker network ls'
    __docker_abbr dkNpr 'docker network prune'
    __docker_abbr dkNrm 'docker network rm'

    ## System (Y)
    __docker_abbr dkY 'docker system'
    __docker_abbr dkYdf 'docker system df'
    __docker_abbr dkYpr 'docker system prune'

    ## Stack (K)
    __docker_abbr dkK 'docker stack'
    __docker_abbr dkKls 'docker stack ls'
    __docker_abbr dkKps 'docker stack ps'
    __docker_abbr dkKrm 'docker stack rm'

    ## Swarm (W)
    __docker_abbr dkW 'docker swarm'

    ## CleanUp (rm)
    # Clean up exited containers (docker < 1.13)
    __docker_abbr dkrmC 'docker rm (docker ps -qaf status=exited)'

    # Clean up dangling images (docker < 1.13)
    __docker_abbr dkrmI 'docker rmi (docker images -qf dangling=true)'

    # Pull all tagged images
    __docker_abbr dkplI 'docker images --format "{{ .Repository }}" | grep -v "^<none>$" | xargs -L1 docker pull'

    # Clean up dangling volumes (docker < 1.13)
    __docker_abbr dkrmV 'docker volume rm (docker volume ls -qf dangling=true)'

    # Docker Machine (m)
    __docker_abbr dkm 'docker-machine'
    __docker_abbr dkma 'docker-machine active'
    __docker_abbr dkmcp 'docker-machine scp'
    __docker_abbr dkmin 'docker-machine inspect'
    __docker_abbr dkmip 'docker-machine ip'
    __docker_abbr dkmk 'docker-machine kill'
    __docker_abbr dkmls 'docker-machine ls'
    __docker_abbr dkmpr 'docker-machine provision'
    __docker_abbr dkmps 'docker-machine ps'
    __docker_abbr dkmrg 'docker-machine regenerate-certs'
    __docker_abbr dkmrm 'docker-machine rm'
    __docker_abbr dkms 'docker-machine start'
    __docker_abbr dkmsh 'docker-machine ssh'
    __docker_abbr dkmst 'docker-machine status'
    __docker_abbr dkmS 'docker-machine restart'
    __docker_abbr dkmu 'docker-machine url'
    __docker_abbr dkmup 'docker-machine upgrade'
    __docker_abbr dkmv 'docker-machine version'
    __docker_abbr dkmx 'docker-machine stop'

    functions --erase __docker_abbr

    # Mark docker_abbr plugin as initialized
    set -U __docker_abbr_initialized (date)

end

function __docker_abbr_update --on-event fish_docker_update
    __docker_abbr_uninstall
    __docker_abbr_install
end

function __docker_abbr_uninstall --on-event fish_docker_uninstall
    for ab in $__docker_abbr_abbreviations
        abbr --erase $ab
    end
    set -Ue __docker_abbr_abbreviations
end
