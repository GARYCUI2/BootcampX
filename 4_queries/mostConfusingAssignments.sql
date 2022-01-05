select assignments.id, name, day, chapter, count(assistance_requests.*) as total_requests 
from assignments
join assistance_requests on assignments.id = assistance_requests.assignment_id
group by assignments.id 
ORDER BY total_requests DESC;
