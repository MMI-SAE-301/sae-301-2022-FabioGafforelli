<script setup lang="ts">
    import type { Montre } from "@/types" 
    import { ref } from "vue";
    import { supabase } from "@/supabase";
    import { useRouter } from "vue-router";
    import SvgProfil from "./MontreCarree.vue";
import FormKitListColors from "./FormKitListColors.vue";

const router = useRouter();
const montre = ref({});
const { data: listeMateriaux, error } = await supabase
  .from("materiaux")
  .select("*");
if (error) console.log("n'a pas pu charger la table Quartier :", error);
// Les convertir par `map` en un tableau d'objets {value, label} pour FormKit
const optionsMateriaux = listeMateriaux?.map((materiaux) => ({
  value: materiaux.id_materiaux,
  label: materiaux.libelle_materiaux,
}));
const props = defineProps(["id", "Montre"]);
if (props.id) {
  // On charge les données de la maison
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("id", props.id);
  if (error || !data)
    console.log("n'a pas pu charger la table Montre :", error);
  else montre.value = data[0];
}


async function upsertMontre (dataForm, node) {
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "montre-edit-id", params: { id: data[0].id } });
  }
}
</script>

<template>
  <main clas="bg-red-700 grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <div class="grid grid-cols-2">
        <div>
            <SvgProfil class=" w-64" v-bind="montre" id="profil" />
        </div>
        <FormKit type="form" v-model="montre" @submit="upsertMontre"  >
          <FormKit type="select" name="id_materiaux" label="Materiaux du bracelet" :options="optionsMateriaux" />             
            <FormKitListColors name="bracelet" label="bracelet" />
            <FormKitListColors name="boitier" label="boitier" />
            <FormKitListColors name="ecran" label="Informations affichées sur l'écran" />

            <FormKit name="commander" label="Commander" type="checkbox"  />
        </FormKit>
    </div>
    </main>
</template>