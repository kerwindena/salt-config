package:

{% if grains['os'] == 'Arch' %}

  python2-pygit2: python2-pygit2
  salt-master: salt-zmq
  salt-minion: salt-zmq

{% endif %}
