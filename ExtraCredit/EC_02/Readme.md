# Extra credit 2

Create a cron job to package your /home directory into a .tar once an hour. 
The cron  job should store the .tar in /backups, and it should be called HOME_MONTH_DAY_YEAR_HOUR
with MONTH, DAY, etc. being appropriately named.

## Submission guidelines
Make a PR on this repo with your code under EC_02/YourName.
Your PR should contain 
1. The cron configuration you have written in a file called mycrontab.txt.
2. Whatever supporting scripts you wrote to make this job happen.
3. An image of `ls -l /backups` after 3 hours.
