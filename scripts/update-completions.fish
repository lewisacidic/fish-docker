#!/usr/bin/env fish
#
# Copyright (c) 2020 Rich Lewis
# License: MIT

curl https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish > (dirname (status -f))/../completions/docker.fish

curl https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish > (dirname (status -f))/../completions/docker-compose.fish

