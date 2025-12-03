/*CRUD Operations : Insérer un nouveau patient nommé "Alex Johnson", né le 15 juillet 1990, de sexe masculin, avec le numéro de téléphone "1234567890".*/

INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number)
VALUES ("Alex", "Johnson", "Male", "1990-07-15", "1234567890");

/*SELECT Statement : Récupérez tous les départements avec leurs emplacements.*/

SELECT department_name, location FROM departments

/*ORDER BY Clause : Trier les patients par date de naissance Listez tous les patients, triés par date de naissance dans l'ordre croissant.*/

SELECT * FROM patients
ORDER BY date_of_birth ASC;

/*Filtrer les patients uniques par sexe (DISTINCT) Récupérez tous les sexes des patients enregistrés, sans doublons.*/

SELECT DISTINCT gender FROM patients;

/*LIMIT Clause : Obtenir les 3 premiers médecins Récupérez les trois premiers médecins dans la table doctors.*/

SELECT * FROM doctors LIMIT 3;

/*WHERE Clause : Patients nés après 2000 Récupérez les informations des patients nés après l'année 2000.*/

SELECT * FROM patients WHERE date_of_birth > '2000-01-01'

/*Logical Operators : Médecins dans des départements spécifiques Récupérez les médecins des départements "Cardiology" et "Neurology".*/

SELECT * FROM doctors WHERE department_id IN ( 
    SELECT department_id FROM departments 
    WHERE department_name = 'Cardiology' OR department_name = 'Neurology' 
);

/*Special Operators : Vérifier des plages de dates Listez les admissions entre le 1er décembre et le 7 décembre 2024.*/

SELECT admission_date, discharge_date FROM admissions where admission_date BETWEEN '2024-12-01' AND '2024-12-07';

/*Conditional Expressions : Nommer les catégories d'âge des patients Ajoutez une colonne catégorisant les patients en "Enfant", "Adulte", ou "Senior" selon leur âge.*/

SELECT first_name, last_name, date_of_birth,
	CASE
    	WHEN YEAR(CURRENT_DATE) - YEAR(date_of_birth) < '18' THEN 'ENFANT'
        WHEN YEAR(CURRENT_DATE) - YEAR(date_of_birth) BETWEEN '18' AND '35' THEN 'ADULTE'
        ELSE 'SENIOR'
    END AS age
FROM patients;

/*Aggregate Functions : Nombre total de rendez-vous Comptez le nombre total de rendez-vous enregistrés.*/

SELECT count(*) AS total_appointments FROM appointments;

/*COUNT avec GROUP BY : Comptez le nombre de médecins dans chaque département.*/

SELECT department_id, COUNT(*) AS total_doctors FROM doctors GROUP BY department_id;

/*AVG : Calculez l'âge moyen des patients.*/

SELECT AVG(YEAR(CURRENT_DATE) - YEAR(date_of_birth)) AS average_age FROM patients;

/*MAX : Dernier rendez-vous Trouvez la date et l'heure du dernier rendez-vous enregistré.*/

SELECT MAX(appointment_date) FROM appointments;

/*SUM : Total des admissions par chambre Calculez le total des admissions pour chaque chambre.*/

SELECT room_id, SUM(1) FROM admissions GROUP BY room_id;

/*Constraints : Vérifier les patients sans e-mail Récupérez tous les patients dont le champ email est vide.*/

SELECT email FROM patients WHERE email IS NULL OR email='';

/*Jointure : Liste des rendez-vous avec noms des médecins et patients Récupérez les rendez-vous avec les noms des médecins et des patients.*/

SELECT d.first_name AS nameDoctor,
       p.first_name AS namePatient,
       a.appointment_date AS appointmentDate
FROM doctors AS d
INNER JOIN appointments AS a
  ON d.doctor_id = a.doctor_id
INNER JOIN patients AS p
  ON p.patient_id = a.patient_id;


/*DELETE : Supprimez tous les rendez-vous programmés avant 2024.*/

DELETE FROM appointments WHERE appointment_date < '2024-01-01';

/*UPDATE : Changez le nom du département "Oncology" en "Cancer Treatment".*/

UPDATE departments
SET department_name = 'Cancer Treatment'
WHERE department_name = 'Oncology';

/*HAVING Clause : Patients par sexe avec au moins 2 entrées Listez les genres ayant au moins deux patients.*/

SELECT gender, COUNT(*) FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2;

/*Créer une vue : Admissions actives Créez une vue listant toutes les admissions en cours.*/

CREATE VIEW admissions_active AS
SELECT * FROM admissions
WHERE discharge_date IS NULL;