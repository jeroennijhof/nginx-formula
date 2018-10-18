nginx:
  pkg.installed:
    - name: nginx
  service.running:
    - name: nginx
    - enable: True

/var/www/html/index.html:
  file.managed:
    - source: salt://nginx/files/index.html
    - user: root
    - group: root
    - mode: 644
