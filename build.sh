echo "Hi"
cp content/target/acs-aem-samples-content-1.0.0-SNAPSHOT.zip /opt/backups
curl -u admin:"admin" -F name=acs-aem-samples-content -F file=@/opt/backupsacs-aem-samples-content-1.0.0-SNAPSHOT.zip http://192.168.99.100:4502/crx/packmgr/service.jsp?cmd=upload --verbose
curl -u admin:"admin" http://192.168.99.100:4502/crx/packmgr/service.jsp?cmd=inst\&name=acs-aem-samples-content
