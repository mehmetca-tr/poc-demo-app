FROM ubuntu

#RUN apt-get update
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install nginx -y

COPY app/index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]