#!/bin/sh -e

cat >/etc/supervisord.d/stmm.ini<<EOF
[program:stmm]
command=node /opt/stmm/bin/smm.js
user=nobody
autorestart=true
redirect_stderr=true
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
EOF

supervisord -c /etc/supervisord.conf
