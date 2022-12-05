user_arun:
  user.present:
    - name: arun
    - fullname: Arun Narayanan
    - shell: /bin/bash
    - home: /home/arun
    - uid: 10001

arun_key:
  ssh_auth.present:
    - name: arun
    - user: arun
    - source: salt://users/keys/arun.pub