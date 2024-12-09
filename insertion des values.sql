use HospitalManagement ; 
INSERT INTO departments (department_id, department_name, location)
VALUES 
(1, 'Cardiology', 'Building A, Floor 2'),
(2, 'Neurology', 'Building B, Floor 3'),
(3, 'Pediatrics', 'Building C, Floor 1');



INSERT INTO doctors (doctor_id, first_name, last_name, specialization, phone_number, email, department_id)
VALUES 
(1, 'khalid', 'tuhami', 'Cardiologist', '0723456789', 'khalid.tuhami@example.com', 1),
(2, 'fatima', 'rradi', 'Neurologist', '07654321', 'fatima.rradi@example.com', 2),
(3, 'reida', 'el alaoui', 'Pediatrician', '05444333', 'reida.el alaoui@example.com', 3);



INSERT INTO patients (patient_id, first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES 
(1, 'maroua', 'el filali', 'Female', '1998-06-15', '0744123123', 'maroua.elfilali@example.com', '542 rue m6, Cityville'),
(2, 'hajar', 'chamrah', 'Female', '1997-11-15', '0676456456', 'hajar.chamrah@example.com', '456 rue m5, youssoufia'),
(3, 'saad', 'lwrtani', 'Male', '2000-10-10', '0772090970', 'saad.saad@example.com', '787 rue abdullah taouil, ouarzazat');



INSERT INTO medications (medication_id, medication_name, dosage )
VALUES 
(1, 'Aspirin', '500mg'),
(2, 'Paracetamol', '1g'),
(3, 'Ibuprofen', '400mg');



INSERT INTO rooms (room_id, room_numbre, room_type, availability)
VALUES 
(1, '101', 'Gneral', 1),
(2, '102', 'Private', 0),
(3, '103', 'ICU', 1);
 


INSERT INTO admissions (admission_id, patient_id, room_id, admission_date, discharge_date)
VALUES 
(1, 1, 2, '2024-12-01', NULL),
(2, 2, 1, '2024-11-25', '2024-11-30');


INSERT INTO appointments (appointment_id, appointment_date, appointment_time, doctor_id, patient_id, reason)
VALUES 
(1, '2024-12-03', '10:00:00', 1, 1, 'Routine Check-up'),
(2, '2024-12-04', '14:30:00', 2, 2, 'Headache Consultation'),
(3, '2024-12-05', '09:15:00', 3, 3, 'Vaccination');



INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, medication_id, prescription_date, dosage_instructions)
VALUES 
(1, 1, 1, 1, '2024-12-01', 'Take 1 tablet daily after meals'),
(2, 2, 2, 2, '2024-12-02', 'Take 2 tablets every 6 hours'),
(3, 3, 3, 3, '2024-12-03', 'Take 1 tablet every 8 hours');



INSERT INTO staff (staff_id, first_name, last_name, job_title, phone_number, email, department_id)
VALUES 
(1, 'hmo', 'ohssaine', 'Administrator', '078546231', 'hmo.ohssaine@example.com', 1),
(2, 'hamza', 'jaafer', 'Receptionist', '078956461', 'hamza.jaafer@example.com', 2),
(3, 'reida', 'mohamed', 'Nurse', '075621485', 'reida.mohamed@example.com', 3);
 



