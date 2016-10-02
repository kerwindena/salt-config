packages-min:
  pkg.latest:
    - pkgs:
        - {{ salt['pillar.get']('package:git', 'git') }}
        - {{ salt['pillar.get']('package:hwinfo', 'hwinfo') }}
        - {{ salt['pillar.get']('package:inxi', 'inxi') }}
    - require:
        - pkg: packages-min-installed


# Critical packages without update
packages-min-installed:
  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:zsh', 'zsh') }}
