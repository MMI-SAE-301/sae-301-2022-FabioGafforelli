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