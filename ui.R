#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Area of a Circle"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
       sliderInput("Diameter",
                   "Enter Diameter in any unit of your choice:",
                   min = 0,
                   max = 100,
                   value = 50),
       h3("Documentation: This app computes area of a circle given slider input from user of diameter. The area is in square units, where units are whatever units the user specifies the input in.")
    ),

    # Show a plot of the generated distribution
    mainPanel(
       h3("Area of Circle (in square units):"),
       textOutput("Area")
    )
  )
))
