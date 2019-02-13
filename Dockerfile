FROM centos:7
MAINTAINER Laurencio Galicia <laurencio.galicia@gmail.com> & INFRA-CTIN 
RUN yum -y  install epel-release.noarch && yum -y update && yum install -y httpd http-tools supervisor
COPY config.sh /tmp/config.sh
RUN  /bin/bash /tmp/config.sh 
EXPOSE 80
#USER nobody
ENTRYPOINT /usr/bin/supervisord -c /tmp/supervisord.conf
