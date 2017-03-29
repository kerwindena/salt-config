base:

  '*':
    - salt
    - sudo
    - packages-min
    - terminfo.urxvt
    - users.jan

  'cpuarch:x86_64':
    - match: grain
    - packages-base

  'salt':
    - salt.master
