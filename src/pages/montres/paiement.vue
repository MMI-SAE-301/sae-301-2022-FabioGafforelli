<script setup lang="ts">
import MontreCarree from '@/components/MontreCarree.vue';
import Carte from '@/components/icones/carte.vue';
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
            
<br>
</div>
</div>
        </main>
</template>