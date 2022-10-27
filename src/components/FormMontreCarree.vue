<script setup lang="ts">
    import type { Montre } from "@/types" 
    import { ref } from "vue";
    import { supabase } from "@/supabase";
    import { useRouter } from "vue-router";
    import SvgProfil from "./MontreCarree.vue";
import FormKitListColors from "./FormKitListColors.vue";
import { Switch } from '@headlessui/vue'
import {
      RadioGroup,
      RadioGroupLabel,
      RadioGroupDescription,
      RadioGroupOption,
    } from '@headlessui/vue'

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
const quartierObject = ref({});
if (props.id) {
  // On charge les données de la vue quartiercommune
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("id", props.id);
  if (error || !data)
    console.log("n'a pas pu charger le table Maison :", error);
  else quartierObject.value = data[0];
}
// @ts-ignore
async function upsertMontre (dataForm, node) {
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "montres", params: { id: data[0].id } });
  }
}
async function supprimerMontre() {
const { data, error } = await supabase
  .from('montre')
  .delete()
  // @ts-ignore
  .match({ id: quartierObject.value.id })

  if (error) {
    console.error(
      "Erreur à la suppression de ",
      // @ts-ignore
      quartierObject.value.id,
      "erreur :",
      error
    );
  } else {
    router.push("/montres");
  }
}
</script>

<template>
  <main clas="bg-red-700 grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <div class="grid grid-cols-2">
        <div class="w-80 bg-bleuroi rounded-2xl pl-10 pr-10 py-10 mb-10">
            <SvgProfil class=" w-64" v-bind="montre" id="profil" />
        </div>
        <FormKit :submit-attrs="{ classes: { input: 'bg-bleuroi p-1 rounded2xl text-blanc' } }" submit-label="Ajouter au panier" type="form" v-model="montre" @submit="upsertMontre">
          <div>
                <h1 class="text-white">Bracelet</h1>
                <br>
                <div class="bg-bleuroi rounded-2xl pl-3 pr-3 py-3 mb-3">
                <FormKitListColors name="bracelet" />
            </div>
            </div>
          <div>
                <h1 class="text-white">Matériaux du bracelet</h1>
                <br>
                <div class="bg-bleuroi rounded-2xl pl-3 pr-3 py-3 mb-3">
                  <!-- @ts-ignore -->
                  <RadioGroup v-model="montre.id_materiaux" >
                    <RadioGroupLabel class="sr-only ">Server size</RadioGroupLabel>
                        <div class="flex gap-10 ">
                            <RadioGroupOption class=""
                                as="template"
                                v-for="materiaux in listeMateriaux"
                                :key="materiaux.id_materiaux"
                                :value="materiaux.id_materiaux"
                                v-slot="{ active, checked }">
                                <div :class="[
                                  active
                                    ? 'ring-2 ring-noir'
                                    : '',
                                  checked ? 'bg-bleuroi text-blanc hover:ring-2 hover:ring-noir ' : ' bg-blanc border-2 hover:ring-2 hover:ring-noir',
                                    ]"
                                    class="cursor-pointer rounded-lg px-10 py-4 border-2 border-noir ">
                                    <div class="text-sm">
                                        <RadioGroupLabel
                                            as="p"
                                            :class="checked ? 'text-blanc' : 'text-noir '"
                                            class="font-medium ">
                                            {{ materiaux.libelle_materiaux }}
                                        </RadioGroupLabel>
                                    </div>
                                </div>
                        </RadioGroupOption>
                    </div>
                </RadioGroup>
                </div>
        </div>
            <br>
            <div>
                <h1 class="text-white">Boitier</h1>
                <br>
                <div class="bg-bleuroi rounded-2xl pl-3 pr-3 py-3 mb-3">
                <FormKitListColors name="boitier" />
            </div>
        </div>
            <br>
            <div>
                <h1 class="text-white">Ecran</h1>
                <br>
                <div class="bg-bleuroi rounded-2xl pl-3 pr-3 py-3 mb-3">
                <FormKitListColors name="ecran" />
            </div>
        </div>
        <div>
                <h1 class="text-white">Commander</h1>
                <br>
                        <!-- @ts-ignore -->
        <Switch
    v-model="montre.commander"
    :class="montre.commander ? 'bg-bleuroi' : 'bg-bleuroi'"
    class="relative inline-flex h-6 w-11 items-center rounded-full"
  >
    <span class="sr-only">Commander</span>
    <span
      :class="montre.commander ? 'translate-x-6' : 'translate-x-1'"
      class="inline-block h-4 w-4 transform rounded-full bg-blanc transition"
    />
  </Switch>
        </div>
        <div>
                <h1 class="text-white">Prix</h1>
                <br>
                <div class="bg-bleuroi rounded-2xl pl-3 pr-3 py-3 mb-3">
                <h2 class="text-blanc">249€</h2> <h2 class="line-through text-gris">Au lieu de 299€</h2>
            </div>
        </div>
        <button
        type="button"
        v-if="quartierObject.id"
        @click="($refs.dialogSupprimer as any).showModal()"
        class="focus-style justify-self-end rounded-md bg-rouge p-2 shadow-sm"
      >
        Supprimer l'offre
      </button>
      <dialog
        ref="dialogSupprimer"
        @click="($event.currentTarget as any).close()"
      >
        <button
          type="button"
          class="focus-style justify-self-end rounded-md bg-blanc p-2 shadow-sm"
        >
          Annuler</button
        ><button
          type="button"
          @click="supprimerMontre()"
          class="focus-style rounded-md bg-rouge p-2 shadow-sm"
        >
          Confirmer suppression
        </button>
      </dialog>
        </FormKit>
            <br>
      </div>
    </main>
</template>
