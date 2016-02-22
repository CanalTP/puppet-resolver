class resolver::config (
  $nameservers = $resolver::nameservers,
  $domain     = $resolver::domain,
  $search     = $resolver::search,
  $options    = $resolver::options,
  $random     = $resolver::random,
  $if_noop    = $resolver::if_noop,
) inherits resolver {

  if $nameservers != [] {

    if $random {
      $real_nameservers = fqdn_rotate($nameservers)
    }
    else
    {
      $real_nameservers = $nameservers
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

