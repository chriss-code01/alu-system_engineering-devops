# Raises the open file limit for Nginx so it can handle many concurrent requests
exec { 'fix--for-nginx':
  command => 'sed -i "s/^ULIMIT=.*/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
}

exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  require => Exec['fix--for-nginx'],
}
