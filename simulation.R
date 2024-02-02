#### Preamble ####
# Purpose: Simulate the dataset
# Author: Kaavya Kalani
# Date: 01 February 2024
# Contact: kaavya.kalani@mail.utoronto.ca
# License: MIT
# Pre-requisites: none

#### Workplace setup ####
# install.packages("babynames")
# install.packages("tidyverse")
library(babynames)
library(tidyverse)

#### Simulation ####
set.seed(823)

simulated_dataset <-
  tibble(
    prime_minister = babynames |>
      filter(prop > 0.01) |>
      distinct(name) |>
      unlist() |>
      sample(size = 10, replace = FALSE),
    birth_year = sample(1700:1990, size = 10, replace = TRUE),
    years_lived = sample(50:100, size = 10, replace = TRUE),
    death_year = birth_year + years_lived
  ) |>
  select(prime_minister, birth_year, death_year, years_lived) |>
  arrange(birth_year)

simulated_dataset