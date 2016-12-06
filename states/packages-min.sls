packages-min:
  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:git') }}
        - {{ salt['pillar.get']('package:inxi') }}
        - {{ salt['pillar.get']('package:zsh') }}
        - {{ salt['pillar.get']('package:urxvt-terminfo') }}
    - refresh: True
