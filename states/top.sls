base:

  '*':
    - salt
    - sudo
    - basepackages
    - terminfo.urxvt
    - users.jan

  'cpuarch:x86_64':
    - match: grain
    - basepackages.extended

  'salt':
    - salt.master
