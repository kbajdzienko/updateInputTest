# Rhino / shinyApp entrypoint. Do not edit.
rhino::app()

box::use(app/view/checkbox)
ui <- bootstrapPage(
    tags$h3(
      textOutput(ns("message"))
    ),
    cx$mod_checkbox_ui('cx')
  )

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$message <- renderText("Hello!")
    cx$mod_checkbox_server('cx')
  })
}