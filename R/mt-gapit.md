Medicago HapMap - Saponin Genome-wide Association Analysis
==========================================================

- **Authors**: John Stanton-Geddes, Derek Nedveck
- **Date**: 2013.02.28
- **Description**: Analysis of saponin metabolite phenotype data collected in Lloyd Sumners lab at the Noble Institute for ~104 Medicago HapMap accessions. Script developed from the tutorials for the [GAPIT analysis tool](http://www.maizegenetics.net/gapit)

> # GAPIT - Genomic Association and Prediction Integrated Tool
> # Designed by Zhiwu Zhang
> # Written by Zhiwu Zhang, Alex Lipka and Feng Tian 
> # Last update: June 29, 2012


```
## Loading required package: gtools
```

```
## Loading required package: gdata
```

```
## gdata: read.xls support for 'XLS' (Excel 97-2004) files ENABLED.
```

```
## ```

```
## gdata: read.xls support for 'XLSX' (Excel 2007+) files ENABLED.
```

```
## Attaching package: 'gdata'
```

```
## The following object(s) are masked from 'package:stats':
## 
## nobs
```

```
## The following object(s) are masked from 'package:utils':
## 
## object.size
```

```
## Loading required package: caTools
```

```
## Loading required package: bitops
```

```
## Loading required package: grid
```

```
## Loading required package: KernSmooth
```

```
## KernSmooth 2.23 loaded Copyright M. P. Wand 1997-2009
```

```
## Attaching package: 'gplots'
```

```
## The following object(s) are masked from 'package:stats':
## 
## lowess
```

```
## Loading required package: combinat
```

```
## Attaching package: 'combinat'
```

```
## The following object(s) are masked from 'package:utils':
## 
## combn
```

```
## Loading required package: mvtnorm
```

```
## 
## NOTE: THIS PACKAGE IS NOW OBSOLETE.
## 
##   The R-Genetics project has developed an set of enhanced genetics
##   packages to replace 'genetics'. Please visit the project homepage
##   at http://rgenetics.org for informtion.
```

```
## Attaching package: 'genetics'
```

```
## The following object(s) are masked from 'package:base':
## 
## %in%, as.factor, order
```

```
## Loading required package: methods
```

```
## Loading required package: Biobase
```

```
## Loading required package: BiocGenerics
```

```
## Attaching package: 'BiocGenerics'
```

```
## The following object(s) are masked from 'package:genetics':
## 
## order
```

```
## The following object(s) are masked from 'package:gdata':
## 
## combine
```

```
## The following object(s) are masked from 'package:stats':
## 
## xtabs
```

```
## The following object(s) are masked from 'package:base':
## 
## Filter, Find, Map, Position, Reduce, anyDuplicated, cbind, colnames,
## duplicated, eval, get, intersect, lapply, mapply, mget, order, paste,
## pmax, pmax.int, pmin, pmin.int, rbind, rep.int, rownames, sapply, setdiff,
## table, tapply, union, unique
```

```
## Welcome to Bioconductor
## 
## Vignettes contain introductory material; view with 'browseVignettes()'. To
## cite Bioconductor, see 'citation("Biobase")', and for packages
## 'citation("pkgname")'.
```

```
## Attaching package: 'multtest'
```

```
## The following object(s) are masked from 'package:gplots':
## 
## wapply
```


#
# TODO - modify code so that results written to file using 'cat' instead of saving in R environment when using memory saving feature of reading 'file.fragment'
#

Read in command-line arguments and specify directories


```r
if (is.null(trait)) stop("No trait file!")
if (is.null(geno)) stop("No genotype file!")
if (is.null(out)) stop("No out directory!")
```


#```{r kinship, cache=TRUE}
#TODO
#```

Load data





