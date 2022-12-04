user_arun_admin:
  user.present:
    - name: arun_admin
    - fullname: AN Admin
    - shell: /bin/bash
    - home: /home/arun_admin
    - uid: 10000
    - gid_from_name: True
    - groups:
        - wheel

arun_key:
  ssh_auth.present:
    - name: arun_admin
    - user: arun_admin
    - source: salt://users/keys/arun_admin.pub