#### Preamble ####
# Purpose: Downloads and saves the data of "Neighborhood Crime Rate" from Open Data Toronto 
# Author: Zongcheng Cao
# Date: 21 January 2024
# Contact: jayy.cao@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("tidyverse")
library(opendatatoronto)
library(tidyverse)

#### Download data ####
#### Acquire ####
crime_rates <-
  # use id for the package needed to get the dataset
  list_package_resources("neighbourhood-crime-rates") |>
  # Get the csv data from the resource
  filter(name == "neighbourhood-crime-rates - 4326.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

#put the dataset into a csv
write_csv(
  x = crime_rates,
  file = "crimerates.csv"
)

#### Save data ####
#Save the raw data into inpuits -> data. 
write_csv(crime_rates, "inputs/data/raw_data.csv") 
