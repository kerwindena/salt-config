packages-base:

  pkg.latest:
    - pkgs:
      - {{ salt['pillar.get']('package:emacs-nox', 'emacs-nox') }}
