<script setup lang="ts">
import MontreCarree from '@/components/MontreCarree.vue';
import Carte from '@/components/icones/carte.vue';
import Espece from '@/components/icones/espece.vue';
</script>

<template>
     <main clas="bg-red-700 grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <div class="grid grid-cols-2">
        <div class="">
            <MontreCarree class=" w-64"  id="profil" />
        </div>
        <div>
            <h3 class="text-xl font-bold">
                Choix du mode de paiement :
            </h3>
            <RouterLink to="/montres/paiementcarte">
            <button class="bg-blanc px-5 py-3 text-sm shadow-sm font-medium  text-bleuroi rounded-full hover:shadow-2xl hover:bg-bleuroi-100">
                <Carte class=""/>
                <h3>Par carte bancaire</h3>
            </button>
        </RouterLink>
            <button class="bg-blanc px-5 py-3 text-sm shadow-sm font-medium  text-bleuroi rounded-full hover:shadow-2xl hover:bg-bleuroi-100">
                <Espece class=""/>
                <h3>Par espèce</h3>
            </button>

<br>
</div>
</div>
        </main>
</template>