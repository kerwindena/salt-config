packages-min:

  # Critical packages without update
  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:zsh', 'zsh') }}

  # Everything else
  pkg.latest:
    - pkgs:
        - {{ salt['pillar.get']('package:git', 'git') }}
        - {{ salt['pillar.get']('package:hwinfo', 'hwinfo') }}
        - {{ salt['pillar.get']('package:inxi', 'inxi') }}
