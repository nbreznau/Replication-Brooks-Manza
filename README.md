# Replication-Brooks-Manza
#### The Technical Appendix for the Paper ["The Missing Main Effect of Welfare State Regimes: A Replication of Brooks and Manza"](https://www.sociologicalscience.com/articles-v2-20-420/) Published in _Sociological Science_, 2015, 2(20).
This Repository contains all code necessary to replicate my work, plus the [comment](https://www.sociologicalscience.com/articles-v3-6-109/) by Weakleim published in response.

NOTE: The original [Technical Appendix](https://www.sociologicalscience.com/download/volume-2/august/supplemental-materials/SocSci_v2_420to441_supp.pdf) available as supplemental material from _Sociological Science_ contains all code and extra tables. It can also be accessed on GitHub as a Word document (final edit June 2nd, 2015): ["Missing Main Effect Technical Appendix .doc"](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/Breznau%20Missing%20Main%20Effect%20TECH%20APPENDIX.docx). However, be aware that the ISSP some of data used for these analyses were downloaded when variables still had an upper-case "v" prefixing the variable names but are otherwise identical. This means users should use the code provided in this Repository rather than the Word or pdf documents if they want to easily replicate the analyses.

Users may also access the code to replicate "Secondary Observer Effects", another finding based on two reproductions of the original Brooks and Manza macro-data by myself and Lane Kenworthy (this is forthcoming as a separate Repository).

# Stata Project
All steps in the coding process are available as a Stata project [missingmain.stpr]. From the project all users can execute each step only the way as a separate do-file.

## International Social Survey Program (ISSP) Data
To build the macro-data used in the replication, users must get access to the ISSP data via GESIS/ZACAT. Then dowload the following data in Stata format and save to the path "C:/data/": 

__Role of Government__ 1985 ([ZA1490.dta](http://dx.doi.org/10.4232/1.1490)), 1990 ([ZA1950.dta](http://dx.doi.org/10.4232/1.1950)) and 1996 ([ZA2900.dta](http://dx.doi.org/10.4232/1.2900)).

__Religion__ 1991 ([ZA2150.dta](http://dx.doi.org/10.4232/1.2150)) and 1998 ([ZA3190.dta](http://dx.doi.org/10.4232/1.3190)).

## Kenworthy's Reproduction

Users will also need the file [2009ser-data.xls](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/2009ser-data.xls) made available on [Lane Kenworthy's website](https://lanekenworthy.net/cv/#articles) saved in the folder C:/data/.

## Commands

The file [isspmrg.do]( works up and merges the data.


### ISSP 
