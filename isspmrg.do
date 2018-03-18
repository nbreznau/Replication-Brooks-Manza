*ISSP 1985 Role of Gov I
use "C:\data\ZA1490.dta", clear
recode V3 (1=36)(2=278)(3=826)(4=840)(5=40)(8=380), gen(countryx)
gen year=1986
recode V101 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode V107 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode  V102 V103 V104 V105 V106 (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govind govunemp)
gen weight85 = V141
label var weight85 "Weight85"
gen isco = V110
gen age = V117
gen sex = V118
gen mar = V120
gen edyrs = V122
gen hhinc = V128
sort countryx
recode V109 (2=0), gen(unemp_i)
save /data/ISSP85merge.dta, replace

*ISSP 1990 Role of Gov II
use /data/ZA1950.dta, clear
recode v3 (1=36)(2=278)(3=280)(4=826)(5=828)(6=840)(7=348)(8=380)(9=372)(10=578)(11=376), gen(countryx)
gen year=1990
recode v49 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v55 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode v50 v51 v52 v53 v54  (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govind govunemp)
gen weight90 = v114
label var weight90 "Weight 90"
gen sex = v59
gen age = v60
gen mar = v61
gen lifep = v62
gen isco = v66
gen edyrs = v80
gen lr = v87
gen hhinc = v100
recode v63 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx
save /data/ISSP90merge.dta, replace

*ISSP 1991 Religion I
use /data/ZA2150.dta, clear
recode v3 (18=36)(1=278)(2=280)(3=826)(4=828)(5=840)(6=348)(7=528)(8=380)(9=372)(10=578)(11=40)(12=705)(13=616)(14=376)(15=608)(16=554)(17=643), gen(countryx)
gen year=1991
recode v5 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v6 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
gen weight91 = v131
label var weight91 "Weight 91"
*No weight specified for Australia or it is 0 (highly unlikely), so I recode it to 1 so that Australia doesn’t get dropped after the collapse with weights.
replace weight91=1 if countryx==36
gen sex = v77
gen age = v78
gen mar = v79
gen lifep = v80
gen isco = v84
gen edyrs = v98
gen lr = v105
gen hhinc = v118
recode v81 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx
save /data/ISSP91merge.dta, replace

*ISSP 1996 Role of Gov III
use /data/ZA2900.dta, clear
recode v3 (1=36)(2=278)(3=280)(4=826)(5=828)(6=840)(7=40)(8=348)(9=380)(10=372)(11=528)(12=578)(13=752)(14=203)(15=705)(16=616)(17=100)(18=643)(19=554)(20=124)(21=608)(22=376)(23=376)(24=392)(25=724)(26=428)(27=250)(28=196)(30=756), gen(countryx)
gen year=1996
recode v36 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v42 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
recode v37 v38 v39 v40 v41  (1=4) (2=3) (3=2) (4=1), gen(govprices govhealth govold govind govunemp)
gen weight96 = v325
label var weight96 "Weight 96"
gen sex = v200
gen age = v201
gen mar = v202
gen lifep = v203
gen edyrs = v204
gen isco = v208
gen lrS = v223
recode v206 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx
save /data/ISSP96merge.dta, replace

*ISSP 1998 Religion II
use /data/ZA3190.dta, clear
recode v3 (1=36)(2=278)(3=280)(4=826)(5=828)(6=840)(7=40)(8=348)(9=380)(10=372)(11=528)(12=578)(13=752)(14=203)(15=705)(16=616)(17=100)(18=643)(19=554)(20=124)(21=608)(22=376)(23=376)(24=392)(25=724)(26=428)(27=703)(28=250)(29=196)(30=620)(31=152)(32=208)(33=756), gen(countryx)
gen year=1998
recode v5 (1=4)(2=3)(3=2)(4=1), gen(govjobs)
recode v6 (1=4)(2=3)(3=2)(4=1), gen(govincdiff)
gen weight98 = v316
label var weight98 "Weight 98"
gen sex = v200
gen age = v201
gen mar = v202
gen lifep = v203
gen edyrs = v204
gen isco = v208
gen lrS = v223
recode v206 (5=1)(1/4=0)(6/10=0), gen(unemp_i)
sort countryx
save /data/ISSP98merge.dta, replace
append using /data/ISSP85merge.dta, keep(countryx year govjobs govincdiff sex age mar edyrs isco unemp_i weight85)
append using /data/ISSP90merge.dta, keep(countryx year govjobs govincdiff sex age mar lifep edyrs isco unemp_i lr weight90)
append using /data/ISSP91merge.dta, keep(countryx year govjobs govincdiff sex age mar lifep edyrs isco unemp_i lr weight91)
append using /data/ISSP96merge.dta, keep(countryx year govjobs govincdiff sex age mar lifep edyrs isco unemp_i lrS weight96)

*Fix Weights
*1985 has a very strange weight variable that it seems will fall within the apppropriate range if divided by 100k. 

gen weight85adj = weight85/100000
egen weight=rowmean(weight85adj weight90 weight91 weight96 weight98)
drop weight85 weight85adj weight90 weight91 weight96 weight98
*Unique Case ID 
recode countryx (278 280=276), copy gen(countryy)
gen id = .
replace id = 3686 if year==1986 & countryy==36
replace id = 4086 if year==1986 & countryy==40
replace id = 27685 if year==1986 & countryy==276
replace id = 38086 if year==1986 & countryy==380
replace id = 82685 if year==1986 & countryy==826
replace id = 84085 if year==1986 & countryy==840
replace id = 3690 if year==1990 & countryy==36
replace id = 3693 if year==1991 & countryy==36
replace id = 3696 if year==1996 & countryy==36
replace id = 3698 if year==1998 & countryy==36
replace id = 4093 if year==1991 & countryy==40
replace id = 4099 if year==1998 & countryy==40
replace id = 12496 if year==1996 & countryy==124
replace id = 12499 if year==1998 & countryy==124
replace id = 25097 if year==1996 & countryy==250
replace id = 25098 if year==1998 & countryy==250
replace id = 27690 if year==1990 & countryy==276
replace id = 27691 if year==1991 & countryy==276
replace id = 27696 if year==1996 & countryy==276
replace id = 27698 if year==1998 & countryy==276
replace id = 37291 if year==1990 & countryy==372
replace id = 37291 if year==1991 & countryy==372
replace id = 37296 if year==1996 & countryy==372
replace id = 37298 if year==1998 & countryy==372
replace id = 38091 if year==1990 & countryy==380
replace id = 38090 if year==1991 & countryy==380
replace id = 38096 if year==1996 & countryy==380
replace id = 38098 if year==1998 & countryy==380
replace id = 39296 if year==1996 & countryy==392
replace id = 39298 if year==1998 & countryy==392
replace id = 52891 if year==1991 & countryy==528
replace id = 52898 if year==1998 & countryy==528
replace id = 55491 if year==1991 & countryy==554
replace id = 55497 if year==1996 & countryy==554
replace id = 55498 if year==1998 & countryy==554
replace id = 57890 if year==1990 & countryy==578
replace id = 57891 if year==1991 & countryy==578
replace id = 57896 if year==1996 & countryy==578
replace id = 57898 if year==1998 & countryy==578
replace id = 72496 if year==1996 & countryy==724
replace id = 72498 if year==1998 & countryy==724
replace id = 75296 if year==1996 & countryy==752
replace id = 75298 if year==1998 & countryy==752
replace id = 75698 if year==1996 & countryy==756
replace id = 75699 if year==1998 & countryy==756
replace id = 82690 if year==1990 & countryy==826
replace id = 82691 if year==1991 & countryy==826
replace id = 82696 if year==1996 & countryy==826
replace id = 82698 if year==1998 & countryy==826
replace id = 84090 if year==1990 & countryy==840
replace id = 84091 if year==1991 & countryy==840
replace id = 84096 if year==1996 & countryy==840
replace id = 84098 if year==1998 & countryy==840

*SOCX Welfare Spending
*This Social Expenditures (SOCX) data were extracted on January 10th, 2010 21:35 UTC (GMT) from OECD.Stat. 
*I have typed it in by hand here because I learned through personal communication that the OECD regularly changes its measures of things. 
*Thus, dowloading the data now would result in different values.

gen socprot=.
replace socprot = 12.557 if year==1986 & countryy==36
replace socprot = 14.708 if year==1990 & countryy==36
replace socprot = 16.431 if year==1996 & countryy==36
replace socprot = 16.957 if year==1998 & countryy==36
replace socprot = 26.791 if year==1991 & countryy==40
replace socprot = 26.372 if year==1998 & countryy==40
replace socprot = 17.439 if year==1996 & countryy==124
replace socprot = 28.932 if year==1996 & countryy==250
replace socprot = 28.977 if year==1998 & countryy==250
replace socprot = 23.143 if year==1986 & countryy==276
replace socprot = 23.448 if year==1990 & countryy==276
replace socprot = 25.293 if year==1991 & countryy==276
replace socprot = 26.443 if year==1996 & countryy==276
replace socprot = 26.314 if year==1998 & countryy==276
replace socprot = 16.433 if year==1991 & countryy==372
replace socprot = 13.956 if year==1996 & countryy==372
replace socprot = 14.092 if year==1998 & countryy==372
replace socprot = 20.269 if year==1990 & countryy==380
replace socprot = 22.705 if year==1996 & countryy==380
replace socprot = 23.263 if year==1998 & countryy==380
replace socprot = 14.694 if year==1996 & countryy==392
replace socprot = 16.12 if year==1998 & countryy==392
replace socprot = 25.98 if year==1991 & countryy==528
replace socprot = 20.461 if year==1998 & countryy==528
replace socprot = 21.994 if year==1991 & countryy==554
replace socprot = 20.299 if year==1996 & countryy==554
replace socprot = 19.599 if year==1998 & countryy==554
replace socprot = 23.34 if year==1990 & countryy==578
replace socprot = 21.994 if year==1996 & countryy==578
replace socprot = 23.601 if year==1998 & countryy==578
replace socprot = 30.525 if year==1996 & countryy==752
replace socprot = 29.804 if year==1998 & countryy==752
replace socprot = 17.883 if year==1998 & countryy==756
replace socprot = 19.824 if year==1986 & countryy==826
replace socprot = 18.436 if year==1990 & countryy==826
replace socprot = 20.161 if year==1991 & countryy==826
replace socprot = 19.029 if year==1996 & countryy==826
replace socprot = 19.066 if year==1998 & countryy==826
replace socprot = 13.065 if year==1986 & countryy==840
replace socprot = 14.34 if year==1990 & countryy==840
replace socprot = 15.044 if year==1991 & countryy==840
replace socprot = 14.868 if year==1996 & countryy==840
replace socprot = 14.489 if year==1998 & countryy==840
drop if socprot==.
numlabel, add mask ("#.") force

save /data/ISSP85to06.dta, replace
