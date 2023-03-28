use "rdchem.dta", clear
eststo: reg lrd lsales
eststo: reg lrd lsales rdintens
eststo: reg lrd lsales rdintens profits profmarg
esttab using "result.rtf", compress b(3) se(3) star(* 0.10 ** 0.05 *** 0.01) nogaps parenthese replace ar2 title("Result Table")
eststo clear
