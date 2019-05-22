#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
### Data Science Capstone : Course Project
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))


shinyUI(navbarPage("Final Project ",
                   tabPanel("Prediction of next word",
                            HTML("<strong>Author: ahmed adnane boutahar</strong>"),
                            br(),
                            HTML("<strong>Date: 22/05/2019</strong>"),
                            br(),
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Starting the next word prediction"),
                                textInput("inputString", "Enter a first part of your sentence here",value = ""),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Prediction of Next Word"),
                                verbatimTextOutput("prediction"),
                                strong("Sentence Input:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.50); color: green;}'), 
                                textOutput('text1'),
                                br(),
                                strong("NGram used:"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.50); color: green;}'),
                                textOutput('text2')
                              )
                            )
                            
                   ),
                   tabPanel("Documentation",
                            mainPanel(
                              h2("The goal of the project is to build a predictive text model combined with a shiny app UI that will predict the next word as the user types a sentence similar to the way most smart phone keyboards are implemented today using the technology of Swiftkey.")
                            )
                   )
)
)