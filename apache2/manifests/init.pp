class apache2 {
  include
    'apache2::install',
    'apache2::config',
    'apache2::service',
}
