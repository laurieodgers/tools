#!/bin/bash

LOGPATH="/var/log"
USER="user"
HOST="10.1.2.3"

set -x
date

# sync files to nas
# zip, links, recursive, verbose, human readable, delete at destination (trust source as truth)
/usr/bin/rsync -zlrvh --delete /san/files/applications/ user@${HOST}:/share/MD0_DATA/applications >> ${LOGPATH}/rsync-applications.log
/usr/bin/rsync -zlrvh --delete /san/files/business user@${HOST}:/share/MD0_DATA/business >> ${LOGPATH}/rsync-business.log
/usr/bin/rsync -zlrvh --delete /san/files/directors/ user@${HOST}:/share/MD0_DATA/directors >> ${LOGPATH}/rsync-directors.log
/usr/bin/rsync -zlrvh --delete /san/files/files/ user@${HOST}:/share/MD0_DATA/files >> ${LOGPATH}/rsync-files.log
/usr/bin/rsync -zlrvh --delete /san/files/files-notbackedup/ user@${HOST}:/share/MD0_DATA/files-notbackedup >> ${LOGPATH}/rsync-files-notbackedup.log
/usr/bin/rsync -zlrvh --delete /san/files/home user@${HOST}:/share/MD0_DATA/employee-homedirs  >> ${LOGPATH}/rsync-employee-homedirs.log
/usr/bin/rsync -zlrvh --delete /san/files/humanresources user@${HOST}:/share/MD0_DATA/humanresources >> ${LOGPATH}/rsync-humanresources.log
/usr/bin/rsync -zlrvh --delete /san/files/jobs user@${HOST}:/share/MD0_DATA/jobs >> ${LOGPATH}/rsync-jobs.log
/usr/bin/rsync -zlrvh --delete /san/files/netlogon user@${HOST}:/share/MD0_DATA/netlogon  >> ${LOGPATH}/rsync-netlogon.log
/usr/bin/rsync -zlrvh --delete /san/files/projects user@${HOST}:/share/MD0_DATA/projects >> ${LOGPATH}/rsync-projects.log
/usr/bin/rsync -zlrvh --delete /san/files/templates user@${HOST}:/share/MD0_DATA/templates >> ${LOGPATH}/rsync-templates.log
date
