#!/bin/sh
c_branch=$(git branch --show current)
 echo "the current branch is" $c_branch
 git checkout $c_branch
 for branch in $(git branch | cut -c 3-)
  do
     if [ "$branch" != "$c_branch" ]; then
       echo "different branch is" $branch
       git checkout $c_branch
       git  merge $branch -m "merged $branch"
       git graph
       sleep 1
     fi
  done
