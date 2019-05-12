class nginx {
package { 'nginx':
ensure => installed,
}
service { 'nginx':
name => nginx,
ensure => running,
enable => true,
subscribe => File['nginx.conf'],
} 
file { 'nginx.conf':
ensure => present,
mode => 644, owner => root, group => root,
path => '/etc/nginx/nginx.conf',
content => template("nginx/nginx.conf.erb"),
}}
