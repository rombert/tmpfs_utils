install:
	install -m 0644 etc/sysconfig/tmpfs /etc/sysconfig/tmpfs
	install -m 0755 etc/init.d/tmpfs /etc/init.d/tmpfs
	install -m 0755 usr/sbin/tmpfs_handle.sh /usr/sbin/tmpfs_handle.sh
	install -m 0755 etc/cron.hourly/tmpfs_backup.sh /etc/cron.hourly/tmpfs_backup.sh
	/sbin/insserv tmpfs
