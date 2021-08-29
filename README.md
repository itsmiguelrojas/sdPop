# sdPop: Population standard deviation

## About

This package has a only one function, `sd.population()`, which allows you to calculate the standard deviation from a population. This means it is divided by *n*,
not  *n-1*.

## Parameters

`sd.population()` has only two parameters:

- **x**: Data passed as a numeric vector.
- **na.rm**: Missing values? Remove them. Defaults to `FALSE`.

## Example

### Simple calculation

```
x <- c(3.6, 3.0, 6.8, 7.5, 6.3, 5.7, 7.7, 2.8, 2.6, 8.6)
sd.population(x)
```

This produces:

```
[1] 2.15323
```

### Missing values

```
x <- c(3.6, 3.0, 6.8, NA, 6.3, 5.7, 7.7, NA, 2.6, 8.6)
sd.population(x)
```

It gives the following error:

```
Error in sd.population(x) : NA's detected
```

If we add `na.rm = TRUE`:

```
sd.population(x, na.rm = TRUE)

[1] 2.094002
```

## Version

Current version is 1.0.
