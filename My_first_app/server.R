
library(shiny)


shinyServer(function(input, output) {
  
  output$BMI = renderText(input$weight/input$height^2)
   weight_class <- reactive ({
     class <- input$weight/input$height^2
      if((class <=24) & (class>= 19)) {return ("normal weighted")}
      if((class <=29) & (class> 24)) {return ("overweighted")}
      if((class <=39) & (class>29)) {return ("obese")}
      if(class> 39) {return ("super obese")}
      if (class <19) {return("too thin")}
      })
  output$text1 = renderText(weight_class())
})
