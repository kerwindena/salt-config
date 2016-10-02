packages-min:

  pkg:

    # Critical packages without update
    - installed:
        - pkgs:
            - {{ salt['pillar.get']('package:zsh', 'zsh') }}

    # Everything else
    - latest:
        - pkgs:
            - {{ salt['pillar.get']('package:git', 'git') }}
            - {{ salt['pillar.get']('package:hwinfo', 'hwinfo') }}
            - {{ salt['pillar.get']('package:inxi', 'inxi') }}
