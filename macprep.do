use /data/working.dta, clear

label value countryy countryabb
label var countryy "Country w Germany collapsed to one"

*Fix Year
gen yeardv = .
replace yeardv = 1987 if year==1986 & countryy==36
replace yeardv = 1991 if year==1990 & countryy==36
replace yeardv = 1992 if year==1991 & countryy==36
replace yeardv = 1997 if year==1996 & countryy==36
replace yeardv = 1999 if year==1998 & countryy==36
replace yeardv = 1994 if year==1991 & countryy==40
replace yeardv = 2000 if year==1998 & countryy==40
replace yeardv = 1997 if year==1996 & countryy==124
replace yeardv = 1998 if year==1996 & countryy==250
replace yeardv = 1999 if year==1998 & countryy==250
replace yeardv = 1986 if year==1986 & countryy==276
replace yeardv = 1991 if year==1990 & countryy==276
replace yeardv = 1992 if year==1991 & countryy==276
replace yeardv = 1997 if year==1996 & countryy==276
replace yeardv = 1999 if year==1998 & countryy==276
replace yeardv = 1992 if year==1991 & countryy==372
replace yeardv = 1997 if year==1996 & countryy==372
replace yeardv = 1999 if year==1998 & countryy==372
replace yeardv = 1986 if year==1986 & countryy==380
replace yeardv = 1991 if year==1990 & countryy==380
replace yeardv = 1992 if year==1991 & countryy==380
replace yeardv = 1997 if year==1996 & countryy==380
replace yeardv = 2000 if year==1998 & countryy==380
replace yeardv = 1997 if year==1996 & countryy==392
replace yeardv = 1999 if year==1998 & countryy==392
replace yeardv = 1992 if year==1991 & countryy==528
replace yeardv = 1999 if year==1998 & countryy==528
replace yeardv = 1992 if year==1991 & countryy==554
replace yeardv = 1998 if year==1996 & countryy==554
replace yeardv = 1999 if year==1998 & countryy==554
replace yeardv = 1991 if year==1990 & countryy==578
replace yeardv = 1997 if year==1996 & countryy==578
replace yeardv = 1999 if year==1998 & countryy==578
replace yeardv = 1997 if year==1996 & countryy==724
replace yeardv = 1999 if year==1998 & countryy==724
replace yeardv = 1997 if year==1996 & countryy==752
replace yeardv = 1999 if year==1998 & countryy==752
replace yeardv = 2000 if year==1998 & countryy==756
replace yeardv = 1986 if year==1986 & countryy==826
replace yeardv = 1991 if year==1990 & countryy==826
replace yeardv = 1992 if year==1991 & countryy==826
replace yeardv = 1997 if year==1996 & countryy==826
replace yeardv = 1999 if year==1998 & countryy==826
replace yeardv = 1986 if year==1986 & countryy==840
replace yeardv = 1991 if year==1990 & countryy==840
replace yeardv = 1992 if year==1991 & countryy==840
replace yeardv = 1997 if year==1996 & countryy==840
replace yeardv = 1999 if year==1998 & countryy==840

*Brooks and Manza do not report how the code their year counter although starting at 0 seems intuitive and seems to produce results closest to their original results.
label var yeardv "Year based on DV measure"
gen yeardvz = yeardv-1986
label var yeardvz "Year starting at 0 based on DV"

*OECD Data
*GDP_PPP
*GDP PPP per capita in thosands of US dollars fixed at 2000 rates. Data extracted on April 19th, 2010 11:32 UTC (GMT) from OECD.Stat. Again, entered by hand to reflect exact values dowloaded in 2010.

gen gdp_ppp = .
replace gdp_ppp = 21.74 if yeardv==1987 & countryy==36
replace gdp_ppp = 21.92 if yeardv==1991 & countryy==36
replace gdp_ppp = 26.05 if yeardv==1997 & countryy==36
replace gdp_ppp = 27.84 if yeardv==1999 & countryy==36
replace gdp_ppp = 24.45 if yeardv==1994 & countryy==40
replace gdp_ppp = 28.77 if yeardv==2000 & countryy==40
replace gdp_ppp = 25.28 if yeardv==1997 & countryy==124
replace gdp_ppp = 23.81 if yeardv==1998 & countryy==250
replace gdp_ppp = 24.49 if yeardv==1999 & countryy==250
replace gdp_ppp = 19.39 if yeardv==1986 & countryy==276
replace gdp_ppp = 22.76 if yeardv==1991 & countryy==276
replace gdp_ppp = 23.10 if yeardv==1992 & countryy==276
replace gdp_ppp = 24.20 if yeardv==1997 & countryy==276
replace gdp_ppp = 25.18 if yeardv==1999 & countryy==276
replace gdp_ppp = 16.27 if yeardv==1992 & countryy==372
replace gdp_ppp = 22.67 if yeardv==1997 & countryy==372
replace gdp_ppp = 26.52 if yeardv==1999 & countryy==372
replace gdp_ppp = 19.40 if yeardv==1986 & countryy==380
replace gdp_ppp = 22.27 if yeardv==1991 & countryy==380
replace gdp_ppp = 24.02 if yeardv==1997 & countryy==380
replace gdp_ppp = 25.60 if yeardv==2000 & countryy==380
replace gdp_ppp = 25.61 if yeardv==1997 & countryy==392
replace gdp_ppp = 24.95 if yeardv==1999 & countryy==392
replace gdp_ppp = 23.53 if yeardv==1992 & countryy==528
replace gdp_ppp = 28.50 if yeardv==1999 & countryy==528
replace gdp_ppp = 17.19 if yeardv==1992 & countryy==554
replace gdp_ppp = 19.77 if yeardv==1998 & countryy==554
replace gdp_ppp = 20.52 if yeardv==1999 & countryy==554
replace gdp_ppp = 27.28 if yeardv==1991 & countryy==578
replace gdp_ppp = 34.05 if yeardv==1997 & countryy==578
replace gdp_ppp = 35.22 if yeardv==1999 & countryy==578
replace gdp_ppp = 18.87 if yeardv==1997 & countryy==724
replace gdp_ppp = 20.47 if yeardv==1999 & countryy==724
replace gdp_ppp = 24.56 if yeardv==1997 & countryy==752
replace gdp_ppp = 26.63 if yeardv==1999 & countryy==752
replace gdp_ppp = 31.62 if yeardv==2000 & countryy==756
replace gdp_ppp = 18.63 if yeardv==1986 & countryy==826
replace gdp_ppp = 20.52 if yeardv==1991 & countryy==826
replace gdp_ppp = 20.50 if yeardv==1992 & countryy==826
replace gdp_ppp = 23.64 if yeardv==1997 & countryy==826
replace gdp_ppp = 25.18 if yeardv==1999 & countryy==826
replace gdp_ppp = 25.91 if yeardv==1986 & countryy==840
replace gdp_ppp = 27.79 if yeardv==1991 & countryy==840
replace gdp_ppp = 28.36 if yeardv==1992 & countryy==840
replace gdp_ppp = 31.80 if yeardv==1997 & countryy==840
replace gdp_ppp = 34.02 if yeardv==1999 & countryy==840

label var gdp_ppp "GDP PPP (1,000 US$/DV year)"

*Unemployment
*Data extracted on 18 May 2010 13:07 UTC (GMT) from OECD.Stat (ALFS).

gen unemp = .
replace unemp = 7.76 if yeardv==1987 & countryy==36
replace unemp = 9.40 if yeardv==1991 & countryy==36
replace unemp = 8.33 if yeardv==1997 & countryy==36
replace unemp = 6.92 if yeardv==1999 & countryy==36
replace unemp = 3.56 if yeardv==1994 & countryy==40
replace unemp = 3.55 if yeardv==2000 & countryy==40
replace unemp = 9.06 if yeardv==1997 & countryy==124
replace unemp = 11.55 if yeardv==1998 & countryy==250
replace unemp = 10.90 if yeardv==1999 & countryy==250
replace unemp = 6.45 if yeardv==1986 & countryy==276
replace unemp = 5.57 if yeardv==1991 & countryy==276
replace unemp = 6.62 if yeardv==1992 & countryy==276
replace unemp = 9.82 if yeardv==1997 & countryy==276
replace unemp = 8.57 if yeardv==1999 & countryy==276
replace unemp = 15.1 if yeardv==1992 & countryy==372
replace unemp = 10.34 if yeardv==1997 & countryy==372
replace unemp = 5.75 if yeardv==1999 & countryy==372
replace unemp = 10.94 if yeardv==1986 & countryy==380
replace unemp = 10.78 if yeardv==1991 & countryy==380
replace unemp = 11.64 if yeardv==1997 & countryy==380
replace unemp = 10.52 if yeardv==2000 & countryy==380
replace unemp = 3.39 if yeardv==1997 & countryy==392
replace unemp = 4.68 if yeardv==1999 & countryy==392
replace unemp = 6.7 if yeardv==1992 & countryy==528
replace unemp = 3.49 if yeardv==1999 & countryy==528
replace unemp = 10.27 if yeardv==1992 & countryy==554
replace unemp = 7.42 if yeardv==1998 & countryy==554
replace unemp = 6.78 if yeardv==1999 & countryy==554
replace unemp = 5.46 if yeardv==1991 & countryy==578
replace unemp = 4.02 if yeardv==1997 & countryy==578
replace unemp = 3.21 if yeardv==1999 & countryy==578
*replace unemp =  if yeardv==1997 & countryy==724
*replace unemp =  if yeardv==1999 & countryy==724
replace unemp = 10.19 if yeardv==1997 & countryy==752
replace unemp = 7.17 if yeardv==1999 & countryy==752
replace unemp = 2.61 if yeardv==2000 & countryy==756
replace unemp = 10.72 if yeardv==1986 & countryy==826
replace unemp = 8.38 if yeardv==1991 & countryy==826
replace unemp = 9.69 if yeardv==1992 & countryy==826
replace unemp = 7.06 if yeardv==1997 & countryy==826
replace unemp = 6.00 if yeardv==1999 & countryy==826
replace unemp = 6.86 if yeardv==1986 & countryy==840
replace unemp = 6.72 if yeardv==1991 & countryy==840
replace unemp = 7.39 if yeardv==1992 & countryy==840
replace unemp = 4.89 if yeardv==1997 & countryy==840
replace unemp = 4.18 if yeardv==1999 & countryy==840

label var unemp "Unemployment %of LF"

*Aged Population
* “Elderly population (aged 65 and over)”. OECD Factbook 2010: Economic, Environmental and Social Statistics - ISBN 92-64-08356-1 - © OECD 2010; “Population and migration - Population - Dependent population”.													
gen aged = .
replace aged = 10.69 if yeardv==1987 & countryy==36
replace aged = 11.29 if yeardv==1991 & countryy==36
replace aged = 12.14 if yeardv==1997 & countryy==36
replace aged = 12.34 if yeardv==1999 & countryy==36
replace aged = 15.01 if yeardv==1994 & countryy==40
replace aged = 15.5 if yeardv==2000 & countryy==40
replace aged = 12.2 if yeardv==1997 & countryy==124
replace aged = 15.8 if yeardv==1998 & countryy==250
replace aged = 15.95 if yeardv==1999 & countryy==250
replace aged = 15.06 if yeardv==1986 & countryy==276
replace aged = 14.96 if yeardv==1991 & countryy==276
replace aged = 15.01 if yeardv==1992 & countryy==276
replace aged = 15.74 if yeardv==1997 & countryy==276
replace aged = 16.09 if yeardv==1999 & countryy==276
replace aged = 11.41 if yeardv==1992 & countryy==372
replace aged = 11.38 if yeardv==1997 & countryy==372
replace aged = 11.24 if yeardv==1999 & countryy==372
replace aged = 13.42 if yeardv==1986 & countryy==380
replace aged = 15.27 if yeardv==1991 & countryy==380
replace aged = 17.28 if yeardv==1997 & countryy==380
replace aged = 18.11 if yeardv==2000 & countryy==380
replace aged = 15.66 if yeardv==1997 & countryy==392
replace aged = 16.72 if yeardv==1999 & countryy==392
replace aged = 12.99 if yeardv==1992 & countryy==528
replace aged = 13.55 if yeardv==1999 & countryy==528
replace aged = 11.33 if yeardv==1992 & countryy==554
replace aged = 11.58 if yeardv==1998 & countryy==554
replace aged = 11.68 if yeardv==1999 & countryy==554
replace aged = 16.28 if yeardv==1991 & countryy==578
replace aged = 15.73 if yeardv==1997 & countryy==578
replace aged = 15.35 if yeardv==1999 & countryy==578
*replace aged =  if yeardv==1997 & countryy==724
*replace aged =  if yeardv==1999 & countryy==724
replace aged = 17.44 if yeardv==1997 & countryy==752
replace aged = 17.33 if yeardv==1999 & countryy==752
replace aged = 17.27 if yeardv==2000 & countryy==756
replace aged = 15.17 if yeardv==1986 & countryy==826
replace aged = 15.77 if yeardv==1991 & countryy==826
replace aged = 15.81 if yeardv==1992 & countryy==826
replace aged = 15.87 if yeardv==1997 & countryy==826
replace aged = 15.84 if yeardv==1999 & countryy==826
replace aged = 12.08 if yeardv==1986 & countryy==840
replace aged = 12.57 if yeardv==1991 & countryy==840
replace aged = 12.61 if yeardv==1992 & countryy==840
replace aged = 12.61 if yeardv==1997 & countryy==840
replace aged = 12.47 if yeardv==1999 & countryy==840

label var aged "% of pop 65 and older"

*Immigration Rates
* “Net migration rate per 1,000 inhabitants”. OECD Factbook 2010: Economic, Environmental and Social Statistics - ISBN 92-64-08356-1 - © OECD 2010. “Population and migration - International migration - Trends in migration”

*I recalculated this to be a percentage, as this seems to be the only plausible value associate with the Brooks and Manza descriptives.																			
gen immigrate = .
replace immigrate = 0.0078 if yeardv==1987 & countryy==36
replace immigrate = 0.0050 if yeardv==1991 & countryy==36
replace immigrate = 0.0039 if yeardv==1997 & countryy==36
replace immigrate = 0.0055 if yeardv==1999 & countryy==36
replace immigrate = 0.0004 if yeardv==1994 & countryy==40
replace immigrate = 0.0022 if yeardv==2000 & countryy==40
replace immigrate = 0.0052 if yeardv==1997 & countryy==124
replace immigrate = 0.0008 if yeardv==1998 & countryy==250
replace immigrate = 0.0010 if yeardv==1999 & countryy==250
replace immigrate = 0.0032 if yeardv==1986 & countryy==276
replace immigrate = 0.0075 if yeardv==1991 & countryy==276
replace immigrate = 0.0096 if yeardv==1992 & countryy==276
replace immigrate = 0.0011 if yeardv==1997 & countryy==276
replace immigrate = 0.0025 if yeardv==1999 & countryy==276
replace immigrate = 0.0005 if yeardv==1992 & countryy==372
replace immigrate = 0.0051 if yeardv==1997 & countryy==372
replace immigrate = 0.0064 if yeardv==1999 & countryy==372
*replace immigrate = -0.0004 if yeardv==1986 & countryy==380
replace immigrate = 0.0001 if yeardv==1991 & countryy==380
replace immigrate = 0.0022 if yeardv==1997 & countryy==380
replace immigrate = 0.0031 if yeardv==2000 & countryy==380
replace immigrate = 0.0001 if yeardv==1997 & countryy==392
replace immigrate = -0.0001 if yeardv==1999 & countryy==392
replace immigrate = 0.0038 if yeardv==1992 & countryy==528
replace immigrate = 0.0038 if yeardv==1999 & countryy==528
replace immigrate = 0.0013 if yeardv==1992 & countryy==554
replace immigrate = 0.0020 if yeardv==1998 & countryy==554
replace immigrate = -0.0023 if yeardv==1999 & countryy==554
replace immigrate = 0.0019 if yeardv==1991 & countryy==578
replace immigrate = 0.0025 if yeardv==1997 & countryy==578
replace immigrate = 0.0043 if yeardv==1999 & countryy==578
*replace immigrate = 0.0016 if yeardv==1997 & countryy==724
*replace immigrate = 0.0049 if yeardv==1999 & countryy==724
replace immigrate = 0.0007 if yeardv==1997 & countryy==752
replace immigrate = 0.0016 if yeardv==1999 & countryy==752
replace immigrate = 0.0028 if yeardv==2000 & countryy==756
replace immigrate = 0.0012 if yeardv==1986 & countryy==826
replace immigrate = 0.0009 if yeardv==1997 & countryy==826
replace immigrate = 0.0013 if yeardv==1991 & countryy==826
replace immigrate = -0.0001 if yeardv==1992 & countryy==826
replace immigrate = 0.0023 if yeardv==1999 & countryy==826
replace immigrate = 0.0028 if yeardv==1986 & countryy==840
replace immigrate = 0.0051 if yeardv==1991 & countryy==840
replace immigrate = 0.0051 if yeardv==1992 & countryy==840
replace immigrate = 0.0048 if yeardv==1997 & countryy==840
replace immigrate = 0.0044 if yeardv==1999 & countryy==840

label var immigrate "Net Migration Rate as a % of 1k"

*Female Labor Part.

*Calculated from the Comparative Welfare States Data Set (CWS) (Huber et al. 2004; unfortunately no longer in circulation) by taking total female labor force (FLABFO) / (Total Pop 15 to 64 – Male Pop 15 to 64) (i.e  total female labor force divided by total females aged 15 to 64). It is coded with a 1 year lag off the DV.

gen femlabor = .
replace femlabor = 56.64 if yeardv==1987 & countryy==36
replace femlabor = 62.1 if yeardv==1991 & countryy==36
replace femlabor = 63.6 if yeardv==1997 & countryy==36
replace femlabor = 64.32 if yeardv==1999 & countryy==36
replace femlabor = 60.78 if yeardv==1994 & countryy==40
replace femlabor = 61.25 if yeardv==2000 & countryy==40
replace femlabor = 66.8 if yeardv==1997 & countryy==124
replace femlabor = 61.42 if yeardv==1998 & countryy==250
replace femlabor = 62.27 if yeardv==1999 & countryy==250
replace femlabor = 51.84 if yeardv==1986 & countryy==276
replace femlabor = 56.68 if yeardv==1991 & countryy==276
replace femlabor = 60.5 if yeardv==1992 & countryy==276
replace femlabor = 59.31 if yeardv==1997 & countryy==276
replace femlabor = 60.55 if yeardv==1999 & countryy==276
replace femlabor = 42.49 if yeardv==1992 & countryy==372
replace femlabor = 48.74 if yeardv==1997 & countryy==372
replace femlabor = 51.85 if yeardv==1999 & countryy==372
replace femlabor = 43.28 if yeardv==1986 & countryy==380
replace femlabor = 46.4 if yeardv==1991 & countryy==380
replace femlabor = 43.02 if yeardv==1997 & countryy==380
replace femlabor = 45.48 if yeardv==2000 & countryy==380
replace femlabor = 62.12 if yeardv==1997 & countryy==392
replace femlabor = 63.41 if yeardv==1999 & countryy==392
replace femlabor = 52.81 if yeardv==1992 & countryy==528
replace femlabor = 60.91 if yeardv==1999 & countryy==528
replace femlabor = 62.49 if yeardv==1992 & countryy==554
replace femlabor = 68.05 if yeardv==1998 & countryy==554
replace femlabor = 68.1 if yeardv==1999 & countryy==554
replace femlabor = 71.24 if yeardv==1991 & countryy==578
replace femlabor = 71.49 if yeardv==1997 & countryy==578
replace femlabor = 73.75 if yeardv==1999 & countryy==578
replace femlabor = 73.51 if yeardv==1997 & countryy==752
replace femlabor = 71.9 if yeardv==1999 & countryy==752
replace femlabor = 69.92 if yeardv==2000 & countryy==756
replace femlabor = 61.65 if yeardv==1986 & countryy==826
replace femlabor = 67.67 if yeardv==1997 & countryy==826
replace femlabor = 67.36 if yeardv==1991 & countryy==826
replace femlabor = 65.55 if yeardv==1992 & countryy==826
replace femlabor = 68.59 if yeardv==1999 & countryy==826
replace femlabor = 64.52 if yeardv==1986 & countryy==840
replace femlabor = 69.22 if yeardv==1991 & countryy==840
replace femlabor = 69.57 if yeardv==1992 & countryy==840
replace femlabor = 69.72 if yeardv==1997 & countryy==840
replace femlabor = 69.41 if yeardv==1999 & countryy==840

label var femlabor "Female Labor Force Participation % 1yr lag"

*Veto Points
*Data from CWS

recode countryy (36=4)(40=2)(124=3)(250=2)(276=5)(372=1)(380=2)(392=2)(528=1)(554=0)(578=1)(752=1)(756=5)(826=0)(840=6)(*=.), gen(veto4)
sum veto4
replace veto4 = veto4-2.488372
*A version of the scale from 0-1.
recode countryy (36=2.5)(40=1.5)(124=2)(250=2)(276=3)(372=1)(380=1.5)(392=1.5)(528=.5)(554=0)(578=1)(752=1)(756=3)(826=0)(840=4)(*=.), gen(veto5)
sum veto5
replace veto5 = veto5-1.7093
*Religious Party Control - CAB
*CWS Data. Percentage of total government seats held by religious parties (Catholic and Christian RTCRCAB, RTCTCAB, CNCRCAB, and CNCTCAB)

gen religpccab = .
replace religpccab = 0 if countryy==36
replace religpccab = 0.41 if yeardv==1994 & countryy==40
replace religpccab = 0.486667 if yeardv==2000 & countryy==40
replace religpccab = 0 if yeardv==1997 & countryy==124
replace religpccab = 0 if countryy==250
replace religpccab = 0.88 if yeardv==1986 & countryy==276
replace religpccab = 0.8 if yeardv==1991 & countryy==276
replace religpccab = 0.8 if yeardv==1992 & countryy==276
replace religpccab = 0.86 if yeardv==1997 & countryy==276
replace religpccab = 0 if yeardv==1999 & countryy==276
replace religpccab = 0 if countryy==372
replace religpccab = 0.61 if yeardv==1986 & countryy==380
replace religpccab = 0.65 if yeardv==1991 & countryy==380
replace religpccab = 0.26 if yeardv==1997 & countryy==380
replace religpccab = 0.19 if yeardv==2000 & countryy==380
replace religpccab = 0 if countryy==392
replace religpccab = 0.52 if yeardv==1992 & countryy==528
replace religpccab = 0 if yeardv==1999 & countryy==528
replace religpccab = 0 if yeardv==1992 & countryy==554
replace religpccab = 0 if yeardv==1998 & countryy==554
replace religpccab = 0 if yeardv==1999 & countryy==554
replace religpccab = 0 if yeardv==1991 & countryy==578
replace religpccab = 0.1 if yeardv==1997 & countryy==578
replace religpccab = 0.6 if yeardv==1999 & countryy==578
replace religpccab = . if yeardv==1997 & countryy==724
replace religpccab = . if yeardv==1999 & countryy==724
replace religpccab = 0 if yeardv==1997 & countryy==752
replace religpccab = 0 if yeardv==1999 & countryy==752
replace religpccab = .2 if yeardv==2000 & countryy==756
replace religpccab = 0 if countryy==826
replace religpccab = 0 if countryy==840

replace religpccab = religpccab*100
label var religpccab "% of total gov seats held by relig parties (CAB)"

*Right Party Control - CAB
*CWS Data; RTCAB. Actually not used in the original analysis but provides an additional variable for the sensitivity test later. 

gen rtcab = .
replace rtcab = 0 if countryy==36
replace rtcab = 1 if countryy==36 & yeardv==1999
replace rtcab = 1 if countryy==36 & yeardv==1997
replace rtcab = 0 if yeardv==1994 & countryy==40
replace rtcab = 0.46 if yeardv==2000 & countryy==40
replace rtcab = 0 if yeardv==1997 & countryy==124
replace rtcab = 0 if countryy==250
replace rtcab = 0 if countryy==276
replace rtcab = 0.82 if yeardv==1992 & countryy==372
replace rtcab = 0.3 if yeardv==1997 & countryy==372
replace rtcab = 0.05 if yeardv==1999 & countryy==372
replace rtcab = 0.04 if yeardv==1986 & countryy==380
replace rtcab = 0.02 if yeardv==1991 & countryy==380
replace rtcab = 0 if yeardv==1997 & countryy==380
replace rtcab = 0 if yeardv==2000 & countryy==380
replace rtcab = 0.93 if yeardv==1997 & countryy==392
replace rtcab = 1 if yeardv==1999 & countryy==392
replace rtcab = 0 if yeardv==1992 & countryy==528
replace rtcab = 0.39 if yeardv==1999 & countryy==528
replace rtcab = 1 if yeardv==1992 & countryy==554
replace rtcab = 0.84 if yeardv==1998 & countryy==554
replace rtcab = 0.92 if yeardv==1999 & countryy==554
replace rtcab = 0 if yeardv==1991 & countryy==578
replace rtcab = 0 if yeardv==1997 & countryy==578
replace rtcab = 0 if yeardv==1999 & countryy==578
replace rtcab = 0 if yeardv==1997 & countryy==752
replace rtcab = 0 if yeardv==1999 & countryy==752
replace rtcab = 0.5 if yeardv==2000 & countryy==756
replace rtcab = 1 if yeardv==1986 & countryy==826
replace rtcab = 1 if yeardv==1991 & countryy==826
replace rtcab = 1 if yeardv==1992 & countryy==826
replace rtcab = 0.33 if yeardv==1997 & countryy==826
replace rtcab = 0 if yeardv==1999 & countryy==826
replace rtcab = 1 if yeardv==1986 & countryy==840
replace rtcab = 1 if yeardv==1991 & countryy==840
replace rtcab = 1 if yeardv==1992 & countryy==840
replace rtcab = 0 if yeardv==1997 & countryy==840
replace rtcab = 0 if yeardv==1999 & countryy==840

replace rtcab = rtcab*100
label var rtcab "% of total gov seats held by right parties (CAB)"

*Left Party Control - CAB
*CWS Data. Percentage of seats held by left parties LEFTCAB (listed as labor, social-democratic and communist in B&M)

gen leftpccab = .
replace leftpccab = 1 if yeardv==1987 & countryy==36
replace leftpccab = 1 if yeardv==1991 & countryy==36
replace leftpccab = 0 if yeardv==1997 & countryy==36
replace leftpccab = 0 if yeardv==1999 & countryy==36
replace leftpccab = 0.59 if yeardv==1994 & countryy==40
replace leftpccab = 0.05 if yeardv==2000 & countryy==40
replace leftpccab = 0 if yeardv==1997 & countryy==124
replace leftpccab = 1 if yeardv==1998 & countryy==250
replace leftpccab = 1 if yeardv==1999 & countryy==250
replace leftpccab = 0 if yeardv==1986 & countryy==276
replace leftpccab = 0 if yeardv==1991 & countryy==276
replace leftpccab = 0 if yeardv==1992 & countryy==276
replace leftpccab = 0 if yeardv==1997 & countryy==276
replace leftpccab = 1 if yeardv==1999 & countryy==276
replace leftpccab = 0 if yeardv==1992 & countryy==372
replace leftpccab = 0.22 if yeardv==1997 & countryy==372
replace leftpccab = 0 if yeardv==1999 & countryy==372
replace leftpccab = 0.2 if yeardv==1986 & countryy==380
replace leftpccab = 0.26 if yeardv==1991 & countryy==380
replace leftpccab = 0.65 if yeardv==1997 & countryy==380
replace leftpccab = 0.65 if yeardv==2000 & countryy==380
replace leftpccab = 0.06 if yeardv==1997 & countryy==392
replace leftpccab = 0.00 if yeardv==1999 & countryy==392
replace leftpccab = 0 if yeardv==1992 & countryy==528
replace leftpccab = 0 if yeardv==1999 & countryy==528
replace leftpccab = 0.48 if yeardv==1992 & countryy==554
replace leftpccab = 0.43 if yeardv==1998 & countryy==554
replace leftpccab = 0.46 if yeardv==1999 & countryy==554
replace leftpccab = 1 if yeardv==1991 & countryy==578
replace leftpccab = 0.83 if yeardv==1997 & countryy==578
replace leftpccab = 0 if yeardv==1999 & countryy==578
replace leftpccab = . if yeardv==1997 & countryy==724
replace leftpccab = . if yeardv==1999 & countryy==724
replace leftpccab = 1 if yeardv==1997 & countryy==752
replace leftpccab = 1 if yeardv==1999 & countryy==752
replace leftpccab = 0.29 if yeardv==2000 & countryy==756
replace leftpccab = 0 if yeardv==1991 & countryy==826
replace leftpccab = 0 if yeardv==1992 & countryy==826
replace leftpccab = 1 if yeardv==1999 & countryy==826
replace leftpccab = 0 if yeardv==1997 & countryy==826
replace leftpccab = 0 if yeardv==1986 & countryy==826
replace leftpccab = 0 if countryy==840

replace leftpccab = leftpccab*100
label var leftpccab "Percentage of Seats Held by Left Parties (CAB)"

gen uniqueID = _n
sort uniqueID
save /data/1working.dta, replace
