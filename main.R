library(tidyverse)
library(here)

tv_hrs_tbl <-  gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hrs = mean(tvhours, na.rm = TRUE))

write.csv(tv_hrs_tbl, here("tv_hours_by_marital.csv"))