#!/bin/bash
export TestGroup=('malware' 'authentication' 'networking' 'storage' 'filesystems'); 
for TG in ${TestGroup[@]}; 
do sudo lynis audit system --tests-from-group $TG >> /tmp/lynis.partial_scan.log; 
done
