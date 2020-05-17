#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

server <- function(input, output) {
    
    Random_Variable <- reactiveValues(
        norm = rnorm(400), 
        unif = runif(400),
        chisq = rchisq(400, 2),
        binom=rbinom(80, 400, 0.2)) 
    
    observeEvent(input$renorm, {  Random_Variable$norm <- rnorm(400) })
    observeEvent(input$reunif, {  Random_Variable$unif <- runif(400) })
    observeEvent(input$rechisq, {  Random_Variable$chisq <- rchisq(400, 3) })
    observeEvent(input$rebinom, {  Random_Variable$binom<-rbinom(80, 400, 0.2) })
    
    output$norm <- renderPlot({
        hist( Random_Variable$norm, breaks = 20, col = "blue", border = "white",
              main = "400 random draws from a standard normal distributidon")
    })
    output$unif <- renderPlot({
        hist( Random_Variable$unif, breaks = 20, col = "yellow", border = "white",
              main = "400 random draws from a standard uniform distribution")
    })
    output$chisq <- renderPlot({
        hist( Random_Variable$chisq, breaks = 20, col = "red", border = "white",
              main = "400 random draws from a Chi Square distribution with three degree of freedom")
    })
    output$binom <- renderPlot({
        hist( Random_Variable$binom, breaks = 20, col = "green", border = "white",
              main = "400 random draws from a binomial distribution")
    })
}

