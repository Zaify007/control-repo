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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+R3w7m0nvXY/VzVaGPZyc5JG0uAkjSFGDWzZ7yLTNLCnEqkzql5+LKo0Kfl1ngr5gyXqI1ViQNaocKf50yWJReZlcTAxuB2YV/Sybn3xN97uDV5JV4E2hlYbXxIGBJxoriQy5b95D3Y2qLGrRSz/JDJ4evxDUZUOOhB5fiQkifaH6qMbpIuItC/VK2qQPXdM4WsIL1wpbYPKU7Vk8LHRVyPIzfbQnRPto4cxD7Dd+NX1eBfr9UW6gzsKBGVXUlBgcypAz+5nNbPze8WgPjb6H1syOJM9zfYvha6VR8HEaomsnBsGUhqIr3xpFGJtnyPRPgnTjhYOFAKa0dBoe9uWL',
	}  
}
