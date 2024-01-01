FROM ubuntu 
RUN apt-get update && \
	apt-get install apache2 -y
WORKDIR /var/www/html/	
EXPOSE 80

RUN cp -r ./2108_dashboard/* .

