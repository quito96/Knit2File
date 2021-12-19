#' Add System Date to knit File Name
#' @author quito96
#' @note Add to yaml Header from RMD Report:
#' knit: Knit2File::WithDateHTML
#' @param input comes from knit (Nothinhg to do)
#' @param ... comes from knit (Nothinhg to do)
#' @return
#' @export


WithDateHTML <- function(input, ...) {
        rmarkdown::render(
                input,
                output_dir = "/knit2file/",
                output_file = paste0(
                        xfun::sans_ext(input), '_', Sys.Date(), '_',
                        xfun::file_ext("html_document")
                ),
                envir = globalenv()
        )
}
