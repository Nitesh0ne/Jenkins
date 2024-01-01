FROM ubuntu 
RUN apt-get update && \
	apt-get install apache2 -y && \
	apt install -y apache2-utils && \
	apt clean 
WORKDIR /var/www/html/	
EXPOSE 80

COPY 2108_dashboard  .
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

