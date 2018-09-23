#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="fcc_111"
fcc_100="fcc_100"
fcc_211="fcc_211"
sub='sbatch --job-name=$(pwd)'

for metals in ag au cu ir pd pt rh
do
        cd $metals/$fcc_111
        for gas in CO
        do
        	cd $gas
        	for sites in fcc-add-3-atoms hcp-add-3-atoms
                do
			cd $sites
			#Submit run
                                $sub driver.sh
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
