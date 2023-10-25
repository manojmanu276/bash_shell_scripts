#!/bin/bash

read -p "enter the directory path:" dir_path

if [ -d $dir_path ]
then
echo "directory already exists"                                                          # checking if the said directory already exists
else
echo "directory doesn't exist"                                                            # creating the directory if it doesn't exists
echo "creating the directory"
mkdir $dir_path
cd  $dir_path                                                                             # moving inside the said directory
wget https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz  # downloading package inside the directory
yum install unzip zip tar -y
tar -xzf apache-maven-3.9.5-bin.tar.gz                                                       # extracting package inside the directory
fi



