library(shiny)
shinyUI(
  pageWithSidebar(
    #Application Title
    headerPanel("BMI Calculation"),
    sidebarPanel(
      h4("Please enter your height"),
      numericInput('feet','in feet',5,min=3,max=6,step=1),
      numericInput('inch','in inches',0,min=0,max=11,step=1),
      h4("Please enter your weight"),
      numericInput('kg','in kg',50,min=30,max=100,step=1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Prediction'),
      h4('BMI is'),
      verbatimTextOutput("prediction")
    )
  )
)

