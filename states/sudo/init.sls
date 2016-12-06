sudo:
  pkg.installed:
    - name: {{ salt['pillar.get']('package:sudo') }}
  file.managed:
    - name: /etc/sudoers
    - source: salt://sudo/sudoers
    - check_cmd: /usr/sbin/visudo -c -f
    - require:
        - pkg: sudo
