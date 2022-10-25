<script setup lang="ts">
import Logo from "./Logo.vue";

</script>

<template>
    <header class=" bg-gradient-to-br from-blue-700 to-blue-900 drop-shadow-lg z-10 fixed top-0 left-0 right-0 px-5 lg:py-8 py-3">
        <a href="#content" class="sr-only focus:not-sr-only text-lg text-white"> Passez au contenu </a>
        <nav class=" lg:flex lg:justify-between items-center">
          <div class="flex justify-between items-center">
           <RouterLink to="/">		
           <Logo class="w-36" />
        </RouterLink> 	
          <span class="text-3xl cursor-pointer lg:hidden block w-8 h-8 mr-25  ">
            <span class="sr-only ">Menu</span>
          </span>
          </div>
          <ul class="lg:flex  gap-6 lg:items-center text-white text-xl font-algerian mx-6 py-4 hidden" >
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-white  " to="/configurer">Personnaliser</RouterLink>
            </li>
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-white  " to="/histoire">Société</RouterLink>
            </li>
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-white " to="/reglement">Economie</RouterLink>
            </li>
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm text-white font-museomoderno " to="/inscription">S'inscrire</RouterLink>
            </li>
            <li class="my-3">
              <RouterLink class="my-6 lg:px-4 xl:pt-2 xl:rounded-sm font-museomoderno text-white " to="/login">Se Connecter</RouterLink>
            </li>
          </ul>    
        </nav>
      </header>
    </template>
  
    