log using "C:\Users\camer\Documents\Writing\Research\ACA Mental Health\Log\Descriptive Log.log", replace 

*===============================================================================
*This .do file produces descriptive statistics for the 2013/14 BRFSS dataset

	global PATHC "C:\Users\camer\Documents\Writing\Research\ACA Mental Health"

*=========================================================================	
		*2013
	
	use "${PATHC}\Data\LLCP2013temp.dta", clear
	
*MASS DATA SCRUB FRO CLEANING
	recode AgeGroup 14=.
		
	recode State 78=.
	
	recode HHChildren 88 99=.
	recode HHChildren 6/87=5
	
	
	recode HHAdult 6/45 = 5
	
	recode CheckUp 8=5
	
	recode MaritalStatus 9=.
	
	recode EdLevel 1 9=.
	recode EdLevel 2=1
	recode EdLevel 3=2
	recode EdLevel 4=3
	recode EdLevel 5=4
	recode EdLevel 6=5
	
	recode EmployStatus 9=.

	recode IncomeLevel 77 99=.
	
	recode CompInterview 1200 120=0
	recode CompInterview 1100 110=1
	
	foreach i in TobaccoFreq {
		replace `i' =-3 if `i' == 3
		replace `i' =-2 if `i' == 2
		replace `i' =-1 if `i' == 1

		replace `i' = 0 if `i' == -3
		replace `i' = 1 if `i' == -2
		replace `i' = 2 if `i' == -1
	}

	
	recode Sleep 77 99=.
	
	recode DaysUnwellMent 88=0
	recode DaysUnwellMent 77 99=.

	recode DaysUnwellPhys 88=0
	recode DaysUnwellPhys 77 99=.
	
	recode Diabetes 2=.
	recode Diabetes 4=2
	
	foreach x in Male VetStatus RentHome Health InsuranceAccess PrimaryDoctor CheckUp CostPrevent TobaccoFreq ExerciseFreq HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease Diabetes	{
		foreach i in 7 9 {
			replace `x' = . if `x' == `i'
		}
	}

	foreach x in Male VetStatus InsuranceAccess CostPrevent ExerciseFreq HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease {
		foreach i in 2 {
			replace `x' = 0 if `x' == `i'
			}
		}	

	destring Year, replace 	
	
	gen PercDaysMental = DaysUnwellMent/30
	
	gen PercDaysPhysical = DaysUnwellPhys/30

*STATISTICS FOR THE INSURED


*MEANS

sum PercDaysMent PercDaysPhys Sleep HHAdult HHChildren if InsuranceAccess ==1
	estimates store M13I
	esttab M13I using "${PATHC}\Data\2013descriptorsMI.csv", b(3) se(3) nostar

*PROPORTIONS

prop Health AgeGroup Male Race IncomeLevel PrimaryDoctor CostPrevent CheckUp ExerciseFreq TobaccoFreq VetStatus MaritalStatus EdLevel EmployStatus RentHome CompInterview HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease Diabetes if InsuranceAccess ==1
	estimates store P13I
	esttab P13I using "${PATHC}\Data\2013descriptorsPI.csv", b(3) se(3) nostar

*STATISTICS FOR THE UNINSURED

*MEANS

sum PercDaysMent PercDaysPhys Sleep HHAdult HHChildren if InsuranceAccess ==0
	estimates store M13U
	esttab M13U using "${PATHC}\Data\2013descriptorsMU.csv", b(3) se(3) nostar

*PROPORTIONS

prop Health AgeGroup Male Race IncomeLevel PrimaryDoctor CostPrevent CheckUp ExerciseFreq TobaccoFreq VetStatus MaritalStatus EdLevel EmployStatus RentHome CompInterview HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease Diabetes if InsuranceAccess ==0
	estimates store P13U
	esttab P13U using "${PATHC}\Data\2013descriptorsPU.csv", b(3) se(3) nostar


*=========================================================================
		*2014

	use "${PATHC}\Data\LLCP2014temp.dta", clear
	
*MASS DATA SCRUB FROM CLEANING
	recode AgeGroup 14=.
		
	recode State 78=.
	
	recode HHChildren 88 99=.
	recode HHChildren 6/87=5
	
	
	recode HHAdult 6/45 = 5
	
	recode CheckUp 8=5
	
	recode MaritalStatus 9=.
	
	recode EdLevel 1 9=.
	recode EdLevel 2=1
	recode EdLevel 3=2
	recode EdLevel 4=3
	recode EdLevel 5=4
	recode EdLevel 6=5
	
	recode EmployStatus 9=.

	recode IncomeLevel 77 99=.
	
	recode CompInterview 1200 120=0
	recode CompInterview 1100 110=1
	
	foreach i in TobaccoFreq {
		replace `i' =-3 if `i' == 3
		replace `i' =-2 if `i' == 2
		replace `i' =-1 if `i' == 1

		replace `i' = 0 if `i' == -3
		replace `i' = 1 if `i' == -2
		replace `i' = 2 if `i' == -1
	}

	
	recode Sleep 77 99=.
	
	recode DaysUnwellMent 88=0
	recode DaysUnwellMent 77 99=.

	recode DaysUnwellPhys 88=0
	recode DaysUnwellPhys 77 99=.
	
	recode Diabetes 2=.
	recode Diabetes 4=2
	
	foreach x in Male VetStatus RentHome Health InsuranceAccess PrimaryDoctor CheckUp CostPrevent TobaccoFreq ExerciseFreq HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease Diabetes	{
		foreach i in 7 9 {
			replace `x' = . if `x' == `i'
		}
	}

	foreach x in Male VetStatus InsuranceAccess CostPrevent ExerciseFreq HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease {
		foreach i in 2 {
			replace `x' = 0 if `x' == `i'
			}
		}	

	destring Year, replace 	
	
	gen PercDaysMental = DaysUnwellMent/30
	
	gen PercDaysPhysical = DaysUnwellPhys/30

*STATISTICS FOR THE INSURED


*MEANS

sum PercDaysMent PercDaysPhys Sleep HHAdult HHChildren if InsuranceAccess ==1
	estimates store M14I

*PROPORTIONS

prop Health AgeGroup Male Race IncomeLevel PrimaryDoctor CostPrevent CheckUp ExerciseFreq TobaccoFreq VetStatus MaritalStatus EdLevel EmployStatus RentHome CompInterview HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease Diabetes if InsuranceAccess ==1
	estimates store P14I

*STATISTICS FOR THE UNINSURED

*MEANS

sum PercDaysMent PercDaysPhys Sleep HHAdult HHChildren if InsuranceAccess ==0
	estimates store M14U

*PROPORTIONS

prop Health AgeGroup Male Race IncomeLevel PrimaryDoctor CostPrevent CheckUp ExerciseFreq TobaccoFreq VetStatus MaritalStatus EdLevel EmployStatus RentHome CompInterview HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease Diabetes if InsuranceAccess ==0
	estimates store P14U

*===========================================================================
*TABLE OUTPUT

esttab M14I using "${PATHC}\Data\2014descriptorsMI.csv", b(3) se(3) nostar
esttab P14I using "${PATHC}\Data\2014descriptorsPI.csv", b(3) se(3) nostar
esttab M14U using "${PATHC}\Data\2014descriptorsMU.csv", b(3) se(3) nostar
esttab P14U using "${PATHC}\Data\2014descriptorsPU.csv", b(3) se(3) nostar


log close