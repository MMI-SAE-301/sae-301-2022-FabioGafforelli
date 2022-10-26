<script setup lang="ts">
import MontreCarre from "@/components/MontreCarree.vue";
import type { Montre } from "@/types";
import MontreRonde from "@/components/MontreRonde.vue";
const exemples: Montre[]  = [{
  bracelet: "#FF0000",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
];
const exemple: Montre[]  = [{
  bracelet: "#FF0000",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
];
const exemple2: Montre[]  = [{
  bracelet: "#FF09FF",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
];
const exemple3: Montre[]  = [{
  bracelet: "#00C449",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
];
</script>
<template>
<section>
    <h1 class="text-2xl">Exemples de Montres</h1>
    <div class="flex flex-wrap gap-4">
      <div class="w-64" v-for="montre in exemples">
          <MontreCarre class="w-64" v-bind="montre" />
      </div>
      <div class="w-64" v-for="montre in exemple">
          <MontreRonde class="w-64" v-bind="montre" />
      </div>
      <div class="flex flex-wrap gap-4">
      <div class="w-64" v-for="montre in exemple2">
          <MontreCarre class="w-64" v-bind="montre" />
      </div>
      <div class="w-64" v-for="montre in exemple3">
          <MontreRonde class="w-64" v-bind="montre" />
      </div>
      </div>
      </div>
      </section>
    </template>