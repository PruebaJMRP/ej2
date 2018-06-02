# ui.R
library(shiny)
fluidPage(
  titlePanel("Aprendiendo shiny"),
  sidebarLayout(
    sidebarPanel(
###### Side bar  Panel#########################
      sliderInput(inputId = "bins",
              label = "Number og bins",
              value = 30, min = 1, max = 50),
      actionButton('action', "Accion"),
      hr(), #espacio vertical
      actionLink("alink", "Click Me", icon = icon("android")),
      hr(), #espacio vertical
      checkboxGroupInput("cbi", "Elije", 
                         choices =c("Tutti",
                                    "Frutti",
                                    "Hola",
                                    " hi") ),
      checkboxInput("cbi1", "Elije a:"),# para verdadero o falso
      dateInput("Indate", "Seleccione una fecha", 
                value = Sys.Date(),
                min = Sys.Date()-15,
                max = Sys.Date()+3),
      numericInput("num", "Ingrese  un numero", 
                   min = 1,
                   max = 10,
                   step = 0.2,value = 2)
      #submitButton("Refresh")
),
###### End side bar Panel ####################
    mainPanel(
    plotOutput("hist"), #hist lo utilizamos en server para generar un histograma
    textOutput("ActionB"),#ActionB lo utuliz, en server input$action
    textOutput("output2"),
    textOutput("outpout3"),
    textOutput("output4"),
    textOutput("output5"),
    textOutput("Num")
    )
)) 
