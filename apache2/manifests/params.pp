class apache2::params {
  case $operatingsystem {
    centos, redhat: {
      $package_name = 'httpd'
      $service_name = 'httpd'
      $conf_path = '/etc/httpd/conf/httpd.conf'
      $conf_file = 'httpd.conf.el'
    }
    ubuntu, debian: {
      $package_name = 'apache2'
      $service_name = 'apache2'
      $conf_path = '/etc/apache2/apache2.conf'
      $conf_file = 'apache2.conf.deb'
    }
    default: {
     fail("Unrecognized operating system for webserver.")
     }
  }
}


