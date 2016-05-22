#
# This is the server logic of a Shiny web application. 

library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
   
  output$Plot <- renderPlot({
    # draw the mosaic plot 
     mosaicplot(UCBAdmissions[,,Dept = input$dept],
               xlab = "Admit", ylab = "Sex",
               main = paste("Department", input$dept))
  })
  
})
