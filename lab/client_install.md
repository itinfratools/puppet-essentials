mkdir /data/<user_name>
sudo mount -o resvport,hard,intr <ubuntu_ip>:/data /data
cp -R lab /data/<user_name>/
export DOCKER_HOST=tcp://<ubuntu_ip>:2375
docker ps
docker pull itinfratools/puppet-essentials
docker run --privileged -d --name <docker_container_name> -v /data/<user_name>:/data/<user_name> itinfratools/puppet-essentials
docker exec -it <docker_container_name> bash
