packages-min:

  pkg.latest:
    - pkgs:
      - {{ salt['pillar.get']('package:git', 'git') }}
      - {{ salt['pillar.get']('package:sudo', 'sudo') }}
      - {{ salt['pillar.get']('package:zsh', 'zsh') }}
