library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Body Mass Index (BMI) Calculator (Adjusted for Gender)'),
  sidebarPanel(
    h5("This is a simple shiny application that calculated your body mass index (BMI) value based on your input information. BMI is calculated from your weight and height. Then, based on your gender and BMI value, you're classified into a certain category indicating your obese status.\n"),

    numericInput('wt', 'Please enter your weight (Kg):', 60, min = 0, max = 150, step = 1),
    numericInput('ht', 'Please enter your height (cm):', 175, min = 0, max = 250, step = 1),
    selectInput('gd', 'Please indicate your gender:', choices = c('Male', 'Female'))
  ),
  mainPanel(
    h3('Your BMI value is:'),    
    verbatimTextOutput('bmiprint'),
    h3("Based on your gender and BMI value, you're in the category of:"),
    textOutput('category')
  )
))