import "slave.pp"
file {'testfile':
	path => '/tmp/testfile',
	ensure => present,
	mode => 0640,
	content => 'I am a test file.'
}
group{'mygrp':
	name=>'mygrp',
	ensure=>present,
	gid=>2001
}
