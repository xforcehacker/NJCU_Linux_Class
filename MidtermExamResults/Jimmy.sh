find  . -type f -print0 | xargs -0 du -s | sort -rn | awk 'NR < 14 {print $NF}' 
