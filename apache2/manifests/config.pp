class apache2::config {
  include apache2::params
  $conf_file=$apache2::params::conf_file
  $conf_path=$apache2::params::conf_path
  file { 'apache2_config':
    ensure => file,
    source => "/etc/puppetlabs/puppet/modules/apache2/files/${conf_file}",
    path   => $conf_path,
    owner  => 'root',
    before => Class['apache2::service'],
  }
}
