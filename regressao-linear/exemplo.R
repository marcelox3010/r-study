

#https://www.datacamp.com/community/tutorials/linear-regression-R

library(readxl);

ageandheight <- read_excel("./regressao-linear/ageandheight.xls", sheet="Hoja2");

plot(ageandheight[,1:2])

#duas variáveis
lmHeight <- lm(height~age, data=ageandheight);
summary(lmHeight);

#mais de duas variáveis
lmHeight2 = lm(height~age + no_siblings, data = ageandheight);
summary(lmHeight2);

#todas as variáveis
lmHeight3 = lm(height~., data = ageandheight);
summary(lmHeight3);

