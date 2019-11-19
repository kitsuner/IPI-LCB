insert into utilisateur(pseudo, mail, mot_de_passe, prenom, nom) values ("fenee", "fredmail@gmail.com", "passe", "Frédéric", "Enée");
insert into utilisateur(pseudo, mail, mot_de_passe, prenom, nom) values ("jbionnet", "juliemail@gmail.com", "passe", "Julie", "Bionnet");
insert into utilisateur(pseudo, mail, mot_de_passe, prenom, nom) values ("jgarand", "jorismail@gmail.com", "passe", "Joris", "Garand");
insert into utilisateur(pseudo, mail, mot_de_passe, prenom, nom) values ("lrenard", "lionelmail@gmail.com", "passe", "Lionel", "Renard");
insert into utilisateur(pseudo, mail, mot_de_passe, prenom, nom) values ("nibrahimi", "nassimmail@gmail.com", "passe", "Nassim", "Ibrahimi");

insert into recette(lib_recette, instruction_recette, id_utilisateur) values ("Potage au potiron et pommes", "Faire chauffer l'huile d'olive dans une casserole, ajouter l'ail, faire cuire pendant 2 min", 1);
insert into recette(lib_recette, instruction_recette, id_utilisateur) values ("Flan de courgette", "Faire le flan", 3);
insert into recette(lib_recette, instruction_recette, id_utilisateur) values ("Bruschetta à l'italienne", "Gestes des mains (en italien)", 2);

insert into liste_ingredients(id_recette, id_ingredient, quantite) values (3, 21, 100);	
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (3, 481, 400);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (3, 2198, 10);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (3, 2320, 30);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (3, 2289, 1);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (2, 92, 1000);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (2, 1747, 100);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (2, 1562, 30);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (2, 1546, 200);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (2, 2326, 30);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (1, 19, 500);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (1, 328, 100);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (1, 15, 40);
insert into liste_ingredients(id_recette, id_ingredient, quantite) values (1, 2297, 5);

insert into liste_favoris(id_utilisateur, id_recette) values (1, 2);
insert into liste_favoris(id_utilisateur, id_recette) values (2, 1);
insert into liste_favoris(id_utilisateur, id_recette) values (3, 3);
insert into liste_favoris(id_utilisateur, id_recette) values (4, 1);
insert into liste_favoris(id_utilisateur, id_recette) values (5, 2);