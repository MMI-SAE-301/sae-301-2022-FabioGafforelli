<script setup lang="ts">
import MontreCarree from '@/components/MontreCarree.vue';


</script>
<template>
  <div class="grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <h1 class="">Bienvenue dans notre expérience de Personnalisation</h1>
  </div>
  <div class="grid grid-flow-row-dense grid-cols-3 grid-rows-3">
  <div class="col-span-2 w-64">
    <MontreCarree />
  </div>
  <div class="col-span-2 text-bleuroi">Armand Guy</div>
  <div class="w-64">
    <MontreCarree />
  </div>
  <div>A VENIR</div>
</div>
</template>