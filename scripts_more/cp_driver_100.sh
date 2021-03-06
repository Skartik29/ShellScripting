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
			cp /home/skartik/data/adEventCalculationsOnTrMetalsAgAuCuIrPdPtRh/cnoAdEventsOnTrMetals331Lattices111And100And110And211Surfaces/coSingleAdEventOnTrMetals111And100/modified_slabs/driver.sh .
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
