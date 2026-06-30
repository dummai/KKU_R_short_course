dat <- read_csv("RawData/Exercise1.txt")
View(dat)

#Find average age of the participants
mean(dat$age)

#Find average gene Aexpression of the 
# participants by treatment group.
dat %>% 
  group_by(Treatment_Group) %>%
  summarise(mean_expression = 
              mean(GeneA_Expression, na.rm = T)
