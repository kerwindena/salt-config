emacs:
  pkg.installed:
    {% if salt['grains.get']('graphical', False) != True %}
    - name: emacs-nox
    {% endif %}
    - refresh: True
