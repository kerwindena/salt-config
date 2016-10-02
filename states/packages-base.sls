packages-base:

  pkg.installed:
    - pkgs:
      - {{ salt['pillar.get']('package:emacs', 'emacs-nox') }}
