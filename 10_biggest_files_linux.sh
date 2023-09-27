#!/bin/bash

find / -type f printf "%s %p\n" | sort -rn | head -n 10 > 10biggest.txt
