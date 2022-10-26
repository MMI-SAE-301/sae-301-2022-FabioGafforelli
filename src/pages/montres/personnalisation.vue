<script setup lang="ts">
import MontreCarree from '@/components/MontreCarree.vue';
import MontreRonde from '@/components/MontreRonde.vue';


</script>
<template>
  <div class="flex">
    <h1 class="text-xl font-bold">Bienvenue dans notre expérience de Personnalisation</h1>
  </div>
  <div class="grid grid-flow-row-dense grid-cols-3">
  <div class="col-span-2 w-64 ">
    <RouterLink to="/montres/new">
    <MontreCarree />
    </RouterLink>
  </div>
  <div class="col-span-2 text-bleuroi ">
    <button class="bg-bleuroi px-5 py-3 text-sm shadow-sm font-medium  text-blanc rounded-full hover:shadow-2xl hover:bg-bleuroi-100">Armand GUY</button>
  </div>
  <div class="w-64">
    <MontreRonde />
  </div>
  <div>A VENIR</div>
</div>
</template>