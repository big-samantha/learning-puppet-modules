class ntp {
case $operatingsystem {
  centos, redhat: {
    $service_name = 'ntpd'
    $conf_file = 'ntp.conf.el'
  }
  ubuntu, debian: {
    $service_name = 'ntp'
    $conf_file ='ntp.conf.debian'
  }
}

package { 'ntp':
  ensure => present,
}

file { 'ntp.conf':
  path    => '/etc/ntp.conf',
  ensure  => file,
  require => Package['ntp'],
  source  => "puppet:///modules/ntp/${conf_file}",
}

service { 'ntpd':
  name       => "$service_name",
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  subscribe    => File['ntp.conf'],
}

}

# Declaring the class to make it run
