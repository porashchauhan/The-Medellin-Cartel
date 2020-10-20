#!/bin/sh
git init
touch file1.txt
echo "file1" > file1.txt
touch file2.txt
echo "file2" > file2.txt
touch file3.txt
echo "file3" > file3.txt

git add file1.txt file2.txt file3.txt
git commit -m"some commits to master"

git branch 11940470
git branch 11940840
git branch 11940090

git checkout 11940840

touch file4.txt
echo "file4" > file4.txt
touch file5.txt
echo "file5" > file5.txt

git add file4.txt file5.txt
git commit -m"some commits to 11940840"


git checkout 11940470

touch file6.txt
echo "file6" > file6.txt
touch file7.txt
echo "file7" > file7.txt

git add file6.txt file7.txt
git commit -m"some commits to 11940470"


git checkout 11940090

touch file8.txt
echo "file8" > file8.txt
touch file9.txt
echo "file9" > file9.txt

git add file8.txt file9.txt
git commit -m"some commits to 11940090"

git checkout master

touch file10.txt
echo "file10" > file10.txt

git add file10.txt
git commit -m"made a commit to master"

