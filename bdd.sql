--
-- code pour la création des tables
--
CREATE TABLE materiaux (
id_materiaux uuid not null default uuid_generate_v4() ,
libelle_materiaux text, 
    PRIMARY KEY (id_materiaux)
    );

CREATE TABLE montre (
id uuid not null default uuid_generate_v4() ,
bracelet text,
boitier text,
ecran text,
id_materiaux uuid not null ,
Commander boolean not null default false,
utilisateur uuid references auth.users not null default uid(),
primary key (id) ,
FOREIGN KEY (id_materiaux) REFERENCES materiaux(id_materiaux)
);





--
-- code pour la création des vues
--
CREATE VIEW allMateriaux as
SELECT *
FROM "materiaux";

CREATE View allCuir as
select "montre"
from "materiaux","montre"
where"materiaux".id_materiaux = "montre".id_materiaux
and "materiaux"."libelle_materiaux" = 'Cuir'

CREATE View allPlatine as
select "montre"
from "materiaux","montre"
where"materiaux".id_materiaux = "montre".id_materiaux
and "materiaux"."libelle_materiaux" = 'Platine'

--
-- code pour la création des policies 
--
CREATE POLICY "Enable read access for all users" ON "public"."montre"
AS PERMISSIVE FOR SELECT
TO public
USING (true)
--
CREATE POLICY "Enable insert for authenticated users only" ON "public"."montre"
AS PERMISSIVE FOR INSERT
TO authenticated

WITH CHECK (true)
--
CREATE POLICY "Update based on e mail if commander = false"
ON public.montre
FOR UPDATE USING(
    (uid() = utilisateur) AND (Commander = false)
) WITH CHECK (
    uid() IN ( SELECT montre_1.utilisateur FROM montre montre_1)
)
--
CREATE POLICY "Enable delete for users based on user_id" ON "public"."montre"
AS PERMISSIVE FOR DELETE
TO public
USING (auth.uid() = utilisateur)
