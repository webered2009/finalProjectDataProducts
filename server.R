library(ggvis)
library(dplyr)
library(data.table)
library(ggplot2)
library(shiny)

shinyServer(function(input, output) {
    
    f500 <- read.csv('fortune500.csv',stringsAsFactors = FALSE
                     ,col.names = c('year', 'rank', 'company','rev','profit')
                     ,na.strings = c('N.A.')
                     ,colClasses = c("numeric", "numeric", "character", "remove_comma", "remove_comma"))
    
    output$table <- DT::renderDataTable(DT::datatable({
        data <- f500
        if (input$year != "All") {
            data <- data[data$year == input$year,]
        }
        if (input$rank != "All") {
            data <- data[data$rank == input$rank,]
        }
        if (input$company != "All") {
            data <- data[data$company == input$company,]
        }
        data
    }))
})



