#!/bin/bash

# Elimiar Warning de Apache 
echo 'ServerName localhost' >> /etc/httpd/conf/httpd.conf
# modificar sitio
echo 'PCFET0NUWVBFIGh0bWwgUFVCTElDICItLy9XM0MvL0RURCBYSFRNTCAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvVFIveGh0bWwxMS9EVEQveGh0bWwxMS5kdGQiPgo8aHRtbD4KPC9ib2R5Pgo8aDU+RlJPTSBCVUlMRDwvaDU+CjwvYm9keT4KCjwvaHRtbD4K' | base64 -w0 -d > /usr/share/httpd/noindex/index.html
# Creacion de Supervisor
echo 'W3N1cGVydmlzb3JkXQpub2RhZW1vbj10cnVlCgpbcHJvZ3JhbTpodHRwZF0KY29tbWFuZD0vdXNyL3NiaW4vaHR0cGQgLUQgRk9SRUdST1VORAo=' | base64 -w0 -d > /etc/supervisord.d/supervisord.conf
