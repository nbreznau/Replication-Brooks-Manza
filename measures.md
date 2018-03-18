          ------------------------------------------------------------------------------------------------------------------------------------------------------------
                name:  <unnamed>
                 log:  C:\data\MISSING_MAIN\measures.smcl
            log type:  smcl
           opened on:  18 Mar 2018, 23:12:37

          . gen Aadded = govjobs + govincdiff
          (5,673 missing values generated)

          . factor govjobs govincdiff
          (obs=55,835)

          Factor analysis/correlation                      Number of obs    =     55,835
              Method: principal factors                    Retained factors =          1
              Rotation: (unrotated)                        Number of params =          1

              --------------------------------------------------------------------------
                   Factor  |   Eigenvalue   Difference        Proportion   Cumulative
              -------------+------------------------------------------------------------
                  Factor1  |      0.74514      0.99513            1.5049       1.5049
                  Factor2  |     -0.24999            .           -0.5049       1.0000
              --------------------------------------------------------------------------
              LR test: independent vs. saturated:  chi2(1)  = 1.6e+04 Prob>chi2 = 0.0000

          Factor loadings (pattern matrix) and unique variances

              ---------------------------------------
                  Variable |  Factor1 |   Uniqueness 
              -------------+----------+--------------
                   govjobs |   0.6104 |      0.6274  
                govincdiff |   0.6104 |      0.6274  
              ---------------------------------------

          . predict Apf
          (regression scoring assumed)

          Scoring coefficients (method = regression)

              ------------------------
                  Variable |  Factor1 
              -------------+----------
                   govjobs |  0.40758 
                govincdiff |  0.40758 
              ------------------------


          . factor govjobs govincdiff, pcf
          (obs=55,835)

          Factor analysis/correlation                      Number of obs    =     55,835
              Method: principal-component factors          Retained factors =          1
              Rotation: (unrotated)                        Number of params =          1

              --------------------------------------------------------------------------
                   Factor  |   Eigenvalue   Difference        Proportion   Cumulative
              -------------+------------------------------------------------------------
                  Factor1  |      1.49757      0.99513            0.7488       0.7488
                  Factor2  |      0.50243            .            0.2512       1.0000
              --------------------------------------------------------------------------
              LR test: independent vs. saturated:  chi2(1)  = 1.6e+04 Prob>chi2 = 0.0000

          Factor loadings (pattern matrix) and unique variances

              ---------------------------------------
                  Variable |  Factor1 |   Uniqueness 
              -------------+----------+--------------
                   govjobs |   0.8653 |      0.2512  
                govincdiff |   0.8653 |      0.2512  
              ---------------------------------------

          . predict Apcf
          (regression scoring assumed)

          Scoring coefficients (method = regression)

              ------------------------
                  Variable |  Factor1 
              -------------+----------
                   govjobs |  0.57782 
                govincdiff |  0.57782 
              ------------------------


          . factor govjobs govincdiff, ip
          (obs=55,835)

          Factor analysis/correlation                      Number of obs    =     55,835
              Method: iterated principal factors           Retained factors =          1
              Rotation: (unrotated)                        Number of params =          1

              --------------------------------------------------------------------------
                   Factor  |   Eigenvalue   Difference        Proportion   Cumulative
              -------------+------------------------------------------------------------
                  Factor1  |      0.99501      0.99513            1.0001       1.0001
                  Factor2  |     -0.00012            .           -0.0001       1.0000
              --------------------------------------------------------------------------
              LR test: independent vs. saturated:  chi2(1)  = 1.6e+04 Prob>chi2 = 0.0000

          Factor loadings (pattern matrix) and unique variances

              ---------------------------------------
                  Variable |  Factor1 |   Uniqueness 
              -------------+----------+--------------
                   govjobs |   0.7053 |      0.5025  
                govincdiff |   0.7053 |      0.5025  
              ---------------------------------------

          . predict Aip
          (regression scoring assumed)

          Scoring coefficients (method = regression)

              ------------------------
                  Variable |  Factor1 
              -------------+----------
                   govjobs |  0.47099 
                govincdiff |  0.47099 
              ------------------------


          . sum Aadded Apf Apcf Aip

              Variable |        Obs        Mean    Std. Dev.       Min        Max
          -------------+---------------------------------------------------------
                Aadded |     55,835    5.816567    1.713636          2          8
                   Apf |     55,835   -1.32e-09    .7053839  -1.571156    .898874
                  Apcf |     55,835    4.40e-09           1  -2.227377   1.274305
                   Aip |     55,835    3.79e-09    .8151187  -1.815576    1.03871

          . collapse Aadded Apf Apcf Aip, by(id)

          . sum Aadded Apf Apcf Aip

              Variable |        Obs        Mean    Std. Dev.       Min        Max
          -------------+---------------------------------------------------------
                Aadded |         43    5.768484    .6530576   4.332762   6.643272
                   Apf |         43    -.019937    .2690615  -.6110608   .3405317
                  Apcf |         43    -.028264    .3814399  -.8662812   .4827608
                   Aip |         43   -.0230385    .3109188   -.706122   .3935074

          . use /data/ISSP85to06.dta, clear

          . preserve

          . collapse  countryy govincdiff govjobs socprot year [pweight=weight], by (id)

          . factor govjobs govincdiff, pcf
          (obs=43)

          Factor analysis/correlation                      Number of obs    =         43
              Method: principal-component factors          Retained factors =          1
              Rotation: (unrotated)                        Number of params =          1

              --------------------------------------------------------------------------
                   Factor  |   Eigenvalue   Difference        Proportion   Cumulative
              -------------+------------------------------------------------------------
                  Factor1  |      1.84225      1.68451            0.9211       0.9211
                  Factor2  |      0.15775            .            0.0789       1.0000
              --------------------------------------------------------------------------
              LR test: independent vs. saturated:  chi2(1)  =   51.29 Prob>chi2 = 0.0000

          Factor loadings (pattern matrix) and unique variances

              ---------------------------------------
                  Variable |  Factor1 |   Uniqueness 
              -------------+----------+--------------
                   govjobs |   0.9598 |      0.0789  
                govincdiff |   0.9598 |      0.0789  
              ---------------------------------------

          . predict govsAT
          (regression scoring assumed)

          Scoring coefficients (method = regression)

              ------------------------
                  Variable |  Factor1 
              -------------+----------
                   govjobs |  0.52097 
                govincdiff |  0.52097 
              ------------------------


          . sum govsAT

              Variable |        Obs        Mean    Std. Dev.       Min        Max
          -------------+---------------------------------------------------------
                govsAT |         43   -5.93e-09           1   -2.11652   1.317815

          . egen govsR = rowmean(govincdiff govjobs)

          . sort id

          . save /data/workingPWEIGHT.dta, replace
          file /data/workingPWEIGHT.dta saved

          . restore

          . collapse  countryy govincdiff govjobs socprot year, by (id)

          . factor govjobs govincdiff, pcf
          (obs=43)

          Factor analysis/correlation                      Number of obs    =         43
              Method: principal-component factors          Retained factors =          1
              Rotation: (unrotated)                        Number of params =          1

              --------------------------------------------------------------------------
                   Factor  |   Eigenvalue   Difference        Proportion   Cumulative
              -------------+------------------------------------------------------------
                  Factor1  |      1.84261      1.68523            0.9213       0.9213
                  Factor2  |      0.15739            .            0.0787       1.0000
              --------------------------------------------------------------------------
              LR test: independent vs. saturated:  chi2(1)  =   51.37 Prob>chi2 = 0.0000

          Factor loadings (pattern matrix) and unique variances

              ---------------------------------------
                  Variable |  Factor1 |   Uniqueness 
              -------------+----------+--------------
                   govjobs |   0.9598 |      0.0787  
                govincdiff |   0.9598 |      0.0787  
              ---------------------------------------

          . predict govsN
          (regression scoring assumed)

          Scoring coefficients (method = regression)

              ------------------------
                  Variable |  Factor1 
              -------------+----------
                   govjobs |  0.52092 
                govincdiff |  0.52092 
              ------------------------


          . sum govsN

              Variable |        Obs        Mean    Std. Dev.       Min        Max
          -------------+---------------------------------------------------------
                 govsN |         43   -2.08e-09           1  -2.195227   1.333364

          . egen govsNR = rowmean(govincdiff govjobs)

          . sort id

          . save /data/workingNOWEIGHT.dta, replace
          file /data/workingNOWEIGHT.dta saved

          . merge id using /Data/workingPWEIGHT.dta
          (note: you are using old merge syntax; see [D] merge for new syntax)

          . drop _merge

          . label var govsN "Social Policy Preferences NO WEIGHTS"

          . label var govsAT "Social Policy Preferences PWEIGHTS"

          . label var govsR "Social Policy Preferences Org. Metric NO W"

          . label var govsNR "Social Policy Preferences Org. Metric P"

          . save /data/working.dta, replace
          file /data/working.dta saved

          . log close
                name:  <unnamed>
                 log:  C:\data\MISSING_MAIN\measures.smcl
            log type:  smcl
           closed on:  18 Mar 2018, 23:12:38
          ------------------------------------------------------------------------------------------------------------------------------------------------------------
