game <- subset(vgsales, NA_Sales >= 9)
g.lm <- lm(Global_Sales ~ NA_Sales,data = game)
summary(g.lm)$r.squared
# 0.7339758
hist(resid(g.lm), main = "Histogram of Residuals", xlab = "Residuals")
plot(game$Global_Sales, resid(g.lm), xlab = "Actual Observed Global Sales", ylab = "Residuals", main = "Actual Observed Global Sales VS. Residuals")
summary(g.lm)


