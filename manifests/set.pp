define limits::set (
  $item,
  $soft = undef,
  $hard = undef
) {
  $domain = $title
  if $soft {
    limits::entry { "${domain}-soft-${item}":
      domain => $domain,
      type   => 'soft',
      item   => $item,
      value  => $soft,
    }
  }
  if $hard {
    limits::entry { "${domain}-hard-${item}":
      domain => $domain,
      type   => 'hard',
      item   => $item,
      value  => $hard,
    }
  }
}
