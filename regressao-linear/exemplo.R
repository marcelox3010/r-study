

library(readxl);

ageandheight <- read_excel("./regressao-linear/ageandheight.xls", sheet="Hoja2");

plot(ageandheight[,1:2])

lmHeight <- lm(height~age, data=ageandheight);
summary(lmHeight);

