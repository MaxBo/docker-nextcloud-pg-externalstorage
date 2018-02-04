
mkdir -p /data/nextcloud/pgcerts
cd /data/nextcloud/pgcerts

# create selfs-signed certificates
# https://www.postgresql.org/docs/9.6/static/ssl-tcp.html
openssl req -new -text -out server.req
openssl rsa -in privkey.pem -out server.key
rm privkey.pem
openssl req -x509 -in server.req -text -key server.key -out server.crt

# run the docker-container for the first time to create the pgdata files and close it again
docker-compose up
docker-compose down

# overwrite config files
cp -r pgdata /data/nextcloud/

