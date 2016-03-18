mkdir /data
sudo mount -o resvport,hard,intr <ubuntu_ip>:/data /data
export DOCKER_HOST=tcp://<ubuntu_ip>:2375
docker ps
docker pull itinfratools/puppet-essentials
docker run --privileged -d --name <docker_container_name> itinfratools/puppet-essentials
