<script setup lang="ts">
import ListeMontres from "../../components/ListeMontres.vue";

</script>
<template>
  <div class="grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <h2>Liste des montres perso de l'utlisateur</h2>
    <ListeMontres />
  </div>
</template>