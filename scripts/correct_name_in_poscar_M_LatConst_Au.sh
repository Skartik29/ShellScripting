#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
fcc_111="ad_fcc_111"
fcc_100="ad_fcc_100"
fcc_211="ad_fcc_211"

for metals in au
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
				#Correct the lattice constant
				sed -i -e "2s/.*/2.95217081145384/" POSCAR
                        	#Replace C with N or O as provided
                        	sed -i -e 's/Ag/Au/g' POSCAR
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
                                #Correct the lattice constant
                                sed -i -e "2s/.*/2.95217081145384/" POSCAR
                                #Replace C with N or O as provided
                                sed -i -e 's/Ag/Au/g' POSCAR
                                cd ..
                        done
                        cd ..		
		done
                for sites in 4-fold-hollow
                do
                        cd $sites
                        #Correct the lattice constant
                        sed -i -e "2s/.*/2.95217081145384/" POSCAR
                        #Replace C with N or O as provided
                        sed -i -e 's/Ag/Au/g' POSCAR
                        cd ..
                done
		cd ..
        done
        cd ..
	cd ..
done
					

			
