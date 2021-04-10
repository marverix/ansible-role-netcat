# Ansible Role: Netcat

[![Build Status](https://travis-ci.com/marverix/ansible-role-netcat.svg?branch=master)](https://travis-ci.com/marverix/ansible-role-netcat)
![Ansible Quality Score](https://img.shields.io/ansible/quality/48453)
![Ansible Role](https://img.shields.io/ansible/role/48453)
[![License: ISC](https://img.shields.io/badge/License-ISC-blue.svg)](LICENSE)

Ansible role that installs Netcat on Linux.

## Features

- ✔️ Installing Netcat
- ✔️ You can choose which flavor to install:
  - [ncat](https://nmap.org/ncat/) - Ncat was written for the Nmap Project as a much-improved reimplementation of the venerable Netcat
  - [cryptcat](http://cryptcat.sourceforge.net/) - A lightweight version netcat extended with twofish encryption
  - ~~openbsd~~
  - ~~traditional~~
- ✔️ Creates (if missing) aliases to `nc` and `netcat`
- ✔️ Tested with Molecule Verify

Note: There are couple versions of "netcat". Ie. Debian provides `netcat-openbsd` or `netcat-traditional`, where those are not ported/compiled to CentOS. This is why I decided to give possibility to install only above two versions, are those two exists both for Debian and CentOS. So you will get the same experiance on all your machines.

## Supported Platforms

- ✔️ Ubuntu 18.04 (Bionic)
- ✔️ Ubuntu 20.04 (Focal)
- ✔️ CentOS 7
- ✔️ CentOS 8

## Requirements

None

## Role Variables

Variable | Description | Default Value
--- | --- | ---
`netcat_install` | List of flavors to install | `['ncat']`
`netcat_alias_to` | No which app should point `nc` and `netcat` aliases? | `ncat`

## Dependencies

None

## Example Playbook

1. The simplest one

    ```yml
    ---
    - hosts: all
      roles:
        - marverix.netcat

    ```

1. Install `ncat` and `cryptcat`; aliases should point to `cryptcat`

    ```yml
    ---
    - hosts: all
      roles:
        - role: marverix.netcat
          vars:
            netcat_install:
              - ncat
              - cryptcat
            netcat_alias_to: cryptcat
    ```

## License

ISC
