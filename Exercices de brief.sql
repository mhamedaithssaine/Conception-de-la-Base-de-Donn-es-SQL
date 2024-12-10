use HospitalManagement ;  
#1

INSERT INTO patients (patient_id, first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES (4, 'Alex', 'Johnson', 'Male', '1990-07-15', '1234567890', NULL, NULL);

#2

SELECT *
FROM departments;

#3

SELECT *
FROM patients
ORDER BY date_of_birth ASC;

#4
SELECT DISTINCT gender
FROM patients;
 
#5
SELECT *
FROM doctors
LIMIT 3;

#6
SELECT *
FROM patients
WHERE date_of_birth > '2000-01-01';

#7
select * 
from doctors 
where specialization in ("Cardiologist","Neurologist");

#8
SELECT *
FROM admissions
WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07';

#9
SELECT 
    *,
    CASE
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) < 18 THEN 'Enfant'
        WHEN YEAR(CURDATE()) - YEAR(date_of_birth) BETWEEN 18 AND 40 THEN 'Adulte'
        ELSE 'Senior'
    END AS catégorisant
FROM patients;

#10

SELECT COUNT(*) AS total_appointments
FROM appointments;

SELECT department_id, COUNT(*) AS total_doctors
FROM doctors
GROUP BY department_id;


#j'ai oublier 11 11. COUNT avec GROUP BY : Nombre de médecins par département Comptez le nombre de médecins dans chaque département.

select count(*) as Nombre_de_medecins
from doctors
group by department_id;

#11
select AVG(year(curdate()) - YEAR(date_of_birth) ) As moyenAge
from patients;

#12

select Max(appointment_date) As DateDernierrendezvous ,Max(appointment_time) As TaimeDernierrendezvous
from appointments;

#13

select sum(admission_id) As SommeAdmission 
from admissions 
group by room_id;

#14
select * 
from patients 
where email not in ('', 'NULL');

#15 

SELECT 
    appointments.appointment_date,appointments.appointment_time,doctors.first_name AS  doctor_first_name, doctors.last_name AS doctors_last_name,
    patients.first_name as patients_first_name , patients.last_name AS  patients_last_name
from appointments
join doctors on appointments.doctor_id = doctors.doctor_id
join patients on appointments.patient_id = patients.patient_id;
 
#16

delete from appointments
where appointment_date < '2024-01-01';

#pour verifier 
select * from appointments
where appointment_date < '2024-01-01';

#17

SET SQL_SAFE_UPDATES = 0;
update  departments
set department_name = 'Cancer Treatment'
where department_name = 'Cardiology';

#pour verifier
select department_name from departments;

#18 

SELECT gender, count(patient_id) as Liste_deux_patients
FROM patients
GROUP BY gender
HAVING COUNT(patient_id) >= 2;


#19 

CREATE VIEW admissions_en_cours as 
select admission_id,patient_id,room_id,admission_date,discharge_date
from admissions;

select * from admissions_en_cours;
show tables;

#bonnuss
#1 
select * from doctors;
select * from patients;

select patients.first_name as patients_first_name ,patients.last_name as patients_last_name,doctors.first_name as doctors_first_name,doctors.last_name as doctors_last_name
from  appointments
join patients on appointments.patient_id=patients.patient_id
join doctors on appointments.doctor_id=doctors.doctor_id ;

#2  

SELECT 
   appointments.appointment_date,appointments.appointment_time,doctors.first_name AS doctor_first_name,doctors.last_name AS doctor_last_name,departments.department_name
FROM appointments
join doctors on appointments.doctor_id = doctors.doctor_id
join departments on doctors.department_id = departments.department_id;


