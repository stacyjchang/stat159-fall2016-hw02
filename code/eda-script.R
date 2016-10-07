#read in the Advertising csv file
advertising <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")

#summary statistics
sink("../data/eda-script.txt")
print(summary(advertising$TV))
print(summary(advertising$Sales))
sink()

#historgram of TV and Sales
png("../images/histogram-sales.png")
hist(advertising$Sales, main = "Sales", xlab = "Sales")

pdf("../images/histogram-sales.pdf")
hist(advertising$Sales, main = "Sales", xlab = "Sales")
dev.off()

png("../images/histogram-tv.png")
hist(advertising$TV, main = "TV", xlab = "TV")

pdf("../images/histogram-tv.pdf")
hist(advertising$TV, main = "TV", xlab = "TV")
dev.off()








