#!/bin/bash

DATE="$(date +'%Y-%m-%d %H:%M:%S')"
#rsync -avPz --delete --stats -l -t /home/hanlife/www/ /home/hanlife/www_backup/
rsync -avPz --delete --stats -l -t /home/jsy/test/c1/ /home/jsy/test/c2/

if [ $? -eq 0 ]
then
	git add --all;
	git commit -m "chore(auto): ${DATE} 자동커밋을 하다";
	git push
else
	echo FAIL
fi
