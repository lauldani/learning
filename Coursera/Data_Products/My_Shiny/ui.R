library(shiny)
shinyUI(pageWithSidebar(
     headerPanel("Hello Friend!"),
     sidebarPanel(
          h3('What is your name?'),
          textInput("name", "What is your name?"),
          numericInput("class", "How do you like this class? (10 is LOVE IT!!)", 
                       5, min = 0, max = 10, step = 1),
          submitButton('Submit')
          ),
     
     mainPanel(
          h2("Hi"),
         verbatimTextOutput("name"),
          h3('My name is Laura'),
         h2("Plot of how much we like the class"), 
         plotOutput("bar")
      
     )
))