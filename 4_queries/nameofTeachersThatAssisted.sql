select DISTINCT teachers.name as teacher, cohorts.name as cohort 
from students
join cohorts on cohort_id = cohorts.id
join assistance_requests on students.id = assistance_requests.student_id
join teachers on assistance_requests.teacher_id = teachers.id
where cohorts.name =  'JUL02'
ORDER BY teacher;;