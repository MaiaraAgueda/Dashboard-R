library(tidyquant)
library(dplyr)

prices <- c(
  "YDUQ3" , "GOLL4" , "AZUL4" , "BRFS3" , "CVCB3",
  "B3SA3" , "RADL3" , "VIIA3" , "CRFB3" ,  "VIVT3"
) %>%
  paste0(".SA") %>%
  tq_get(get = "stock.prices" , from = "2010-01-01") %>%
  mutate(symbol = sub(".SA" , "" , symbol ))

write.table(prices, "prices.csv" , sep = "," , row.names = FALSE)

prices <- read.csv("C:/Users/agued/Documents/ACOES")%>%
  mutate(date = as.Date(date))



