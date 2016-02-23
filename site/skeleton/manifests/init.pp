class skeleton {

  file { '/etc/skel':
    ensure => directory,
  }

  file { '/etc/skel/.bashrc':
    ensure => file,
    source => 'puppet:///${module_name}/bashrc',
    require => File['/etc/skel'],
  }
}
