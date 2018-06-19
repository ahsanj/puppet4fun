class ssh::params {
  ### case statment example ###
  #case $facts['os']['family'] {
   case $::osfamily {
    'Debian', 'Ubuntu' : { 
       $package_name = 'openssh-server'
       $service_name = 'ssh'
    }
    /^RedHat|CentOS/: {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
      notify{ "${1} is our OS": }
   }
   default: {
    fail("${facts['operatingsystem']} is not supported")
  }
 }
}

#############if statement example################

# if $facts['os']['family'] == 'Debian' {
#  $package_name = 'openssh-server'
#  $service_name = 'ssh'
#}
#elsif $facts['os']['family'] == 'Redhat' {
#  $package_name = 'openssh-server'
#  $service_name = 'sshd'
#}
#else {
#fail("${facts['operatingsystem']} is not supported")


#### unless statement ###

#unless $facts['os']['family'] == 'Debain' {
#    $package_name = 'openssh-server'
#    $service_name = 'ssh'
#}

