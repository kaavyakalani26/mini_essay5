#### Preamble ####
# Purpose: Download html file for the website
# Author: Kaavya Kalani
# Date: 01 February 2024
# Contact: kaavya.kalani@mail.utoronto.ca
# License: MIT
# Pre-requisites: none

#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("xml2")

library(rvest)
library(xml2)

#### Scrape data ####
raw_data <-
  read_html(
    "https://en.wikipedia.org/wiki/List_of_prime_ministers_of_Canada"
  )

#### Save data as an HTML file ####
write_html(raw_data, "pms.html")
