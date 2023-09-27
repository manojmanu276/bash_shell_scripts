#!/bin/bash

find . -mtime +30 -type f -delete
*/30 20 * * 5/home/ec2-user/delete_files_older_than_30days.sh




<<com
#!/bin/bash-> specifies the shell in which the current shell script has to run
find-> is unix command used for recursive search of files and folder in the system
. -> specifies the current directory where i want to delete files older than 30days
-mtime +30 -> specifies the files that are only older than 30 days
-type f -> specifies that only files and not folders must be deleted
-delete -> option to remove the said files
30 20 * * 5 -> is the cron job format to execute this shell script every friday(5) at 8:30 P.M(20:30)
/home/ec2-user/delete_iles_older_than_30days.sh -> is complete path of this shell script file, so that it is executed as per the cron jobformat
com


