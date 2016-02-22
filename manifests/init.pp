class resolver (
  $nameservers = [],
  $domain     = '',
  $search     = [],
  $options    = [],
  $random     = false,
  $if_noop     = $::clientnoop,
) {

  class { '::resolver::config': } ->
  Class ['resolver']

}

