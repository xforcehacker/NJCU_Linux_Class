path=backups`date +\_%m_\%d_\%Y__\%H\hr.tar`
cd /; sudo mkdir backups
tar vcf /$path  /home/c4inaction/Desktop; mv /$path /backups
