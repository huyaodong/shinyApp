library(shiny)

bmi <- function(wt, ht) wt/(ht/100)^2
cat <- function(wt, ht, gd){
    value <- wt/(ht/100)^2
    if(gd == 'Male'){
      if(value < 17.5){
        return('Anorexia')
      } else if(value >= 17.5 & value < 20.7){
        return('Underweight')
      } else if(value >= 20.7 & value < 26.4){
        return('Normal')
      } else if(value >= 26.4 & value < 27.8){
        return('Marginally Overweight')
      } else if(value >= 27.8 & value < 31.1){
        return('Overweight')
      } else if(value >= 31.1 & value < 35){
        return('Very Overweight OR Obese')
      } else if(value >= 35 & value < 40){
        return('Severely Obese')
      } else if(value >= 40 & value < 50){
        return('Morbidly Obese')
      } else if(value >= 50 & value < 60){
        return('Super Obese')
      }
    } else if(gd == 'Female'){
      if(value < 17.5){
        return('Anorexia')
      } else if(value >= 17.5 & value < 19.1){
        return('Underweight')
      } else if(value >= 19.1 & value < 25.8){
        return('Normal')
      } else if(value >= 25.8 & value < 27.3){
        return('Marginally Overweight')
      } else if(value >= 27.3 & value < 32.3){
        return('Overweight')
      } else if(value >= 32.3 & value < 35){
        return('Very Overweight OR Obese')
      } else if(value >= 35 & value < 40){
        return('Severely Obese')
      } else if(value >= 40 & value < 50){
        return('Morbidly Obese')
      } else if(value >= 50 & value < 60){
        return('Super Obese')
      }
    }

}

shinyServer(
  function(input, output){
    output$bmiprint <- renderPrint({bmi(input$wt, input$ht)})
    output$category <- renderText({cat(input$wt, input$ht, input$gd)})
  }
)