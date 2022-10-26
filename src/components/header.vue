<script setup lang="ts">
import Logo from './Logo.vue'
import { Bars3Icon } from "@heroicons/vue/20/solid";
import { supabase, user } from '@/supabase';
import { ref } from 'vue'
import Panier from './icones/panier.vue';

const menuOuvert = ref(false);

</script>

<template>
<header class=" bg-bleuroi top-0 drop-shadow-lg z-10 ">
    <a href="#content" class="sr-only focus:not-sr-only text-lg text-white"> Passez au contenu </a>
    <nav class=" lg:flex lg:justify-between items-center">
      <div class="flex justify-between items-center">
       <RouterLink to="/">
        <Logo class="w-36 h-24" />
           <h1 class="text-blanc text-xl font-bold lg:text-3xl">Tik - Tak</h1>
       </RouterLink>
      <span class="text-3xl cursor-pointer lg:hidden block w-8 h-8 mx-4  ">
        <Bars3Icon class="text-blanc"  aria-controls="menu"
        :aria-expanded="menuOuvert"
        @click="menuOuvert = !menuOuvert">
        </Bars3Icon>
        <span class="sr-only ">Menu</span>
      </span>
      </div>
      <Transition
        enter="transition duration-2000 ease-out"
        enterFrom="transform translate-x-full opacity-0"
        enterTo="transform translate-x-0 opacity-100"
        leave="transition duration-1750 ease-out"
        leaveFrom="transform  translate-x-0 opacity-100"
        leaveTo="transform translate-x-full opacity-0"
      >
      <ul id="menu" v-if="menuOuvert" class="lg:hidden bg-white w-full text- text-xl font-timmana  py-4 text-center" >
        <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc  " to="/montres/personnalisation">Personnalisation</RouterLink>
            </li>
            <li class="my-3" v-if="user">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/montres">Mes montres</RouterLink>
            </li>
            <li class="my-3" v-else>
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/montres/inspiration">Inspiration</RouterLink>
            </li>
            <li class="my-3" v-if="user">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/montres/panier">
                <Panier />
              </RouterLink>
            </li>
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/login">Se Connecter</RouterLink>
            </li>
      </ul>
      </Transition>
      <ul class="lg:flex  gap-6 lg:items-center text-white text-base font-algerian mx-6 py-4 hidden" >
        <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc  " to="/montres/personnalisation">Personnalisation</RouterLink>
            </li>
            <li class="my-3" v-if="user">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/montres">Mes montres</RouterLink>
            </li>
            <li class="my-3" v-else>
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/montres/inspiration">Inspiration</RouterLink>
            </li>
            <li class="my-3" v-if="user">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/montres/panier">
                <Panier />
              </RouterLink>
            </li>
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-blanc " to="/login">Se Connecter</RouterLink>
            </li>
      </ul>    
    </nav>
  </header>

</template>