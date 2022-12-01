#Version: 0.0.1
FROM ubuntu
MAINTAINER Dmitrij Nikiforov <nikiforov_d.1973@mail.ru>
RUN apt-get update
RUN apt-get install -y nginx
COPY ./index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]