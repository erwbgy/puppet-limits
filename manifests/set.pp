define limits::set (
  $domain,
  $item,
  $soft = undef,
  $hard = undef
) {
  if $soft {
    limits::conf { 'wso2esb':
      domain => $domain,
      type   => 'soft',
      item   => $item,
      value  => $soft,
    }
  }
  if $hard {
    limits::conf { 'wso2esb':
      domain => $domain,
      type   => 'hard',
      item   => $item,
      value  => $hard,
    }
  }
}
