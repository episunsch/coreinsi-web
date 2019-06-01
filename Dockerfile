FROM nginx:latest
MAINTAINER Gedy Palomino <gedy.palomino@gmail.com>

RUN \
	rm -f /etc/nginx/conf.d/* && \ 
	mkdir /usr/share/nginx/html/coreinsi/ && \
	echo "\ndaemon off;" >> /etc/nginx/nginx.conf

COPY dist /usr/share/nginx/html/coreinsi/
COPY coreinsi.conf sistemas.conf /etc/nginx/conf.d/

CMD ["nginx"]

EXPOSE 80