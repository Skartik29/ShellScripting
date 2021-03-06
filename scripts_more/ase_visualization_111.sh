#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="ad_fcc_111"
fcc_100="ad_fcc_100"
fcc_211="ad_fcc_211"
sub='sbatch --job-name=$(pwd)'

for metals in ag au cu ir pd pt rh
do
        cd $metals/$fcc_111
        for gas in CO
        do
        	cd $gas
        	for sites in top bridge fcc hcp 
                do
			cd $sites
			#ase-gui visualizer
			ase-gui CONTCAR &
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
