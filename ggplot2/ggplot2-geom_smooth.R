
library("ggplot2")

#EXEMPLO 1
# Add geom_smooth() with +
ggplot(diamonds, aes(carat, price)) +
  geom_point() +
  geom_smooth()

#EXEMPLO 2
# Map the color aesthetic to clarity
ggplot(diamonds, aes(carat, price, color=clarity)) +
  geom_point() +
  geom_smooth()

#EXEMPLO 3
plt_price_vs_carat <- ggplot(
  # Use the diamonds dataset
  diamonds,
  # For the aesthetics, map x to carat and y to price
  aes(carat, price)
)+
  
  # Add a point layer to plt_price_vs_carat
  geom_point()

plt_price_vs_carat



# From previous step
plt_price_vs_carat <- ggplot(diamonds, aes(carat, price))

# Edit this to map color to clarity,
# Assign the updated plot to a new object
plt_price_vs_carat_by_clarity <- plt_price_vs_carat + geom_point(aes(color=clarity))

# See the plot
plt_price_vs_carat_by_clarity
