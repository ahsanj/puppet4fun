class ssh(
   String $package_name = $::ssh::params::package_name,
   String $servive_name = $::ssh::params::service_name,
  )inherits ::ssh::params {
  
  class {'::ssh::install': } 
  class {'::ssh::config': }
  #class {'::ssh::install': 
    #before => Class['::ssh::service']
 #}
  class {'ssh::service': 
   # require => Class['::ssh::install']
 }
}
# order of execution
  Class['::ssh::install'] 
  -> Class['::ssh::config'] 
  # ~> refresh
  ~> Class['::ssh::service']
  -> Class['ssh']

