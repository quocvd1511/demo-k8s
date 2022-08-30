# FROM ubuntu
# RUN apt-get -y update && apt-get -y install mysql-client
#----------------------------------------------------------
FROM wordpress
WORKDIR /
RUN apt-get -y update && apt-get -y install git && git clone https://github.com/quocvd1511/second_wpp.git
RUN cp -rfv /second_wpp/* /var/www/html/ && ls /var/www/html/
WORKDIR /var/www/html