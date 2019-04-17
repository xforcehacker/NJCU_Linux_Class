# Homework

## Problem Statement
Write 3 services that systemd will start automatically when the system boots. 

## Rationale
A thing you might want to do is have a program run as soon as your computer boots up. This could be for a number of reasons.

I'm asking you to write 3 services because I want you to remember how to do this / that this is possible. And as they say "Third time's
the charm" - "a la tercera va la vencida" - I don't know if this sentiment exists in other languages but I'd be curious to know.

## Submission Guidelines
1. Pull request due April 25th by 7PM.
2. Screenshot showing the result of `uptime` and `sudo service SERVICE_NAME status` ( or `sudo systemctl status SERVICE_NAME` ) for 
   each of the services you created. uptime should be <= 1 minute and the status should indicate that all your services are running.
3. Include all  the service / code /etc. files you wrote to make this happen.
