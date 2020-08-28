
<!-- README.md is generated from README.Rmd. Please edit that file -->

# clinicalfd (Clinical Fake Data)

<!-- badges: start -->

<!-- badges: end -->

The goal of clinicalfd is to create Fake SDTM/ADaM data for generating
TFL.This data is available at
(<https://github.com/phuse-org/phuse-scripts>) for free to download for
public use see the licence here
(<https://github.com/phuse-org/phuse-scripts/blob/master/LICENSE.md>)

## Installation

You can install the released version of clinicalfd (clinical fake data)
from [Github](https://github.com/sas2r/clinical_fd)

General Instructions:

Make sure you have lateset version of R-language , the way to check is
session() . If it 0.4.7 then the Package may not be loaded. To take care
of that is

If you are R studio on Personnel drive then first Install.packages
(“rlang”) , then library (rlang) , check sessionInfo () NOTE: If you
are using Rstudio on cloud this may would not work , simply go to right
most corner of the window and change the R version to 4.0 or 4.1.

The way to install this package is In the R-studio in Console

install.packages(“devtools”) wait for the dev tools to be installed then
call the library(devtools). Once the devtools is installed then you can
call install\_github(“sas2r/clinical\_fd”) to install the package
clinical\_fd (all lower case , with the underscore in it ) then call
library(clincalfd) (without the underscore)

During the process of Installation ( May take around 10 min depending on
the System) you will see couple of packages either been downloaded or
updated.

NOTE: Make sure you type in exactly as shown below without \# for
install packages part

``` r
#install.packages("devtools") 

library(devtools)
#> Loading required package: usethis

#install_github("sas2r/clinical_fd")

library(clinicalfd)
## basic example code
```

List of ADaM/SDTM Data sets available in ‘clinicalfd’ package are:

ADaM: adadas  
adae  
adcibc  
adlbc  
adlbcpv  
adlbh  
adlbhpv  
adlbhy  
adnpix  
adsl  
adtte  
advs

SDTM: ae  
cm  
dm  
ds  
ex  
lbch  
lbhe  
mh  
qsco  
qsda  
qsgi  
qshi  
relrec  
sc  
se  
suppae  
suppdm  
suppds  
supplbch  
supplbur  
sv  
ta  
te  
ti  
ts  
tv  
vs

## Example

This is a basic example which shows you how to solve a common problem:

``` r
#from SDTM
summary(dplyr::select(dm, age, sex , race, ethnic))
#>       age        sex                                   race    
#>  Min.   :50.00   F:179   AMERICAN INDIAN OR ALASKA NATIVE:  2  
#>  1st Qu.:70.25   M:127   ASIAN                           :  2  
#>  Median :77.00           BLACK OR AFRICAN AMERICAN       : 29  
#>  Mean   :75.09           WHITE                           :273  
#>  3rd Qu.:81.00                                                 
#>  Max.   :89.00                                                 
#>                     ethnic   
#>  HISPANIC OR LATINO    : 17  
#>  NOT HISPANIC OR LATINO:289  
#>                              
#>                              
#>                              
#> 
#from ADaM
summary(dplyr::select(adsl, age, sex , race, ethnic))
#>       age        sex                                   race    
#>  Min.   :51.00   F:143   AMERICAN INDIAN OR ALASKA NATIVE:  1  
#>  1st Qu.:70.00   M:111   BLACK OR AFRICAN AMERICAN       : 23  
#>  Median :77.00           WHITE                           :230  
#>  Mean   :75.09                                                 
#>  3rd Qu.:81.00                                                 
#>  Max.   :89.00                                                 
#>                     ethnic   
#>  HISPANIC OR LATINO    : 12  
#>  NOT HISPANIC OR LATINO:242  
#>                              
#>                              
#>                              
#> 
```

You can also embed plots, for example:

<img src="man/figures/README-gender-1.png" width="100%" />

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
