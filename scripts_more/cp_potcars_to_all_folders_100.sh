#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="fcc_111"
fcc_100="fcc_100"
fcc_211="fcc_211"
potcar="POTCAR"

for metals in ag au cu ir pd pt rh
do
        cd $metals/$fcc_100
        for gas in CO
        do
        	cd $gas
        	for sites in hollow-add-a-site
                do
			cd $sites
			#Copy and rename the potcar
                                var="POTCAR"
                                var=$var$metals$gas
                                cp /home/skartik/potcars/$var .
                                mv $var $potcar
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
