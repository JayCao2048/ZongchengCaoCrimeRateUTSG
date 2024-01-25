#### Preamble ####
# Purpose: Simulates the "Neighborhood Crime Rate" data from Open Data Toronto
# Author: Zongcheng Cao
# Date: 21 January 2024
# Contact: jayy.cao@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
# Load necessary libraries
install.packages("dplyr")
library(dplyr) 

#### Simulate data ####
# Due to the purpose of this research, only simulate data for _id=6, _id = 39, _id=80.
# Also, only keep variables for assault rate, robbery rate, shooting rate, and homicide rate.

# Define the rows to simulate (based on _id), and define the areas' names.
rows_to_simulate <- c(6, 39, 80)
rows_name <- c("Bay-Cloverhill", "Church-Wellesley", "University")


# Create a data frame with the specified structure
simulated_data <- data.frame(
  #input the id and area name.
  id = rows_to_simulate,
  AREA_NAME = rows_name,
  #simulate the variables that we are interest in. 
  ASSAULT_RATE_2014 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2015 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2016 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2017 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2018 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2019 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2020 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2021 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2022 = runif(3, min = 0, max = 2500),
  ASSAULT_RATE_2023 = runif(3, min = 0, max = 2500),
  HOMICIDE_RATE_2014 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2015 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2016 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2017 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2018 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2019 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2020 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2021 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2022 = runif(3, min = 0, max = 15),
  HOMICIDE_RATE_2023 = runif(3, min = 0, max = 15),
  ROBBERY_RATE_2014 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2015 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2016 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2017 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2018 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2019 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2020 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2021 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2022 = runif(3, min = 0, max = 700),
  ROBBERY_RATE_2023 = runif(3, min = 0, max = 700),
  SHOOTING_RATE_2014 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2015 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2016 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2017 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2018 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2019 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2020 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2021 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2022 = runif(3, min = 0, max = 20),
  SHOOTING_RATE_2023 = runif(3, min = 0, max = 20)
)


