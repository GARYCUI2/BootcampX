select avg(total_duration) as average_total_duration 
FROM(
  SELECT cohorts.name as cohort, sum(completed_at - started_at)as total_duration 
  FROM assistance_requests
  JOIN students ON students.id = student_id
  join cohorts on cohort_id = cohorts.id
  GROUP by cohorts.name
  order by total_duration
) as total_durations;