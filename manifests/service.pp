#
# Class to create systemd service unit & start/enable it.
#
class tautulli::service (
  $install_dir = $::tautulli::install_dir,
  $data_dir    = $::tautulli::data_dir,
  $config_dir  = $::tautulli::config_dir,
  $user        = $::tautulli::user,
) {

  $service = 'tautulli.service'

  file { "/lib/systemd/system/${service}":
    ensure  => file,
    content =>  epp("${module_name}/tautulli.service.epp"),
  }
  -> service { $service:
    ensure   => running,
    enable   => true,
    provider => systemd,
  }
}
