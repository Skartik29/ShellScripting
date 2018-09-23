#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
clean_slab="clean_slab" 
fcc_111="ad_fcc_111"
fcc_100="ad_fcc_100"
fcc_211="ad_fcc_211"

for metals in ag
do
        cd $metals/$fcc_211
	cp -r C/ N/ 
	cp -r C/ O/
	cd ..
	cd ..
done
					

			
