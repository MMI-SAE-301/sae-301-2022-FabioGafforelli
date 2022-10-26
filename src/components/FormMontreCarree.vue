<script setup lang="ts">
    import type { Montre } from "@/types" 
    import { ref } from "vue";
    import { supabase } from "@/supabase";
    import { useRouter } from "vue-router";
    import SvgProfil from "./MontreCarree.vue";
import FormKitListColors from "./FormKitListColors.vue";
import { Switch } from '@headlessui/vue'

const enabled = ref(false)
const router = useRouter();
const montre = ref({});
const { data: listeMateriaux, error } = await supabase
  .from("materiaux")
  .select("*");
if (error) console.log("n'a pas pu charger la table Matériaux :", error);
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
    router.push({ name: "montres/listes", params: { id: data[0].id } });
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
          <FormKit type="select" name="id_materiaux" label="Materiaux du bracelet" placeholder="Sélectionner le matériel du bracelet" :options="optionsMateriaux" />             
            <FormKitListColors name="bracelet" label="bracelet" />
            <FormKitListColors name="boitier" label="boitier" />
            <FormKitListColors name="ecran" label="Informations affichées sur l'écran" />
            <FormKit class="grid grid-cols-2" name="commander" label="Commander" type="checkbox">
  <div class="py-16">
    <Switch
      v-model="enabled"
      :class="enabled ? 'bg-bleuroi' : 'bg-bleuroi'"
      class="relative inline-flex h-[38px] w-[74px] shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75"
    >
      <span class="sr-only">Use setting</span>
      <span
        aria-hidden="true"
        :class="enabled ? 'translate-x-9' : 'translate-x-0'"
        class="pointer-events-none inline-block h-[34px] w-[34px] transform rounded-full bg-blanc shadow-lg ring-0 transition duration-200 ease-in-out"
      />
    </Switch>
  </div>
</FormKit>
        </FormKit>
    </div>
    </main>
</template>