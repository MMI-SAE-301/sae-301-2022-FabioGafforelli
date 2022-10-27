<script setup lang="ts">
import MontreCarre from "@/components/MontreCarree.vue";
import type { Montre } from "@/types";
import { supabase, user } from '@/supabase';
import ListeMontres from '@/components/ListeMontres.vue';
import Login from "@/components/Login.vue";
import LineVue from "@/components/line.vue";
import MontreRonde from "@/components/MontreRonde.vue";
const exemples: Montre[]  = [{
  bracelet: "#FF0000",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
{
  bracelet: "#0c4039",
  boitier: "#FFFF00",
  ecran: "#FFFFFF",
},
];
const exemple: Montre[]  = [{
  bracelet: "#FF0000",
  boitier: "#FF00FF",
  ecran: "#FFFFFF",
},
{
  bracelet: "#0c4039",
  boitier: "#FFFF00",
  ecran: "#FFFFFF",
},
];
</script>
<template>
  <section>
 <div class="flex flex-row">
  <div class="basis-1/2">
    <img src="Montreaccueil.png" alt="">
  </div>
  <div class="basis-1/4">
    <img src="TiKTaK.png" alt="">
    <p class="font-bold"> Tik Tak, la montre 
connecte made in Pontarlier </p>

<p>
  Tik Tak, est la nouvelle marque de montre connectée sortie tout droit des ateliers Catinat, qui tiennent leur nom du fort qui a défendu Pontarlier en 1940
</p>
<p>
  Tik Tak est une édition limitée pour l’année 2022
</p>
<br>
<RouterLink to="/montres/personnalisation">
<button class="bg-bleuroi px-5 py-3 text-sm shadow-sm font-medium  text-blanc rounded-full hover:shadow-2xl hover:bg-bleuroi-100">Commencez l'expérience</button>
</RouterLink>
</div>
</div>
</section>
<section>
<div class="grid grid-cols-5 gap-4">
  <div class="..."></div>
  <div class="..."></div>
  <div class="..."></div>
  <div>
      <LineVue />
    </div>
    <div  class="...">
    <p class="text-bleuroi font-bold ">Les Différents modèles</p>
    </div>
  </div>
</section>
<br>
<br>
<section>
  <div class="grid grid-cols-3 gap-4">
  <div class="box-border h-96 w-96 p-16 border-4 bg-gris">
  <MontreCarre class="h-64 w-64 p-4" />
  <p class="font-bold">
    La Armand Guy
  </p>
  <p class="font-exo2">
    A partir de 249€
  </p>
</div>
<div class="..."></div>
<div class="box-border h-96 w-96 p-16 border-4 bg-gris">
  <MontreRonde class="h-64 w-64 p-4" />
  <p class="font-bold">
    La François Perrier
  </p>
  <p class="font-exo2">
    A partir de 249€ / A VENIR
  </p>
</div>
  </div>
</section>
<section>
 <div class="flex flex-row">
  <div class="basis-1/6"></div>
  <div class="basis-1/3">
    <img src="PourquoiMontreAccueil.jpg" alt="">
  </div>
  <div class="basis-1/3 pl-5">
    <p class="font-bold text-xl"> Pourquoi cette montre ? </p>
<p>
  La montre  Armand Guy est une montre connectée de la marque  TiK•TaK,</p>
<p>
  De forme rectangulaire, la forme basique d’une montre connectée, différents bracelet sont proposés ainsi qu’une multitude de boitier et d’écran!
</p>
<p>Cette montre tient son nom de Guy Armand, personnalité locale de Pontarlier connu pour avoir fondé en 1890 la distillerie “Armand Guy” créateur du célébre Pontarlier Anis qui a fait la renomée de la ville de Pontarlier.</p>
<RouterLink to="/montres/personnalisation">
  <br>
  <span class="animate-pulse">
<button class="bg-bleuroi px-5 py-3 text-sm shadow-sm font-medium  text-blanc border-full hover:shadow-2xl hover:bg-bleuroi-100">
   + Commencer la personnalisation
</button>
</span>
</RouterLink>
</div>
</div>
</section>
<br>
<section>
  <div class="">
  <div class=" flex justify-center">
    <h1 class="font-bold text-4xl text-bleuroi">TiK•TaK</h1>
  </div>
  <br>
  <div class="flex justify-center">
    <h2 class="font-bold text-lg">Quelques exemples de Montres personnalisés par les utilisateurs
</h2>
  </div>
  </div>
</section>
   <section>
    <h1 class="text-2xl">Exemples de Montres</h1>
    <div class="flex flex-wrap gap-4">
      <div class="w-64" v-for="montre in exemples">
          <MontreCarre class="w-64" v-bind="montre" />
      </div>
      <div class="w-64" v-for="montre in exemple">
          <MontreRonde class="w-64" v-bind="montre" />
      </div>
      </div>
      </section>
</template>