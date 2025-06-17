
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bdsy2025

<!-- badges: start -->
<!-- badges: end -->

The goal of bdsy2025 is to provide a fast and simple way to load all
necessary packages at once for the 2025 causal inference cohort at Yale
University.

## Installation

You can install the development version of bdsy2025 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gabriellekraft/bdsy2025")
```

## Usage

Given a specified cohort, the load_bdsy() function loads all packages
associated with the cohort. It can optionally install any associated
packages that are not already available in a user’s R environment.

``` r
library(bdsy2025)
load_bdsy("ci", install_missing = TRUE)
#> Package loaded: Stat2Data
#> Package loaded: ggplot2
#> Warning: package 'broom' was built under R version 4.3.3
#> Package loaded: broom
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
#> Package loaded: dplyr
#> Package loaded: equatiomatic
#> Warning: package 'performance' was built under R version 4.3.3
#> Package loaded: performance
#> Warning: package 'see' was built under R version 4.3.3
#> Package loaded: see
#> 
#> Attaching package: 'gridExtra'
#> The following object is masked from 'package:dplyr':
#> 
#>     combine
#> Package loaded: gridExtra
#> Warning: package 'moderndive' was built under R version 4.3.3
#> Package loaded: moderndive
#> Registered S3 method overwritten by 'GGally':
#>   method from   
#>   +.gg   ggplot2
#> Package loaded: GGally
#> Package loaded: infer
#> Warning: package 'emmeans' was built under R version 4.3.3
#> Welcome to emmeans.
#> Caution: You lose important information if you filter this package's results.
#> See '? untidy'
#> 
#> Attaching package: 'emmeans'
#> The following object is masked from 'package:GGally':
#> 
#>     pigs
#> Package loaded: emmeans
#> Warning: package 'purrr' was built under R version 4.3.3
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ forcats   1.0.0     ✔ stringr   1.5.1
#> ✔ lubridate 1.9.3     ✔ tibble    3.2.1
#> ✔ purrr     1.0.4     ✔ tidyr     1.3.1
#> ✔ readr     2.1.5
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ gridExtra::combine() masks dplyr::combine()
#> ✖ dplyr::filter()      masks stats::filter()
#> ✖ dplyr::lag()         masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
#> Package loaded: tidyverse
```
