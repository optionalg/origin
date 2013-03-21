class test_class {
   file { "/tmp/testfile":
      ensure => present,
      mode   => 644,
      owner  => root,
      group  => root
    }
}

# tell puppet on which client to run the class
node jasmeet-ubuntu {
    include test_class
}
