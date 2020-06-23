



## Run with bcc-tools

```shell
sudo docker run --rm -it --privileged \
  -v /lib/modules:/lib/modules:ro \
  -v /sys:/sys:ro \
  -v /usr/src:/usr/src:ro \
  runzexia/bugshoot

```