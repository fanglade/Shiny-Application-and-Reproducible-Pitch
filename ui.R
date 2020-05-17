#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)


ui <- navbarPage(title = "Random Generator",
                 tabPanel(title = "Normal Data",
                          plotOutput("norm"),
                          actionButton("renorm", "Resample")
                 ),
                 tabPanel(title = "Uniform Data",
                          plotOutput("unif"),
                          actionButton("reunif", "Resample")
                 ),
                 tabPanel(title = "Chi Squared Data",
                          plotOutput("chisq"),
                          actionButton("rechisq", "Resample")
                 ),
                 tabPanel(title = "Binomial Data",
                          plotOutput("binom"),
                          actionButton("rebinom", "Resample")
                 )
                 
                 
)

