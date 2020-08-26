set.seed (100)
library(tibble)
x=rnorm(100)
y = x*2 + rnorm(100)
s_data = tibble (x=x , y = y)

usethis:: use_data (s_data , compress = "xz" )

readr::write_csv(s_data ,
path= "inst/extdata/s_data.csv")




