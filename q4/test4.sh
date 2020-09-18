#!/bin/bash
git init
touch file.txt
echo "first" > file.txt
git add file.txt
git commit -m"first commit"
git graph
sleep 2

mkdir f1
touch file1.txt
echo "second" > file1.txt
mv file1.txt f1
git add file.txt f1
git commit -m"second commit"
git graph
sleep 2

mkdir f2
touch file2.txt
cp ./f1/file1.txt file2.txt
mv file2.txt f2
git add file.txt f1 f2
git commit -m"third commit"
git graph
sleep 2

rm -r f1
git add file.txt f2 f1
git commit -m"fourth commit"
git graph
sleep 2

mkdir f3
cp ./f2/file2.txt ./f3/file3.txt 
cp file.txt ./f3/file4.txt
git add f3
rm -r f2
git add f2
git commit -m"fifth commit"
git graph
sleep 2

rm -rf file.txt
git add file.txt
git commit -m"sixth commit"
git graph
sleep 2

rm -r f3
git add f3
mkdir f4
touch ./f4/file5.txt
echo "first" > ./f4/file5.txt
cp ./f4/file5.txt ./f4/file6.txt
git add f4
git commit -m"seventh commit"
git graph
sleep 2
