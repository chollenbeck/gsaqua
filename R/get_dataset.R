#' Download a dataset
#'
#' @param id The dataset id
#' @param save_local Either FALSE to directly download the dataset into R or a path to a directory to save a local copy
#'
#' @return A list containing the various parts of the dataset
#' @export
#' @importFrom dplyr filter pull
#' @importFrom utils download.file
#' @import adegenet
#'
#' @examples
get_dataset <- function(id, save_local = FALSE) {

  ds_id <- id
  ds_tbl <- list_datasets()

  ds_url <- ds_tbl %>%
    dplyr::filter(id == ds_id) %>%
    dplyr::pull(url)


  if (isTRUE(save_local)) {

    save_path <- file.path(save_local, paste(ds_id, "rds", sep = "."))
    datfile <- download.file(paste(ds_url, "?raw=1", sep = ""), destfile = save_path)

    dat <- readRDS(save_path)

  } else {

    dat <- readRDS(gzcon(url(paste(ds_url, "?raw=1", sep = ""), "rb")))

  }

  return(dat)

}
