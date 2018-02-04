FROM quay.io/rootlogin/nextcloud:latest
MAINTAINER Max Bohnet <github.com/MaxBo>

RUN apk add --update acl \
    && mkdir /var/local_workspace \
    && setfacl -m user:www-data:rwX /var/local_workspace \
    && setfacl -d -m user:www-data:rwX /var/local_workspace \
    && chmod -R 750 /var/local_workspace