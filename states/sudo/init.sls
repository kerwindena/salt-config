sudo:
  pkg.installed:
    - name: sudo
  file.managed:
    - name: /etc/sudoers
    - source: salt://sudo/sudoers
    - check_cmd: /usr/sbin/visudo -c -f
    - require:
        - pkg: sudo
