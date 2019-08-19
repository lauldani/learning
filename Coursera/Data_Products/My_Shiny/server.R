library(shiny)
library(ggplot2)
shinyServer(
     function(input, output) {
          output$name = renderPrint({input$name})
          output$bar = renderPlot({
               y = c(input$class, 10)
               x = c(input$name, "Laura")
               dat = data.frame(x,y)
               ggplot(dat, aes(y=y,x=x)) +
                    geom_bar(ylim=c(0,10),
                             fill=c("blue","yellow"),
                            stat="identity")
               })
     }
)