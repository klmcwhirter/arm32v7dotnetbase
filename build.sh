#!/bin/bash
#*---------------------------------------------------------------------------*
#* Name: build.sh
#* Description: script to build and push Docker image used as base image
#* for .NET Core apps on ARM32v7 architecture (e.g., Raspberry PI 3).
#* Author: "Kevin McWhirter" <klmcwhirter@gmail.com>
#* Created on: 2017/06/04
#*---------------------------------------------------------------------------*
#* Variables

image=klmcwhirter/arm32v7dotnetbase:xenial

tag=klmcwhirter/arm32v7dotnetbase:latest

#*---------------------------------------------------------------------------*
function log
{
  timestamp=$(date "+%Y/%m/%d %H:%M:%S")
  echo ">>> ${timestamp}: $*"
}
#*---------------------------------------------------------------------------*
#* M A I N  P R O G R A M
#*---------------------------------------------------------------------------*

log "Building $image"
docker build -t $image .

log "Tagging $image as $tag"
docker image tag $image $tag

log "Pushing $image"
docker push $image

log "Pushing $tag"
docker push $tag

log "Done."

#*---------------------------------------------------------------------------*
