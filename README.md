# Maccullochella-hybridisation
Data and scripts of hybridisation study of Murrumbidgee River Trout Cod (Maccullochella macquariensis) and Murray Cod (M. peelii).

The paper, to be published in PeerJ if accepted  will be: WHO’S YOUR MAMA ? RIVERINE  HYBRIDIZATION OF THREATENED FRESHWATER TROUT COD AND MURRAY COD. It is submitted for review 9 June 2016.

There are 4 files here. 

1. Readme
2. Licence
3. R script (hybridsPCA.R) To use this script you will need R packages adegenet (http://adegenet.r-forge.r-project.org/) and ggplot2 (http://ggplot2.org, https://github.com/hadley/ggplot2). You will also need the folowing data file which is a genlight object. This script will load it in line 1.
4. Data (snpsHybridData) This is a genlight object (see adegenet). As well as snp data (n=6364 loci), it contains a number of meta data fields including: individual id (n=278), species, site name, latitude, longitude, year, hatch day of year, catch day of year, and age in days.
