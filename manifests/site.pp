node default {
  file {'/root/Readme':
    ensure  => file,
    content => 'This is a README!',
    owner   => 'root',
    }
  file {'/root/Readme':
    owner   => 'root',
    }
}
