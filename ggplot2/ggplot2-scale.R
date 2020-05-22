palette <- c(automatic = "#377EB8", manual = "#E41A1C")

# Set the position
ggplot(mtcars, aes(fcyl, fill = fam)) +
  geom_bar(position = "dodge") +
  labs(x = "Number of Cylinders", y = "Count")
scale_fill_manual("Transmission", values = palette)