#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="fcc_111"
fcc_100="fcc_100"
fcc_211="fcc_211"

for metals in cu
do
        cd $metals/$fcc_111
        for gas in CO
        do
        	cd $gas
        	for sites in fcc-add-3-atoms hcp-add-3-atoms
                do
			cd $sites
				#Correct the lattice constant
                                sed -i -e "2s/.*/2.57174736317547/" POSCAR
                                #Replace C with N or O as provided
                                sed -i -e 's/Ag/Cu/g' POSCAR
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
