class limits {
  $limits = hiera_hash('limits', undef) 
  if $limits {
    create_resources( 'limits::set', $limits )
  }
}
