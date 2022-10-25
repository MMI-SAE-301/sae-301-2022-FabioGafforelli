<script setup lang="ts">
import MontreCarre from "@/components/MontreCarree.vue";
import type { Montre } from "@/types";
import { supabase, user } from '@/supabase';
import ListeMontres from '@/components/ListeMontres.vue';

</script>
<template>
  <section v-if="user">
  <h2>
    un extrait de vos montres (<RouterLink
      class="text-red-600 underline"
      to="/montres"
      >Toutes les voir</RouterLink
    >)
  </h2>
  <ListeMontres class="flex flex-wrap gap-2" :max="100" />
</section>
</template>