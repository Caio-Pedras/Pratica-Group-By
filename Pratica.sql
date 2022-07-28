-- Questão 1:
SELECT COUNT("endDate") AS "currentExperiences" 
FROM experiences;  

-- Quetão 2:
SELECT "userId" AS id, COUNT ("userId") AS educations
FROM educations
GROUP BY "userId"

-- Questão 3:
SELECT users.name AS writer, COUNT ("writerId") AS testimonials
FROM testimonials
JOIN users ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY users.name

-- Questão 4:
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active =true
GROUP BY role
ORDER BY "maximumSalary"

-- Bônus:
SELECT schools.name AS school, courses.name AS course , COUNT(educations."userId")AS "studentsCount", educations.status AS role
FROM educations
JOIN schools ON educations."schoolId"= schools.id
JOIN courses ON educations."courseId"= courses.id
WHERE educations.status = 'ongoing' 
OR educations.status ='finished'
GROUP BY  schools.name, courses.name, educations.status
ORDER BY "studentsCount" DESC

