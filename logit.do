use "honor.dta"
*logistic model, two models
logit hon female
*to show the odds ratio
logit hon female,or
*check the marginal effects
margins, dydx(*) atmeans
*probit
probit hon female
*probit at marginal
dprobit hon female

use "mroz.dta"
probit inlf nwifeinc educ exper expersq
dprobit inlf nwifeinc educ exper expersq
* meaning: increase in yos by 1 year will increase the probability a woman employed by 4.7%
