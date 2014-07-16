docker-krad-training
====================

Docker image for KRAD training

##Usage


`docker run -t -e HOSTNAME=$(echo $DOCKER_HOST | sed -e
's#tcp://\(.*\):.*#\1#') \
-p 8080:8080 --name krad-training r351574nc3/krad-training`

##Accessing Instance

On Mac OS X systems, the docker instance is running inside of another
virtual machine. `DOCKER_HOST` environment variable contains the IP
address for the instance. It contains the hostname that would be used
to access the instance. Of course, it's also running on port 8080
