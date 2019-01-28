FROM centos:7
MAINTAINER Laurencio Galicia <laurencio.galicia@gmail.com> & INFRA-CTIN 
USER 0
RUN yum -y  install epel-release.noarch && yum -y update && yum install -y httpd http-tools supervisor
COPY config.sh /tmp/config.sh
RUN  /bin/bash /tmp/config.sh 
EXPOSE 80
ENTRYPOINT /usr/bin/supervisord -c /etc/supervisord.d/supervisord.conf
USER 99
