class ssh(
   String $package_name = $::ssh::params::package_name,
   String $servive_name = $::ssh::params::service_name,
  )inherits ::ssh::params {
  
  class {'ssh::install': } ->
  #class {'ssh::install': 
    #before => Class['::ssh::service']
 #}
  class {'ssh::service': 
   # require => Class['::ssh::install']
 }
}
# Class['::ssh::install'] -> Class['::ssh::service'] this is resource reference

