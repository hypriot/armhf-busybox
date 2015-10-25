#!/bin/bash
mkdir -p tmp
mkdir -p var
docker build -t hypriot/armhf-busybox .
