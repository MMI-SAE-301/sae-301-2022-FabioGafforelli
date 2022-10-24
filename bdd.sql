--
-- code pour la création des tables
--
CREATE TABLE materiaux (
id_materiaux uuid not null default uuid_generate_v4() ,
libelle_materiaux text, 
    PRIMARY KEY (id_materiaux)
    );

CREATE TABLE Montre (
id uuid not null default uuid_generate_v4() ,
bracelet text,
boitier text,
ecran text,
id_materiaux uuid ,
Commander boolean not null default false,
utilisateur uuid references auth.users not null default uid(),
primary key (id) ,
FOREIGN KEY (id_materiaux) REFERENCES materiaux(id_materiaux)
);





--
-- code pour la création des vues
--




--
-- code pour la création des policies
--