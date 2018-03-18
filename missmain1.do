*Table 1: Replication
use /data/int_and_e.dta, clear



corr govsATZ socialpolicypreferences
*Model 1A - Author
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 govsATZ c.govsATZ#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) govsATZ=(-1.88 0 1.88))
est store m1a
predict rIa, resid

*Model 1B – Author + Original
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 socialpolicypreferences c.socialpolicypreferences#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) socialpolicypreferences=(-1.88 0 1.88))
est store m1b
predict rIaa, resid

*Model 2A - Author
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab govsATZ c.govsATZ#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) govsATZ=(-1.88 0 1.88))
est store m2a
predict rIIa, resid

*Model 2B – Author + Original
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab socialpolicypreferences c.socialpolicypreferences#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) socialpolicypreferences =(-1.88 0 1.88))
est store m2b
predict rIIaa, resid


log using tbl1and2, replace

*Table 1: Results
esttab m1a m1b m2a m2b


*Table 2: Endogenous Error Terms
pwcorr libdem rIa rIIa rIaa rIIaa, sig

log close
markdoc tbl1and2.smcl, markup(markdown) export(md) replace install style("simple")
