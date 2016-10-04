packages-base:

  pkg.installed:
    - pkgs:
      - {{ salt['pillar.get']('package:emacs', 'emacs-nox') }}
      - {{ salt['pillar.get']('package:hwinfo', 'hwinfo') }}
    - refresh: True
