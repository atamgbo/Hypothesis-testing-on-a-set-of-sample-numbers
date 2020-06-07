#Exercise 3.4
x<-c(131.15, 130.69, 130.91, 129.54, 129.64, 128.77,130.72, 128.33, 128.24, 129.65, 130.14, 129.29, 128.71, 129.00,129.39, 130.42, 129.53, 130.12, 129.78, 130.92)
x
summary(x)
boxplot(x)
#mean & std.dev
mean(x);sd(x)
#t-test
#H0:mu=130
#H1:mu!=130
model<- t.test(x,alternative="two.sided",mu = 130,paired = FALSE,var.equal = FALSE,conf.level = .95)
model
#normal fit test
z<-(x-mean(x))/sd(x)
shapiro.test(z)#p-value greater .05 are good because it shows that data comes from normal distribution
qqnorm(z);qqline(z,col=2)
power.t.test(n=20,delta=0.5,sd(x),sig.level =.05 )
power.t.test(power=.75,delta=0.5,sd=sd(x),sig.level =.05 )