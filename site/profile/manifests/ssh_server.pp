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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCgeICntc3x0PZO2DoDCTiaZRSvlVDn91ffLEHTcKNzi4q7V1Y2W4kwyIo3KkYDA2u/GV4fcmH7/K3wdotquaWpx2czl3gdYuFUT183IxuRIC7csGbeckjqKGqamv51p7dIBMqppyF73pL3ndHa/Ht+SsMfwuQ6598oJH7ahWgyIK+3AdYcxaPps0VTSIymCqNQ1otpU+JHj3HclGOQyt6gvneNVaelTyHX2Ulek2bWm9A9hKN0FA8EFoDPKz3MQE/YUtdfuvbGY4calDb2OhG3Vs1Sg4Wr2rFjkdbwlFiBhkoPTsiKXLcScfcy3W/h+dYh6b7rp+xlNOIy+nL1xcqH',
	}  
}
