#' Custom Knit function for RStudio
#' Add System Date to knit File Name
#' @param input only knit
#' @param ... only knit
#' @return
#' @export

WithDateHTML <- function(input, ...) {
        rmarkdown::render(
                input,
                output_file = paste0(
                        xfun::sans_ext(input), '_', Sys.Date(), '_.',
                        xfun::file_ext("html_document")
                ),
                envir = globalenv()
        )
}
