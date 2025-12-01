# **Unity Care Clinic — Conception & Documentation de la Base de Données (SQL & ERD)**

## **Présentation du Projet**

Ce projet a pour objectif de **concevoir, documenter et implémenter une base de données SQL robuste** destinée à la plateforme web Unity Care Clinic.
Il inclut :

* **Modélisation des données**
* **Schéma SQL complet**
* **Diagramme Entité-Relation (ERD)**
* **Exercices SQL pratiques (CRUD, jointures, agrégations, etc.)**

---

## **Objectif Principal**

Développer une **base de données performante, sécurisée et évolutive**, capable de supporter toutes les fonctionnalités d’un système de gestion hospitalière.

---

## **Description Fonctionnelle**

La base de données gère plusieurs volets essentiels :

### **Gestion administrative**

* Départements
* Personnel : médecins et employés administratifs

### **Gestion des patients**

* Données personnelles
* Admissions
* Dossiers médicaux

### **Gestion opérationnelle**

* Chambres
* Médicaments et prescriptions
* Rendez-vous et planning

---

## **Composantes Techniques**

### **1. Schéma SQL**

Définition des tables, clés primaires, clés étrangères, contraintes et relations.

### **2. Diagramme ERD**

Diagramme visuel représentant la structure de la base de données.

### **3. Exercices SQL (20 Requêtes)**

Incluant :

* **CRUD**
* **SELECT / WHERE / ORDER BY / LIMIT / DISTINCT**
* **Fonctions d’agrégation**
* **Jointures**
* **GROUP BY / HAVING**
* **Vues SQL**

### **4. Exercices Bonus**

5 requêtes avancées utilisant des jointures complexes.

---

## **Exercices SQL**

**1. CRUD**
Insérer un patient nommé *Alex Johnson*, né le *15 juillet 1990*, sexe masculin, téléphone *1234567890*.

**2. SELECT**
Récupérer tous les départements et leurs emplacements.

**3. ORDER BY**
Lister les patients triés par date de naissance (croissant).

**4. DISTINCT**
Récupérer les sexes des patients, sans doublons.

**5. LIMIT**
Afficher les **3 premiers médecins**.

**6. WHERE**
Patients nés après **2000**.

**7. Opérateurs logiques**
Médecins des départements **Cardiology** et **Neurology**.

**8. Opérateurs spéciaux**
Admissions entre le **1 et le 7 décembre 2024**.

**9. Expressions conditionnelles**
Ajouter une colonne catégorisant les patients en **Enfant**, **Adulte**, ou **Senior**.

**10. COUNT**
Total des rendez-vous.

**11. COUNT + GROUP BY**
Nombre de médecins par département.

**12. AVG**
Âge moyen des patients.

**13. MAX**
Date et heure du dernier rendez-vous.

**14. SUM**
Total des admissions par chambre.

**15. Contraintes**
Patients dont le champ email est vide.

**16. Jointure**
Rendez-vous avec **nom du médecin** et **nom du patient**.

**17. DELETE**
Supprimer les rendez-vous avant **2024**.

**18. UPDATE**
Renommer **Oncology** → **Cancer Treatment**.

**19. HAVING**
Sexes ayant au moins **2 patients**.

**20. Vue SQL**
Créer une vue listant toutes les **admissions actives**.
