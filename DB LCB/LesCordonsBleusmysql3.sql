alter table recette add column nbr_personne SMALLINT(4);

alter table recette add column url_recette VARCHAR(512);

Update recette set nbr_personnes=2 where id_recette=1;
Update recette set nbr_personnes=1 where id_recette=2;
Update recette set nbr_personnes=4 where id_recette=3;
