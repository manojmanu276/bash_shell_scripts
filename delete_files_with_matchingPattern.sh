#!/bin/bash

find . -name stri\* -type f -delete


<<com
#!/bin/bash-> specifies the shell in which the current shell script has to run
find-> is unix command used for recursive search of files and folder in the system
. -> specifies the current directory where i want to delete files 
-name stri\* -> specifies all the files whose name starts with letters "stri'
-type f -> specifies that only files and not folders must be deleted
-delete -> option to remove the said files
com
