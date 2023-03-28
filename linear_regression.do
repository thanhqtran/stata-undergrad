* Some common linear regression commands
* OLS
reg   Y X1 X2

* Some standard tests
* test for equality
Test X1 = X2
* important variable omission test
estat ovtest  
* Heteroskedasticity
estat hettest
** or perform White test
ssc instal whitetst 
whitetst
* multicollinearity test
estat vif
** if vif < 10, there is no multicollinearity
* residual Skewness and kurtosis tests for normality
predict u, residual
sktest u
* test for Autocorrelation
estat bgodfrey, lags(1 2)

* Robusting
reg   Y X1 X2, robus
* to generate new variables
gen logGDP = log(GDP)
