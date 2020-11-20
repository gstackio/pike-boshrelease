# Pike

## About

This is a BOSH release for Pike programing language interpretor.
https://pike.lysator.liu.se

## Usage

To deploy and use latest stable Pike BOSH release on Linux.

1. Clone and deploy the release :

```
$ git clone https://github.com/gstackio/pike-boshrelease
$ cd pike-boshrelease
$ bosh deploy -d pike-latest-linux manifests/pike-latest-linux.yml
```

2. Then ssh to your deployment 

```
$ bosh ssh -d pike-latest-linux
bionic/f914a868-7521-4e81-a544-c5c2d45eb7e4:~$ source /var/vcap/packages/pike-8.0-linux/bosh/runtime.env 
bionic/f914a868-7521-4e81-a544-c5c2d45eb7e4:~$ which pike
/var/vcap/packages/pike-8.0-linux/bin/pike
bionic/f914a868-7521-4e81-a544-c5c2d45eb7e4:~$ pike
Pike v8.0 release 702 running Hilfe v3.5 (Incremental Pike Frontend)
> 
```


## Developpement

To vendor Pike 8.0 Linux package into your own BOSH release :

```
$ git clone https://github.com/gstackio/pike-boshrelease
$ cd ~/workspace/your-release
$ bosh vendor-package pike-8.0-linux ~/workspace/golang-release
```

Included packages :

- `pike-7.8-linux` : updated to the last stable version
- `pike-8.0-linux` : updated to the last stable version

