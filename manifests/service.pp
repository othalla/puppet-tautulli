#
# Class to create systemd service unit & start/enable it.
#
class tautulli::service (
  $install_dir = $::tautulli::install_dir,
) {

  $service = 'tautulli.service'

  file { "/lib/systemd/system/${service}":
    ensure => link,
    target => "${install_dir}/init-scripts/init.systemd",
  }
  -> service { $service:
    ensure   => running,
    enable   => true,
    provider => systemd,
  }
}
