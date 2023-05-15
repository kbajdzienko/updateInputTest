box::use(
  shiny[tagList, NS, checkboxGroupInput,updateCheckboxGroupInput,actionButton,moduleServer,observeEvent]
)

mod_checkbox_ui <- function(id) {
  ns <- NS(id)
  tagList(
    checkboxGroupInput(ns('checkbox'),'Checkbox',NULL),
    actionButton(ns('update_checkbox'),'Update Checkbox')
  )
}

mod_checkbox_server <- function(id) {

  moduleServer(id, function(input, output, session){
    
    ns <- session$ns
    
    observeEvent(input$update_checkbox,{
      
      shiny::showNotification('update_checkbox')

      updateCheckboxGroupInput(
        session = session,
        inputId = 'checkbox',
        choices = letters[1:4]
      )
    })
  })
  
}