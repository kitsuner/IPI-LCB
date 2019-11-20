SET autocommit=0;

START TRANSACTION;

CREATE DATABASE LCB;

USE LCB;

CREATE TABLE utilisateur (

id_utilisateur BIGINT(20) unsigned auto_increment,
pseudo VARCHAR(20) UNIQUE,

mail VARCHAR(50)UNIQUE,

mot_de_passe VARCHAR(20) NOT NULL,

prenom VARCHAR(20),

nom VARCHAR(32),

CONSTRAINT primary key(id_utilisateur)
);
create table groupe_de_recettes (

id_grp_recette BIGINT(20) UNSIGNED auto_increment,

lib_grp_recette VARCHAR(32) NOT NULL,

CONSTRAINT primary key(id_grp_recette)

);
create table recette (

id_recette BIGINT(20) UNSIGNED auto_increment,
lib_recette VARCHAR(32) NOT NULL,


instruction_recette TEXT,


id_utilisateur BIGINT(20) unsigned,

CONSTRAINT primary key (id_recette),

CONSTRAINT FOREIGN KEY FK_recette_utilisateur (id_utilisateur) 

REFERENCES utilisateur (id_utilisateur)

);
create table liste_favoris(


id_utilisateur BIGINT(20) unsigned,


id_recette BIGINT(20) unsigned,

CONSTRAINT PRIMARY KEY (id_utilisateur, id_recette),

CONSTRAINT FOREIGN KEY FK_liste_favoris_id_utilisateur (id_utilisateur)

REFERENCES utilisateur (id_utilisateur),

CONSTRAINT FOREIGN KEY FK_liste_favoris_id_recette (id_recette)

REFERENCES recette (id_recette)


);
create table liste_grp_recette (
id_grp_recette BIGINT(20) unsigned,

id_recette BIGINT(20) unsigned,

CONSTRAINT PRIMARY KEY (id_grp_recette, id_recette),

CONSTRAINT FOREIGN KEY FK_liste_grp_recette_id_grp_recette (id_grp_recette)

references groupe_de_recettes (id_grp_recette),

CONSTRAINT FOREIGN KEY FK_liste_grp_recette_id_recette (id_recette)

references recette (id_recette)

);
create table groupe_ingredients (

id_grp_ingredient SMALLINT(4) UNSIGNED Auto_increment,

lib_grp_ingredient TEXT NOT NULL,

CONSTRAINT PRIMARY KEY (id_grp_ingredient)

);
create table ss_groupe_ingredients (


id_ss_grp_ingredient SMALLINT(4) UNSIGNED Auto_increment,


lib_ss_grp_ingredient TEXT NOT NULL,


id_grp_ingredient SMALLINT(4) UNSIGNED,


CONSTRAINT PRIMARY KEY (id_ss_grp_ingredient),


CONSTRAINT foreign key FK_ss_grp_ingredient_grp_ingredient (id_grp_ingredient)

REFERENCES groupe_ingredients(id_grp_ingredient)


);
create table ss_ss_groupe_ingredients (


id_ss_ss_grp_ingredient SMALLINT(4) UNSIGNED Auto_increment,


lib_ss_ss_grp_ingredient TEXT NOT NULL,


id_ss_grp_ingredient SMALLINT(4) UNSIGNED,


CONSTRAINT PRIMARY KEY (id_ss_ss_grp_ingredient),


CONSTRAINT foreign key FK_ss_ss_grp_ingredient_ss_grp_ingredient (id_ss_grp_ingredient)

REFERENCES ss_groupe_ingredients(id_ss_grp_ingredient)


);

COMMIT;
