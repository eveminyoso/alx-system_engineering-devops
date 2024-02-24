# puppet_ssh_config.pp

file { '/home/your_username/.ssh/config':
	ensure  => present,
	content => "
	 Host your_server_address
	  IdentityFile ~/.ssh/school
	  PasswordAuthentication no
	",
	mode    => '0600',
	owner   => 'your_username',
	group   => 'your_username',
}
