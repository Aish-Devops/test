FROM ubuntu
RUN sudo apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN sudo apt get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
