user_arun_admin:
  user.present:
    - name: arun_admin
    - fullname: AN Admin
    - shell: /bin/bash
    - home: /home/arun_admin
    - uid: 10000
    - groups:
        - wheel

arun_admin_key:
  ssh_auth.present:
    - name: arun_admin
    - user: arun_admin
    - source: salt://users/keys/arun_admin.pub