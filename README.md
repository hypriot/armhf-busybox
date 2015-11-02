# hypriot/armhf-busybox

busybox for ARM

Inspired by the official build steps at https://github.com/docker-library/busybox

## Build

Clone this repo on your Raspberry Pi or Scaleway C1 server.

```
./build-upstream.sh
```

After the build check your images with

```
docker images
```

## Related links

* http://www.ibm.com/developerworks/library/l-busybox/
* uClibc
  * https://de.wikipedia.org/wiki/UClibc
  * http://uclibc.org/about.html
