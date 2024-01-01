FROM ubuntu 
RUN apt-get update && \
	apt-get install apache2 -y
WORKDIR /var/www/html/	
EXPOSE 80

ADD https://www.tooplate.com/zip-templates/2108_dashboard.zip /tmp
RUN cp /tmp/21*/ .

