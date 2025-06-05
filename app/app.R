
library(shiny)

ui <- fluidPage(
  titlePanel("Halo dari Docker"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Jumlah Observasi:", min = 1, max = 100, value = 50)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
}

shinyApp(ui = ui, server = server)
