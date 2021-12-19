#' The knit files are saved in knit2file folder.
#' @title Adds the system date to the RMD file name.
#' @details Add to yaml Header from RMD Report:
#' knit: Knit2File::WithDateHTML
#' @author quito96
#' @param input comes from knit (Nothinhg to do)
#' @param ... comes from knit (Nothinhg to do)
#' @return
#' @export
#'


WithDateHTML <- function(input, ...) {
        rmarkdown::render(
                input,
                output_dir = "./knit2file",
                output_file = paste0(
                        xfun::sans_ext(input), '_', Sys.Date(), '_',
                        xfun::file_ext("html_document")
                ),
                envir = globalenv()
        )
}
