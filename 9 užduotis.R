#9
install.packages("tidyr")
library("tidyr")

datapol = read.csv("datapol.csv")
summary(datapol)
head(datapol)
class(datapol)
unique(datapol$country)

datapol %>%
  arrange(year, country)

datapol[which(rowMeans(!is.na(datapol)) > 0.5),]
