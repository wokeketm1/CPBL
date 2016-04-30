library(data.table)
library(magrittr)
library(dplyr)
library(tidyr)

DT <- fread('Firm stage  year
            A   early  2012
            A   go  2012
            A   later  2012
            A   want  2012
            B   no  2012
            B   fu  2012
            B   mary  2012
            B   later  2012
            C   wont  2012
            C   ggo  2012
            C   gogoro  2012')
   
DT %>% group_by(Firm, year, stage) %>%
  summarise(stage_count = n()) %>%
  spread(stage, stage_count, fill = 0)

