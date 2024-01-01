FROM ubuntu 
RUN apt-get update && \
	apt-get install apache2 -y && \
ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]
EXPOSE 80 

CMD apachectl -D FOREGROUND

