# IntelliJ #

The image made by this Dockerfile can do below.

* Run intellij without installation to host (require: X11 environment on host)
* Run some java tools

## build ##

```sh
# should rename IntelliJ's tarball to "intellij.tar.gz" and it place this directory.
$ sudo docker build -t intellij .
```

## run ##

```sh
$ sudo docker run --net host --name intellij -e DISPLAY=$DISPLAY -v <workdir>:/work -v /tmp/.X11-unix --user $(id -u) --group $(id -g) -it intellij

# in docker
# start IntelliJ
$ /idea/bin/idea.sh &
```
