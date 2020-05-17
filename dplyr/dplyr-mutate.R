library("dplyr")

iris
iris %>% mutate(SpeciesUpperCase = toupper(Species), SepalArea=Sepal.Length*Sepal.Width)
