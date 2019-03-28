# Extra credit 2

Create a cron job to package your /home directory into a .tar once an hour. 
The cron  job should store the .tar in /backups, and it should be called backup_$MONTH_$DAY_$YEAR_$HOUR
with MONTH, DAY, etc. being appropriately named.

## Submission guidelines
Make a PR on this repo with your code under EC_02/YourName.

As always - due promptly by 7PM on April 11th. Pull request due by that time! No explanations of extenuating personal, technical or 
mystical circumstancewill be accepted! No pull requests at 7:01!

Your PR should contain 
1. The cron configuration you have written in a file called mycrontab.txt. I can't see your crontab, 
so I'm having you write your cron configuration in this file.
2. Whatever supporting scripts you wrote to make this job happen.
3. A screenshot of `ls -l /backups` after 3 hours. I should see two or three tar archives that look like:

```
backup_09_08_2019_10.tar
backup_09_08_2019_11.tar
...
```

or maybe

```
backup_SEP_08_19_10.tar
backup_SEP_08_19_11.tar
...
```

or however you parse the date format.

