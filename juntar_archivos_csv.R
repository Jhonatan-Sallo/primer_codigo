####' Para leer varios archivos *.csv de un carpeta y juntarlos en un solo archivo.

library(tidyverse)

tbl <-
  list.files(pattern = "*.csv") %>% 
  map_df(~read_csv(.))