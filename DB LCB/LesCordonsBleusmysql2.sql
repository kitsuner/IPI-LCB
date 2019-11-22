

START TRANSACTION;

DELETE FROM ingredient where alim_grp_nom_fr = "entrées et plats composés";

DELETE FROM ingredient where alim_ssssgrp_nom_fr = "fruits appertisés";

DELETE FROM ingredient where alim_ssssgrp_nom_fr = "Compotes et assimilés";

DELETE FROM ingredient where alim_ssgrp_nom_fr = "desserts glacés";

DELETE FROM ingredient where alim_ssssgrp_nom_fr = "sauces chaudes";

DELETE FROM ingredient where alim_ssssgrp_nom_fr = "sauces sucrées";

DELETE FROM ingredient where alim_ssgrp_nom_fr = "denrées destinées à une alimentation particulière";

DELETE FROM ingredient where alim_grp_nom_fr="aliments infantiles";


ALTER TABLE ingredient 
ADD COLUMN 
id_ingredient  
BIGINT(20)
unsigned auto_increment primary KEY FIRST;


create table liste_ingredients (


id_recette BIGINT(20) UNSIGNED,


id_ingredient BIGINT(20) UNSIGNED,


quantite SMALLINT(5) UNSIGNED,


CONSTRAINT primary key (id_recette, id_ingredient),


CONSTRAINT FOREIGN KEY FK_liste_ingredients_id_recette (id_recette) 

REFERENCES recette (id_recette),


constraint foreign key FK_liste_ingredients_id_ingredient (id_ingredient)

REFERENCES ingredient (id_ingredient)

);



insert into groupe_ingredients (lib_grp_ingredient) value ("fruits, légumes, légumineuses et oléagineux");


insert into groupe_ingredients (lib_grp_ingredient) value ("produits céréaliers");


insert into groupe_ingredients (lib_grp_ingredient) value ("viandes, oeufs, poissons");


insert into groupe_ingredients (lib_grp_ingredient) value ("Lait et produits laitiers");


insert into groupe_ingredients (lib_grp_ingredient) value ("Boissons");

insert into groupe_ingredients (lib_grp_ingredient) value ("Produits sucrés");


insert into groupe_ingredients (lib_grp_ingredient) value ("Glaces et sorbet");


insert into groupe_ingredients (lib_grp_ingredient) value ("Matières graces");


insert into groupe_ingredients (lib_grp_ingredient) value ("Aide culinaires et ingrédients divers");

insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Légumes", 1);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Pommes de terre et autres tubercules", 1);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Légumineuses", 1);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Fruits", 1);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Fruits a coque", 1);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Pâtes, riz et céréales", 2);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Pains et viennoiseries", 2);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Céréales de petit-déjeuner et biscuits", 2);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Gâteaux et pâtisseries", 2);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Farines et pâtes à tarte", 2);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Viandes cuites", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Viandes crues", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Charcuteries", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Autres produits à base de viande", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Poissons cuits", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Poissons crus", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Mollusques et crustacés cuits", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Produits à base de poissons et produits de la mer", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Oeuf", 3);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Laits", 4);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Produits laitiers frais et assimilés", 4);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Fromages", 4);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Crèmes et spécialités à base de crème", 4);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Eaux", 5);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Boissons sans alcool", 5);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Boisson alcoolisées", 5);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Sucres, miels et assimilés", 6);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Chocolats et produits à base de chocolat", 6);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Confiseries non chocolatées", 6);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Confitures et assimilés", 6);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Glaces", 7);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Sorbets", 7);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Beurres", 8);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Huiles et graisses végétales", 8);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Margarines", 8);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Huiles de poissons", 8);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Autres", 8);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Sauces", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Condiments", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Aides culinaires", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Sels", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Epices", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Herbes", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Algues", 9);


insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_grp_ingredient) 
values ("Ingrédients divers", 9);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Legumes Crûs", 1);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Legumes Cuits", 1);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"légumes séchés ou déshydratés", 1);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Pommes de terre et autres tubercules", 2);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Légumineuses cuites", 3);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Légumineuses fraîches", 3);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Légumineuses sèches", 3);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fruits crus", 4);
insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fruits séchés", 4);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fruits à coque", 5);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Pâtes, riz et céréales cuits", 6);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Pâtes, riz et céréales cuits", 6);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Pains", 7);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Biscottes et pains grillés", 7);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Viennoiseries", 7);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Céréales de petit-déjeuner", 8);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"barres céréalières", 8);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Biscuits sucrés", 8);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Biscuits apéritifs", 8);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Gateaux et pâtisseries", 9);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Farines", 10);

insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Pâtes à tarte", 10);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Boeuf et veau", 11);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Porc", 11);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Poulet", 11);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Dinde", 11);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Agneau et mouton", 11);
insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Gibier", 11);
insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres viandes", 11);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Abats", 11);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Boeuf et veau", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Porc", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Poulet", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Dinde", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Agneau et mouton", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Gibier", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres viandes", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Abats", 12);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Jambons cuits", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Jambons secs et crus", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Saucisson secs", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Saucisse et assimilés", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Pâtés et terrines", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Rillettes", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Quenelles", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres spécialités charcutières", 13);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres produits à base de viande", 14);
insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Poissons cuits", 15);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Poissons crus", 16);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Mollusques et crustacés cuits", 17);
insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Produits à base de poissons et produits de la mer", 18);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Oeuf cuit", 19);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Oeuf cru", 19);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Omelettes et autres ovoproduits", 19);

insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Laits de vache liquide", 20);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Laits autres animaux", 20);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Laits de vache en poudre", 20);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Yaourts et spécialités laitières type yaourt", 21);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fromages blancs", 21);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Desserts lactés", 21);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres desserts lactés", 21);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fromage à pâte molle", 22);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fromage à pâte persillée", 22);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fromages à pâte pressée", 22);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Fromage fondus", 22);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres fromages et spécialités", 22);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Crèmes et spécialités à base de crème", 23);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Eaux", 24);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Jus", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Nectar", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Boissons rafraîchissantes sans alcool", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Boissons rafraîchissantes lactées", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Boissons végétales", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Café, thé, cacao etc prêts à consommer", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Boissons à reconstituer", 25);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Vins", 26);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Bières et cidres", 26);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Cocktails", 26);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Sucres, miels et assimilés", 27);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Chocolats et produits à base de chocolat", 28);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Confiseries non chocolatées", 29);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Confitures et assimilés", 30);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Glaces", 31);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Sorbets", 32);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Beurres", 33);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Huiles et graisses végétales", 34);

insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Margarines", 35);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Huiles de poissons", 36);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Autres", 37);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Sauces condimentaires", 38);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Condiments", 39);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Aides culinaires", 40);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Sels", 41);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Epices", 42);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Herbes fraiches", 43);

insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Herbes séchées", 43);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Algues", 44);


insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_grp_ingredient) VALUES (
"Ingrédients divers", 45);




Alter table ingredient add column id_ss_ss_groupe_ingredient SMALLINT(4) UNSIGNED;


update ingredient set id_ss_ss_groupe_ingredient = 1 where alim_ssssgrp_nom_fr="légumes crus";


update ingredient set id_ss_ss_groupe_ingredient = 2 where alim_ssssgrp_nom_fr="légumes cuits";


update ingredient set id_ss_ss_groupe_ingredient = 3 where alim_ssssgrp_nom_fr="légumes séchés ou déshydratés";

update ingredient set id_ss_ss_groupe_ingredient = 4 where alim_ssgrp_nom_fr="pommes de terre et autres tubercules";


update ingredient set id_ss_ss_groupe_ingredient = 5 where alim_ssssgrp_nom_fr="légumineuses cuites";


update ingredient set id_ss_ss_groupe_ingredient = 6 where alim_ssssgrp_nom_fr="légumineuses fraîches";


update ingredient set id_ss_ss_groupe_ingredient = 7 where alim_ssssgrp_nom_fr="légumineuses sèches";


update ingredient set id_ss_ss_groupe_ingredient = 8 where alim_ssssgrp_nom_fr="fruits crus";


update ingredient set id_ss_ss_groupe_ingredient = 9 where alim_ssssgrp_nom_fr="fruits séchés";


update ingredient set id_ss_ss_groupe_ingredient = 10 where alim_ssgrp_nom_fr="fruits à coque et graines oléagineuses";


update ingredient set id_ss_ss_groupe_ingredient = 11 where alim_ssssgrp_nom_fr="pâtes, riz et céréales cuits";


update ingredient set id_ss_ss_groupe_ingredient = 12 where alim_ssssgrp_nom_fr="pâtes, riz et céréales crus";


update ingredient set id_ss_ss_groupe_ingredient = 13 where alim_ssssgrp_nom_fr="pains";


update ingredient set id_ss_ss_groupe_ingredient = 14 where alim_ssssgrp_nom_fr="biscottes et pains grillés";


update ingredient set id_ss_ss_groupe_ingredient = 15 where alim_ssssgrp_nom_fr="viennoiseries";


update ingredient set id_ss_ss_groupe_ingredient = 16 where alim_ssssgrp_nom_fr="céréales de petit-déjeuner";


update ingredient set id_ss_ss_groupe_ingredient = 17 where alim_ssssgrp_nom_fr="barres céréalières";


update ingredient set id_ss_ss_groupe_ingredient = 18 where alim_ssssgrp_nom_fr="biscuits sucrés";


update ingredient set id_ss_ss_groupe_ingredient = 19 where alim_ssssgrp_nom_fr="biscuits apéritifs";


update ingredient set id_ss_ss_groupe_ingredient = 20 where alim_ssgrp_nom_fr="gâteaux et pâtisseries";


update ingredient set id_ss_ss_groupe_ingredient = 21 where alim_ssssgrp_nom_fr="farines";


update ingredient set id_ss_ss_groupe_ingredient = 22 where alim_ssssgrp_nom_fr="pâtes à tarte";


update ingredient set id_ss_ss_groupe_ingredient = 23 where alim_ssssgrp_nom_fr="b?uf et veau";


update ingredient set id_ss_ss_groupe_ingredient = 24 where alim_ssssgrp_nom_fr="porc";
update ingredient set id_ss_ss_groupe_ingredient = 25 where alim_ssssgrp_nom_fr="poulet";
update ingredient set id_ss_ss_groupe_ingredient = 26 where alim_ssssgrp_nom_fr="dinde";

update ingredient set id_ss_ss_groupe_ingredient = 27 where alim_ssssgrp_nom_fr="agneau et mouton";

update ingredient set id_ss_ss_groupe_ingredient = 28 where alim_ssssgrp_nom_fr="gibier";

update ingredient set id_ss_ss_groupe_ingredient = 29 where alim_ssssgrp_nom_fr="autres viandes";

update ingredient set id_ss_ss_groupe_ingredient = 30 where alim_ssssgrp_nom_fr="abats";

update ingredient set id_ss_ss_groupe_ingredient = 31 where alim_ssssgrp_nom_fr="b?uf et veau" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 32 where alim_ssssgrp_nom_fr="porc" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 33 where alim_ssssgrp_nom_fr="poulet" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 34 where alim_ssssgrp_nom_fr="dinde" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 35 where alim_ssssgrp_nom_fr="agneau et mouton" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 36 where alim_ssssgrp_nom_fr="gibier" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 37 where alim_ssssgrp_nom_fr="autres viandes" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 38 where alim_ssssgrp_nom_fr="abats" and alim_ssgrp_nom_fr ="viandes crues";

update ingredient set id_ss_ss_groupe_ingredient = 39 where alim_ssssgrp_nom_fr="jambons cuits";

update ingredient set id_ss_ss_groupe_ingredient = 40 where alim_ssssgrp_nom_fr="jambons secs et crus";

update ingredient set id_ss_ss_groupe_ingredient = 41 where alim_ssssgrp_nom_fr="saucisson secs";

update ingredient set id_ss_ss_groupe_ingredient = 42 where alim_ssssgrp_nom_fr="saucisses et assimilés";

update ingredient set id_ss_ss_groupe_ingredient = 43 where alim_ssssgrp_nom_fr="pâtés et terrines";

update ingredient set id_ss_ss_groupe_ingredient = 44 where alim_ssssgrp_nom_fr="rillettes";

update ingredient set id_ss_ss_groupe_ingredient = 45 where alim_ssssgrp_nom_fr="quenelles";

update ingredient set id_ss_ss_groupe_ingredient = 46 where alim_ssssgrp_nom_fr="autres spécialités charcutières";

update ingredient set id_ss_ss_groupe_ingredient = 47 where alim_ssgrp_nom_fr="autres produits à base de viande";

update ingredient set id_ss_ss_groupe_ingredient = 48 where alim_ssgrp_nom_fr="poissons cuits";

update ingredient set id_ss_ss_groupe_ingredient = 49 where alim_ssgrp_nom_fr="poissons crus";

update ingredient set id_ss_ss_groupe_ingredient = 50 where alim_ssgrp_nom_fr="mollusques et crustacés cuits";

update ingredient set id_ss_ss_groupe_ingredient = 51 where alim_ssgrp_nom_fr="produits à base de poissons et produits de la mer";

insert into ss_groupe_ingredients (lib_ss_grp_ingredient, id_ss_grp_ingredient, id_grp_ingredient) values ("Mollusques et crustacés crus", 46, 3);

insert into ss_ss_groupe_ingredients (lib_ss_ss_grp_ingredient, id_ss_ss_grp_ingredient, id_ss_grp_ingredient) values ("Mollusques et crustacés crus", 99, 46);
update ingredient set id_ss_ss_groupe_ingredient = 99 where alim_ssgrp_nom_fr="mollusques et crustacés crus";
update ingredient set id_ss_ss_groupe_ingredient = 46 where alim_ssssgrp_nom_fr="autres spécialités charcutières";


update ingredient set id_ss_ss_groupe_ingredient = 47 where alim_ssgrp_nom_fr="autres produits à base de viande";


update ingredient set id_ss_ss_groupe_ingredient = 48 where alim_ssgrp_nom_fr="poissons cuits";


update ingredient set id_ss_ss_groupe_ingredient = 49 where alim_ssgrp_nom_fr="poissons crus";


update ingredient set id_ss_ss_groupe_ingredient = 50 where alim_ssgrp_nom_fr="mollusques et crustacés cuits";



update ingredient set id_ss_ss_groupe_ingredient = 99 where alim_ssgrp_nom_fr="mollusques et crustacés crus";


update ingredient set id_ss_ss_groupe_ingredient = 51 where alim_ssgrp_nom_fr="produits à base de poissons et produits de la mer";


update ingredient set id_ss_ss_groupe_ingredient = 52 where alim_ssssgrp_nom_fr="?ufs cuits";


update ingredient set id_ss_ss_groupe_ingredient = 53 where alim_ssssgrp_nom_fr="?ufs crus";


update ingredient set id_ss_ss_groupe_ingredient = 54 where alim_ssssgrp_nom_fr="omelettes et autres ovoproduits";


update ingredient set id_ss_ss_groupe_ingredient = 55 where alim_ssssgrp_nom_fr="laits de vaches liquides (non concentrés)";


update ingredient set id_ss_ss_groupe_ingredient = 56 where alim_ssssgrp_nom_fr="laits autres que de vache";


update ingredient set id_ss_ss_groupe_ingredient = 57 where alim_ssssgrp_nom_fr="laits de vache concentrés ou en poudre";


update ingredient set id_ss_ss_groupe_ingredient = 58 where alim_ssssgrp_nom_fr="yaourts et spécialités laitières type yaourt";


update ingredient set id_ss_ss_groupe_ingredient = 59 where alim_ssssgrp_nom_fr="fromages blancs";


update ingredient set id_ss_ss_groupe_ingredient = 60 where alim_ssssgrp_nom_fr="desserts lactés";


update ingredient set id_ss_ss_groupe_ingredient = 61 where alim_ssssgrp_nom_fr="autres desserts";


update ingredient set id_ss_ss_groupe_ingredient = 62 where alim_ssssgrp_nom_fr="fromages à pâte molle";


update ingredient set id_ss_ss_groupe_ingredient = 63 where alim_ssssgrp_nom_fr="fromages à pâte persillée";


update ingredient set id_ss_ss_groupe_ingredient = 64 where alim_ssssgrp_nom_fr="fromages à pâte pressée";


update ingredient set id_ss_ss_groupe_ingredient = 65 where alim_ssssgrp_nom_fr="fromage fondus";


update ingredient set id_ss_ss_groupe_ingredient = 66 where alim_ssssgrp_nom_fr="autres fromages et spécialités";


update ingredient set id_ss_ss_groupe_ingredient = 67 where alim_ssgrp_nom_fr="crèmes et spécialités à base de crème";


update ingredient set id_ss_ss_groupe_ingredient = 68 where alim_ssgrp_nom_fr="eaux";


update ingredient set id_ss_ss_groupe_ingredient = 69 where alim_ssssgrp_nom_fr="jus";


update ingredient set id_ss_ss_groupe_ingredient = 70 where alim_ssssgrp_nom_fr="nectars";


update ingredient set id_ss_ss_groupe_ingredient = 71 where alim_ssssgrp_nom_fr="boissons rafraîchissantes sans alcool";


update ingredient set id_ss_ss_groupe_ingredient = 72 where alim_ssssgrp_nom_fr="boissons rafraîchissantes lactées";


update ingredient set id_ss_ss_groupe_ingredient = 73 where alim_ssssgrp_nom_fr="boissons végétales";


update ingredient set id_ss_ss_groupe_ingredient = 74 where alim_ssssgrp_nom_fr="café, thé, cacao etc. prêts à consommer";


update ingredient set id_ss_ss_groupe_ingredient = 75 where alim_ssssgrp_nom_fr="boissons à reconstituer";


update ingredient set id_ss_ss_groupe_ingredient = 76 where alim_ssssgrp_nom_fr="vins";


update ingredient set id_ss_ss_groupe_ingredient = 77 where alim_ssssgrp_nom_fr="bières et cidres";


update ingredient set id_ss_ss_groupe_ingredient = 78 where alim_ssssgrp_nom_fr="cocktails";


update ingredient set id_ss_ss_groupe_ingredient = 79 where alim_ssgrp_nom_fr="sucres, miels et assimilés";


update ingredient set id_ss_ss_groupe_ingredient = 80 where alim_ssgrp_nom_fr="chocolats et produits à base de chocolat";


update ingredient set id_ss_ss_groupe_ingredient = 81 where alim_ssgrp_nom_fr="confiseries non chocolatées";


update ingredient set id_ss_ss_groupe_ingredient = 82 where alim_ssgrp_nom_fr="confitures et assimilés";


update ingredient set id_ss_ss_groupe_ingredient = 83 where alim_ssgrp_nom_fr="glaces";


update ingredient set id_ss_ss_groupe_ingredient = 84 where alim_ssgrp_nom_fr="sorbets";


update ingredient set id_ss_ss_groupe_ingredient = 85 where alim_ssgrp_nom_fr="beurres";


update ingredient set id_ss_ss_groupe_ingredient = 86 where alim_ssgrp_nom_fr="huiles et graisses végétales";


update ingredient set id_ss_ss_groupe_ingredient = 87 where alim_ssgrp_nom_fr="margarines";


update ingredient set id_ss_ss_groupe_ingredient = 88 where alim_ssgrp_nom_fr="huiles de poissons";


update ingredient set id_ss_ss_groupe_ingredient = 89 where alim_ssgrp_nom_fr="autres matières grasses";


update ingredient set id_ss_ss_groupe_ingredient = 90 where alim_ssssgrp_nom_fr="sauces condimentaires";


update ingredient set id_ss_ss_groupe_ingredient = 91 where alim_ssgrp_nom_fr="condiments";


update ingredient set id_ss_ss_groupe_ingredient = 92 where alim_ssgrp_nom_fr="aides culinaires";


update ingredient set id_ss_ss_groupe_ingredient = 93 where alim_ssgrp_nom_fr="sels";


update ingredient set id_ss_ss_groupe_ingredient = 94 where alim_ssgrp_nom_fr="épices";


update ingredient set id_ss_ss_groupe_ingredient = 95 where alim_ssssgrp_nom_fr="herbes fraîches";


update ingredient set id_ss_ss_groupe_ingredient = 96 where alim_ssssgrp_nom_fr="herbes séchées";


update ingredient set id_ss_ss_groupe_ingredient = 97 where alim_ssgrp_nom_fr="algues";


update ingredient set id_ss_ss_groupe_ingredient = 98 where alim_ssgrp_nom_fr="ingrédients divers";




alter table ingredient drop column alim_grp_nom_fr;

alter table ingredient drop column alim_ssgrp_nom_fr;

alter table ingredient drop column alim_ssssgrp_nom_fr;


update ingredient set alim_nom_fr="Pâtes fraîches aux oeufs, cuites, non salées" where alim_nom_fr="Pâtes fraîches, aux ?ufs, cuites, non salées";

update ingredient set alim_nom_fr="Pâtes sèches, aux oeufs, cuites, non salées" where alim_nom_fr="Pâtes sèches, aux ?ufs, cuites, non salées";

update ingredient set alim_nom_fr="Pâtes fraîches, aux oeufs, crues" where alim_nom_fr="Pâtes fraîches, aux ?ufs, crues";

update ingredient set alim_nom_fr="Pâtes sèches, aux oeufs, crues" where alim_nom_fr="Pâtes sèches, aux ?ufs, crues";

update ingredient set alim_nom_fr="Biscuit sec aux oeufs à la cuillère (cuiller) ou Boudoir" where alim_nom_fr="Biscuit sec aux ?ufs à la cuillère (cuiller) ou Boudoir";
update ingredient set alim_nom_fr="Tarte normande aux pommes (garniture farine, oeufs, crème, sucre, calvados)" where alim_nom_fr="Tarte normande aux pommes (garniture farine, ?ufs, crème, sucre, calvados)";

update ingredient set alim_nom_fr="Boeuf, steak haché 5% MG, cuit" where alim_nom_fr="B?uf, steak haché 5% MG, cuit";

update ingredient set alim_nom_fr="Boeuf, steak haché 10% MG, cuit" where alim_nom_fr="B?uf, steak haché 10% MG, cuit";

update ingredient set alim_nom_fr="Boeuf, steak haché 15% MG, cuit" where alim_nom_fr="B?uf, steak haché 15% MG, cuit";

update ingredient set alim_nom_fr="Boeuf, steak haché 20% MG, cuit" where alim_nom_fr="B?uf, steak haché 20% MG, cuit";

update ingredient set alim_nom_fr="Boeuf, steak haché, cuit (aliment moyen)" where alim_nom_fr="B?uf, steak haché, cuit (aliment moyen)";

update ingredient set alim_nom_fr="Boeuf, steak haché 5% MG, cru" where alim_nom_fr="B?uf, steak haché 5% MG, cru";

update ingredient set alim_nom_fr="Boeuf, steak haché 10% MG, cru" where alim_nom_fr="B?uf, steak haché 10% MG, cru";

update ingredient set alim_nom_fr="Boeuf, steak haché 15% MG, cru" where alim_nom_fr="B?uf, steak haché 15% MG, cru";

update ingredient set alim_nom_fr="Boeuf, steak haché 20% MG, cru" where alim_nom_fr="B?uf, steak haché 20% MG, cru";

update ingredient set alim_nom_fr="Chair à saucisse, porc et boeuf, crue" where alim_nom_fr="Chair à saucisse, porc et b?uf, crue";

update ingredient set alim_nom_fr="Merguez, pur boeuf, crue" where alim_nom_fr="Merguez, pur b?uf, crue";

update ingredient set alim_nom_fr="Merguez, porc et boeuf, crue" where alim_nom_fr="Merguez, porc et b?uf, crue";

update ingredient set alim_nom_fr="Merguez, boeuf, mouton et porc, crue" where alim_nom_fr="Merguez, b?uf, mouton et porc, crue";

update ingredient set alim_nom_fr="Haché à base de boeuf ou Préparation de viande hachée de boeuf, 15% MG, cru" where alim_nom_fr="Haché à base de b?uf ou Préparation de viande hachée de boeuf, 15% MG, cru";

update ingredient set alim_nom_fr="Boulettes au porc et au boeuf (à la suédoise), crues" where alim_nom_fr="Boulettes au porc et au b?uf (à la suédoise), crues";

update ingredient set alim_nom_fr="Boulettes au boeuf et à l'agneau (type kefta), crues" where alim_nom_fr="Boulettes au b?uf et à l'agneau (type kefta), crues";

update ingredient set alim_nom_fr="Rouget-barbet, filet avec peau, surgelé, cru (Thaïlande, Sénégal)" where alim_nom_fr="Rouget-barbet, filet avec peau, surgelé, cru (Thaïlande, Sénégal?)";

update ingredient set alim_nom_fr="Flan aux oeufs, rayon frais" where alim_nom_fr="Flan aux ?ufs, rayon frais";

update ingredient set alim_nom_fr="Crème aux oeufs (petit pot de crème chocolat, vanille, etc.), rayon frais" where alim_nom_fr="Crème aux ?ufs (petit pot de crème chocolat, vanille, etc.), rayon frais";

update ingredient set alim_nom_fr="Gâteau au chocolat, coeur fondant, rayon frais" where alim_nom_fr="Gâteau au chocolat, c?ur fondant, rayon frais";

COMMIT;

