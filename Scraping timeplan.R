rm(list=ls())

# load packages
library(tidyverse)
library(rvest)

# Lese timeplanen.
url <- "http://timeplan.uit.no/emne_timeplan.php?sem=20h&module%5B%5D=BED-2056-1&View=list"
timeplan <- read_html(url)
scraped <- Sys.time()
str(timeplan) 
html_session("http://timeplan.uit.no/emne_timeplan.php?sem=20h&module%5B%5D=BED-2056-1&View=list")
#Hente ut data: 

timeplan %>%
  html_nodes(".table-primary") %>%
  html_text()

