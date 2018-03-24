Ansible docker container
========================

To build docker container with ansible latest version (2.5.0)

Build image
===========

docker build -t ansible-2.5.0 .

Run docker container
====================

docker run -it ansible-2.5.0 /bin/bash
