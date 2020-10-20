#!/bin/sh
git init
touch a.txt
echo "hello" > a.txt
git add a.txt
git commit -m"commit m1"
git branch feature
git checkout feature
touch b.txt
echo "hi" > b.txt
git add b.txt
git commit -m"commit f1"
echo"hi1" > b.txt
git add b.txt
git commit -m"commit f2"
git checkout master
echo "hello1" > a.txt
git add a.txt
git commit -m "m2"
echo "hello2" > a.txt
git add a.txt
git commit -m "m3"
git graph 
sleep 1
git merge feature -m"merged"
git graph

