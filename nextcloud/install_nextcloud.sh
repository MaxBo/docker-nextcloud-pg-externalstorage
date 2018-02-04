
# create folder on local host that should be accessible as external folder in nextcloud

mkdir -p /MY-LOCAL-FOLDER

# set the default permissions
# set the mask
setfacl -R -m m:rwx /MY-LOCAL-FOLDER

# set the user or group that should get r/w access to the files and folders created in the nextcloud
setfacl -R -m d:user:MYUSER:rwX /MY-LOCAL-FOLDER
setfacl -R -m d:group:MYGROUP:rwX /MY-LOCAL-FOLDER


