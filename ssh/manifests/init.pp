class ssh(
  String $package_name,
  String $service_name,
  String $ensure,
  String $service_ensure,
  Boolean $service_enable,
  Integer $port              = 22,
  Boolean $permit_root_login = true,
  ) {
  
  class {'::ssh::install': } 
  class {'::ssh::config': }  
  class {'ssh::service': } 

# order of execution
  Class['::ssh::install'] 
  -> Class['::ssh::config'] 
  ~> Class['::ssh::service']
  -> Class['ssh']
}
