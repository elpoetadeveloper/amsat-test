#Este bat baja en c:\download\ampr\gateway de gw.ampr.org el archivo amprhosts
# lo renombra a amprhosts.txt y lo copia a \webs\amsat.org.ar y lo envia a amsat.org.ar 
#
CD C:\IT
WS_FTP95 -q -p -s amprhosts:\pub\amprhosts -d local:c:\download\ampr\gateway\amprhosts.txt
WS_FTP95 -q -p -s gatewaysnew:\home\gateways\encap.txt -d local:c:\download\ampr\gateway\encap.txt
erase c:\download\ampr\gateway\amprhosts.txt
rename c:\download\ampr\gateway\amprhosts amprhosts.txt
copy /Y c:\download\ampr\gateway\amprhosts.txt c:\webs\amsat.org.ar
WS_FTP95 -q -p lu7aa -s local:c:\webs\amsat.org.ar\amprhosts.txt -d amsat:/var/www/amsat/amsat.org.ar/amprhosts.txt
# luego baja el encap.txt del portal.ampr.org usando ftp de gatewaysnew
# y lo envia al jnos 
WS_FTP95 -q -p -s gatewaysnew:\home\gateways\encap.txt -d local:c:\download\ampr\gateway\encap.txt

copy /Y c:\download\ampr\gateway\encap.txt c:\webs\amsat.org.ar
WS_FTP95 -q -p lu7aa -s local:c:\webs\amsat.org.ar\encap.txt -d amsat:/var/www/amsat/amsat.org.ar/encap.txt

WS_FTP95 -q -p lu7aa -d lu7abf:/jnos/encap.txt -s local:c:\download\ampr\gateway\encap.txt
#
