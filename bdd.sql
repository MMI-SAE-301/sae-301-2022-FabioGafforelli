--
-- code pour la création des tables
--
CREATE TABLE materiaux (
id_materiaux uuid not null default uuid_generate_v4() ,
libelle_materiaux text, 
    PRIMARY KEY (id_materiaux)
    )







--
-- code pour la création des vues
--




--
-- code pour la création des policies
--