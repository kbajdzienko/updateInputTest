box::use(
  shiny[bootstrapPage, moduleServer, NS, renderText, tags, textOutput],
  cx = view/checkbox
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    tags$h3(
      textOutput(ns("message"))
    ),
    cx$mod_checkbox_ui(ns('cx'))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$message <- renderText("Hello!")
    cx$mod_checkbox_server('cx')
  })
}
