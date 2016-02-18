class resolver (
  $nameserver = [],
  $domain     = '',
  $search     = [],
  $options    = [],
  $random     = false,
  $if_noop     = $::clientnoop,
) {

  class { '::resolver::config': } ->
  Class ['resolver']

}

