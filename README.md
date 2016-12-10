Vagrant + ansible for Windows 10 host
----------------------
Specification:
- host: Windows 10
- guest: Linux debian-jessie 3.16
- apache 2.4
- php5.6-fpm
	- cli
	- mysql
	- pear
	- mcrypt
	- gd
	- curl
	- xdebug
	- memcache
	- memcached
	- readline
	- sqlite
- mysql 5.5.53
- phpmyadmin 4.2.12
- beanstalk
- composer
- nodejs
- synchronization: samba

You need:
- VirtualBox 4.3+
- vagrant 1.8+
- cygwin64 (with ssh client: Package openssh)

Before first start:
- Change password to your host in Vagrantfile, line 8

Start:

	vagrant up

Stop:

	vagrant halt

Connect with ssh:

	vagrant ssh

Reload configuration:

	vagrant up --provision

Location your project: public_html

If you have problem with mounting disk, you must run cygwin64 as admin. Virtualbox often removes the network interface. Virtualbox run as admin, manually add interface, don't close virtualbox. Run machine. Done.

You can try run to linux host. But must change 'smb' on 'rsync'.
