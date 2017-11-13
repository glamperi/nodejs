# Based on the Fedora image created by Matthew Miller.
FROM mattdm/fedora:f19
# Install nodejs and npm packages.
RUN yum update -y
RUN yum install -y --skip-broken nodejs npm
# Clean up
RUN yum clean all
# Start a server listening on 8080 using nodejs
ADD . /src
RUN cd /src; npm install
EXPOSE  8080 
CMD ["node", "/src/server.js"] 
