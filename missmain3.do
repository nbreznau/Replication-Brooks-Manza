*Table 3
*Addition of the Main Effect
*Model 1A_Main - Author
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 govsATZ i.libdem c.govsATZ#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) govsATZ=(-1.88 0 1.88))
est store 1am
*Model 1B_Main – Author + Original
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 socialpolicypreferences i.libdem c.socialpolicypreferences#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) socialpolicypreferences=(-1.88 0 1.88))
est store 2bm
*Model 2A_Main - Author
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab govsATZ i.libdem c.govsATZ#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) govsATZ=(-1.88 0 1.88))
est store 2am
*Model 2B_Main – Author + Original
regress  socprotZ yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab socialpolicypreferences i.libdem c.socialpolicypreferences#i.libdem, cluster(countryy)
margins, at(libdem=(0 1) socialpolicypreferences =(-1.88 0 1.88))
est store 2bm

esttab 1am 1bm 2am 2bm
