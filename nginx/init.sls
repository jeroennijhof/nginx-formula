nginx:
  pkg.installed:
    - name: nginx

/var/www/html/index.html:
  file.managed:
    - source: salt://nginx/files/index.html
    - user: root
    - group: root
    - mode: 644
