define limits::set (
  $domain,
  $item,
  $soft = undef,
  $hard = undef
) {
  if $soft {
    limits::conf { $title:
      domain => $domain,
      type   => 'soft',
      item   => $item,
      value  => $soft,
    }
  }
  if $hard {
    limits::conf { $title:
      domain => $domain,
      type   => 'hard',
      item   => $item,
      value  => $hard,
    }
  }
}
