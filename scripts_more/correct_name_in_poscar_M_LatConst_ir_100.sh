#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="fcc_111"
fcc_100="fcc_100"
fcc_211="fcc_211"

for metals in ir
do
        cd $metals/$fcc_100
        for gas in CO
        do
        	cd $gas
        	for sites in hollow-add-a-site
                do
			cd $sites
			#Correct the lattice constant
                        sed -i -e "2s/.*/2.74498852456618/" POSCAR
                        #Replace C with N or O as provided
                        sed -i -e 's/Ag/Ir/g' POSCAR
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
