#######################################################
#               Reference Documentation               #
#######################################################

Dockerfile
build the image with puppet installed. It saves this image as itinfratools/puppet-essentials, and will
be ready to push
docker build -f ./Dockerfile -t itinfratools/puppet-essentials .

Pushing docker image
docker push itinfratools/puppet-essentials

See all centos 7 services
systemctl list-unit-files

Run docker image as a container
docker run -it itinfratools/puppet-essentials bash

Build a docker image
docker build -f ./Dockerfile -t itinfratools/puppet-essentials .

Making a systemd base image:
https://github.com/docker-library/docs/tree/master/centos

Sharing data/volumes between containers/vm
https://docs.docker.com/engine/userguide/containers/dockervolumes/

Removing docker images:
docker rmi -f itinfratools/puppet-essentials

Making systemd running with no errors:
https://rhatdan.wordpress.com/2014/04/30/running-systemd-within-a-docker-container/

Reference: https://hub.docker.com/
           https://docs.docker.com/engine/reference/builder/
           https://docs.docker.com/engine/userguide/containers/dockerrepos/#contributing-to-docker-hub
