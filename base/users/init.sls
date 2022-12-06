#user_arun_admin:
#  user.present:
#    - name: arun_admin
#    - fullname: AN Admin
#    - shell: /bin/bash
#    - home: /home/arun_admin
#    - uid: 10000
#
#arun_admin_key:
#  ssh_auth.present:
#    - name: arun_admin
#    - user: arun_admin
#    - source: salt://users/keys/arun_admin.pub

{% for user, uid in pillar.get('users', {}).items() %}
  {{ user }}:
     user.present:
       - name: {{ user }}
       - home: /home/{{ user }}
       - shell: /bin/bash
       - uid: {{ uid }}
  {% endfor %}