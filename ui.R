#
# This is the user-interface definition of a Shiny web application.

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Student Admissions at UC Berkeley"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
          sidebarPanel(
                  helpText("Aggregate data on applicants to graduate 
                           school at Berkeley for the six largest departments
                           in 1973 classified by admission and sex."),
                  selectInput("dept", "Please select the department", choices = c("A","B","C","D","E","F"))
                  ),
    
    # Show a plot of the generated distribution
    mainPanel(
            plotOutput("Plot")
    )
  )
  
))
