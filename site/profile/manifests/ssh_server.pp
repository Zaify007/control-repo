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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDOKc9F3BjD+ApN8G6mEGkQYuspUfnZ6EBCdbL4YfMoLTbzeHCnf9dIuR9ijCb079mmsL1t4SKCiUF2EuVzjEM3iTH77BBc251HE66ooTb/T7X6mlGX0ly+tjP5JKK2otGQEriaSbCOdU2evofafPKGOM9jjtMPxBi0hj87BXrhOunGpBsogQNEYllM9qO9f+cLjmw7cT3Fx+9Co/NiOlEJCmXz9rm8IBDlzsUR8HMDfSLxk2YB1Rq+mRJgOkmadLccoD3I7GzpidHrZndQhW2zNykMnVHbUXEaY3qkrMKSwGEnUiXxNNiCaIc3zW7wSPDgoaWqSIJXJ0vz5MnxyW8h',
	}  
}
