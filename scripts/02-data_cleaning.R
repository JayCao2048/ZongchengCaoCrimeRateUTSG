#### Preamble ####
# Purpose: Clean any N/A in the raw plane data, and keep only the variables necessary for the paper. 
# Author: Zongcheng Cao
# Date: 21 January 2024
# Contact: jayy.cao@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Clean data ####
raw_data <- read_csv("crimerates.csv")

#Replace any numerical missing value with 0. 
data_cleaned <- raw_data
for (col in names(data_cleaned)) {
  if (is.numeric(data_cleaned[[col]])) {
    data_cleaned[[col]][is.na(data_cleaned[[col]])] <- 0
  }
}

#Only keep data for areas near UofT, and the variables that we are intersted in. 
university_data <- data_cleaned %>% filter(X_id %in% c(6, 39, 80)) %>%
  select(X_id, AREA_NAME, starts_with("ASSAULT_RATE"), starts_with("HOMICIDE_RATE"), starts_with("ROBBERY_RATE"), starts_with("SHOOTING_RATE"))


#### Save data ####
write_csv(university_data, "outputs/data/analysis_data.csv")
