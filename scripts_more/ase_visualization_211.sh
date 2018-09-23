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
        cd $metals/$fcc_211
        	for sites in 4-fold-hollow edge_bridge_new edge_top
                do
			cd $sites
			ase-gui CONTCAR &
			cd ..
		done
		for sites in 3-fold-hollow
		do
			cd $sites
			for s in site-0 site-1
			do
				cd $s
				#ase-gui CONTCAR &
				cd ..
			done
			cd ..
		done
        cd ..
	cd ..
done
					

			
