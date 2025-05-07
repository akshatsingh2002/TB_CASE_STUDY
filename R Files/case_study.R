install.packages("ggplot2")
install.packages("tidyverse")
install.packages("readr")
install.packages("dplyr")
library("dplyr")
library("ggplot2")
library("tidyverse")
library("readr")
tb_data = read.csv("tb_db_6.csv")
View(tb_data)
tb_data <- tb_data %>%
  mutate(mortality_rate = 100 - (tb_new_case-tb_deaths)/tb_new_case*100)
library(dplyr)
tb_data <- tb_data %>%
  mutate(health_exp = (Health_exp_gdp_percent * GDP_per_capital) / 100)

##tb_data <- tb_data %>% used to delete columns
 ## select(-morality_rate)
write.csv(tb_data, "tb_final5.csv", row.names = FALSE)
