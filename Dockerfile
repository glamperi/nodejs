FROM registry.access.redhat.com/rhel6/rhel
MAINTAINER Gary Lamperillo

RUN echo "Hello from Docker Build"

RUN rpm --query redhat-release-server
