#!/bin/bash
dir=$1
files="$(grep -lr '<?' $dir)"
for f in $files 
do
	echo "replacing fil $f"
	sed 's@<?=@<?php echo @g' $f | sed 's@<?@<?php@g' | sed 's@<?phpphp@<?php@g' > $f.bak
	rm $f
	mv $f.bak $f
done;

