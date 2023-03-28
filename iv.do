use "mroz.dta"
*to do iv, install extended ivreg package from https://ideas.repec.org/c/boc/bocode/s425401.html
ssc install ivreg2
*link: https://www.economics.utoronto.ca/blanchenay/stata/ECO372_StataHowTo_InstrumentalVariables.pdf
ivregress 2sls lwage (educ=fatheduc), robust
*another method, no additional package required
ivregress 2sls lwage (educ=fatheduc), robust
*2sls (automated):
ivreg2 lwage (educ=motheduc)
*2sls manually:
reg educ motheduc
predict educ_hat
reg lwage educ_hat
*2sls with 2 ivs:
ivreg2 lwage (educ=motheduc fatheduc)
*2sls with robust check
ivreg2 lwage (educ=motheduc), first
*if F-test > 10 (prob is significant) then the iv is a good one.
*when the iv is not good:
ivreg2 lwage (educ=motheduc fatheduc), first
*check the Sargan test, if Chi-sq(1) p-val < .05 then it is not significant.
*the Sargan test can only be used when more than 1 ivs are used.

