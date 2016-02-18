class resolver (
  $nameserver = [],
  $domain     = '',
  $search     = [],
  $options    = [],
  $random     = false,
  $ifnoop     = $::clientnoop,
) {

  class { '::resolver::config': } ->
  Class ['resolver']

}

