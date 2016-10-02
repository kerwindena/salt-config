packages-min:

  # Critical packages without update
  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:sudo', 'sudo') }}
        - {{ salt['pillar.get']('package:zsh', 'zsh') }}

  # Everything else
  pkg.latest:
    - pkgs:
        - {{ salt['pillar.get']('package:git', 'git') }}
