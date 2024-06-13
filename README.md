
# {gsaqua}

A data R package for testing genomic selection workflows for aquaculture

## Basic usage

``` r
library(gsaqua)

list_datasets()
```

    ## # A tibble: 4 × 3
    ##   id              desc                                                     url  
    ##   <chr>           <chr>                                                    <chr>
    ## 1 mrode_gblup     A simple dataset of traits and genotypes for GBLUP from… http…
    ## 2 ssal_caligus    Dataset from Atlantic salmon challenge with Caligus fro… http…
    ## 3 otsh_color_gwas Dataset from GWAS for flesh color in Chinook salmon fro… http…
    ## 4 sim_gwas_basic  Simulated dataset of single quantitative trait with lar… http…

``` r
mrode <- get_dataset("mrode_gblup")

mrode
```

    ## $dat
    ## # A tibble: 11 × 4
    ##    id     mean weight_kg    wt
    ##    <chr> <dbl>     <dbl> <dbl>
    ##  1 ID001     1     -1.28  1   
    ##  2 ID002     1     -1.78  0.98
    ##  3 ID003     1      0.54  0.9 
    ##  4 ID004     1      1.36  1   
    ##  5 ID005     1      0.47  0.93
    ##  6 ID006     1      0.04  1   
    ##  7 ID007     1      0.68  1   
    ##  8 ID008     1     -0.89  0.85
    ##  9 ID009     1     -0.48  0.88
    ## 10 ID010     1      0.89  0.99
    ## 11 ID011     1     -1.16  0.97
    ## 
    ## $geno
    ##  /// GENLIGHT OBJECT /////////
    ## 
    ##  // 15 genotypes,  100 binary SNPs, size: 31.4 Kb
    ##  0 (0 %) missing data
    ## 
    ##  // Basic content
    ##    @gen: list of 15 SNPbin
    ## 
    ##  // Optional content
    ##    @ind.names:  15 individual labels
    ##    @loc.names:  100 locus labels
    ##    @other: a list containing: elements without names
