# impacket-builder

Docker container to build Impacket on x86 platforms for Windows (32 and 64 bits) and Linux (32 bits).

# Usage

This build system uses [Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/) to containerize the build process, and GNU make to script it.

The following example set of commands will install all the prerequisites and build Impacket for all platforms, assuming your system is Ubuntu:
```
sudo apt install docker.io docker-compose git make
git clone https://github.com/MarioVilas/impacket-builder.git
cd impacket-builder
sudo make all
```

The compiled binaries will be found inside the newly created dist/ directory, under a subdirectory for each platform.

# TO DO

* Bundle all binaries together to save space, sharing the same portable Python interpreter.
* Fix building from the master branch.
* Add support for 32 bit Linux.
* Add support for more platforms.
