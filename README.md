alienvault-asset-tracker
========================

Generate SIEM events for newly created AlienVault assets.

# Notice
This plugin needs to run on the AlienVault USM Server since it requires access to the database

## Setup
1. Checkout or download this repository and change to its directory
2. Generate a password to use for the hostchecker mysql account and update the files with it. (see below)

```
$ cd alienvault-asset-tracker/
$ random=$(dd if=/dev/urandom bs=64 count=1)
$ plugin_password=$(echo $random | sha1sum | cut -d ' ' -f 1)
$ sed -i "s/<replace with password>/$plugin_password/g" *
```

## Installation

```
$ ossim-db < alienvault-asset-tracker.sql
$ cp alienvault-asset-tracker.cfg /etc/ossim/agent/plugins/
```

Now enable the alienvault-asset-tracker plugin!
