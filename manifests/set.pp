define limits::set (
  $item,
  $soft = undef,
  $hard = undef
) {
  if $soft {
    limits::entry { "${title}-soft-${item}":
      domain => $title,
      type   => 'soft',
      item   => $item,
      value  => $soft,
    }
  }
  if $hard {
    limits::entry { "${title}-soft-${item}":
      domain => $title,
      type   => 'hard',
      item   => $item,
      value  => $hard,
    }
  }
}
