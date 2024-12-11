


# Unity Care Clinic Database Management System
## Description
Unity Care Clinic Database Management System est une base de données relationnelle conçue pour gérer efficacement les données hospitalières.
Elle couvre la gestion des départements, des médecins, des patients, des chambres, des admissions, des rendez-vous, des prescriptions et du personnel administratif. 
Ce projet vise à automatiser les processus administratifs tout en assurant la sécurité et l'évolutivité des données.

## Caractéristiques principales
  - Gestion des patients : Suivi des informations personnelles et historiques médicaux.
  - Organisation des médecins : Association des médecins à des départements et spécialités.
  - Planification des rendez-vous : Enregistrement des rendez-vous entre médecins et patients.
  - Suivi des prescriptions : Gestion des médicaments prescrits et des instructions.
  - Gestion des admissions : Historique des hospitalisations avec chambres attribuées.
  #Statistiques et rapports : Calculs comme l'âge moyen des patients ou les statistiques des départements.

# Installation
## Prérequis :

1. MySQL Server
2. Outil d'administration SQL (comme MySQL Workbench)
### Cloner le projet : https://github.com/mhamedaithssaine/Conception-de-la-Base-de-Donn-es-SQL

# Structure de la base de données
## Tables principales :

- patients
- departments
- medications
- doctors
- prescriptions
- appointments
- rooms
- admissions
- staff

# Relations principales :

1. Un patient peut avoir plusieurs rendez-vous et admissions.
2. Un médecin appartient à un département et peut traiter plusieurs patients.
3. Une chambre peut être associée à plusieurs admissions.

## Exemples des Requêtes

1. liste de tous le departments 
- SELECT * FROM departments;
2. liste de gender des patients qui redoublent 
- SELECT DISTINCT gender
- FROM patients;
3. l'âge moyen des patients 
- select AVG(year(curdate()) - YEAR(date_of_birth) ) As moyenAge
- from patients; (curdate si la date de l'instant).
4. liste des patients qui du email 
- select * from patients
- where email not in ('', 'NULL');
6. Modifier un département Changez le nom du département "Cardiology" en "Cancer Treatment".
- SET SQL_SAFE_UPDATES = 0;
- update  departments
- set department_name = 'Cancer Treatment'
- where department_name = 'Cardiology';

# Auteur
 - M'hamed Ait Hssaine
 - Développeur Full-Stack | Étudiant à YouCode
