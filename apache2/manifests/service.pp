class apache2::service {
  include apache2::params
  $service_name=$apache2::params::service_name
  service {'apache2':
    name       => "$service_name",
    ensure     => running,
    enable     => true,
  }
}
