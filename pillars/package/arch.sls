package:

  git: git
  hwinfo: hwinfo
  inxi: inxi
  postgresql: postgresql
  python2: python2
  python2-pygit2: python2-pygit2
  salt-master: salt-zmq
  salt-minion: salt-zmq
  sudo: sudo
  zsh: zsh

{% if grains.get('graphical', default=False) == True %}
  emacs: emacs
{% else %}
  emacs: emacs-nox
{% endif %}