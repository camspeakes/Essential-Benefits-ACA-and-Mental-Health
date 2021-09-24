log using "C:\Users\camer\Documents\Writing\Research\ACA Mental Health\Log\Data Scrub Log.log", replace 

*===============================================================================
*This .do file cleans and merges the 2011-2018 BRFSS dataset

	global PATHC "C:\Users\camer\Documents\Writing\Research\ACA Mental Health"
	
*===============================================================================
*CLEAN 2011 DATA 
	use _ageg5yr sex _imprace _state numadult children veteran3 marital educa employ income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptime bphigh4 toldhi2 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2011.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _imprace Race
		recode Race 4 6 =.
		recode Race 5=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptime Sleep
	rename bphigh4 HighBP
	rename toldhi2 HighChol
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2011 TEMPFILE	

	save "${PATHC}\Data\LLCP2011temp.dta", replace

*===============================================================================
*CLEAN 2012 DATA 
	use _ageg5yr sex _imprace _state numadult children veteran3 marital educa employ income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptime cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2012.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _imprace Race
		recode Race 4 6 =.
		recode Race 5=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptime Sleep
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2012 TEMPFILE	

	save "${PATHC}\Data\LLCP2012temp.dta", replace

*===============================================================================
*CLEAN 2013 DATA 
	use _ageg5yr sex _imprace _state numadult children veteran3 marital educa employ1 income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptim1 bphigh4 toldhi2 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2013.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _imprace Race
		recode Race 4 6 =.
		recode Race 5=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ1 EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptim1 Sleep
	rename bphigh4 HighBP
	rename toldhi2 HighChol
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2013 TEMPFILE	

	save "${PATHC}\Data\LLCP2013temp.dta", replace

*===============================================================================
*CLEAN 2014 DATA 
	use _ageg5yr sex _imprace _state numadult children veteran3 marital educa employ1 income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptim1 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2014.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _imprace Race
		recode Race 4 6 =.
		recode Race 5=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ1 EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptim1 Sleep
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2014 TEMPFILE	

	save "${PATHC}\Data\LLCP2014temp.dta", replace	
	
*===============================================================================
*CLEAN 2015 DATA 
	use _ageg5yr sex _race _state numadult children veteran3 marital educa employ1 income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 bphigh4 toldhi2 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2015.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _race Race
		recode Race 3 5 6 7 9=.
		recode Race 4=3
		recode Race 8=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ1 EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename bphigh4 HighBP
	rename toldhi2 HighChol
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2015 TEMPFILE	

	save "${PATHC}\Data\LLCP2015temp.dta", replace
	
*===============================================================================
*CLEAN 2016 DATA 
	use _ageg5yr sex _race _state numadult children veteran3 marital educa employ1 income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptim1 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2016.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _race Race
		recode Race 3 5 6 7 9=.
		recode Race 4=3
		recode Race 8=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ1 EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptim1 Sleep
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2016 TEMPFILE	

	save "${PATHC}\Data\LLCP2016temp.dta", replace
	
*===============================================================================
*CLEAN 2017 DATA 
	use _ageg5yr sex _race _state numadult children veteran3 marital educa employ1 income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptim1 bphigh4 toldhi2 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckidny diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2017.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex Male
	rename _race Race
		recode Race 3 5 6 7 9=.
		recode Race 4=3
		recode Race 8=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ1 EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptim1 Sleep
	rename bphigh4 HighBP
	rename toldhi2 HighChol
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckidny KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2017 TEMPFILE	

	save "${PATHC}\Data\LLCP2017temp.dta", replace

*===============================================================================
*CLEAN 2018 DATA 
	use _ageg5yr sex1 _race _state numadult children veteran3 marital educa employ1 income2 renthom1 iyear dispcode genhlth physhlth menthlth hlthpln1 persdoc2 medcost checkup1 smokday2 exerany2 sleptim1 cvdinfr4 cvdcrhd4 cvdstrk3 asthma3 chcscncr chcocncr chccopd1 havarth3 addepev2 chckdny1 diabete3 /* 
		
		*/ using "${PATHC}\Data\LLCP2018.dta", clear

*VARIABLES
	rename _ageg5yr AgeGroup
	rename sex1 Male
	rename _race Race
		recode Race 3 5 6 7 9=.
		recode Race 4=3
		recode Race 8=4
	rename _state State
	rename numadult HHAdult
	rename children HHChildren
	rename veteran3 VetStatus
	rename marital MaritalStatus
	rename educa EdLevel
	rename employ1 EmployStatus
	rename income2 IncomeLevel
	rename renthom1 RentHome
	rename iyear Year
	rename dispcode CompInterview
	rename genhlth Health
	rename physhlth DaysUnwellPhys
	rename menthlth DaysUnwellMent
	rename hlthpln1 InsuranceAccess
	rename persdoc2 PrimaryDoctor
	rename medcost CostPrevent
	rename checkup1 CheckUp
	rename smokday2 TobaccoFreq
	rename exerany2 ExerciseFreq
	rename sleptim1 Sleep
	rename cvdinfr4 HeartAtt
	rename cvdcrhd4 CoronaryHeartDisease
	rename cvdstrk3 Stroke
	rename asthma3 Asthma
	rename chcscncr CancerSkin
	rename chcocncr CancerOther
	rename chccopd1 COPD
	rename havarth3 Arthritis
	rename addepev2 DepressiveDisorder
	rename chckdny1 KidneyDisease
	rename diabete3 Diabetes
	
*SAVE 2018 TEMPFILE	

	save "${PATHC}\Data\LLCP2018temp.dta", replace
	
*APPEND ALL YEARS
	use "${PATHC}\Data\LLCP2011temp.dta", clear
		append using "${PATHC}\Data\LLCP2012temp.dta"
		append using "${PATHC}\Data\LLCP2013temp.dta"
		append using "${PATHC}\Data\LLCP2014temp.dta"
		append using "${PATHC}\Data\LLCP2015temp.dta"
		append using "${PATHC}\Data\LLCP2016temp.dta"
		append using "${PATHC}\Data\LLCP2017temp.dta"
		append using "${PATHC}\Data\LLCP2018temp.dta"

	save "${PATHC}\Data\LLCP11-18.dta", replace
	
*MASS DATA SCRUB
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
	
	
		
*TABULATE VARIABLES FOR EXAMINATION
	tab AgeGroup
	tab Male
	tab Race
	tab State
	tab HHAdult
	tab HHChildren
	tab VetStatus
	tab MaritalStatus
	tab EdLevel
	tab EmployStatus
	tab IncomeLevel
	tab RentHome
	tab Year
	tab CompInterview
	tab Health
	tab DaysUnwellPhys
	tab DaysUnwellMent
	tab InsuranceAccess
	tab PrimaryDoctor
	tab CostPrevent
	tab CheckUp
	tab TobaccoFreq
	tab ExerciseFreq
	tab Sleep
	tab HeartAtt
	tab CoronaryHeartDisease
	tab Stroke
	tab Asthma
	tab CancerSkin
	tab CancerOther
	tab COPD
	tab Arthritis
	tab DepressiveDisorder
	tab KidneyDisease
	tab Diabetes
	tab PercDaysMental
	tab PercDaysPhysical

		
/* DATASET FINALIZED :] */

save "${PATHC}\Data\LLCP11-18.dta", replace
log close	