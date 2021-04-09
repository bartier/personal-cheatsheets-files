#!/usr/bin/env bash
content=""

for dir in `ls -d */ $pwd`;
do
        cd $dir
        if [ -d ".git" ]; then
                branch_content=`git branch | sed -n 's/^\* //p'`
                content="${content}$dir,$branch_content\n"
        fi
        cd ..
done

echo $content > output.tmp

column -n output.tmp -t -s ","

rm output.tmp

echo "\nEnd."
