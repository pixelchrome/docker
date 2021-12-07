# Create NFS Volume

#docker volume create --driver local --opt type=nfs --opt o=addr=192.168.11.21,rw --opt device=:/mnt/data/backup/backuppc-volume backuppc-data

# Start backuppc container

docker run \
        --name backuppc \
        --detach \
        --restart=always \
        --publish 8090:8080 \
        -v backuppc-etc:/etc/backuppc \
        -v backuppc-home:/home/backuppc \
        -v backuppc-data:/data/backuppc \
        --env TZ=Europe/Berlin \
        adferrand/backuppc