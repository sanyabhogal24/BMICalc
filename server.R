library(shiny)
BMIcalculation<-function(feet,inch,kg) kg/((((feet*12)+inch)*0.025)^2)
shinyServer(
  function(input,output){
    output$prediction<-renderPrint({BMIcalculation(input$feet,input$inch,input$kg)})
  }
)