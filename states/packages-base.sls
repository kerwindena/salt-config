packages-base:

  pkg.installed:
    - pkgs:
      - {{ salt['pillar.get']('package:emacs', '_') }}
      - {{ salt['pillar.get']('package:hwinfo', '_') }}
    - refresh: True
