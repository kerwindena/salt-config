package:

{% if grains['os'] == 'Arch' %}

  emacs-nox: emacs-nox
  git: git
  python2-pygit2: python2-pygit2
  salt-master: salt-zmq
  salt-minion: salt-zmq
  sudo: sudo
  zsh: zsh

{% endif %}
