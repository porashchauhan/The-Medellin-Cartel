#!/bin/bash
git init
mkdir Harshil
touch 11940470.txt
echo "iitbhilai" > 11940470.txt
mv 11940470.txt Harshil
git add Harshil
git commit -m "first commit"
git-graph
sleep 2
mkdir Porash
touch 11940840.txt
echo "iitbhilai" > 11940840.txt
mv 11940840.txt Porash
git add Porash
git commit -m "second commit"
git-graph
sleep 2
mkdir Akshar
touch 11940090.txt
echo "iitbhilai" > 11940090.txt
mv 11940090.txt Akshar
git add Akshar
git commit -m "third commit"
git-graph
sleep 2
echo


  cd .git/objects; 
  for d in *; 
  do (
  for p in $(ls $d) ; 
  do ( 
  
  if [ $(git cat-file -t $d$p) == blob ]
  then 
       printf "\033[1;31mContent of blob is\033[0m\n"
       git cat-file -p $d$p
       echo
   
  elif [ $(git cat-file -t $d$p) == tree ]
  then 
       printf "\033[1;32mBlobs of trees are\033[0m\n"
       git cat-file -p $d$p
       echo
   
  elif [ $(git cat-file -t $d$p) == commit ] 
  then
       printf "\033[1;33mAuthor and parents of the looped commit are\033[0m\n"
       echo 'Author and parents of the looped commit are'
       git cat-file -p $d$p
       echo
    
  else
  continue
  fi
  
  ); done 
  ); done
