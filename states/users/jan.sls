jan:

  user.present:
    - shell: /bin/zsh
    - home: /home/jan
    - groups:
        - wheel
    - optional_groups:
        - audio
        - libvirt
        - lock
        - network
        - users
        - uucp
    - password: {{ salt['pillar.get']('users:jan:password') }}
    - require:
        - file: sudo
        - pkg: packages-min

  ssh_auth.present:
    - user: jan
    - names:
        - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAPiDlbJKEnmM2G8Br8Yj2M+cIEyTXqP4qJM6+gBQ1pm jan@janpc
        - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKv2wT7WS7suRtq5wkGXqs7IqHRMZhKRSbeMQkhvteDY jan@aleph1
