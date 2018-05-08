# tautulli

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with tautulli](#setup)
    * [What tautulli affects](#what-tautulli-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with tautulli](#beginning-with-tautulli)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module simply install Tautulli for linux.

## Setup

### What tautulli affects **OPTIONAL**

If it's obvious what your module touches, you can skip this section. For
example, folks can probably figure out that your mysql_instance module affects
their MySQL instances.

If there's more that they should know about, though, this is the place to mention:

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute.
* Dependencies that your module automatically installs.
* Warnings or other important notices.

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you might want to include an additional "Upgrading" section
here.

### Beginning with tautulli

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most
basic use of the module.

## Usage

This section is where you describe how to customize, configure, and do the
fancy stuff with your module here. It's especially helpful if you include usage
examples and code samples for doing things with your module.

```
include ::tautulli
```

## Reference

user
----
Unix user account for Tautulli install.

- *Default*: tautulli

uid
---
Unix user account uid.

- *Default*: 892

install_dir
-----------
Directory where to install Tautulli.

- *Default*: /opt/tautulli

config_dir
----------
Directory where to store Tautulli config .ini file.

- *Default*: /opt/tautulli

data_dir
----------
Directory where to store Tautulli database .db file.

- *Default*: /var/tautulli

## Limitations

This is where you list OS compatibility, version compatibility, etc. If there
are Known Issues, you might want to include them under their own heading here.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You can also add any additional sections you feel
are necessary or important to include here. Please use the `## ` header.
# puppet-tautulli
