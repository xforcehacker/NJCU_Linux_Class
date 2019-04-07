Print most used commands - history
history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr


Clear the Exim Queue
$ exim -bp | exiqgrep -i | xargs exim -Mrm


List IP addresses connected to your server on port 80
$ netstat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | headc


Open Windows internet shortcut (*.url) files in firefox
$ grep -i url='*' file.url | cut -b 5- | xargs firefox


Md5sum the last 5 files in a folder
$ find /directory1/directory2/ -maxdepth 1 -type f | sort | tail -n 5 | xargs md5sum



