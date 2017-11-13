FROM registry.access.redhat.com/rhel6/rhel
MAINTAINER Gary Lamperillo
RUN yum -y update; yum clean all
CMD echo "Hello from Docker Build"
