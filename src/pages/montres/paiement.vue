<script setup lang="ts">
import MontreCarree from '@/components/MontreCarree.vue';
</script>

<template>
     <main clas="bg-red-700 grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <div class="grid grid-cols-2">
        <div class="">
            <MontreCarree class=" w-64" v-bind="montre" id="profil" />
        </div>
        <div>
            <h3 class="text-xl font-bold">
                Paiement par carte :
            </h3>
<br>
<h3 class="text-xl font-bold">
                Prix : 249€
            </h3>
            <RouterLink to="/montres/paiement">
            <button class="bg-bleuroi px-5 py-3 text-sm shadow-sm font-medium  text-blanc rounded-full hover:shadow-2xl hover:bg-bleuroi-100">Continuer</button>
        </RouterLink>
        </div>
        </div>
        </main>
</template>