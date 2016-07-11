salt-minion:
  service.running:
    - enable: True
    - watch:
        - file: salt-minion
  file.managed:
    - name: /etc/salt/minion
    - source: salt://salt/minion
