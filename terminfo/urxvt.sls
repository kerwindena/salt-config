urxvt-terminfo:

  {% if grains.get('os') == 'Arch' %}

  pkg.installed:
    - name: rxvt-unicode-terminfo
    - refresh: True

  {% else %}

  file.managed:
    - name: /etc/terminfo/rxvt-unicode-256color.terminfo
    - source: salt://{{ tpldir }}/rxvt-unicode-256color.terminfo

  cmd.run:
    - name: tic /etc/terminfo/rxvt-unicode-256color.terminfo
    - onchanges:
        - file: .

  {% endif %}
