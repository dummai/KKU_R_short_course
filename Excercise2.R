dat <- read_csv("RawData/Exercise1.csv")
View(dat)

#Data Manipulation Provide a script that uses %>% to filter only "Treated" patients and mutate a new column (Log2_GeneA). Ask them to read it and explain what it does before running it.
ndat <- dat %>%
  filter(Treatment_Group == '') %>% # Select only "Treatment" group
  mutate(log2_exp = log2('')) # Log2-transformed "GeneA_Expression"

#Visualization
ggplot(dat) +
  geom_boxplot(aes(x= #Missing. Add an appropriate variable
                   , y = GeneA_Expression))

# The Tweak
#1) Change to boxplot to violin plot
#2) Change theme to theme_classic()
#3) Modify title and axis titles (labs())
  
  