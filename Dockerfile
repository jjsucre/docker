FROM ubuntu:latest
MAINTAINER JJSUCRE jjsucre@gmail.com
ENV TZ=America/Caracas
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get -y install apache2
expose 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
