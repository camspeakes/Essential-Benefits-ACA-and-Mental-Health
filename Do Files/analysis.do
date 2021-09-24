log using "C:\Users\camer\Documents\Writing\Research\ACA Mental Health\Log\Data Analysis Log.log", replace 

*===============================================================================
*This .do file analyzes the 2011-2018 BRFSS dataset

	global PATHC "C:\Users\camer\Documents\Writing\Research\ACA Mental Health"
	
	use "${PATHC}\Data\LLCP11-18.dta", clear

*===============================================================================

*POST EFFECT

gen Post = Year
	recode Post 2014/2019 = 1
	recode Post 2011/2013 = 0	
	
*REGRESSION

reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year
	estimates store r1

reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year 1.InsuranceAccess#2011.Year 1.InsuranceAccess#2012.Year	
	estimates store r2

reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year 1.InsuranceAccess#2012.Year 1.InsuranceAccess#2013.Year
	estimates store r3

reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year i.Health PercDaysPhys i.AgeGroup Male i.Race i.IncomeLevel CostPrevent i.CheckUp ExerciseFreq VetStatus i.MaritalStatus i.EdLevel i.EmployStatus
	estimates store r4
	
reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year i.Health PercDaysPhys i.AgeGroup Male i.Race i.IncomeLevel CostPrevent i.CheckUp ExerciseFreq VetStatus i.MaritalStatus i.EdLevel i.EmployStatus DepressiveDisorder
	estimates store r5
	
reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year i.Health PercDaysPhys i.AgeGroup Male i.Race i.IncomeLevel CostPrevent i.CheckUp ExerciseFreq VetStatus i.MaritalStatus i.EdLevel i.EmployStatus HeartAtt CoronaryHeartDisease Stroke Asthma CancerSkin CancerOther COPD Arthritis DepressiveDisorder KidneyDisease i.Diabetes
	estimates store r6
	
esttab r1 r2 r3 r4 r5 r6 using "${PATHC}\resultsACA.csv", b(3) se(3) star(* 0.10 ** 0.05 *** 0.01)


/* SAMPLE CHANGES */

reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year i.AgeGroup Male i.Race VetStatus i.MaritalStatus i.EdLevel i.EmployStatus 
	estimates store r10
	
reg PercDaysMental 1.InsuranceAccess#1.Post 1.InsuranceAccess i.Year i.Health PercDaysPhys i.AgeGroup Male i.Race i.IncomeLevel CostPrevent i.CheckUp ExerciseFreq VetStatus i.MaritalStatus i.EdLevel i.EmployStatus 
	estimates store r11
	
esttab r1 r10 r11 r6 using "${PATHC}\samplechanges.csv", b(3) se(3) star(* 0.10 ** 0.05 *** 0.01)

log close