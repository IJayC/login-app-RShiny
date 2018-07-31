fluidPage(
  # Application title
  titlePanel("Login"),
  
  sidebarLayout(
    # Sidebar with a slider and selection inputs
    sidebarPanel(
      textInput(inputId = "user", label = "User name", placeholder = "Valid User Id"),
      passwordInput(inputId = "password", "Password", placeholder = "VAlid Password"),
      actionButton("Login", "Login")
    ),
    mainPanel(
      uiOutput("uitest")
    )
  )
)
