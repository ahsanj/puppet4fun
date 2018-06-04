class ssh::install(
  $package_name = $::ssh::package_name,
) {
  package {'ssh-package':
    ensure => present,
    name => $package_name,
 }
}
