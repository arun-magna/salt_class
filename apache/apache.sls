apache2:
  pkg.installed

/var/www/html/index.html:
  file:
    - managed
    - source: salt://apache/templates/index.html

apache2 Service:
  service.running:
    - name: apache2
    - enable: True
    - require:
      - pkg: apache2