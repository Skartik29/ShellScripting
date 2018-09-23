#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="ad_fcc_111"
fcc_100="ad_fcc_100"
fcc_211="ad_fcc_211"
potcar="POTCAR"

for metals in ag au cu ir pd pt rh
do
        cd $metals/$fcc_211
        for gas in C N O
        do
        	cd $gas
		
        	for sites in 3-fold-hollow
                do
			cd $sites
			for s in site-0 site-1
			do
                		cd $s
				#Copy and rename the potcar
				var="POTCAR"
				var=$var$metals$gas
				cp /home/skartik/potcars/$var .
				mv $var $potcar
                        	cd ..
			done
			cd ..
		done
		for sites in 3f-h-add-atoms
		do
			cd $sites
                        for s in fcc hcp
                        do
                                cd $s
                                #Copy and rename the potcar
				var="POTCAR"
                                var=$var$metals$gas
				cp /home/skartik/potcars/$var .
                                mv $var $potcar
                                cd ..
                        done
                        cd ..		
		done
                for sites in 4-fold-hollow
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
					

			
