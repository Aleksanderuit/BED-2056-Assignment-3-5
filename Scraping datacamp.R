rm(list=ls())

# load packages
library(tidyverse)
library(rvest)


# Lese table med kurs: 
urlr <- "https://www.datacamp.com/courses/tech:r?embedded=true"
datacampr <- read_html(urlr)
scraped <- Sys.time()
str(datacampr) 
html_session(urlr)
#Hente ut data: 

rlist <- datacampr %>%
  html_nodes(".course-block__title") %>%
  html_text()




#Now do the same to python. 


# Lese table med kurs: 
urlp <- "https://www.datacamp.com/courses/tech:python?embedded=true"
datacampr <- read_html(urlp)
scraped <- Sys.time()
str(datacampr) 
html_session(urlp)
#Hente ut data: 

plist <- datacampr %>%
  html_nodes(".course-block__title") %>%
  html_text()


sammen <- list(python = c(plist), R = c(rlist))

sammen

#lage dataframe

sapply(sammen, '[', seq(max(sapply(sammen, length))))



