base:

  '*':
    - salt
    - packages-min

  'cpuarch:x86_64':
    -  match: grain
    - packages-base

  'salt':
    - salt.master
    - users.jan
