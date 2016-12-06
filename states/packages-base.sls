packages-base:

  pkg.installed:
    - pkgs:
      - {{ salt['pillar.get']('package:emacs') }}
      - {{ salt['pillar.get']('package:hwinfo') }}
    - refresh: True
