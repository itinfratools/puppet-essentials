#######################################################
#      Creating and Installing the laboratory         #
#######################################################

Create/Install a Ubuntu VM:
puppet-essentials.rjoebt0500be-295.cp.globoi.com

root@puppet-essentials:~# lsb_release -a
Distributor ID: Ubuntu
Description:    Ubuntu 14.04.1 LTS
Release:        14.04

Installing Docker on a VM created above:
curl -fsSL https://get.docker.com/ | sh
docker ps
sudo apt-get install rpcbind
rpcinfo
netstat -ntlp
vim /etc/default/docker
        DOCKER_OPTS="-H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock"
restart docker
apt-get install nfs-kernel-server
mkdir /data
chmod 777 /data
vim /etc/exports
        /data *(rw,no_subtree_check,sync,fsid=0)
exportfs -a
/etc/init.d/nfs-kernel-server restart
