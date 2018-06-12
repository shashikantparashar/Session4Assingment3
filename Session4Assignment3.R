##########################################################################################################################
# Session3Assignment1.R                   
# Shashikant Parashar
# Session:4, Assignment:3
############################################################################################################################
#Get states names with ‘w’.
#Get states names with ‘W’.
############################################################################################################################
# To get the like operation work, what I believe is we need to convert the States character vector to data table
############################################################################################################################
library(data.table)
States <- rownames(USArrests)
statesdt <- data.table(States)
wstates <- statesdt[statesdt$States %like% "w"]
Wstates <- statesdt[statesdt$States %like% "W"]
wstates
Wstates
############################################################################################################################
#Prepare a Histogram of the number of characters in each US state.
############################################################################################################################
hist(str_length(States),col = "dark blue",axes = TRUE,border = "yellow",main = "Histogram example")