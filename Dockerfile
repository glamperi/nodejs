FROM registry.access.redhat.com/rhel6/rhel
MAINTAINER Gary Lamperillo
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all

ADD . /src

RUN cd /src; npm install

EXPOSE 8080

CMD ["node", "/src/index.js"]
