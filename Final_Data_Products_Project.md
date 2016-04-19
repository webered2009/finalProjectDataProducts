---
title       : Examining Fortune 500 Data
subtitle    : Coursera Data Products Final Project
author      : Eric Weber
job         : University of Minnesota
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This project uses data about revenue and profit for Fortune 500 companies over the last 70 years.

The shiny app is hosted here: 

[ ShinyApp ](https://ericweber.shinyapps.io/Shiny_Project/)

The files to build the shiny app can be found here: 

[ Github ](https://github.com/webered2009/Shiny_Project_Coursera_Weber)

--- 

## Project 

The shiny app allows the user to subset the data by year, rank, and company, displaying the total revenue and profit for those companies in millions that year.

This allows the user to see which years a company was present in the dataset, which companies were present in a given year, and which companies were a particular rank in a particular year.

While the table could certainly be extended to do more, I focused on usability in this project.

---

## Overview of the Dataset


```
## Error in assign(mname, def, where): cannot add bindings to a locked environment
```

```
## Error in setMethod("coerce", c(from, to), method, where = where): the environment 'slidify' is locked; cannot assign methods for function 'coerce'
```

```
## Error in methods::as(data[[i]], colClasses[i]): no method or default for coercing "character" to "remove_comma"
```

Below is the first five lines of the dataset


```r
head(f500, n = 5)
```

```
## Error in head(f500, n = 5): object 'f500' not found
```

---

## Summary of Dataset


```r
summary(f500)
```

```
## Error in summary(f500): object 'f500' not found
```



