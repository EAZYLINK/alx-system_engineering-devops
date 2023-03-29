# Setup new ubuntu server with nginx

exec { 'update system':
    commad => '/usr/bin/apt-get update',
}

package { 'nginx':
    ensure  => 'install',
    require => Exec['update system']
}

file { '/var/www/html/index.html':
    content => 'Hello World!'
}

exec { 'redirect_me':
    comman  => 'sed -i "24i\	rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default',
    provider => 'shell'
}

service { 'nginx':
    ensure  => running,
    require => Package['nginx]
}
