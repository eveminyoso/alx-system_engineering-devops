#!/usr/bin/pup
# Install a specific version of flask ( 2.1.0 )
Package	{ "flask",
	Ensure => "2.1.0",
	Provider => "pip"
}

