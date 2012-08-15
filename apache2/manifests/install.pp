class apache2::install {
  include apache2::params
  $package_name=$apache2::params::package_name
  package {'apache2':
    name   => "$package_name",
    ensure => present,
    before => Class['apache2::config']
  }
}
