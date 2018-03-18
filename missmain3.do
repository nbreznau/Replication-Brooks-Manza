*Table 3
*Addition of the Main Effect
*Model 1A_Main - Author
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 govsATZ i.libdem c.govsATZ#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) govsATZ=(-1.88 0 1.88))
est store m1a
*Model 1B_Main – Author + Original
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 socialpolicypreferences i.libdem c.socialpolicypreferences#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) socialpolicypreferences=(-1.88 0 1.88))
est store m2b
*Model 2A_Main - Author
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab govsATZ i.libdem c.govsATZ#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) govsATZ=(-1.88 0 1.88))
est store m2a
*Model 2B_Main – Author + Original
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab socialpolicypreferences i.libdem c.socialpolicypreferences#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) socialpolicypreferences =(-1.88 0 1.88))
est store m2b

log using tbl3, replace

esttab m1a m1b m2a m2b

log close
markdoc tbl3.smcl, markup(markdown) export(md) replace install style("simple")
