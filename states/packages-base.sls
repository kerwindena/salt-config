packages-base:

  pkg.latest:
    - pkgs:
      - {{ salt['pillar.get']('package:emacs', 'emacs-nox') }}
