#!/bin/bash

find / -type f printf "%s %p\n" | sort -rn | head -n 10 > 10biggestfiles.txt

<<com
-> #!/bin/bash specifies the shell to use for running the script.
-> find / -type f -printf '%s %p\n' searches for all files in the root directory / and prints their size and path, separated by a space, with a newline character at the end of each line.
-> sort -nr sorts the output of find numerically in reverse order, so the largest files are listed first.
-> head -10 shows only the first 10 lines of output, which correspond to the 10 largest files in the system.
-> > 10biggestfiles.txt redirects the output of the entire pipeline to a file named 10biggestfiles.txt in the current working directory.
com
