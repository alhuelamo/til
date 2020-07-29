# Disable email address in crontab

Crontab won't generate any email updates if the standard output and standard error of the command redirects to `/dev/null`

```
0 * * * * command to run > /dev/null 2>&1
```
