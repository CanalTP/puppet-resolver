# puppet-resolver
Adjust content in /etc/resolv.conf

####Table of Contents
1. [Overview - What is the resolver module?](#overview)
2. [Module Description - What does the module do?](#module-description)
3. [Setup - The basics of getting started with resolver](#setup)
4. [Limitations - OS compatibility, etc.](#limitations)

##Overview

The resolver module allows you to set up the /etc/resolv.conf file.

##Module Description

The `/etc/resolv.conf` file is where the server will look for the DNS resolver.

##Setup

**What resolver affects:**

* `/etc/resolv.conf`

###Beginning with resolver

Resolver is very easy to use. There is no default parameters so you will have to declare it explicitly in Hiera. Then to get the following content:

```text
domain domain.com
search domain.com
nameserver 10.2.95.1
nameserver 10.2.95.1
options rotate timeout:2
```
you will declare in Hiera (except for `domain`, each parameter is an Array type):

```YAML
resolver::domain: 'domain.com'
resolver::search:
  - 'domain.com'
resolver::nameserver:
  - '10.2.95.1'
  - '10.2.95.1'
resolver::options:
  - 'rotate'
  - 'timeout:2'
```

##Limitations

This module has been validated on:

* Debian:
    * 6.0.10 x86_64
    * 7.8 x86_64
* CentOS: uuu
    * 7.0 x86_64
