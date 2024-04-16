library(tidyverse)
library(here)

tv_hrs_tab <-  gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hrs = mean(tvhours, na.rm = TRUE))

write.csv(tv_hrs_tab, here("tv_hours_by_marital.csv"))
