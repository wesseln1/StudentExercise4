-- 3. Write a query to return all student first and last names with their cohort's name. --
SELECT Student.FirstName, Student.LastName, Cohort.Name 
FROM Student LEFT JOIN Cohort on Cohort.Id = Cohort.Id
-- 4. Write a query to return student first and last names with their cohort's name only for a single cohort --
WHERE Cohort.Name = 'Cohort 35';

-- 5. Write a query to return all instructors ordered by their last name --
SELECT * FROM Instructor
ORDER BY Instructor.LastName;

-- 6. Write a query to return a list of unique instructor specialties --
SELECT DISTINCT Speciality FROM Instructor;

-- 7. Write a query to return a list of all student names along with the names of the exercises they have been assigned. If an exercise has not been assigned, it should not be in the result --
SELECT Student.FirstName, Student.LastName, Exercise.Name
FROM Exercise 
RIGHT JOIN StudentExercise on ExerciseId = Exercise.Id
RIGHT JOIN Student on StudentId = Student.Id 
WHERE StudentExercise.ExerciseId IS NOT NULL;

-- 8. Return a list of student names along with the count of exercises assigned to each student --
SELECT Student.FirstName, Student.LastName, COUNT(Exercise.Name)
FROM Exercise
RIGHT JOIN StudentExercise on ExerciseId = Exercise.Id
RIGHT JOIN Student on StudentId = Student.Id
GROUP BY Student.FirstName, Student.LastName;