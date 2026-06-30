# Tidyverse Package
library(tidyverse)
?tidyverse

# Pipe demo
View(mtcars)
?mtcars

# No pipe Find average median (IQR) weight of cars with 20 mpg or better
f_mtcars <- mtcars[mtcars$mpg > 20,]
quantile(f_mtcars$wt, probs = c(0.5,.25,.75))
#With pipe
mtcars %>%
  filter(mpg > 20) %>%
  summarise(median = median(wt)
          ,Q1 = quantile(wt,probs = 0.25)
          ,Q2 = quantile(wt,probs = 0.75))

# filter(). Try changing the values
mtcars %>% 
  filter(wt >= 2) %>%
  filter(am == 0) %>%
  filter(gear > 3)


# select(). Try changing the values
mtcars %>%
  select(am,mpg,wt)

# mutate(). Try changing the values
mtcars %>%
  mutate(hp_per_wt = hp/wt)

# Combination
mtcars %>%
  mutate(hp_per_wt = hp/wt)

# Wide vs Long format
View(iris)
?iris

# Convert the wide iris data into long format
iris_long <- iris %>%
  pivot_longer(
    cols = -Species,                  # Select all columns EXCEPT the Species column
    names_to = "Measurement_Type",    # Name of the new column holding the column headers
    values_to = "Centimeters"         # Name of the new column holding the numeric values
  )

# Look at the transformed data
View(iris_long)

# Scatter plot
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species))

# Box plot
ggplot(iris)+
  geom_boxplot(aes(x=Species, y = Sepal.Length, col = Species))

# Mapping vs Setting
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width), col = Species)
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species))
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width), col = "red")

# Facet
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
  facet_wrap(~Species)
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
  facet_wrap(~Species, ncol = 1)

# Labels
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species))+
  labs(title = "Sepal width vs length"
       , x= "Sepal length (cm)"
       , y= "Sepal width  (cm)"
       )

# Theme
ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species))+
  labs(title = "Sepal width vs length"
       , x= "Sepal length (cm)"
       , y= "Sepal width  (cm)"
  )+theme_minimal()

ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species))+
  labs(title = "Sepal width vs length"
       , x= "Sepal length (cm)"
       , y= "Sepal width  (cm)"
  )+theme_bw()

# Save
g <- ggplot(iris)+
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, col = Species))+
  labs(title = "Sepal width vs length"
       , x= "Sepal length (cm)"
       , y= "Sepal width  (cm)"
  )+theme_bw()

ggsave("Plots/Test.jpeg",plot = g, width = 6, height = 6, units = "in", dpi = 600)
