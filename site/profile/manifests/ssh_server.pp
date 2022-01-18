class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCnyic6d9GVRcGqlmQZn9w7rXtW3lnT/P+M7FXnv2USRT+bOkCVrUW36YOaRDPCvYG+UUBLTeF8PvpVAtS+MmN2g5VAiYz43CklZUVT/BYc5tGVJ5zdNEuLpzTb4LiExX5J/9Vd9G93IXQGI8XcwTLCnGryRskbRn8lGMkql+4CWHMZTmuCFESw+utRmA8Wjg+jWeeKxqUuNDBR0nUfORXid94KMPqgJlwXGOwapWYk/OIgjanC4JWThG4TP+APcUDHj6PXBs4LF1TbrQkrToKNrXpjxJea9PB9clAstun+/TxWdDhmKmk1Cjd5SUfSqyZPBnluFuUtYOBtk2ZXjdf5',
	}  
}
