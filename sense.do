*Figures 2 & 3: Sensitivity Tests
*Baseline Models, introducing demographic controls one by one NO INTERACTIONS
est drop *
*Preferences w/ Each other IV 
*Breznau w/ Breznau IVs
regress socprot govsAT, cluster(countryy)
estimates store base1B
regress socprot govsAT yeardvz, cluster(countryy)
estimates store base2B
regress socprot govsAT gdp_ppp, cluster(countryy)
estimates store base3B
regress socprot govsAT unemp, cluster(countryy)
estimates store base4B
regress socprot govsAT aged, cluster(countryy)
estimates store base5B
regress socprot govsAT femlabor, cluster(countryy)
estimates store base6B
regress socprot govsAT veto5, cluster(countryy)
estimates store base7B
regress socprot govsAT religpccab, cluster(countryy)
estimates store base8B
regress socprot govsAT leftpccab, cluster(countryy)
estimates store base9B
regress socprot govsAT rtcab, cluster(countryy)
estimates store base10B

estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy IVs
regress socprot govsAT percapitagdp, cluster(countryy)
estimates store base12B
regress socprot govsAT unemploymentrate, cluster(countryy)
estimates store base13B
regress socprot govsAT agedpopulationshareage65an, cluster(countryy)
estimates store base14B
regress socprot govsAT womenslaborforceparticipatio, cluster(countryy)
estimates store base15B
regress socprot govsAT vetopoints, cluster(countryy)
estimates store base16B
regress socprot govsAT leftpartygovernmentcontrol, cluster(countryy)
estimates store base17B
regress socprot govsAT religiouspartygovernmentcontr, cluster(countryy)
estimates store base18B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Kenworthy w/ Kenworthy IVs


regress publicsocialexpenditures socialpolicypreferences, cluster(countryy)
estimates store base1K
regress publicsocialexpenditures socialpolicypreferences yeardvz, cluster(countryy)
estimates store base2K
regress publicsocialexpenditures socialpolicypreferences percapitagdp, cluster(countryy)
estimates store base3K
regress publicsocialexpenditures socialpolicypreferences unemploymentrate, cluster(countryy)
estimates store base4K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an, cluster(countryy)
estimates store base5K
regress publicsocialexpenditures socialpolicypreferences  womenslaborforceparticipatio, cluster(countryy)
estimates store base6K
regress publicsocialexpenditures socialpolicypreferences vetopoints, cluster(countryy)
estimates store base7K
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol, cluster(countryy)
estimates store base8K
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr, cluster(countryy)
estimates store base9K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Kenworthy w/ Breznau IVs
regress socprot socialpolicypreferences gdp_ppp, cluster(countryy)
estimates store baseXK
regress socprot socialpolicypreferences unemp, cluster(countryy)
estimates store base13K
regress socprot socialpolicypreferences aged, cluster(countryy)
estimates store base14K
regress socprot socialpolicypreferences femlabor, cluster(countryy)
estimates store base15K
regress socprot socialpolicypreferences veto5, cluster(countryy)
estimates store base16K
regress socprot socialpolicypreferences religpccab, cluster(countryy)
estimates store base17K
regress socprot socialpolicypreferences leftpccab, cluster(countryy)
estimates store base18K
regress socprot socialpolicypreferences rtcab, cluster(countryy)
estimates store base19K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged (Primary Demographic Control Variable) and each other variable
*Breznau w/ aged and Breznau IVs
regress socprot govsAT aged yeardvz, cluster(countryy)
estimates store base20B
regress socprot govsAT aged gdp_ppp, cluster(countryy)
estimates store base21B
regress socprot govsAT aged unemp, cluster(countryy)
estimates store base22B
regress socprot govsAT aged femlabor, cluster(countryy)
estimates store base23B
regress socprot govsAT aged veto5, cluster(countryy)
estimates store base24B
regress socprot govsAT aged religpccab, cluster(countryy)
estimates store base25B
regress socprot govsAT aged leftpccab, cluster(countryy)
estimates store base26B
regress socprot govsAT aged rtcab, cluster(countryy)
estimates store base27B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ aged and Kenworthy IVs
regress socprot govsAT aged percapitagdp, cluster(countryy)
estimates store base31B
regress socprot govsAT aged unemploymentrate, cluster(countryy)
estimates store base32B
regress socprot govsAT aged womenslaborforceparticipatio, cluster(countryy)
estimates store base34B
regress socprot govsAT aged vetopoints, cluster(countryy)
estimates store base35B
regress socprot govsAT aged leftpartygovernmentcontrol, cluster(countryy)
estimates store base36B
regress socprot govsAT aged religiouspartygovernmentcontr, cluster(countryy)
estimates store base37B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Kenworthy IVs

regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an yeardvz, cluster(countryy)
estimates store base20K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an percapitagdp   , cluster(countryy)
estimates store base21K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate, cluster(countryy)
estimates store base22K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an womenslaborforceparticipatio, cluster(countryy)
estimates store base23K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an vetopoints, cluster(countryy)
estimates store base24K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpartygovernmentcontrol, cluster(countryy)
estimates store base25K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religiouspartygovernmentcontr, cluster(countryy)
estimates store base26K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an gdp_ppp, cluster(countryy)
estimates store base29K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemp, cluster(countryy)
estimates store base30K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an femlabor, cluster(countryy)
estimates store base31K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an veto5, cluster(countryy)
estimates store base32K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religpccab, cluster(countryy)
estimates store base33K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpccab, cluster(countryy)
estimates store base34K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an rtcab, cluster(countryy)
estimates store base35K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged and Unempl (Two Demographics direct link to Spending) and each other variable
*Breznau w/ two controls and each other Breznau IV
regress socprot govsAT aged unemp yeardvz, cluster(countryy)
estimates store base38B
regress socprot govsAT aged unemp gdp_ppp, cluster(countryy)
estimates store base39B
regress socprot govsAT aged unemp femlabor, cluster(countryy)
estimates store base40B
regress socprot govsAT aged unemp veto5, cluster(countryy)
estimates store base41B
regress socprot govsAT aged unemp religpccab, cluster(countryy)
estimates store base42B
regress socprot govsAT aged unemp leftpccab, cluster(countryy)
estimates store base43B
regress socprot govsAT aged unemp rtcab, cluster(countryy)
estimates store base44B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ two controls and each other Kenworthy IV
regress socprot govsAT aged unemp percapitagdp   , cluster(countryy)
estimates store base46B
regress socprot govsAT aged unemp womenslaborforceparticipatio, cluster(countryy)
estimates store base48B
regress socprot govsAT aged unemp vetopoints, cluster(countryy)
estimates store base49B
regress socprot govsAT aged unemp leftpartygovernmentcontrol, cluster(countryy)
estimates store base50B
regress socprot govsAT aged unemp religiouspartygovernmentcontr, cluster(countryy)
estimates store base51B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Kenworthy IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate yeardvz, cluster(countryy)
estimates store base3K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store base36K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate vetopoints, cluster(countryy)
estimates store base37K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpartygovernmentcontrol, cluster(countryy)
estimates store base38K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religiouspartygovernmentcontr, cluster(countryy)
estimates store base39K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate percapitagdp, cluster(countryy)
estimates store base48K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Breznau IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate gdp_ppp, cluster(countryy)
estimates store base41K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate femlabor, cluster(countryy)
estimates store base42K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate veto5, cluster(countryy)
estimates store base43K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religpccab, cluster(countryy)
estimates store base44K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpccab, cluster(countryy)
estimates store base45K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate rtcab, cluster(countryy)
estimates store base46K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ three demographic controls 
*Breznau w/ BreznauIVs
regress socprot govsAT aged unemp femlabor yeardvz, cluster(countryy)
estimates store base52B
regress socprot govsAT aged unemp femlabor gdp_ppp, cluster(countryy)
estimates store base53B
regress socprot govsAT aged unemp femlabor veto5, cluster(countryy)
estimates store base54B
regress socprot govsAT aged unemp femlabor religpccab, cluster(countryy)
estimates store base55B
regress socprot govsAT aged unemp femlabor leftpccab, cluster(countryy)
estimates store base56B
regress socprot govsAT aged unemp femlabor rtcab, cluster(countryy)
estimates store base60B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy IVs
regress socprot govsAT aged unemp femlabor vetopoints, cluster(countryy)
estimates store base57B
regress socprot govsAT aged unemp femlabor leftpartygovernmentcontrol, cluster(countryy)
estimates store base58B
regress socprot govsAT aged unemp femlabor religiouspartygovernmentcontr, cluster(countryy)
estimates store base59B
regress socprot govsAT aged unemp femlabor percapitagdp, cluster(countryy)
estimates store base61B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Kenworthy w/ Kenworthy IVs (three controls model)
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio yeardvz, cluster(countryy)
estimates store base47K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio percapitagdp   , cluster(countryy)
estimates store base48K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio vetopoints, cluster(countryy)
estimates store base49K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpartygovernmentcontrol, cluster(countryy)
estimates store base50K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religiouspartygovernmentcontr, cluster(countryy)
estimates store base51K

*Kenworthy w/ Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio gdp_ppp, cluster(countryy)
estimates store base53K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio veto5, cluster(countryy)
estimates store base54K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religpccab, cluster(countryy)
estimates store base55K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpccab, cluster(countryy)
estimates store base56K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio rtcab, cluster(countryy)
estimates store base57K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Baseline WITH INTERACTIONS, introducing demographic controls one by one
*Preferences w/ Each other IV 
*Breznau w/ Breznau IVs
regress socprot govsAT prefintactAT, cluster(countryy)
estimates store basei1B
regress socprot govsAT yeardvz prefintactAT, cluster(countryy)
estimates store basei2B
regress socprot govsAT gdp_ppp prefintactAT, cluster(countryy)
estimates store basei3B
regress socprot govsAT unemp prefintactAT, cluster(countryy)
estimates store basei4B
regress socprot govsAT aged prefintactAT, cluster(countryy)
estimates store basei5B
regress socprot govsAT femlabor prefintactAT, cluster(countryy)
estimates store basei6B
regress socprot govsAT veto5 prefintactAT, cluster(countryy)
estimates store basei7B
regress socprot govsAT religpccab prefintactAT, cluster(countryy)
estimates store basei8B
regress socprot govsAT leftpccab prefintactAT, cluster(countryy)
estimates store basei9B
regress socprot govsAT rtcab prefintactAT, cluster(countryy)
estimates store basei10B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy IVs
regress socprot govsAT percapitagdp prefintactAT, cluster(countryy)
estimates store basei12B
regress socprot govsAT unemploymentrate prefintactAT, cluster(countryy)
estimates store basei13B
regress socprot govsAT agedpopulationshareage65an prefintactAT, cluster(countryy)
estimates store basei14B
regress socprot govsAT womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store basei15B
regress socprot govsAT vetopoints prefintactAT, cluster(countryy)
estimates store basei16B
regress socprot govsAT leftpartygovernmentcontrol prefintactAT, cluster(countryy)
estimates store basei17B
regress socprot govsAT religiouspartygovernmentcontr prefintactAT, cluster(countryy)
estimates store basei18B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy IVs
regress publicsocialexpenditures socialpolicypreferences prefintactK, cluster(countryy)
estimates store basei1K
regress publicsocialexpenditures socialpolicypreferences yeardvz prefintactK, cluster(countryy)
estimates store basei2K
regress publicsocialexpenditures socialpolicypreferences percapitagdp prefintactK, cluster(countryy)
estimates store basei3K
regress publicsocialexpenditures socialpolicypreferences unemploymentrate prefintactK, cluster(countryy)
estimates store basei4K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an prefintactK, cluster(countryy)
estimates store basei5K
regress publicsocialexpenditures socialpolicypreferences  womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store basei6K
regress publicsocialexpenditures socialpolicypreferences vetopoints prefintactK, cluster(countryy)
estimates store basei7K
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol prefintactK, cluster(countryy)
estimates store basei8K
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr prefintactK, cluster(countryy)
estimates store basei9K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau IVs
regress socprot socialpolicypreferences unemp prefintactK, cluster(countryy)
estimates store basei13K
regress socprot socialpolicypreferences gdp_ppp prefintactK, cluster(countryy)
estimates store basei3K
regress socprot socialpolicypreferences aged prefintactK, cluster(countryy)
estimates store basei14K
regress socprot socialpolicypreferences femlabor prefintactK, cluster(countryy)
estimates store basei15K
regress socprot socialpolicypreferences veto5 prefintactK, cluster(countryy)
estimates store basei16K
regress socprot socialpolicypreferences religpccab prefintactK, cluster(countryy)
estimates store basei17K
regress socprot socialpolicypreferences leftpccab prefintactK, cluster(countryy)
estimates store basei18K
regress socprot socialpolicypreferences rtcab prefintactK, cluster(countryy)
estimates store basei19K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged (Primary Demographic Control Variable) and each other variable
*Breznau w/ aged and Breznau IVs
regress socprot govsAT aged yeardvz prefintactAT, cluster(countryy)
estimates store basei20B
regress socprot govsAT aged gdp_ppp prefintactAT, cluster(countryy)
estimates store basei21B
regress socprot govsAT aged unemp prefintactAT, cluster(countryy)
estimates store basei22B
regress socprot govsAT aged femlabor prefintactAT, cluster(countryy)
estimates store basei23B
regress socprot govsAT aged veto5 prefintactAT, cluster(countryy)
estimates store basei24B
regress socprot govsAT aged religpccab prefintactAT, cluster(countryy)
estimates store basei25B
regress socprot govsAT aged leftpccab prefintactAT, cluster(countryy)
estimates store basei26B
regress socprot govsAT aged rtcab prefintactAT, cluster(countryy)
estimates store basei27B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ aged and Kenworthy IVs
regress socprot govsAT aged yeardvz prefintactAT, cluster(countryy)
estimates store basei30B
regress socprot govsAT aged percapitagdp prefintactAT, cluster(countryy)
estimates store basei31B
regress socprot govsAT aged unemploymentrate prefintactAT, cluster(countryy)
estimates store basei32B
regress socprot govsAT aged agedpopulationshareage65an prefintactAT, cluster(countryy)
estimates store basei33B
regress socprot govsAT aged womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store basei34B
regress socprot govsAT aged vetopoints prefintactAT, cluster(countryy)
estimates store basei35B
regress socprot govsAT aged leftpartygovernmentcontrol prefintactAT, cluster(countryy)
estimates store basei36B
regress socprot govsAT aged religiouspartygovernmentcontr prefintactAT, cluster(countryy)
estimates store basei37B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Kenworthy IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an yeardvz prefintactK, cluster(countryy)
estimates store basei20K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an percapitagdp  prefintactK , cluster(countryy)
estimates store basei21K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate prefintactK, cluster(countryy)
estimates store basei22K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store basei23K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an vetopoints prefintactK, cluster(countryy)
estimates store basei24K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpartygovernmentcontrol prefintactK, cluster(countryy)
estimates store basei25K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religiouspartygovernmentcontr prefintactK, cluster(countryy)
estimates store basei26K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an yeardvz prefintactK, cluster(countryy)
estimates store basei28K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an gdp_ppp prefintactK, cluster(countryy)
estimates store basei29K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemp prefintactK, cluster(countryy)
estimates store basei30K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an femlabor prefintactK, cluster(countryy)
estimates store basei31K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an veto5 prefintactK, cluster(countryy)
estimates store basei32K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religpccab prefintactK, cluster(countryy)
estimates store basei33K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpccab prefintactK, cluster(countryy)
estimates store basei34K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an rtcab prefintactK, cluster(countryy)
estimates store basei35K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged and Unempl (Two Demographics direct link to Spending) and each other variable
*Breznau w/ two controls and each other Breznau IV
regress socprot govsAT aged unemp yeardvz prefintactAT, cluster(countryy)
estimates store basei38B
regress socprot govsAT aged unemp gdp_ppp prefintactAT, cluster(countryy)
estimates store basei39B
regress socprot govsAT aged unemp femlabor prefintactAT, cluster(countryy)
estimates store basei40B
regress socprot govsAT aged unemp veto5 prefintactAT, cluster(countryy)
estimates store basei41B
regress socprot govsAT aged unemp religpccab prefintactAT, cluster(countryy)
estimates store basei42B
regress socprot govsAT aged unemp leftpccab prefintactAT, cluster(countryy)
estimates store basei43B
regress socprot govsAT aged unemp rtcab prefintactAT, cluster(countryy)
estimates store basei44B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ two controls and each other Kenworthy IV
regress socprot govsAT aged unemp percapitagdp prefintactAT, cluster(countryy)
estimates store basei46B
regress socprot govsAT aged unemp womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store basei48B
regress socprot govsAT aged unemp vetopoints prefintactAT, cluster(countryy)
estimates store basei49B
regress socprot govsAT aged unemp leftpartygovernmentcontrol prefintactAT, cluster(countryy)
estimates store basei50B
regress socprot govsAT aged unemp religiouspartygovernmentcontr prefintactAT, cluster(countryy)
estimates store basei51B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Kenworthy IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store basei36K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate vetopoints prefintactK, cluster(countryy)
estimates store basei37K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpartygovernmentcontrol prefintactK, cluster(countryy)
estimates store basei38K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religiouspartygovernmentcontr prefintactK, cluster(countryy)
estimates store basei39K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate percapitagdp prefintactK, cluster(countryy)
estimates store basei48K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Breznau IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate gdp_ppp prefintactK, cluster(countryy)
estimates store basei41K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate femlabor prefintactK, cluster(countryy)
estimates store basei42K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate veto5 prefintactK, cluster(countryy)
estimates store basei43K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religpccab prefintactK, cluster(countryy)
estimates store basei44K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpccab prefintactK, cluster(countryy)
estimates store basei45K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate rtcab prefintactK, cluster(countryy)
estimates store basei46K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ three demographic controls 
*Breznau w/ BreznauIVs
regress socprot govsAT aged unemp femlabor yeardvz prefintactAT, cluster(countryy)
estimates store basei52B
regress socprot govsAT aged unemp femlabor gdp_ppp prefintactAT, cluster(countryy)
estimates store basei53B
regress socprot govsAT aged unemp femlabor veto5 prefintactAT, cluster(countryy)
estimates store basei54B
regress socprot govsAT aged unemp femlabor religpccab prefintactAT, cluster(countryy)
estimates store basei55B
regress socprot govsAT aged unemp femlabor leftpccab prefintactAT, cluster(countryy)
estimates store basei56B
regress socprot govsAT aged unemp femlabor rtcab prefintactAT, cluster(countryy)
estimates store basei60B
*Breznau w/ Kenworthy IVs
regress socprot govsAT aged unemp femlabor vetopoints prefintactAT, cluster(countryy)
estimates store basei57B
regress socprot govsAT aged unemp femlabor leftpartygovernmentcontrol prefintactAT, cluster(countryy)
estimates store basei58B
regress socprot govsAT aged unemp femlabor religiouspartygovernmentcontr prefintactAT, cluster(countryy)
estimates store basei59B
regress socprot govsAT aged unemp femlabor percapitagdp prefintactAT, cluster(countryy)
estimates store basei61B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy IVs (three controls model)
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio yeardvz prefintactK, cluster(countryy)
estimates store basei47K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio percapitagdp  prefintactK, cluster(countryy)
estimates store basei48K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio vetopoints prefintactK, cluster(countryy)
estimates store basei49K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpartygovernmentcontrol prefintactK, cluster(countryy)
estimates store basei50K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religiouspartygovernmentcontr prefintactK, cluster(countryy)
estimates store basei51K
*Kenworthy w/ Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio gdp_ppp prefintactK, cluster(countryy)
estimates store basei53K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio veto5 prefintactK, cluster(countryy)
estimates store basei54K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religpccab prefintactK, cluster(countryy)
estimates store basei55K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpccab prefintactK, cluster(countryy)
estimates store basei56K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio rtcab prefintactK, cluster(countryy)
estimates store basei57K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Political models NO INTERACTIONS
*Breznau w/ Breznau
regress socprot govsAT religpccab leftpccab rtcab, cluster(countryy)
estimates store b1
regress socprot govsAT leftpccab rtcab, cluster(countryy)
estimates store b2
regress socprot govsAT veto5 leftpccab, cluster(countryy)
estimates store b3
regress socprot govsAT veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b4
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz, cluster(countryy)
estimates store b5
regress socprot govsAT veto5 religpccab leftpccab rtcab aged, cluster(countryy)
estimates store b6
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp, cluster(countryy)
estimates store b7
regress socprot govsAT veto5 religpccab leftpccab rtcab femlabor, cluster(countryy)
estimates store b8
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp, cluster(countryy)
estimates store b9
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp, cluster(countryy)
estimates store b10
regress socprot govsAT veto5 religpccab leftpccab rtcab aged femlabor, cluster(countryy)
estimates store b11
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp femlabor, cluster(countryy)
estimates store b12
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp femlabor, cluster(countryy)
estimates store b13
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor, cluster(countryy)
estimates store b14
*fullmodel
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy
regress socprot govsAT religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b1
regress socprot govsAT leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b2
regress socprot govsAT vetopoints leftpartygovernmentcontrol, cluster(countryy)
estimates store b3
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b4
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz, cluster(countryy)
estimates store b5
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an, cluster(countryy)
estimates store b6
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate, cluster(countryy)
estimates store b7
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio, cluster(countryy)
estimates store b8
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp, cluster(countryy)
estimates store b9
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate, cluster(countryy)
estimates store b10
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio, cluster(countryy)
estimates store b11
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b12
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b13
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b14
*full model
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences vetopoints leftpartygovernmentcontrol, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b14
*full model
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences religpccab leftpccab rtcab, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpccab rtcab, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences veto5 leftpccab, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab femlabor, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged femlabor, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp femlabor, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp femlabor, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor, cluster(countryy)
estimates store b14
*fullmodel
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Political models WITH INTERACTIONS
*Breznau w/ Breznau
regress socprot govsAT religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b1
regress socprot govsAT leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b2
regress socprot govsAT veto5 leftpccab prefintactAT, cluster(countryy)
estimates store b3
regress socprot govsAT veto5 religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b4
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz prefintactAT, cluster(countryy)
estimates store b5
regress socprot govsAT veto5 religpccab leftpccab rtcab aged prefintactAT, cluster(countryy)
estimates store b6
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp prefintactAT, cluster(countryy)
estimates store b7
regress socprot govsAT veto5 religpccab leftpccab rtcab femlabor prefintactAT, cluster(countryy)
estimates store b8
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp prefintactAT, cluster(countryy)
estimates store b9
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp prefintactAT, cluster(countryy)
estimates store b10
regress socprot govsAT veto5 religpccab leftpccab rtcab aged femlabor prefintactAT, cluster(countryy)
estimates store b11
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp femlabor prefintactAT, cluster(countryy)
estimates store b12
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp femlabor prefintactAT, cluster(countryy)
estimates store b13
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor prefintactAT, cluster(countryy)
estimates store b14
*fullmodel
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor prefintactAT, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy
regress socprot govsAT religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b1
regress socprot govsAT leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b2
regress socprot govsAT vetopoints leftpartygovernmentcontrol prefintactAT, cluster(countryy)
estimates store b3
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b4
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz prefintactAT, cluster(countryy)
estimates store b5
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an prefintactAT, cluster(countryy)
estimates store b6
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate prefintactAT, cluster(countryy)
estimates store b7
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store b8
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp prefintactAT, cluster(countryy)
estimates store b9
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate prefintactAT, cluster(countryy)
estimates store b10
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store b11
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store b12
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store b13
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store b14
*full model
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactAT, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences vetopoints leftpartygovernmentcontrol prefintactK, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz prefintactK, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an prefintactK, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate prefintactK, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp prefintactK, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate prefintactK, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store b14
*full model
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpccab rtcab prefintactK, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences veto5 leftpccab prefintactK, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz prefintactK, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged prefintactK, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp prefintactK, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab femlabor prefintactK, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp prefintactK, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp prefintactK, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged femlabor prefintactK, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp femlabor prefintactK, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp femlabor prefintactK, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor prefintactK, cluster(countryy)
estimates store b14
*fullmodel
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor prefintactK, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Full model, bootstrapping NO INTERACTION

*Breznau w/ Breznau
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b8
regress socprot govsAT gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Breznau w/ Kenworthy
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b8
regress socprot govsAT percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Full model, bootstrapping INTERACTION

*Breznau w/ Breznau
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab prefintactAT, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab prefintactAT, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b8
regress socprot govsAT gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Breznau w/ Kenworthy
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol prefintactAT, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab prefintactAT, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b8
regress socprot govsAT percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol prefintactK, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab prefintactK, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab prefintactK, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab prefintactK, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab prefintactK, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactK, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Liberal Baseline Models, introducing demographic controls one by one NO INTERACTIONS
est drop *
*Preferences w/ Each other IV 
*Breznau w/ Breznau IVs
regress socprot govsAT libdem, cluster(countryy)
estimates store base1B
regress socprot govsAT yeardvz libdem, cluster(countryy)
estimates store base2B
regress socprot govsAT gdp_ppp libdem, cluster(countryy)
estimates store base3B
regress socprot govsAT unemp libdem, cluster(countryy)
estimates store base4B
regress socprot govsAT aged libdem, cluster(countryy)
estimates store base5B
regress socprot govsAT femlabor libdem, cluster(countryy)
estimates store base6B
regress socprot govsAT veto5 libdem, cluster(countryy)
estimates store base7B
regress socprot govsAT religpccab libdem, cluster(countryy)
estimates store base8B
regress socprot govsAT leftpccab libdem, cluster(countryy)
estimates store base9B
regress socprot govsAT rtcab libdem, cluster(countryy)
estimates store base10B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy IVs
regress socprot govsAT percapitagdp libdem, cluster(countryy)
estimates store base12B
regress socprot govsAT unemploymentrate libdem, cluster(countryy)
estimates store base13B
regress socprot govsAT agedpopulationshareage65an libdem, cluster(countryy)
estimates store base14B
regress socprot govsAT womenslaborforceparticipatio libdem, cluster(countryy)
estimates store base15B
regress socprot govsAT vetopoints libdem, cluster(countryy)
estimates store base16B
regress socprot govsAT leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base17B
regress socprot govsAT religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base18B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy IVs
regress publicsocialexpenditures socialpolicypreferences libdem, cluster(countryy)
estimates store base1K
regress publicsocialexpenditures socialpolicypreferences yeardvz libdem, cluster(countryy)
estimates store base2K
regress publicsocialexpenditures socialpolicypreferences percapitagdp libdem, cluster(countryy)
estimates store base3K
regress publicsocialexpenditures socialpolicypreferences unemploymentrate libdem, cluster(countryy)
estimates store base4K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an libdem, cluster(countryy)
estimates store base5K
regress publicsocialexpenditures socialpolicypreferences  womenslaborforceparticipatio libdem, cluster(countryy)
estimates store base6K
regress publicsocialexpenditures socialpolicypreferences vetopoints libdem, cluster(countryy)
estimates store base7K
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base8K
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base9K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau IVs
regress socprot socialpolicypreferences gdp_ppp libdem, cluster(countryy)
estimates store baseXK
regress socprot socialpolicypreferences unemp libdem, cluster(countryy)
estimates store base13K
regress socprot socialpolicypreferences aged libdem, cluster(countryy)
estimates store base14K
regress socprot socialpolicypreferences femlabor libdem, cluster(countryy)
estimates store base15K
regress socprot socialpolicypreferences veto5 libdem, cluster(countryy)
estimates store base16K
regress socprot socialpolicypreferences religpccab libdem, cluster(countryy)
estimates store base17K
regress socprot socialpolicypreferences leftpccab libdem, cluster(countryy)
estimates store base18K
regress socprot socialpolicypreferences rtcab libdem, cluster(countryy)
estimates store base19K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged (Primary Demographic Control Variable) and each other variable
*Breznau w/ aged and Breznau IVs
regress socprot govsAT aged yeardvz libdem, cluster(countryy)
estimates store base20B
regress socprot govsAT aged gdp_ppp libdem, cluster(countryy)
estimates store base21B
regress socprot govsAT aged unemp libdem, cluster(countryy)
estimates store base22B
regress socprot govsAT aged femlabor libdem, cluster(countryy)
estimates store base23B
regress socprot govsAT aged veto5 libdem, cluster(countryy)
estimates store base24B
regress socprot govsAT aged religpccab libdem, cluster(countryy)
estimates store base25B
regress socprot govsAT aged leftpccab libdem, cluster(countryy)
estimates store base26B
regress socprot govsAT aged rtcab libdem, cluster(countryy)
estimates store base27B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ aged and Kenworthy IVs
regress socprot govsAT aged percapitagdp libdem, cluster(countryy)
estimates store base31B
regress socprot govsAT aged unemploymentrate libdem, cluster(countryy)
estimates store base32B
regress socprot govsAT aged womenslaborforceparticipatio libdem, cluster(countryy)
estimates store base34B
regress socprot govsAT aged vetopoints libdem, cluster(countryy)
estimates store base35B
regress socprot govsAT aged leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base36B
regress socprot govsAT aged religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base37B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Kenworthy IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an yeardvz libdem, cluster(countryy)
estimates store base20K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an percapitagdp  libdem , cluster(countryy)
estimates store base21K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate libdem, cluster(countryy)
estimates store base22K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an womenslaborforceparticipatio libdem, cluster(countryy)
estimates store base23K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an vetopoints libdem, cluster(countryy)
estimates store base24K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base25K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base26K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an gdp_ppp libdem, cluster(countryy)
estimates store base29K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemp libdem, cluster(countryy)
estimates store base30K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an femlabor libdem, cluster(countryy)
estimates store base31K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an veto5 libdem, cluster(countryy)
estimates store base32K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religpccab libdem, cluster(countryy)
estimates store base33K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpccab libdem, cluster(countryy)
estimates store base34K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an rtcab libdem, cluster(countryy)
estimates store base35K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged and Unempl (Two Demographics direct link to Spending) and each other variable
*Breznau w/ two controls and each other Breznau IV
regress socprot govsAT aged unemp yeardvz libdem, cluster(countryy)
estimates store base38B
regress socprot govsAT aged unemp gdp_ppp libdem, cluster(countryy)
estimates store base39B
regress socprot govsAT aged unemp femlabor libdem, cluster(countryy)
estimates store base40B
regress socprot govsAT aged unemp veto5 libdem, cluster(countryy)
estimates store base41B
regress socprot govsAT aged unemp religpccab libdem, cluster(countryy)
estimates store base42B
regress socprot govsAT aged unemp leftpccab libdem, cluster(countryy)
estimates store base43B
regress socprot govsAT aged unemp rtcab libdem, cluster(countryy)
estimates store base44B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ two controls and each other Kenworthy IV
regress socprot govsAT aged unemp percapitagdp libdem  , cluster(countryy)
estimates store base46B
regress socprot govsAT aged unemp womenslaborforceparticipatio libdem, cluster(countryy)
estimates store base48B
regress socprot govsAT aged unemp vetopoints libdem, cluster(countryy)
estimates store base49B
regress socprot govsAT aged unemp leftpartygovernmentcontro libdem, cluster(countryy)
estimates store base50B
regress socprot govsAT aged unemp religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base51B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Kenworthy IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate yeardvz libdem, cluster(countryy)
estimates store base3K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store base36K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate vetopoints libdem, cluster(countryy)
estimates store base37K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base38K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base39K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate percapitagdp libdem, cluster(countryy)
estimates store base48K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Breznau IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate gdp_ppp libdem, cluster(countryy)
estimates store base41K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate femlabor libdem, cluster(countryy)
estimates store base42K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate veto5 libdem, cluster(countryy)
estimates store base43K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religpccab libdem, cluster(countryy)
estimates store base44K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpccab libdem, cluster(countryy)
estimates store base45K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate rtcab libdem, cluster(countryy)
estimates store base46K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ three demographic controls 
*Breznau w/ BreznauIVs
regress socprot govsAT aged unemp femlabor yeardvz libdem, cluster(countryy)
estimates store base52B
regress socprot govsAT aged unemp femlabor gdp_ppp libdem, cluster(countryy)
estimates store base53B
regress socprot govsAT aged unemp femlabor veto5 libdem, cluster(countryy)
estimates store base54B
regress socprot govsAT aged unemp femlabor religpccab libdem, cluster(countryy)
estimates store base55B
regress socprot govsAT aged unemp femlabor leftpccab libdem, cluster(countryy)
estimates store base56B
regress socprot govsAT aged unemp femlabor rtcab libdem, cluster(countryy)
estimates store base60B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy IVs
regress socprot govsAT aged unemp femlabor vetopoints libdem, cluster(countryy)
estimates store base57B
regress socprot govsAT aged unemp femlabor leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base58B
regress socprot govsAT aged unemp femlabor religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base59B
regress socprot govsAT aged unemp femlabor percapitagdp libdem, cluster(countryy)
estimates store base61B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Kenworthy w/ Kenworthy IVs (three controls model)
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio yeardvz libdem, cluster(countryy)
estimates store base47K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio percapitagdp libdem  , cluster(countryy)
estimates store base48K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio vetopoints libdem, cluster(countryy)
estimates store base49K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store base50K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religiouspartygovernmentcontr libdem, cluster(countryy)
estimates store base51K

*Kenworthy w/ Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio gdp_ppp libdem, cluster(countryy)
estimates store base53K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio veto5 libdem, cluster(countryy)
estimates store base54K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religpccab libdem, cluster(countryy)
estimates store base55K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpccab libdem, cluster(countryy)
estimates store base56K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio rtcab libdem, cluster(countryy)
estimates store base57K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Liberal Baseline WITH INTERACTIONS, introducing demographic controls one by one
*Preferences w/ Each other IV 
*Breznau w/ Breznau IVs
regress socprot govsAT prefintactAT libdem, cluster(countryy)
estimates store basei1B
regress socprot govsAT yeardvz prefintactAT libdem, cluster(countryy)
estimates store basei2B
regress socprot govsAT gdp_ppp prefintactAT libdem, cluster(countryy)
estimates store basei3B
regress socprot govsAT unemp prefintactAT libdem, cluster(countryy)
estimates store basei4B
regress socprot govsAT aged prefintactAT libdem, cluster(countryy)
estimates store basei5B
regress socprot govsAT femlabor prefintactAT libdem, cluster(countryy)
estimates store basei6B
regress socprot govsAT veto5 prefintactAT libdem, cluster(countryy)
estimates store basei7B
regress socprot govsAT religpccab prefintactAT libdem, cluster(countryy)
estimates store basei8B
regress socprot govsAT leftpccab prefintactAT libdem, cluster(countryy)
estimates store basei9B
regress socprot govsAT rtcab prefintactAT libdem, cluster(countryy)
estimates store basei10B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Breznau w/ Kenworthy IVs
regress socprot govsAT percapitagdp prefintactAT libdem, cluster(countryy)
estimates store basei12B
regress socprot govsAT unemploymentrate prefintactAT libdem, cluster(countryy)
estimates store basei13B
regress socprot govsAT agedpopulationshareage65an prefintactAT libdem, cluster(countryy)
estimates store basei14B
regress socprot govsAT womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store basei15B
regress socprot govsAT vetopoints prefintactAT libdem, cluster(countryy)
estimates store basei16B
regress socprot govsAT leftpartygovernmentcontrol prefintactAT libdem, cluster(countryy)
estimates store basei17B
regress socprot govsAT religiouspartygovernmentcontr prefintactAT libdem, cluster(countryy)
estimates store basei18B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy IVs
regress publicsocialexpenditures socialpolicypreferences prefintactK libdem, cluster(countryy)
estimates store basei1K
regress publicsocialexpenditures socialpolicypreferences yeardvz prefintactK libdem, cluster(countryy)
estimates store basei2K
regress publicsocialexpenditures socialpolicypreferences percapitagdp prefintactK libdem, cluster(countryy)
estimates store basei3K
regress publicsocialexpenditures socialpolicypreferences unemploymentrate prefintactK libdem, cluster(countryy)
estimates store basei4K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an prefintactK libdem, cluster(countryy)
estimates store basei5K
regress publicsocialexpenditures socialpolicypreferences  womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store basei6K
regress publicsocialexpenditures socialpolicypreferences vetopoints prefintactK libdem, cluster(countryy)
estimates store basei7K
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol prefintactK libdem, cluster(countryy)
estimates store basei8K
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr prefintactK libdem, cluster(countryy)
estimates store basei9K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau IVs
regress socprot socialpolicypreferences unemp prefintactK libdem, cluster(countryy)
estimates store basei13K
regress socprot socialpolicypreferences gdp_ppp prefintactK libdem, cluster(countryy)
estimates store basei3K
regress socprot socialpolicypreferences aged prefintactK libdem, cluster(countryy)
estimates store basei14K
regress socprot socialpolicypreferences femlabor prefintactK libdem, cluster(countryy)
estimates store basei15K
regress socprot socialpolicypreferences veto5 prefintactK libdem, cluster(countryy)
estimates store basei16K
regress socprot socialpolicypreferences religpccab prefintactK libdem, cluster(countryy)
estimates store basei17K
regress socprot socialpolicypreferences leftpccab prefintactK libdem, cluster(countryy)
estimates store basei18K
regress socprot socialpolicypreferences rtcab prefintactK libdem, cluster(countryy)
estimates store basei19K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged (Primary Demographic Control Variable) and each other variable
*Breznau w/ aged and Breznau IVs
regress socprot govsAT aged yeardvz prefintactAT libdem, cluster(countryy)
estimates store basei20B
regress socprot govsAT aged gdp_ppp prefintactAT libdem, cluster(countryy)
estimates store basei21B
regress socprot govsAT aged unemp prefintactAT libdem, cluster(countryy)
estimates store basei22B
regress socprot govsAT aged femlabor prefintactAT libdem, cluster(countryy)
estimates store basei23B
regress socprot govsAT aged veto5 prefintactAT libdem, cluster(countryy)
estimates store basei24B
regress socprot govsAT aged religpccab prefintactAT libdem, cluster(countryy)
estimates store basei25B
regress socprot govsAT aged leftpccab prefintactAT libdem, cluster(countryy)
estimates store basei26B
regress socprot govsAT aged rtcab prefintactAT libdem, cluster(countryy)
estimates store basei27B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ aged and Kenworthy IVs
regress socprot govsAT aged yeardvz prefintactAT libdem, cluster(countryy)
estimates store basei30B
regress socprot govsAT aged percapitagdp prefintactAT libdem, cluster(countryy)
estimates store basei31B
regress socprot govsAT aged unemploymentrate prefintactAT libdem, cluster(countryy)
estimates store basei32B
regress socprot govsAT aged agedpopulationshareage65an prefintactAT libdem, cluster(countryy)
estimates store basei33B
regress socprot govsAT aged womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store basei34B
regress socprot govsAT aged vetopoints prefintactAT libdem, cluster(countryy)
estimates store basei35B
regress socprot govsAT aged leftpartygovernmentcontrol prefintactAT libdem, cluster(countryy)
estimates store basei36B
regress socprot govsAT aged religiouspartygovernmentcontr prefintactAT libdem, cluster(countryy)
estimates store basei37B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Kenworthy IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an yeardvz prefintactK libdem, cluster(countryy)
estimates store basei20K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an percapitagdp  prefintactK libdem, cluster(countryy)
estimates store basei21K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate prefintactK libdem, cluster(countryy)
estimates store basei22K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store basei23K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an vetopoints prefintactK libdem, cluster(countryy)
estimates store basei24K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpartygovernmentcontrol prefintactK libdem, cluster(countryy)
estimates store basei25K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religiouspartygovernmentcontr prefintactK libdem, cluster(countryy)
estimates store basei26K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ aged and Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an yeardvz prefintactK libdem, cluster(countryy)
estimates store basei28K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an gdp_ppp prefintactK libdem, cluster(countryy)
estimates store basei29K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemp prefintactK libdem, cluster(countryy)
estimates store basei30K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an femlabor prefintactK libdem, cluster(countryy)
estimates store basei31K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an veto5 prefintactK libdem, cluster(countryy)
estimates store basei32K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an religpccab prefintactK libdem, cluster(countryy)
estimates store basei33K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an leftpccab prefintactK libdem, cluster(countryy)
estimates store basei34K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an rtcab prefintactK libdem, cluster(countryy)
estimates store basei35K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ Aged and Unempl (Two Demographics direct link to Spending) and each other variable
*Breznau w/ two controls and each other Breznau IV
regress socprot govsAT aged unemp yeardvz prefintactAT libdem, cluster(countryy)
estimates store basei38B
regress socprot govsAT aged unemp gdp_ppp prefintactAT libdem, cluster(countryy)
estimates store basei39B
regress socprot govsAT aged unemp femlabor prefintactAT libdem, cluster(countryy)
estimates store basei40B
regress socprot govsAT aged unemp veto5 prefintactAT libdem, cluster(countryy)
estimates store basei41B
regress socprot govsAT aged unemp religpccab prefintactAT libdem, cluster(countryy)
estimates store basei42B
regress socprot govsAT aged unemp leftpccab prefintactAT libdem, cluster(countryy)
estimates store basei43B
regress socprot govsAT aged unemp rtcab prefintactAT libdem, cluster(countryy)
estimates store basei44B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ two controls and each other Kenworthy IV
regress socprot govsAT aged unemp percapitagdp prefintactAT libdem, cluster(countryy)
estimates store basei46B
regress socprot govsAT aged unemp womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store basei48B
regress socprot govsAT aged unemp vetopoints prefintactAT libdem, cluster(countryy)
estimates store basei49B
regress socprot govsAT aged unemp leftpartygovernmentcontrol prefintactAT libdem, cluster(countryy)
estimates store basei50B
regress socprot govsAT aged unemp religiouspartygovernmentcontr prefintactAT libdem, cluster(countryy)
estimates store basei51B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Kenworthy IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store basei36K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate vetopoints prefintactK libdem, cluster(countryy)
estimates store basei37K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpartygovernmentcontrol prefintactK libdem, cluster(countryy)
estimates store basei38K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religiouspartygovernmentcontr prefintactK libdem, cluster(countryy)
estimates store basei39K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate percapitagdp prefintactK libdem, cluster(countryy)
estimates store basei48K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ two controls and each other Breznau IV
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate gdp_ppp prefintactK libdem, cluster(countryy)
estimates store basei41K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate femlabor prefintactK libdem, cluster(countryy)
estimates store basei42K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate veto5 prefintactK libdem, cluster(countryy)
estimates store basei43K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate religpccab prefintactK libdem, cluster(countryy)
estimates store basei44K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate leftpccab prefintactK libdem, cluster(countryy)
estimates store basei45K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate rtcab prefintactK libdem, cluster(countryy)
estimates store basei46K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Preferences w/ three demographic controls 
*Breznau w/ BreznauIVs
regress socprot govsAT aged unemp femlabor yeardvz prefintactAT libdem, cluster(countryy)
estimates store basei52B
regress socprot govsAT aged unemp femlabor gdp_ppp prefintactAT libdem, cluster(countryy)
estimates store basei53B
regress socprot govsAT aged unemp femlabor veto5 prefintactAT libdem, cluster(countryy)
estimates store basei54B
regress socprot govsAT aged unemp femlabor religpccab prefintactAT libdem, cluster(countryy)
estimates store basei55B
regress socprot govsAT aged unemp femlabor leftpccab prefintactAT libdem, cluster(countryy)
estimates store basei56B
regress socprot govsAT aged unemp femlabor rtcab prefintactAT libdem, cluster(countryy)
estimates store basei60B
*Breznau w/ Kenworthy IVs
regress socprot govsAT aged unemp femlabor vetopoints prefintactAT libdem, cluster(countryy)
estimates store basei57B
regress socprot govsAT aged unemp femlabor leftpartygovernmentcontrol prefintactAT libdem, cluster(countryy)
estimates store basei58B
regress socprot govsAT aged unemp femlabor religiouspartygovernmentcontr prefintactAT libdem, cluster(countryy)
estimates store basei59B
regress socprot govsAT aged unemp femlabor percapitagdp prefintactAT libdem, cluster(countryy)
estimates store basei61B
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Kenworthy w/ Kenworthy IVs (three controls model)
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio yeardvz prefintactK libdem, cluster(countryy)
estimates store basei47K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio percapitagdp  prefintactK libdem, cluster(countryy)
estimates store basei48K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio vetopoints prefintactK libdem, cluster(countryy)
estimates store basei49K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpartygovernmentcontrol prefintactK libdem, cluster(countryy)
estimates store basei50K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religiouspartygovernmentcontr prefintactK libdem, cluster(countryy)
estimates store basei51K

*Kenworthy w/ Breznau IVs
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio gdp_ppp prefintactK libdem, cluster(countryy)
estimates store basei53K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio veto5 prefintactK libdem, cluster(countryy)
estimates store basei54K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio religpccab prefintactK libdem, cluster(countryy)
estimates store basei55K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio leftpccab prefintactK libdem, cluster(countryy)
estimates store basei56K
regress publicsocialexpenditures socialpolicypreferences agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio rtcab prefintactK libdem, cluster(countryy)
estimates store basei57K
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Liberal Political models NO INTERACTIONS
*Breznau w/ Breznau
regress socprot govsAT religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b1
regress socprot govsAT leftpccab rtcab libdem, cluster(countryy)
estimates store b2
regress socprot govsAT veto5 leftpccab libdem, cluster(countryy)
estimates store b3
regress socprot govsAT veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b4
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz libdem, cluster(countryy)
estimates store b5
regress socprot govsAT veto5 religpccab leftpccab rtcab aged libdem, cluster(countryy)
estimates store b6
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp libdem, cluster(countryy)
estimates store b7
regress socprot govsAT veto5 religpccab leftpccab rtcab femlabor libdem, cluster(countryy)
estimates store b8
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp libdem, cluster(countryy)
estimates store b9
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp libdem, cluster(countryy)
estimates store b10
regress socprot govsAT veto5 religpccab leftpccab rtcab aged femlabor libdem, cluster(countryy)
estimates store b11
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp femlabor libdem, cluster(countryy)
estimates store b12
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp femlabor libdem, cluster(countryy)
estimates store b13
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor libdem, cluster(countryy)
estimates store b14
*fullmodel
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy
regress socprot govsAT religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b1
regress socprot govsAT leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b2
regress socprot govsAT vetopoints leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store b3
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b4
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz libdem, cluster(countryy)
estimates store b5
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an libdem, cluster(countryy)
estimates store b6
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate libdem, cluster(countryy)
estimates store b7
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b8
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp libdem, cluster(countryy)
estimates store b9
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate libdem, cluster(countryy)
estimates store b10
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b11
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b12
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b13
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b14
*full model
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences vetopoints leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp libdem, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate libdem, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b14
*full model
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpccab rtcab libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences veto5 leftpccab libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab femlabor libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp libdem, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp libdem, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged femlabor libdem, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp femlabor libdem, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp femlabor libdem, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor libdem, cluster(countryy)
estimates store b14
*fullmodel
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Liberal Political models WITH INTERACTIONS
*Breznau w/ Breznau
regress socprot govsAT religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b1
regress socprot govsAT leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b2
regress socprot govsAT veto5 leftpccab prefintactAT libdem, cluster(countryy)
estimates store b3
regress socprot govsAT veto5 religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b4
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz prefintactAT libdem, cluster(countryy)
estimates store b5
regress socprot govsAT veto5 religpccab leftpccab rtcab aged prefintactAT libdem, cluster(countryy)
estimates store b6
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp prefintactAT libdem, cluster(countryy)
estimates store b7
regress socprot govsAT veto5 religpccab leftpccab rtcab femlabor prefintactAT libdem, cluster(countryy)
estimates store b8
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp prefintactAT libdem, cluster(countryy)
estimates store b9
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp prefintactAT libdem, cluster(countryy)
estimates store b10
regress socprot govsAT veto5 religpccab leftpccab rtcab aged femlabor prefintactAT libdem, cluster(countryy)
estimates store b11
regress socprot govsAT veto5 religpccab leftpccab rtcab unemp femlabor prefintactAT libdem, cluster(countryy)
estimates store b12
regress socprot govsAT veto5 religpccab leftpccab rtcab aged unemp femlabor prefintactAT libdem, cluster(countryy)
estimates store b13
regress socprot govsAT veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor prefintactAT libdem, cluster(countryy)
estimates store b14
*fullmodel
regress socprot govsAT veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor prefintactAT libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Breznau w/ Kenworthy
regress socprot govsAT religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b1
regress socprot govsAT leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b2
regress socprot govsAT vetopoints leftpartygovernmentcontrol prefintactAT libdem, cluster(countryy)
estimates store b3
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b4
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz prefintactAT libdem, cluster(countryy)
estimates store b5
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an prefintactAT libdem, cluster(countryy)
estimates store b6
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate prefintactAT libdem, cluster(countryy)
estimates store b7
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store b8
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp prefintactAT libdem, cluster(countryy)
estimates store b9
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate prefintactAT libdem, cluster(countryy)
estimates store b10
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store b11
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store b12
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store b13
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store b14
*full model
regress socprot govsAT vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactAT libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences vetopoints leftpartygovernmentcontrol prefintactK libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz prefintactK libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an prefintactK libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate prefintactK libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp prefintactK libdem, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate prefintactK libdem, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab unemploymentrate womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store b14

*full model
regress publicsocialexpenditures socialpolicypreferences vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio prefintactK libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences veto5 leftpccab prefintactK libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz prefintactK libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged prefintactK libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp prefintactK libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab femlabor prefintactK libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp prefintactK libdem, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp prefintactK libdem, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged femlabor prefintactK libdem, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab unemp femlabor prefintactK libdem, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab aged unemp femlabor prefintactK libdem, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab gdp_ppp aged unemp femlabor prefintactK libdem, cluster(countryy)
estimates store b14
*fullmodel
regress publicsocialexpenditures socialpolicypreferences veto5 religpccab leftpccab rtcab yeardvz gdp_ppp aged unemp femlabor prefintactK libdem, cluster(countryy)
estimates store b15
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Liberal Full model, replacement method NO INTERACTION

*Breznau w/ Breznau
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab libdem, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab libdem, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab libdem, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b8
regress socprot govsAT gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Breznau w/ Kenworthy
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab libdem, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b8
regress socprot govsAT percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Liberal Full model, replacement INTERACTION

*Breznau w/ Breznau
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab prefintactAT libdem, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b8
regress socprot govsAT gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *

*Breznau w/ Kenworthy
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol prefintactAT libdem, cluster(countryy)
estimates store b1
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab prefintactAT libdem, cluster(countryy)
estimates store b2
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b3
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b4
regress socprot govsAT yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b5
regress socprot govsAT yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b6
regress socprot govsAT yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b7
regress socprot govsAT yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b8
regress socprot govsAT percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactAT libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Kenworthy
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol prefintactK libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr rtcab prefintactK libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate agedpopulationshareage65an vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp unemploymentrate womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz percapitagdp agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences percapitagdp unemploymentrate agedpopulationshareage65an womenslaborforceparticipatio vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab prefintactK libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Kenworthy w/ Breznau
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab prefintactK libdem, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 religpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor veto5 leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged femlabor religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp aged veto5 religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp unemp femlabor veto5 religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socialpolicypreferences yeardvz gdp_ppp aged femlabor veto5 religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socialpolicypreferences yeardvz unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socialpolicypreferences gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactK libdem, cluster(countryy)
estimates store b9
estimates table *, b(%4.2f)
estimates table *, b(%4.2f) star
estimates drop *
*Random models, seeded from Stata
set seed 100
gen random1=runiform()
set seed 200
gen random2=runiform()
set seed 300
gen random3=runiform()
set seed 400
gen random4=runiform()
tab1 random1 random2 random3 random4
*These are the resulting regression when each variable is assigned a random number and then those whose number appears are put into the regression. I keep only the first to appear in a redundant pair of variables.
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b1
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b2
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b3
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b4
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b5
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b6
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b7
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b8
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b9
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b10
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b11
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b12
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b13
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b14
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b15
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b16
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b17
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b18
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b19
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b20
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b21
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b22
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b23
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b24
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b25
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b26
regress publicsocialexpenditures socprot socialpolicypreferences govsAT yeardvz gdp_ppp unemp aged femlabor veto5 religpccab leftpccab rtcab prefintactAT prefintactK vetopoints religiouspartygovernmentcontr leftpartygovernmentcontrol rtcab yeardvz percapitagdp agedpopulationshareage65an unemploymentrate womenslaborforceparticipatio, cluster(countryy)
estimates store b27
