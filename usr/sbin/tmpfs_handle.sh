#!/bin/sh

function usage {
	echo "Usage: $0 backup|restore source destination"
}

function transfer {
	from=$1
	to=$2

	rsync -a --delete $from $to
}
	

if [ $# -ne 3 ]; then
	usage
	exit 1
fi

action=$1
_source=$2
_destination=$3

case "$action" in
	backup)
		echo "backup from $_source  to $_destination"
		transfer $_source $_destination
	;;
	restore)
		echo "restore from $_destination to $_source"
		transfer $_destination $_source
	;;

	*)
		usage
		exit 1
	;;
esac		


