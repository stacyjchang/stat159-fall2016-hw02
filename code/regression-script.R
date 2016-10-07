#read in the Advertising csv file
advertising <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")

#regression of advertising
ad_regression <- lm(advertising$Sales ~ advertising$TV)
sum_regression <- summary(ad_regression)

#save as .RData
save(ad_regression, sum_regression, file = "../data/regression.RData")

#png file for the advertising scatterplot
png('../images/scatterplot-tv-sales.png')
scatter <- plot(advertising$TV, advertising$Sales, las = 1, pch = 19, col = "#555555", main = "Sales vs TV", xlab = "TV", ylab = "Sales")
abline(ad_regression, col = "#0000DD59", lwd = 2)
dev.off()

#pdf file for the advertising scatterplot
pdf('../images/scatterplot-tv-sales.pdf')
plot(advertising$TV, advertising$Sales, las = 1, pch = 19, col = "#555555", main = "Sales vs TV", xlab = "TV", ylab = "Sales")
abline(ad_regression, col = "#0000DD59", lwd = 2)
dev.off()

