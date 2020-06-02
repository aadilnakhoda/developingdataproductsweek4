library(shiny)
library(dplyr)
options(digits=2)
cars <- select(mtcars, cyl, hp, wt, disp, drat)
shinyUI(fluidPage(
    titlePanel('Miles per Gallon and Car Features'),
    sidebarLayout(
        sidebarPanel(
            selectInput('yin', 'Choose a feature (dependent variable)', names(cars),
                        selected=names(cars)[[1]]),
            h1(""),
            checkboxInput("showFit1", "Show Fitted Line", value = TRUE),
            checkboxInput("showbeta1", "Show Slope Coefficient", value = TRUE),
            checkboxInput("showConclusion", "Show Statement", value = TRUE),
            h5("First 8 Observations"), 
            tableOutput('table')),
        mainPanel(
            
            
            h3("Question: Does enhancing features of cars reduce its miles per gallon?"),
            h6("Note: Data extracted from 'mtcars' dataset"),
            h3("Answer:"),
            plotOutput("plot1"),
            h4("Slope Coefficient and conclusion is:"),
            textOutput("beta1"),
            textOutput("beta2"),
            textOutput("beta3"),
            textOutput("beta4"),
            textOutput("beta5"),
            
            textOutput("text1"),
            textOutput("text2"),
            textOutput("text3"),
            textOutput("text4"),
            textOutput("text5")
        )
    )
))