node default {
  file {'/root/README':
    ensure => file,
    content => 'Learning Puppet',
    owner => 'root',
  }
}
