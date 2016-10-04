jan:

  user.present:
    - shell: /bin/zsh
    - home: /home/jan
    - groups:
        - wheel
    - optional_groups:
        - audio
        - libvirt
        - lock
        - users
        - uucp
    - password: {{ salt['pillar.get']('users:jan:password') }}
    - require:
        - pkg: packages-min

  ssh_auth.present:
    - user: jan
    - names:
        - AAAAB3NzaC1yc2EAAAADAQABAAACAQC0y0CT4KxQYczX8c4YQ0v3C4TlOjnDWzJlQwA315FdSmmh4f7XszuPck8B50pYzj7tzQFjgSrrgTGUnoiLFrTn9ASAhqKgLoonkHsuT3qgl6/qTk+URMOeNyzRykO+UHRG3dxNd8RWtdtiORn2d8BmOWtb/U6cUNvLmLE4cWzBiMItdCnA7Ex0kHCdODvxqK87RJtoqbwn7sCFZdHOfOARjXRbRxkOQPLAi0XO0UDwZaD64IiStJvwBDh0lKSgwINWvqG9wZKmd9yvi/f+JJWi2bAPTqjlPRrAf/p5VwZvsBNCNys1hrHHSeuY/+U5GAzKa/XrxPz2BI75Zc1JeY3K/6wS/W1bNRXzL/spBNEbkPMg6/wuiYh2vMOKX1j0hY/EMxCHjWPVbG8WtnfqAEoLFFPTDPbavu2hYpxYsgvAoKnQ6+ItJZncS472tl6W27prK2ELOYrWL6X+mSfAiUXfYvfKv4o7anf7AeAp430HucbLbyZKM3sBTnuDB138gcXqL0XOGvKxpHiaKaUDvQP5XY2bBSZd48NNJJnwVTCTIqLOld9qyf7YIrcourND3JFa1guSDgWbvfscs2klnERFSt+0mjQqmlAP7G9AtD1rtHOCiksxpUxBseeglOYoR/Jgw+EJb0FCCnjkNEowlYoBOC4RNk3red3xueNvVGuKcQ== jan@janpc
        - AAAAB3NzaC1yc2EAAAADAQABAAACAQDhzp/FsMdYvh4blguGKRuYagPOH69xFYhN80WokaOeLcCtpzmzJx2hxFM48SjZdxq+HBCYm/dWxvlH/cD3e7ux51UF5mpW4oKZcUmPd083Wrm42FkdTKnJDoFbSBpe/6lEyZ5kaFoQGdewjLeNHUQQ/wDSAzdyTBl1NLv/o8LqHnr288AD2wdfx9EVkqKhZqntFmjBgQd5KhqJlOmdTzLgr/3gKh3GxpYtRbe/yALIs0GxbJaveIVZU+MKbnQAoaFsGqGgIR3JFwKzv6tXPbyCIh36LtnqNRcbc4fbCogSz8beEWWxaraVPp0yGyBGNIahqZAq/3o+eYLuYEg0gc2ug4Y2WV8N6HMhZKZn4wZn504t9iU2BCAeQp1lsL2s8qZ8BG/c5CCPFrleW82wN+Rky4ihTKP17lZooz5wVKsy3mOid9VfA2oHMkW4qBhY/0XnNwR9rjWHpDHc3vWHSVAozzaZetfC/xAIMUlGVuCYdkvVWDXRVZPCHPaq38VLUCRuNiUquC0btKkx0ixbBtZ8fHKBKaP0NCbmfHvpxYQ7nqs8K0IYE/undJYAGKSSCl9x41FLAfATU0/8F4nNeTUt86dn/cg1DP0tvTBA+ID+RaZt2uqJuc/TSoVPNVXeqgRjdvWLecIrhIPGqKaGMYFOO3QiDwXY9PmOiWaT9C4kyQ== jan@aleph1
