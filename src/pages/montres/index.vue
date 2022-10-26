<script setup lang="ts">
import ListeMontres from "../../components/ListeMontres.vue";

</script>
<template>
  <h1 class="text-2xl">Mes Montres</h1>
    <div class="flex flex-wrap gap-4">
      <div class="flex justify-center">
    <h2>Liste des montres perso de l'utlisateur</h2>
    <ListeMontres class="flex flex-wrap gap-2" :max="100" />
    </div>
  </div>
</template>