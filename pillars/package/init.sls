package:

{% if grains['os'] == 'Arch' %}

{% if grains['graphical'] == 'True' %}
  emacs: emacs-nox
{% else %}
  emacs: emacs
{% endif %}

  git: git
  python2-pygit2: python2-pygit2
  salt-master: salt-zmq
  salt-minion: salt-zmq
  sudo: sudo
  zsh: zsh

{% endif %}
