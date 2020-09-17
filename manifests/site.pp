node default {
  file { '/root/README' :
    ensure => file,
    content => "This is an r10k deplpoyment",
  }
  
    file { '/root/README' :
    ensure => file,
    content => "Please ignore this",
  }
}
