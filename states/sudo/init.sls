sudo:
  pkg.installed:
    - name: {{ salt['pillar.get']('package:sudo', 'sudo') }}
  file.managed:
    - name: /etc/sudoers
    - source: salt://sudo/sudoers
    - require:
        - pkg: sudo
