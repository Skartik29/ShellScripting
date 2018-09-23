#!/bin/bash

#Place this script in the directory containing metals
z=`pwd`
single_atom="1-atom"
clean_slab="clean_slab" 
fcc_111="ad_fcc_111"
fcc_100="ad_fcc_100"
fcc_211="ad_fcc_211"
contcar = "CONTCAR"

for metals in ag au cu ir pd pt rh
do
	cd $metals
	for surfaces in ad_fcc_211
	do 
		cd $surfaces
		cd $clean_slab
		#Check if reached required accuracy
                r=`tail out | grep reached | awk '{print $1}'`
              	#Fetch the total energy
                e=`tail out | grep E0 | awk '{print $5}'`
                #echo $metals/$fcc_211/$clean_slab $e $r >> $z/output
		cd ..
		for gas in C N O
		do
			cd $gas
			for sites in 4f-h-add-atoms
			do
				cd $sites
				#for s in fcc hcp
				#do
					#cd $s 
                                	#Check if reached required accuracy
                        		r=`tail out | grep reached | awk '{print $1}'`
                        		#Fetch the total energy
                        		e=`tail out | grep E0 | awk '{print $5}'`
                        		echo $metals/$fcc_211/$gas/$sites $e $r >> $z/output
					#cd ..
				#done
				cd ..
			done
			cd ..
		done
		cd ..
	done
	cd ..
done
					

			
