# Puppet 
#
# VERSION               3.6.2-3

FROM centos

MAINTAINER renatosis@gmail.com wagnersza@gmail.com

ENV container=docker
#Making systemctl work
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \ 
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

# Including epel to install puppet dependencies like ruby
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum clean all

# Installing puppet
RUN yum -y install puppet-3.6.2-3.el7
RUN yum -y install vim

# Copying VIM SyntaxHightlight to container
RUN mkdir -p /root/.vim
ADD src/vim_syntax_highlight_puppet /root/.vim/


#2.7.26-2.el6

# Installing nfs server
#RUN yum -y install nfs-utils

# Exporting a directory data
#RUN printf "/data 10.0.0.0/8      (rw,no_subtree_check,sync,fsid=0)" >> /etc/exports

# Creating the NFS directory to share
#RUN mkdir /data; chmod 777 /data

# Starting NFS
# RUN chkconfig nfs on
# RUN service rpcbind start
# RUN service nfs start

# RUN printf "[Install]\nWantedBy=multi-user.target" >> /usr/lib/systemd/system/nfs-idmap.service
# RUN printf "[Install]\nWantedBy=nfs.target" >> /usr/lib/systemd/system/nfs-lock.service

# RUN systemctl enable rpcbind
# RUN systemctl enable nfs-server
# RUN systemctl enable nfs-lock
# RUN systemctl enable nfs-idmap
# RUN systemctl start rpcbind
# RUN systemctl start nfs-server
# ystemctl enable nfs-locksystemctl enable nfs-lockUN systemctl start nfs-lock
# RUN systemctl start nfs-idmap

#VOLUME /data
