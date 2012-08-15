class apache2::config {
  include apache2::params
  file { 'apache2_config':
    source => "puppet:///modules/apache2/${conf_file}",
    path   => "$apache2_config_path"
    ensure => file,
    owner  => 'root',
    before => Class['apache2::service'],
  }
}
