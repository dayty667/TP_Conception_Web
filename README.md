# CampusConnect — Mini-CRM Relations Entreprises

Prototype d'application web conçu dans le cadre du projet transversal **EPSI Lille (B1)**[cite: 1].  
**CampusConnect** permet au service relations entreprises de centraliser les partenaires et de gérer leurs offres de stage et d'alternance dans une interface simple et rapide[cite: 1, 3, 103].

---

## Cahier des charges & Suivi du MVP (MoSCoW)

### Must Have (Indispensable à la démonstration)[cite: 9]
- [x] **Base de données relationnelle** : création des tables `entreprises` et `offres` (relation 1-N) avec jeu de données de démonstration[cite: 38, 39, 100].
- [x] **Gestion des entreprises (CRUD)** : ajouter, lister, modifier et supprimer une entreprise partenaire[cite: 7, 8].
- [x] **Gestion des offres (CRUD)** : créer une offre rattachée à une entreprise existante, afficher la liste, modifier le statut (`ouverte` / `clôturée`) et supprimer[cite: 7, 8, 17].
- [x] **Validation des données** : contrôle des champs obligatoires côté client et serveur avec messages d'erreur clairs[cite: 55, 56, 70].
- [x] **Interface responsive** : affichage fluide sur ordinateur et mobile[cite: 10, 68].

### Should / Could Have (Bonus & Évolutions)[cite: 9, 112]
- [ ] **Recherche & filtres** : filtrer les offres par mot-clé, ville ou statut[cite: 8, 112].
- [ ] **Gestion des contacts** : associer un contact référent à chaque entreprise[cite: 112].
- [ ] **Espace Étudiant** : table `etudiants` et suivi des candidatures / favoris[cite: 38].
- [ ] **Authentification** : connexion par rôle (Gestionnaire / Étudiant / Admin)[cite: 5, 9, 112].

---

## Stack Technique

- **Frontend** : HTML5, CSS3, JavaScript (Fetch API)[cite: 64, 71]
- **Backend** : PHP (PDO) — API REST JSON *(à adapter selon votre stack)*[cite: 53, 57]
- **Base de données** : MySQL / MariaDB (WampServer / XAMPP)
- **Outils** : Git, GitHub, VS Code[cite: 24]

---

## Installation et Lancement en Local

### 1. Cloner le dépôt
```bash
git clone [https://github.com/votre-utilisateur/campusconnect.git](https://github.com/votre-utilisateur/campusconnect.git)
cd campusconnect
