# Load required libraries
library(airGRteaching)

# Set working directory
setwd("~/GitHub/Rprog")

# Read in Data
mod_data <- read.table("hydro_all.csv",sep=",",header=TRUE)
mod_data$DatesR <- as.POSIXct(mod_data$DatesR,tz = "UTC") # convert dates to a date object in R 

# Call the shiny code - which creates a web interface to run the model
ShinyGR(ObsDF = mod_data,SimPer = c("1972-01-01","2014-12-31"))
