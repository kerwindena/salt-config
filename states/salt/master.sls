salt-master:

  pkg.installed:
    - pkgs:
        - {{ salt['pillar.get']('package:salt-master') }}
        - {{ salt['pillar.get']('package:python2-pygit2') }}

  file.managed:
    - name: /etc/salt/master
    - source: salt://salt/master
    - require:
        - pkg: salt-master

  service.running:
    - enable: True
    - watch:
        - file: salt-master
        - pkg: salt-master
