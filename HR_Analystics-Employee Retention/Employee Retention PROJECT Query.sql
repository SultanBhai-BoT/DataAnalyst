create database HR_Analytics;
use HR_Analytics;

select * from hr_1;
select * from hr_2;


#(1) Average Attrition rate for all Departments
select Department, concat(round(Avg(Attrition_rate)*100,2),"%") As "Avg Attrition Rate" 
From hr_1
group by Department;

#(2) Average Hourly rate of Male Research Scientist
Select Jobrole, gender, round(avg(HourlyRate),2) As "Avg Hourly Rate" 
from hr_1
where gender= "Male" and Jobrole= "Research Scientist"
group by jobrole;

#(3) Attrition rate Vs Monthly income stats
select Attrition, sum(MonthlyIncome) "Monthly_Income" 
from hr_1 hr1
join hr_2 hr2
on hr1.EmployeeNumber = hr2.EmployeeID
group by Attrition;

#(4) Average working years for each Department
select Department, round(avg(TotalWorkingYears),2) As Avg_working_year
from Hr_1 hr1
join Hr_2 hr2
on hr1.EmployeeNumber = hr2.EmployeeID
group by Department;

#(5) Job Role Vs Work life balance
select jobrole, sum(WorkLifeBalance) As "Work life Balance"
from hr_1 hr1
join hr_2 hr2
on hr1.EmployeeNumber = hr2.EmployeeID
group by jobrole;

#(6) Attrition rate Vs Year since last promotion relation
select YearsSinceLastPromotion, sum(Attrition_rate) As "Attrition Rate"
from hr_1 hr1
join hr_2 hr2
on hr1.EmployeeNumber = hr2.EmployeeID
group by  YearsSinceLastPromotion
order by YearsSinceLastPromotion;












