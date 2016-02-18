class resolver::config (
  $nameserver = $resolver::nameserver,
  $domain     = $resolver::domain,
  $search     = $resolver::search,
  $options    = $resolver::options,
  $random     = $resolver::random,
  $brsnoop    = $resolver::brsnoop,
) inherits resolver {

  if $nameserver != [] {

    if $random {
      $real_nameserver = fqdn_rotate($nameserver)
    }
    else
    {
      $real_nameserver = $nameserver
    }

    file { '/etc/resolv.conf':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/resolv.conf.erb"),
      noop    => $brsnoop,
    }
  }

}

