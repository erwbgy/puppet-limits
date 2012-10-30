class limits {
  $limits = hierahash('limits') 
  if $limits {
    create_resources( 'limits::set', $limits )
  }
}
