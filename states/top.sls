base:

  '*':
    - salt
    - packages-min
    - users.jan

  'cpuarch:x86_64':
    -  match: grain
    - packages-base

  'salt':
    - salt.master
