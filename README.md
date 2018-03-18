# Replication-Brooks-Manza
#### The Technical Appendix for the Paper ["The Missing Main Effect of Welfare State Regimes: A Replication of Brooks and Manza"](https://www.sociologicalscience.com/articles-v2-20-420/) Published in _Sociological Science_, 2015, 2(20).
This Repository contains all code necessary to replicate my work, plus the [comment](https://www.sociologicalscience.com/articles-v3-6-109/) by Weakleim published in response.

NOTE: The original [Technical Appendix](https://www.sociologicalscience.com/download/volume-2/august/supplemental-materials/SocSci_v2_420to441_supp.pdf) available as supplemental material from _Sociological Science_ contains all code and extra tables. It can also be accessed on GitHub as a Word document (final edit June 2nd, 2015): ["Missing Main Effect Technical Appendix .doc"](https://github.com/nbreznau/Replication-Brooks-Manza/blob/master/Breznau%20Missing%20Main%20Effect%20TECH%20APPENDIX.docx).

# Stata Project
All steps in the coding process are available as a Stata project [missingmain.stpr]. From the project all users can execute each step only the way as a separate do-file.

## International Social Survey Program (ISSP) Data
To build the macro-data used in the replication, users must get access to the ISSP data via GESIS/ZACAT.

Then dowload the following data in Stata format and save to the path "C:/data/": 

___Role of Government___ 1985 ([ZA1490.dta](http://dx.doi.org/10.4232/1.1490)), 1990 ([ZA1950.dta](http://dx.doi.org/10.4232/1.1950)), 1996 ([ZA2900.dta](http://dx.doi.org/10.4232/1.2900)) and 2006 ([ZA4700.dta](http://dx.doi.org/10.4232/1.4700))

___Religion___ 1991 ([ZA2150.dta](http://dx.doi.org/10.4232/1.2150)) and 1998 ([ZA3190.dta](http://dx.doi.org/10.4232/1.3190)).

The file [isspmrg.do] works up and merges the data.

### ISSP 
