packages-min:
  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:git', '_') }}
        - {{ salt['pillar.get']('package:inxi', '_') }}
        - {{ salt['pillar.get']('package:zsh', '_') }}
        - {{ salt['pillar.get']('package:urxvt-terminfo', '_') }}
    - refresh: True
