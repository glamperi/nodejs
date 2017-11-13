FROM registry.access.redhat.com/rhel6/rhel
MAINTAINER Gary Lamperillo
RUN yum -y update; yum clean all
RUN echo "Hello from Docker Build"
