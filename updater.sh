#!/bin/bash

lastCommit=$(git log -n 1 --oneline | awk '{print $1}')
echo $lastCommit
git pull
newCommit=$(git log -n 1 --oneline | awk '{print $1}')
echo $newCommit
if [ "$lastCommit" != "$newCommit" ]; then
  echo "запускаем обновление"
else
  echo "обновление не требуется"
  cd hello
  ./hello.sh
  cd ..
  ./hello2.sh
fi

