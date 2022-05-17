#!/usr/bin/env bash

Daytime=$(sunshine . --simple)

# if is day
if [[ "$Daytime" =~ day ]]
then
  sed --in-place 's/github_dimmed.conf/github_light.conf/' ./kitty.conf
else 
  sed --in-place 's/github_light.conf/github_dimmed.conf/' ./kitty.conf
fi
