FROM ubuntu:14.04
RUN apt-get update && apt-get upgrade -y && apt-get clean

#nfs client install
RUN apt-get install -y nfs-common
RUN /etc/init.d/rpcbind start

VOLUME /mnt

#mount
CMD mount nfshost:/nfs /mnt
