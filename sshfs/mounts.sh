#!/bin/sh

echo "Mounting servers.."

for file in servers/*; do
    source $file

    echo " - Mounting server: $SERVER_HOSTNAME"

    if [ ! -d "$MOUNT_PATH" ]; then
        echo " - Mount path does not exist, creating $MOUNT_PATH"
        mkdir -p $MOUNT_PATH
    fi

    SSHFS_COMMAND="sshfs $SERVER_USERNAME@$SERVER_HOSTNAME:$SERVER_PATH $MOUNT_PATH -o no_readahead,noappledouble,nolocalcaches,volname=$VOLUME_NAME"
    $SSHFS_COMMAND 2>/dev/null

    if (($? == 0)); then
        echo " - Mounted on $MOUNT_PATH"
    else
        echo " - There was an error mounting $SERVER_HOSTNAME, check your configuration."
    fi
done