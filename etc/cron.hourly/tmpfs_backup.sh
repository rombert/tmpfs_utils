#!/bin/sh

# Read config
. /etc/sysconfig/tmpfs

/usr/sbin/tmpfs_handle.sh backup $TMPFS_LOCATION $TMPFS_BACKUP_LOCATION

