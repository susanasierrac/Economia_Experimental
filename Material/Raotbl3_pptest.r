library(urca)
data("Raotbl3")
attach(Raotbl3)
lc<-ts(lc, start=c(1966,4), end=c(1991,2), frequency = 4)
pp<-ur.pp(lc, type="Z-tau", model = "trend", 
          lags = "long")
pp@teststat
summary(pp)
df<-ur.df(y=lc, type="trend", selectlags = "AIC")
summary(df)
