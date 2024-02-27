# configure_ssh.pp

file { '/home/eve3a7ede7f4a91/.ssh':
	ensure => directory,
	}

	file { '/home/eve3a7ede7f4a91/.ssh/config':
	ensure  => file,
	content => "
	Host 8.8.4.4
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
