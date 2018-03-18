use /data/ISSP85to06.dta, clear

log using measures, replace
*Additive scale
gen Aadded = govjobs + govincdiff
factor govjobs govincdiff
predict Apf
factor govjobs govincdiff, pcf
predict Apcf
factor govjobs govincdiff, ip
predict Aip
sum Aadded Apf Apcf Aip
collapse Aadded Apf Apcf Aip, by(id)
sum Aadded Apf Apcf Aip

*Policy Preferences Weights
use /data/ISSP85to06.dta, clear

preserve
collapse  countryy govincdiff govjobs socprot year [pweight=weight], by (id)

factor govjobs govincdiff, pcf
predict govsAT
sum govsAT
egen govsR = rowmean(govincdiff govjobs)
sort id

save /data/workingPWEIGHT.dta, replace
*Policy Preferences NO Weights
restore
collapse  countryy govincdiff govjobs socprot year, by (id)
factor govjobs govincdiff, pcf
predict govsN
sum govsN
egen govsNR = rowmean(govincdiff govjobs)
sort id

save /data/workingNOWEIGHT.dta, replace

merge id using /Data/workingPWEIGHT.dta

drop _merge
label var govsN "Social Policy Preferences NO WEIGHTS"
label var govsAT "Social Policy Preferences PWEIGHTS"
label var govsR "Social Policy Preferences Org. Metric NO W"
label var govsNR "Social Policy Preferences Org. Metric P"

save /data/working.dta, replace
log close
markdoc measures.smcl, markup(markdown) export(md) replace install style("simple")
