<script setup lang="ts">
import { supabase } from "@/supabase";
import MontreCarre from "./MontreCarree.vue";
const props = defineProps<{
  max?: number;
}>();

let { data: Montres, error } = await supabase
  .from('montre')
  .select('*')

  .limit(props.max ?? 100)
if (error) {
  console.log("n'a pas pu récupérer les montres", { error });
}
</script>
<template>
  <ul>
    <li v-for="montre in Montres" :key="montre.id">
      <router-link
        :to="{ name: 'montres-edit-id', params: { id: montre.id } }"
      >
        <MontreCarre class="w-64" v-bind="montre" />
      </router-link>
    </li>
  </ul>
</template>