# puppet-resolver
Adjust content in /etc/resolv.conf

## Parameters

* *nameservers*: List of servers to use (default: <i>['127.0.0.1']</i>)
* *search_domain*: Search domain to resolv short names
(default: <i>'example.com'</i>)

## Usage
<code>
  class { 'resolvconf':
    nameservers  => [ '127.0.0.1', '1.2.3.4' ]
    search_domain  => 'subdomain.mydomain.com mydomain.com',
  }
</code>
