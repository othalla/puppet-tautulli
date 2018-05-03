#
# Full description of class tautulli here.
#
class tautulli::install (
  $user        = $::tautulli::user,
  $uid         = $::tautulli::uid,
  $install_dir = $::tautulli::install_dir,
) {

  group { $user:
    ensure => present,
    gid    => $uid,
  }
  -> user { $user:
    ensure     => present,
    uid        => $uid,
    gid        => $uid,
    groups     => $user,
    home       => '/nonexistent',
    shell      => '/usr/sbin/nologin',
    managehome => true,
    password   => '*',
    comment    => 'Tautulli user',
  }
  -> file { $install_dir:
    ensure => directory,
    mode   => '0744',
    owner  => $user,
    group  => $user,
  }
  -> vcsrepo { $install_dir:
    ensure   => present,
    provider => git,
    remote   => 'origin',
    revision => 'master',
    user     => $user,
    source   => 'https://github.com/Tautulli/Tautulli.git',
  }
}
