function(input, output, session) {
  # observeEvent(input$password, {
  #   v$data <- rnorm(100)
  # })  
  
  valid <- eventReactive(input$Login, {
    # Authenticate based on your criteria and credential source
    if(input$user == "jay" && input$password == "optimus"){
      return(TRUE)
    } else {
      return(FALSE)
    }
  })
  
  output$uitest <- renderUI({
    validate(
      need(input$user, message = "Please enter the User Id", label = "User"),
      need(input$password, message = "Please enter the Password", label = "Password")
    )
    if(valid()) {
      uiOutput("tasks")
    } else {
      # h3("Please check user name or password!")
      shinydashboard::box(h3("Please check user name or password!"), 
                          title = "Login Failure!", background = "red")
    }
  })
  
  
  output$tasks <- renderUI({
    shinydashboard::box(actionButton(inputId = "Upload", label = "Upload files"), 
                        itle = "Login success!", background = "green")
    
  })
  
}
