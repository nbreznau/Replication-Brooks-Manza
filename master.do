*Set up ISSP data
do isspmrg

*Different Measures
*Brooks and Manza are not explicit about how they construct their scale
*I attempt several different constructions
do measures

*Macro-data preparation
do macprep

*Kenworthy's data
do kenw

***************************
**********ANALYSES*********
***************************

*Note that you can run the replication from here using the file
*int_and_e.dta, downloadable from the Repository


*Table 1 Replications compared to original findings and
*Table 2 Endogenous Error Terms
do missmain1

*Table 3 Replication plus main effect
do missmain3

*Sensitivity Analyses
do sense
