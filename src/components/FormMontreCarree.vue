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
        <div class="w-80 bg-bleuroi rounded-2xl pl-10 pr-10 py-10 mb-10">
            <SvgProfil class=" w-64" v-bind="montre" id="profil" />
        </div>
        <FormKit type="form" v-model="montre" @submit="upsertMontre"  >
          <div>
                <h1 class="text-white">Bracelet</h1>
                <br>
                <div class="bg-bleuroi rounded-2xl pl-3 pr-3 py-3 mb-3">
                <FormKitListColors name="bracelet" />
            </div>
         </div>
        </FormKit>
            <br>
      </div>
    </main>
</template>