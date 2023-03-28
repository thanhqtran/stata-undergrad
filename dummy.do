use "wage 1.dta"
*see the dist. of a variable
tab female
reg wage female educ exper tenure

*run reg for a specific year
use "jtrain.dta"
reg hrsemp grant lemploy lsales if year==1988
*replace female with male
gen male=1 if female==0
*generate variables
gen marrmale=1 if female==0& married==1

*replace NaN with zero
use "beauty.dta"
recode marrmale(.=0)
tab looks
*the (base5) scale is not fairly distributed, so we change to (base3) scale
gen belowavg=1 if looks==1 | looks==2
recode belowavg(.=0)
gen avg = 1 if looks==3
recode avg(.=0)
gen aboveavg=1 if looks==4 | looks==5
recode aboveavg(.=0)

*regression, take below average beauty as the control group
reg lwage avg aboveavg educ exper expersq
*regression, take avg and above average beauty as the control group
reg lwage belowavg educ exper expersq
