# sdPop: Population standard deviation [![GitHub R package version](https://img.shields.io/github/r-package/v/itsmiguelrojas/sdPop?style=plastic)](https://github.com/itsmiguelrojas/sdPop/releases) [![GitHub](https://img.shields.io/github/license/itsmiguelrojas/sdPop?color=orange&style=plastic)](https://github.com/itsmiguelrojas/sdPop/blob/main/LICENSE) [![GitHub repo size](https://img.shields.io/github/repo-size/itsmiguelrojas/sdPop?color=green&label=size&style=plastic)](https://github.com/itsmiguelrojas/sdPop)
---

## About

This package has a only one function, `sd.population()`, which allows you to calculate the standard deviation from a population. This means it is divided by *n*,
not  *n-1*.

## Install

You can install this package using `remotes`:

```r
install.packages('remotes')
library(remotes)
remotes::install_github('itsmiguelrojas/sdPop')
```

Or you can do the same with `devtools`:

```r
install.packages('devtools')
library(devtools)
devtools::install_github('itsmiguelrojas/sdPop')
```

## Parameters

`sd.population()` has only two parameters:

- **x**: Data passed as a numeric vector.
- **na.rm**: Missing values? Remove them. Defaults to `FALSE`.

## Example

### Simple calculation

```r
x <- c(3.6, 3.0, 6.8, 7.5, 6.3, 5.7, 7.7, 2.8, 2.6, 8.6)
sd.population(x)
```

This produces:

```r
[1] 2.15323
```

### Missing values

```r
x <- c(3.6, 3.0, 6.8, NA, 6.3, 5.7, 7.7, NA, 2.6, 8.6)
sd.population(x)
```

It gives the following error:

```
Error in sd.population(x) : NA's detected
```

If we add `na.rm = TRUE`:

```r
sd.population(x, na.rm = TRUE)

[1] 2.094002
```
