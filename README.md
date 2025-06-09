[aguslr/docker-i2psnark][1]
===========================

[![docker-pulls](https://img.shields.io/docker/pulls/aguslr/i2psnark)](https://hub.docker.com/r/aguslr/i2psnark) [![image-size](https://img.shields.io/docker/image-size/aguslr/i2psnark/latest)](https://hub.docker.com/r/aguslr/i2psnark)


This *Docker* image sets up *i2psnark* torrent client to be used with an
[I2P][2] server:

> The Invisible Internet Project ([I2P][2]) is a fully encrypted private network
> layer.


Installation
------------

To use *i2psnark*, follow these steps:

1. Clone and start the container:

       docker run -p 8002:8002 -v "${PWD}"/data:/app/i2psnark docker.io/aguslr/i2psnark:latest

2. Access the console with your browser by going to <http://127.0.0.1:8002>.


Build locally
-------------

Instead of pulling the image from a remote repository, you can build it locally:

1. Clone the repository:

       git clone https://github.com/aguslr/docker-i2psnark.git

2. Change into the newly created directory and use `docker-compose` to build and
   launch the container:

       cd docker-i2psnark && docker-compose up --build -d


[1]: https://github.com/aguslr/docker-i2psnark
[2]: https://geti2p.net/
