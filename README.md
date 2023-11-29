# champagnebourleaumarc (version 0.1.0)

<!-- badges: start -->
[![R-CMD-check](https://github.com/ptds2023/champagnebourleaumarc/workflows/R-CMD-check/badge.svg)](https://github.com/ptds2023/champagnebourleau/actions)
<!-- badges: end -->
Badge was passing until I updated the Readme file at 22h28 on the 29.11.2023. 
## Overview
`champagnebourleaumarc` is an R package designed for calculating the volume of a champagne glass using the disk integration method. It treats the glass as a solid of revolution, offering a mathematical approach to volume computation.
## Methodology
The package includes two types of functions for calculating the volume of a champagne glass: 
- Vectorization Functions: `champagne_glass_for`, `champagne_glass_purrr`, `champagne_glass_sapply`, `champagne_glass_vectorized` and `champagne_glass_vectorized_boolean`
- Numerical Integration: `champagne_glass`
## Installation
You can install the released version of `champagnebourleaumarc` from [CRAN](https://CRAN.R-project.org) with:

```r
devtools::install_github("bourleaumarc/champagnebourleaumarc")
```
## Dependencies
- `purrr` package: version 1.0.2
  
## Website 

You can also acess some additional resources on this website: https://ptds2023.github.io/champagnebourleaumarc/

## Get help
If you are stuck, remember: it's not a bug, it's an undocumented feature of your brain! 
![Champagne Glass](inst/extdata/champagne.jpeg)
