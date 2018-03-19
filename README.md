# REPLICATION OF BROOKS AND MANZA
This Repository streamlines the process described in the Technical Appendix for the Paper ["The Missing Main Effect of Welfare State Regimes: A Replication of ‘Social Policy Responsiveness in Developed Democracies’ by Brooks and Manza"](https://www.sociologicalscience.com/articles-v2-20-420/) published in _Sociological Science_, 2015, 2(20).
This Repository contains all code necessary to replicate my work, plus the [comment](https://www.sociologicalscience.com/articles-v3-6-109/) by Weakliem published in response.

###### NOTE: The original [Technical Appendix](https://www.sociologicalscience.com/download/volume-2/august/supplemental-materials/SocSci_v2_420to441_supp.pdf) available as supplemental material from _Sociological Science_ contains all code and extra tables. It can also be downloaded as a Word document (final edit June 2nd, 2015): ["Missing Main Effect Technical Appendix .doc"](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/Breznau%20Missing%20Main%20Effect%20TECH%20APPENDIX.docx). There are some idiosyncratic naming conventions in this document meaning users should find this Repository much easier for replicating the analyses.

###### All files in the Stata project can be downloaded in one zipped folder [MISSING_MAIN.zip](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/MISSING_MAIN.zip). From the project users can execute each step as a separate do-file.
<br></br>
## DATA PREP

<dl><dt align="center">
International Social Survey Program (ISSP) Data<dt>
</dt></dl>

To build the macro-data used in the replication, users must get access to the ISSP data via GESIS/ZACAT. Then dowload the following data in Stata format and save to the path "C:/data/": 

__Role of Government__ 1985 ([ZA1490.dta](http://dx.doi.org/10.4232/1.1490)), 1990 ([ZA1950.dta](http://dx.doi.org/10.4232/1.1950)) and 1996 ([ZA2900.dta](http://dx.doi.org/10.4232/1.2900)).

__Religion__ 1991 ([ZA2150.dta](http://dx.doi.org/10.4232/1.2150)) and 1998 ([ZA3190.dta](http://dx.doi.org/10.4232/1.3190)).


<dl><dt align="center">
Kenworthy's Reproduction Data<dt>
</dt></dl>

Users will also need the file [2009ser-data.xls](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/2009ser-data.xls) made available on [Lane Kenworthy's website](https://lanekenworthy.net/cv/#articles) saved in the folder C:/data/. These data come from his article ["The Effect of Public Opinion on Social Policy Generosity"](https://doi.org/10.1093/ser/mwp014).


<dl><dt align="center">
Stata Do-Files<dt>
</dt></dl>
NOTE: Users will need to install github and markdoc in Stata if they intend to save the results as .scml and .md docs.
<br></br>

```{js}
net install github, from`("https://haghish.github.io/github/")'
```
```{js}
github install haghish/markdoc
```

The file [isspmrg.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/isspmrg.do) works up and merges the data.

The file [measures.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/measures.do) constructs different versions of the social policy preferences variable. Users may check that their results match in the [measures.md](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/measures.md) file.

The file [macprep.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/macprep.do) creates the macro-level indicators. They are input by hand in the syntax so as to preserve their values (data have a funny way of changing over time).

The file [kenw.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/kenw.do) merges in the Kenworthy variable containing the original Brooks and Manza preferences variable as given to Kenworthy in preparation for his [2009 article in Socio-Economic Review](https://doi.org/10.1093/ser/mwp014). 

<br></br>
## REPLICATION ANALYSES

Users may shortcut and start here using the macro-data file [int_and_e.dta](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/int_and_e.dta).

The file [missmain1.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/missmain1.do) produces that results for Tables 1 and 2, and [missmain3.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/missmain3.do) for Table 3. The [sense.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/sense.do) produces the sensitiivty analyses (results not shown as they include thousands of regression estimates).

### Table 1

          . esttab m1a m1b m2a m2b

          ----------------------------------------------------------------------------
                                (1)             (2)             (3)             (4)   
                           socprotZ        socprotZ        socprotZ        socprotZ   
          ----------------------------------------------------------------------------
          yeardvz             0.258           0.362*          0.314*          0.413***
                             (1.80)          (2.85)          (2.90)          (4.70)   

          gdp_ppp            -0.588***       -0.868***       -0.395          -0.605** 
                            (-5.11)         (-7.10)         (-2.10)         (-4.11)   

          unemp               0.341           0.326           0.544*          0.605*  
                             (1.15)          (1.15)          (2.28)          (2.77)   

          aged                0.636           0.601           0.454           0.374   
                             (2.00)          (1.90)          (1.95)          (1.75)   

          femlabor            0.261*          0.333**         0.291**         0.369***
                             (2.46)          (3.40)          (3.11)          (4.35)   

          veto5               0.466           1.566*         -0.139           0.593   
                             (1.11)          (2.72)         (-0.22)          (1.05)   

          govsATZ             4.141***                        2.869**                 
                             (4.50)                          (3.44)                   

          0bn.libdem~Z            .                               .                   
                                  .                               .                   

          1.libdem#c~Z       -3.729**                        -2.700**                 
                            (-3.57)                         (-3.14)                   

          socialpoli~s                        4.630***                        3.429***
                                             (4.90)                          (4.76)   

          0bn.libdem~s                            .                               .   
                                                  .                               .   

          1.libdem#c~s                       -3.723**                        -2.952** 
                                            (-3.27)                         (-3.93)   

          religpccab                                         0.0772**        0.0875***
                                                             (4.02)          (4.81)   

          leftpccab                                          0.0209          0.0169   
                                                             (1.43)          (1.32)   

          _cons               3.458           5.982          -3.834          -3.582   
                             (0.40)          (0.86)         (-0.49)         (-0.55)   
          ----------------------------------------------------------------------------
          N                      43              43              43              43   
          ----------------------------------------------------------------------------
          t statistics in parentheses
          * p<0.05, ** p<0.01, *** p<0.001

### Table 2
          . pwcorr libdem rIa rIIa rIaa rIIaa, sig

                       |   libdem      rIa     rIIa     rIaa    rIIaa
          -------------+---------------------------------------------
                libdem |   1.0000 
                       |
                       |
                   rIa |  -0.3306   1.0000 
                       |   0.0304
                       |
                  rIIa |  -0.2304   0.8407   1.0000 
                       |   0.1371   0.0000
                       |
                  rIaa |  -0.3483   0.9093   0.7060   1.0000 
                       |   0.0221   0.0000   0.0000
                       |
                 rIIaa |  -0.2095   0.7769   0.9383   0.7786   1.0000 
                       |   0.1775   0.0000   0.0000   0.0000
                       |
### Table 3
          . esttab m1a m1b m2a m2b

          ----------------------------------------------------------------------------
                                (1)             (2)             (3)             (4)   
                           socprotZ        socprotZ        socprotZ        socprotZ   
          ----------------------------------------------------------------------------
          yeardvz             0.278**         0.362*          0.301**         0.326** 
                             (2.98)          (2.85)          (3.43)          (3.66)   

          gdp_ppp            -0.565***       -0.868***       -0.529**        -0.577** 
                            (-5.53)         (-7.10)         (-3.75)         (-3.79)   

          unemp               0.349           0.326           0.441*          0.460*  
                             (2.02)          (1.15)          (2.17)          (2.31)   

          aged               0.0176           0.601          0.0362          0.0243   
                             (0.24)          (1.90)          (0.56)          (0.34)   

          femlabor            0.282***        0.333**         0.301***        0.321***
                             (7.07)          (3.40)          (7.42)          (8.19)   

          veto5              -0.147           1.566*         -0.259         -0.0677   
                            (-0.58)          (2.72)         (-0.72)         (-0.20)   

          govsATZ             0.614                           0.712                   
                             (0.63)                          (0.75)                   

          0bn.libdem              .                               .               .   
                                  .                               .               .   

          1.libdem           -9.014***                       -8.299***       -8.113***
                            (-5.79)                         (-4.27)         (-4.23)   

          0bn.libdem~Z            .                               .                   
                                  .                               .                   

          1.libdem#c~Z       -0.567                          -0.707                   
                            (-0.52)                         (-0.65)                   

          socialpoli~s                        4.630***                        0.872   
                                             (4.90)                          (0.84)   

          0bn.libdem~s                            .                               .   
                                                  .                               .   

          1.libdem#c~s                       -3.723**                        -0.777   
                                            (-3.27)                         (-0.72)   

          religpccab                                         0.0191          0.0234   
                                                             (0.85)          (0.95)   

          leftpccab                                        -0.00222        -0.00251   
                                                            (-0.23)         (-0.27)   

          _cons               17.13**         5.982           13.19*          12.83*  
                             (3.85)          (0.86)          (2.52)          (2.65)   
          ----------------------------------------------------------------------------
          N                      43              43              43              43   
          ----------------------------------------------------------------------------
          t statistics in parentheses
          * p<0.05, ** p<0.01, *** p<0.001
<br></br>
# COMMENTS / REACTIONS / RELATED

## Brooks and Manza's 2006 original paper(s)

["Social Policy Responsiveness in Developed Democracies"](https://doi.org/10.1177/000312240607100306) is the 2006 paper in _ASR_ that I replicate. 

They also published a [similar paper](https://doi.org/10.1111/j.1468-2508.2006.00472.x) in the _Journal of Politics_ and a book [_Why Welfare States Persist_](http://press.uchicago.edu/ucp/books/book/chicago/W/bo5340649.html) using the same data and similar models.

## Weakliem's Comment

David Weakliem replicated my work and changed the liberal regime dichotomous variable, moving Japan into the European (he argues "civil law") as opposed to the liberal ("common law") regime. He published this comment in Sociological Science. The file [weakl.do](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/weakl.do) produces Weakliem's results (Models 1 and 2) and produces a second set of results (Models 3 and 4) demonstrating that his results become insignificant when using robust-clustered standard errors as Brooks and Manza and I did in our analyses.

### Scrutinizing Weakliem's Results
          ----------------------------------------------------------------------------
                                (1)             (2)             (3)             (4)   
                           socprotZ        socprotZ        socprotZ        socprotZ   
          ----------------------------------------------------------------------------
          yeardvz             0.213           0.259*          0.213           0.259   
                             (1.86)          (2.10)          (1.60)          (2.03)   

          gdp_ppp            -0.492**        -0.623**        -0.492**        -0.623***
                            (-2.87)         (-3.14)         (-3.65)         (-4.86)   

          unemp               0.561*          0.595**         0.561           0.595*  
                             (2.70)          (2.76)          (2.10)          (2.29)   

          aged             -0.00364         -0.0991        -0.00364         -0.0991   
                            (-0.01)         (-0.31)         (-0.02)         (-0.43)   

          femlabor            0.312***        0.361***        0.312***        0.361***
                             (4.49)          (4.89)          (4.80)          (5.73)   

          veto5            -0.00750           0.589        -0.00750           0.589   
                            (-0.02)          (1.09)         (-0.03)          (1.25)   

          govsATZ             2.498***                        2.498                   
                             (3.88)                          (2.12)                    

          1.common           -5.909***       -6.420***       -5.909*         -6.420*  
                            (-3.66)         (-3.88)         (-2.70)         (-2.96)               

          1.common#c~Z       -2.292**                        -2.292                   
                            (-2.92)                         (-1.99)                   

          socialpoli~s                        2.583**                         2.583   
                                             (3.37)                          (2.00)   

          1.common#c~s                       -2.051*                         -2.051   
                                            (-2.50)                         (-1.77)   

          _cons               9.772           11.28           9.772           11.28   
                             (1.73)          (1.92)          (1.40)          (1.74)   
          ----------------------------------------------------------------------------
          N                      43              43              43              43   
          ----------------------------------------------------------------------------
          t statistics in parentheses
          * p<0.05, ** p<0.01, *** p<0.001

## Political Science Replication (Janz's Blog)

["The Replication Road"](https://politicalsciencereplication.wordpress.com/2015/07/15/guest-post-the-replication-road-scientific-detour-or-destination-by-nate-breznau/)

## Secondary Observer Effects

Users may also access the code to replicate a related paper ["Secondary Observer Effects"](https://doi.org/10.1080/13645579.2014.1001221), providing a finding related to 'researcher degrees of freedom' based on two reproductions of the original Brooks and Manza macro-data by myself and Lane Kenworthy (this is forthcoming as a separate Repository).

## Soc Job Rumors

A discussion took place in the forum SocJobRumors under the heading ["How come nobody cares that Brooks and Manza were wrong?"](http://www.socjobrumors.com/topic/how-come-nobody-cares-that-brooks-and-manza-were).
