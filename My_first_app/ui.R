library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Weight track"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("height", "Your height in meter is:",
                   min = 1,
                   max = 2.50,
                   value = 1.70),
      sliderInput("weight",
                  "Your weight in kg is:",
                  min = 30,
                  max = 150,
                  value = 70)
    ),
    
    mainPanel(
        p("This app calculates your body mass index, please enter your weight in kg and your height in meter."),
       h3("Your Body Mass Index (BMI) is:"),
       textOutput("BMI"),
       h3("You are:"),
       textOutput("text1")
    )
  )
))
