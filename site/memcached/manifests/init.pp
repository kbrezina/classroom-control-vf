class memcached {

package { 'memcached':
  ensure => present,
}

file { '/etc/sysconfig/memcached':
  ensure => present,
  source => "puppet:///modules/memcached/memcached",
  require => Package['memcached'],
}

service { 'memcached':
  ensure => running,
  subscribe => File['/etc/sysconfig/memcached'],
}
}
