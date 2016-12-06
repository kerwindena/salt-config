base:

  'os:Arch':
    - match: grain
    - package.arch

  'os:Centos':
    - match: grain
    - package.centos
