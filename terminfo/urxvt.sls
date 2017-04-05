terminfo-urxvt:

  {% if grains.get('os') == 'Arch' %}

  pkg.installed:
    - name: rxvt-unicode-terminfo
    - refresh: True

  {% else %}

  file.managed:
    - name: /etc/salt/tmp/terminfo/rxvt-unicode-256color.terminfo
    - source: salt://{{ tpldir }}/rxvt-unicode-256color.terminfo
    - makedirs: True

  cmd.run:
    - name: tic /etc/salt/tmp/terminfo/rxvt-unicode-256color.terminfo
    - onchanges:
        - file: terminfo-urxvt

  {% endif %}
