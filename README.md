# Maccullochella-hybridisation
Data and scripts of hybridisation study of Murrumbidgee River Trout Cod (*Maccullochella macquariensis*) and Murray Cod (*M. peelii*).

The paper, to be published in PeerJ if accepted  will be: *Who's Your Mama? Riverine Hybridisation of Threatened Freshwater Trout Cod and Murray Cod.* It is submitted for review 9 June 2016.

There are 4 files here. 

1. Licence
2. Readme.md - this file you are reading
3. hybridsPCA.R - An R script To use this script you will need R packages adegenet (http://adegenet.r-forge.r-project.org/) and ggplot2 (http://ggplot2.org, https://github.com/hadley/ggplot2). You will also need the following data file which is a genlight object. This script will load it in line 1.
4. snpsHybridData - This data file is a genlight object (see adegenet). As well as snp data (n=6364 loci), it contains a number of meta data fields including: individual id (n=278), species, site name, latitude, longitude, year, hatch day of year, catch day of year, and age in days.

If you choose to run the script on this data - it should take in the order of 130 seconds. At least thats the time it took on my notebook.
