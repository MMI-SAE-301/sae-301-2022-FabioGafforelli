<script setup lang="ts">
import MontreCarree from '@/components/MontreCarree.vue';
</script>

<template>
     <main clas="bg-red-700 grid grid-flow-row-dense grid-cols-[repeat(auto-fit,minmax(350px,1fr))] gap-5  lg:mx-10">
    <div class="grid grid-cols-2">
        <div class="">
            <MontreCarree class=" w-64"  id="profil" />
        </div>
        <div>
            <h3 class="text-xl font-bold">
                Paiement par carte :
            </h3>
<br>
<FormKit type="form">
    <div class="grid grid-cols-2">
    <FormKit
  type="text"
  label="Nom du titulaire de la carte"
  placeholder="Nom du titulaire de la carte"
value=""
/>
    <FormKit
  type="number"
  label="Numéro de carte"
  placeholder="Numéro de carte"
value=""
/>
</div>
<div class="grid grid-cols-2">
<FormKit
  type="month"
  label="Mois et annéed'expiration"
  name="mois et année d'expiration"
  value=""
/>
<FormKit
  type="number"
  label="Numéro de sécurité"
  placeholder="Numéro de sécurité"
value=""
/>
</div>
</FormKit>
<h3 class="text-xl font-bold">
                Prix : 249€
            </h3>
            <RouterLink to="/montres/">
            <button class="bg-bleuroi px-5 py-3 text-sm shadow-sm font-medium  text-blanc rounded-full hover:shadow-2xl hover:bg-bleuroi-100">Payer</button>
        </RouterLink>
        </div>
        </div>
        </main>
</template>