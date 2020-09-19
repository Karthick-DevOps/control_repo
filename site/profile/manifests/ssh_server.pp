class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXsBCsG6JVo4itnf6lZhCnpjAQNFdUzlmVIYdntewFbY3pEpe60H5TRMdffYi5RAvSgKdqRYLmLYahta27XWHWrw7jAOg5IyYhm/eQtMbJ1ASxNISkQYGODu2PwKNMAjO6GsF69Kc1mHeT9XfCMhqnyPbPWSPB8BbIZbUGlliYWY6p7exo0XDmGlYONSaGV4tUqTvVGK8HGarXR5q2ECYQDoHszYXjQ9Ebp6andy+pSlG1HD7nVbeCFfCCSguhdZEjG4Ilv3Pc/hF7z00vub880GJHkHpHL+F+BkXetCnFfd4IyDbtgAzjxdLpuD1MFad/LNjHXuB/wepQIcw18/SD',
  }  
}
