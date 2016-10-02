packages-min:
  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:git', 'git') }}
        - {{ salt['pillar.get']('package:hwinfo', 'hwinfo') }}
        - {{ salt['pillar.get']('package:inxi', 'inxi') }}
        - {{ salt['pillar.get']('package:zsh', 'zsh') }}
    - refresh: True
