<script setup lang="ts">
    import type { Montre } from "@/types" 
    import { ref } from "vue";
    import { supabase } from "@/supabase";
    import { useRouter } from "vue-router";
    import MontreCarree from "./MontreCarree.vue";
import FormKitListColors from "./FormKitListColors.vue";

const router = useRouter();
const montre = ref({});



</script>

<template>
  <main class="bg-red-700 grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <div class="grid grid-cols-2">
        <div>
            <MontreCarree class="carousel-item w-64" v-bind="montre" id="profil" />
        </div>
        <FormKit type="form" v-model="montre" >
            <FormKitListColors name="bracelet" label="bracelet" />
            <FormKitListColors name="boitier" label="boitier" />
            <FormKitListColors name="ecran" label="Informations affichées sur l'écran" />

            <FormKit name="commander" label="Commander" type="checkbox"  />
        </FormKit>
    </div>
    </main>
</template>