# Replication-Brooks-Manza
#### The Technical Appendix for the Paper ["The Missing Main Effect of Welfare State Regimes: A Replication of ‘Social Policy Responsiveness in Developed Democracies’ by Brooks and Manza"](https://www.sociologicalscience.com/articles-v2-20-420/) Published in _Sociological Science_, 2015, 2(20).
This Repository contains all code necessary to replicate my work, plus the [comment](https://www.sociologicalscience.com/articles-v3-6-109/) by Weakleim published in response.

NOTE: The original [Technical Appendix](https://www.sociologicalscience.com/download/volume-2/august/supplemental-materials/SocSci_v2_420to441_supp.pdf) available as supplemental material from _Sociological Science_ contains all code and extra tables. It can also be accessed on GitHub as a Word document (final edit June 2nd, 2015): ["Missing Main Effect Technical Appendix .doc"](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/Breznau%20Missing%20Main%20Effect%20TECH%20APPENDIX.docx). However, be aware that the ISSP some of data used for these analyses were downloaded when variables still had an upper-case "v" prefixing the variable names but are otherwise identical. This means users should use the code provided in this Repository rather than the Word or pdf documents if they want to easily replicate the analyses.

Users may also access the code to replicate my paper "Secondary Observer Effects", providing a finding related to 'researcher degrees of freedom' based on two reproductions of the original Brooks and Manza macro-data by myself and Lane Kenworthy (this is forthcoming as a separate Repository).

# Stata Project
All steps in the coding process are available as a Stata project [missingmain.stpr](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/missingmain.stpr). From the project all users can execute each step along the way as a separate do-file.

## DATA PREP
### International Social Survey Program (ISSP) Data
To build the macro-data used in the replication, users must get access to the ISSP data via GESIS/ZACAT. Then dowload the following data in Stata format and save to the path "C:/data/": 

__Role of Government__ 1985 ([ZA1490.dta](http://dx.doi.org/10.4232/1.1490)), 1990 ([ZA1950.dta](http://dx.doi.org/10.4232/1.1950)) and 1996 ([ZA2900.dta](http://dx.doi.org/10.4232/1.2900)).

__Religion__ 1991 ([ZA2150.dta](http://dx.doi.org/10.4232/1.2150)) and 1998 ([ZA3190.dta](http://dx.doi.org/10.4232/1.3190)).

### Kenworthy's Reproduction

Users will also need the file [2009ser-data.xls](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/2009ser-data.xls) made available on [Lane Kenworthy's website](https://lanekenworthy.net/cv/#articles) saved in the folder C:/data/.


### Commands

The file [isspmrg.do]( works up and merges the data.


## REPLICATION ANALYSES

Users may shortcut to the replications with the worked up macro-data file [int_and_e.dta](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/int_and_e.dta).

The file [missmain1] produces that results for Tables 1 and 2

### Results

<p>{smcl} {com}{sf}{ul off}{txt}{.-} name:  {res}<unnamed> {txt}log:  {res}C:\data\MISSING_MAIN\tbl1and2.smcl {txt}log type:  {res}smcl {txt}opened on:  {res}18 Mar 2018, 22:28:32 {txt} {com}. . <em>Table 1: Results . esttab m1a m1b m2a m2b {res} {txt}{hline 76} {txt}                      (1)             (2)             (3)             (4)<br />
{txt}                 socprotZ        socprotZ        socprotZ        socprotZ<br />
{txt}{hline 76} {txt}yeardvz     {res}        0.258           0.362</em>          0.314*          0.413***{txt} {res} {ralign 12:{txt:(}1.80{txt:)}}    {ralign 12:{txt:(}2.85{txt:)}}    {ralign 12:{txt:(}2.90{txt:)}}    {ralign 12:{txt:(}4.70{txt:)}}   {txt}</p>
<p>{txt}gdp_ppp     {res}       -0.588***       -0.868***       -0.395          -0.605** {txt} {res} {ralign 12:{txt:(}-5.11{txt:)}}    {ralign 12:{txt:(}-7.10{txt:)}}    {ralign 12:{txt:(}-2.10{txt:)}}    {ralign 12:{txt:(}-4.11{txt:)}}   {txt}</p>
<p>{txt}unemp       {res}        0.341           0.326           0.544*          0.605*  {txt} {res} {ralign 12:{txt:(}1.15{txt:)}}    {ralign 12:{txt:(}1.15{txt:)}}    {ralign 12:{txt:(}2.28{txt:)}}    {ralign 12:{txt:(}2.77{txt:)}}   {txt}</p>
<p>{txt}aged        {res}        0.636           0.601           0.454           0.374   {txt} {res} {ralign 12:{txt:(}2.00{txt:)}}    {ralign 12:{txt:(}1.90{txt:)}}    {ralign 12:{txt:(}1.95{txt:)}}    {ralign 12:{txt:(}1.75{txt:)}}   {txt}</p>
<p>{txt}femlabor    {res}        0.261*          0.333**         0.291**         0.369***{txt} {res} {ralign 12:{txt:(}2.46{txt:)}}    {ralign 12:{txt:(}3.40{txt:)}}    {ralign 12:{txt:(}3.11{txt:)}}    {ralign 12:{txt:(}4.35{txt:)}}   {txt}</p>
<p>{txt}veto5       {res}        0.466           1.566*         -0.139           0.593   {txt} {res} {ralign 12:{txt:(}1.11{txt:)}}    {ralign 12:{txt:(}2.72{txt:)}}    {ralign 12:{txt:(}-0.22{txt:)}}    {ralign 12:{txt:(}1.05{txt:)}}   {txt}</p>
<p>{txt}govsATZ     {res}        4.141***                        2.869**                 {txt} {res} {ralign 12:{txt:(}4.50{txt:)}}                    {ralign 12:{txt:(}3.44{txt:)}}                   {txt}</p>
<p>{txt}0bn.libdem~Z{res}            .                               .                   {txt} {res}            .                               .                   {txt}</p>
<p>{txt}1.libdem#c~Z{res}       -3.729**                        -2.700**                 {txt} {res} {ralign 12:{txt:(}-3.57{txt:)}}                    {ralign 12:{txt:(}-3.14{txt:)}}                   {txt}</p>
<p>{txt}socialpoli~s{res}                        4.630***                        3.429***{txt} {res}                 {ralign 12:{txt:(}4.90{txt:)}}                    {ralign 12:{txt:(}4.76{txt:)}}   {txt}</p>
<p>{txt}0bn.libdem~s{res}                            .                               .   {txt} {res}                            .                               .   {txt}</p>
<p>{txt}1.libdem#c~s{res}                       -3.723**                        -2.952** {txt} {res}                 {ralign 12:{txt:(}-3.27{txt:)}}                    {ralign 12:{txt:(}-3.93{txt:)}}   {txt}</p>
<p>{txt}religpccab  {res}                                       0.0772**        0.0875***{txt} {res}                                 {ralign 12:{txt:(}4.02{txt:)}}    {ralign 12:{txt:(}4.81{txt:)}}   {txt}</p>
<p>{txt}leftpccab   {res}                                       0.0209          0.0169   {txt} {res}                                 {ralign 12:{txt:(}1.43{txt:)}}    {ralign 12:{txt:(}1.32{txt:)}}   {txt}</p>
<p>{txt}_cons       {res}        3.458           5.982          -3.834          -3.582   {txt} {res} {ralign 12:{txt:(}0.40{txt:)}}    {ralign 12:{txt:(}0.86{txt:)}}    {ralign 12:{txt:(}-0.49{txt:)}}    {ralign 12:{txt:(}-0.55{txt:)}}   {txt} {txt}{hline 76} {txt}N           {res}           43              43              43              43   {txt} {txt}{hline 76} {txt}t statistics in parentheses {txt}* p&lt;0.05, ** p&lt;0.01, *** p&lt;0.001</p>
<p>{com}. . . *Table 2: Endogenous Error Terms . pwcorr libdem rIa rIIa rIaa rIIaa, sig</p>
<pre><code>         {txt}{c |}   libdem      rIa     rIIa     rIaa    rIIaa
</code></pre>
<p>{hline 13}{c +}{hline 45} libdem {c |} {res}  1.0000 {txt}{c |} {c |} rIa {c |} {res} -0.3306   1.0000 {txt}{c |}{res}   0.0304 {txt}{c |} rIIa {c |} {res} -0.2304   0.8407   1.0000 {txt}{c |}{res}   0.1371   0.0000 {txt}{c |} rIaa {c |} {res} -0.3483   0.9093   0.7060   1.0000 {txt}{c |}{res}   0.0221   0.0000   0.0000 {txt}{c |} rIIaa {c |} {res} -0.2095   0.7769   0.9383   0.7786   1.0000 {txt}{c |}{res}   0.1775   0.0000   0.0000   0.0000 {txt}{c |}</p>
<p>{com}. . log close {txt}name:  {res}<unnamed> {txt}log:  {res}C:\data\MISSING_MAIN\tbl1and2.smcl {txt}log type:  {res}smcl {txt}closed on:  {res}18 Mar 2018, 22:28:32 {txt}{.-} {smcl} {txt}{sf}{ul off}</p>

