#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="fcc_111"
fcc_100="fcc_100"
fcc_211="fcc_211"

for metals in pt
do
        cd $metals/$fcc_211
        for gas in CO
        do
        	cd $gas
        	for sites in 4f-h-add-atoms
                do
			cd $sites
				#Correct the lattice constant
                                sed -i -e "2s/.*/2.81782064730000/" POSCAR
                                #Replace C with N or O as provided
                                sed -i -e 's/Ag/Pt/g' POSCAR
			cd ..
		done
		for sites in 3f-h-add-atoms
		do
			cd $sites
			for s in fcc hcp
			do
				cd $s
					#Correct the lattice constant
                	                sed -i -e "2s/.*/2.81782064730000/" POSCAR
        	                        #Replace C with N or O as provided
	                                sed -i -e 's/Ag/Pt/g' POSCAR
				cd ..
			done
			cd ..
		done
		cd ..
        done
        cd ..
	cd ..
done
					

			
