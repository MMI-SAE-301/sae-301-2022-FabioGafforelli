<script setup lang="ts">
import MontreCarre from "@/components/MontreCarree.vue";
import type { Montre } from "@/types";
import { supabase, user } from '@/supabase';
import ListeMontres from '../components/ListeMontres.vue';

const exemples: Montre[]  = [{
  bracelet: "#FF0000",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
{
  bracelet: "#0c4039",
  boitier: "#FFFF00",
  ecran: "#FFFFFF",
},
];
</script>
<template>
  <section>
    <h1 class="text-2xl">Exemples de Montres</h1>
    <div class="flex flex-wrap gap-2">
      <div class="w-64" v-for="montre in exemples">
        <RouterLink
          :to="{
            name: 'montres-exemple-data',
            params: { data: JSON.stringify(montre) },
          }"
        >
          <MontreCarre class="w-64" v-bind="montre" />
        </RouterLink>
      </div>
    </div>
  </section>
  <section v-if="user">
  <h2>
    un extrait de vos montres (<RouterLink
      class="text-red-600 underline"
      to="/basket"
      >Toutes les voir</RouterLink
    >)
  </h2>
  <ListeMontres class="flex flex-wrap gap-2" :max="1" />
</section>
</template>