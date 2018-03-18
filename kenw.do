*The Excel sheet containing Kenworhty's data must be saved in the C:/data/ folder
*Import Data
import excel /data/2009ser-data.xls, sheet("Sheet1") firstrow case(lower) clear
gen uniqueID = _n
sort uniqueID

save /data/kenworthy.dta, replace
*Merge
use /data/1working.dta, clear
merge uniqueID using /Data/kenworthy.dta
*Regime, Interactions
recode countryy (36 124 372 392 554 826 840 = 1) (*=0), gen(libdem)
gen prefintactK =  socialpolicypreferences*libdem

gen prefintactAT = govsAT*libdem
gen prefintactN = govsN*libdem

save /data/Working_Full.dta, replace

*Save point. Makes life easier

use /data/Working_Full.dta, clear

*Create X and Y variables with same scaling as Brooks and Manza

gen govsATZ = govsAT*1.99
gen prefintactATZ = govsATZ*libdem
gen socprotZ = (socprot*1.035)+0.37

save /data/int_and_e.dta, replace
