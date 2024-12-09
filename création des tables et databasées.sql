create database HospitalManagement ;
use HospitalManagement ;

create table patients 
(
   patient_id  int(11),
   first_name varchar(50),
   last_name varchar(50),
   gender enum('Male','Female','Other'),
   date_of_birth date ,
   phone_number varchar(15),
   email varchar(100),
   address varchar(255),
   primary key (patient_id)
);

create table departments
(
   department_id  int(11),
   department_name varchar(50),
   location varchar (100),
   
   primary key (department_id)
);

create table medications  
(
   medication_id  int(11),
   medication_name varchar(100),
   dosage varchar(50),
   primary key (medication_id)
);

create table doctors 
(
   doctor_id  int(11),
   first_name varchar(50),
   last_name varchar(50),
   specialization varchar(50),
   phone_number varchar(15),
   email varchar(100),
   department_id int (11),
   foreign key (department_id) references departments (department_id),
   primary key (doctor_id)
);


create table prescriptions 
(
   prescription_id  int(11),
   patient_id int (11),
   foreign key  (patient_id) references patients (patient_id) ,
   doctor_id int (11),
   foreign key (doctor_id) references doctors (doctor_id),
   medication_id int (11),
   foreign key (medication_id) references medications(medication_id),
   prescription_date date ,
   dosage_instructions varchar(255),  
   primary key (prescription_id)
);





create table appointments 
(
   appointment_id  int(11),
   appointment_date date ,
   appointment_time time ,
   doctor_id int (11),
   foreign key (doctor_id) references doctors(doctor_id),
   patient_id int (11),
   foreign key (patient_id) references patients (patient_id),
   reason varchar(255),
   primary key (appointment_id)
);

create table rooms
(
   room_id  int(11),
   room_numbre varchar(10),
   room_type enum('Gneral','Private','ICU'),
   availability tinyint(1),
   primary key (room_id)
); 


create table admissions
(
   admission_id  int(11),
   patient_id int (11),
   foreign key (patient_id) references patients (patient_id),
   room_id int (11),
   foreign key (room_id) references rooms (room_id),
   admission_date date ,
   discharge_date date ,
   primary key (admission_id)
); 



create table staff
( 

staff_id int(11),
first_name varchar (50),
last_name varchar (50),
job_title varchar (50),
phone_number varchar(15),
email varchar (100),
department_id int(11),
foreign key (department_id) references departments (department_id)
); 


 show tables;
