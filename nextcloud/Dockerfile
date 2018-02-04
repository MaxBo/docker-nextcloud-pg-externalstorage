FROM sameersbn/nextcloud:latest
MAINTAINER Max Bohnet <github.com/MaxBo>

RUN apt-get update \
    && apt-get install acl \
    && mkdir /var/local_workspace \
    && setfacl -m user:www-data:rwx /var/local_workspace \
    && setfacl -d -m user:www-data:rwx /var/local_workspace \
    && chmod -R 750 /var/local_workspace