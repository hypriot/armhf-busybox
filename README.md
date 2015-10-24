# hypriot/armhf-busybox

busybox for ARM with group and passwd file

## Prepare files

Take the files `/etc/group` and `/etc/passwd` from amd64 busybox container:

```
$ mkdir etc

$ docker run -v $(pwd)/etc:/dest -it busybox sh
/ # cp /etc/group /dest
/ # cp /etc/passwd /dest
/ # exit

$ ls etc
group  passwd

$ vi Dockerfile 

$ docker build -t hypriot/armhf-busybox .
Sending build context to Docker daemon 34.82 kB
Step 0 : FROM armbuild/busybox
Pulling repository docker.io/armbuild/busybox
d91e5575e4cc: Download complete 
511136ea3c5a: Download complete 
73089b67ca16: Download complete 
Status: Downloaded newer image for armbuild/busybox:latest
---> d91e5575e4cc
Step 1 : COPY etc/group /etc/group
---> 2cb7d6ef9992
Removing intermediate container de686e0968f9
Step 2 : COPY etc/passwd /etc/passwd
---> 9e4cdd9600ce
Removing intermediate container e1acd4d83b8b
Successfully built 9e4cdd9600ce

```

## Build

```
docker build -t hypriot/armhf-busybox .
```
