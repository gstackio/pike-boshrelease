# Pike BOSH Release

This is a [BOSH](https://bosh.io/) release for [Pike](https://pike.lysator.liu.se) programing language and interpretor.

## What is BOSH ?

For those who don't know,
[BOSH is Borg++](https://twitter.com/marklucovsky/status/728950262593953792),
where [Google Borg](https://research.google.com/pubs/pub43438.html) is a
large-scale cluster management tool. Borg is a proprietary tool by Google,
whereas [BOSH is Open Source](https://github.com/cloudfoundry/bosh).

For an introduction about what is BOSH, go watch
[this talk given by Benjamin Gandon from Gstack](https://slides.gstack.io/bosh-deploy-distributed-systems-like-a-boss-may-2017/)
and then go read the [Ultimate Guide to BOSH](http://ultimateguidetobosh.com/)
in order to lean more.

## Usage

Here is a very basic way of using this BOSH Release. You'll need to properly
target a previously-installed BOSH Director.

To deploy and use latest stable Pike BOSH release on Linux :

1. Clone and deploy the release to your BOSH Director :

```
$ git clone https://github.com/gstackio/pike-boshrelease
$ cd pike-boshrelease
$ bosh deploy -d pike-latest-linux manifests/pike-latest-linux.yml
```

2. Then ssh to your deployment, source the runtime environnement, and use Pike :

```
$ bosh ssh -d pike-latest-linux
[...]
bionic/f914...b7e4:~$ source /var/vcap/packages/pike-8.0-linux/bosh/runtime.env 
bionic/f914...b7e4:~$ which pike
/var/vcap/packages/pike-8.0-linux/bin/pike
bionic/ff914...b7e4:~$ pike
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

Included stemcells :

* GNU/Linux Ubuntu 16.04.7 LTS (Xenial Xerus)
* GNU/Linux Ubuntu 18.04.5 LTS (Bionic Beaver)

## Contributing

Please feel free to submit issues and pull requests.

## Authors and license

Copyright © 2020-present, Benjamin Gandon / Bertrand Lupart

Like the rest of BOSH, the Pike BOSH release is released under the terms
of the [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0).
