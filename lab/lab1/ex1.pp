host { 'localhost-puppet':
  ensure => 'present', 
  host_aliases => ['puppet-test'],
  ip => '192.168.5.1',
}

user {'puppet-test':
  shell => '/bin/bash',
  gid => 'games',
  home => '/home/puppet-test',
  managehome => true,
}

group {'puppet-group':
  gid => 1054,
}
