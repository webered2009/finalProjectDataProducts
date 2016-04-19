library(shiny)

setClass("remove_comma")
setAs("character", "remove_comma",
      function(from) 
          as.numeric(gsub("[,]", "",from, fixed = FALSE)))

f500 <- read.csv('fortune500.csv',stringsAsFactors = FALSE
                 ,col.names = c('year', 'rank', 'company','rev','profit')
                 ,na.strings = c('N.A.')
                 ,colClasses = c("numeric", "numeric", "character", "remove_comma", "remove_comma"))

shinyUI(
    fluidPage(
        titlePanel("Fortune 500 Revenue and Profit by Year"),
        
        # Create a new Row in the UI for selectInputs
        fluidRow(
            column(4,
                   selectInput("year",
                               "Year:",
                               c("All",
                                 unique(as.character(f500$year))))
            ),
            column(4,
                   selectInput("rank",
                               "Rank:",
                               c("All",
                                 unique(as.character(f500$rank))))
            ),
            column(4,
                   selectInput("company",
                               "Company:",
                               c("All",
                                 unique(as.character(f500$company))))
            )
            
        ),
        # Create a new row for the table.
        fluidRow(
            DT::dataTableOutput("table")
        )
    )
)

