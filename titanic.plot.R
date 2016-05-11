# script name: titanic.plot.R
# to run this script, type the below in the bash shell
# RScript script-name

# read the tidy version 
titanic = read.csv(file = "titanic.tidy.csv")

# Check out the structure of titanic

str(titanic)

library("ggplot2")

# Use ggplot() for the first instruction
jpeg(filename = "plot1.jpeg")

ggplot(titanic, aes( x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge")

dev.off()

# Use ggplot() for the second instruction
jpeg(filename = "plot2.jpeg")

ggplot(titanic, aes( x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") +
  facet_grid(. ~ Survived)
  
dev.off()  

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
jpeg(filename = "plot3.jpeg")

ggplot(titanic, aes( x = factor(Pclass), y = Age, col = factor(Sex))) +
  geom_jitter(size = 3, alpha = 0.5 , position = posn.j) +
  facet_grid(. ~ Survived)
  
dev.off()

print("Done!")
