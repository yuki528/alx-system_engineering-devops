#increase  traffic to the nginx
exec {'fix--for nginx':
   command => 'sed -i "s/15/4096/" /etc/default/nginx',
   path  => '/usr/bin/:/bin'
} ->

#restart nginx
exec{'nginx-restart',
   command => 'nginx restart',
   path   => '/etc/init.id/'
}
