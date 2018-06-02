# server.R
library(shiny)
function(input, output) {
  output$hist <- renderPlot({ ###hist
    hist(rnorm(100), breaks = input$bins,col='orange', border = 'white')
  }) 
  output$ActionB<-renderText({
    input$action
  })
  output$output2<-renderText({
    as.character(input$alink)
  })
  output$outpout3<-renderText({
    as.character(input$cbi)
  })
  output$output4<-renderText({
    as.character(input$cbi1)
  })
  output$output5<-renderText({
    as.character(input$Indate)
  })
  output$Num<-renderText({
    as.character(input$num)
  })
  }
 