class ssh(
   $port = $::ssh::params::port,
   $permit_root_login         = $::ssh::params::permit_root_login,
   String $package_name       = $::ssh::params::package_name,
   String $servive_name       = $::ssh::params::service_name,
  )inherits ::ssh::params {
  
  class {'::ssh::install': } 
  class {'::ssh::config': }  
  class {'ssh::service': } 

# order of execution
  Class['::ssh::install'] 
  -> Class['::ssh::config'] 
  ~> Class['::ssh::service']
  -> Class['ssh']
}
