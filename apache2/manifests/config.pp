class apache2::config {
  include apache2::params
  $conf_file=$apache2::params::conf_file
  $conf_path=$apache2::params::conf_path
  file { 'apache2_config':
    source => "puppet:///modules/apache2/${conf_file}",
    ensure => file,
    path   => "$apache2_config_path",
    owner  => 'root',
    before => Class['apache2::service'],
  }
}
