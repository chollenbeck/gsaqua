## code to prepare `DATASET` dataset goes here

datasets <- readr::read_csv("data-raw/datasets.csv", col_types = readr::cols())

usethis::use_data(datasets, overwrite = TRUE, compress = "gzip")
