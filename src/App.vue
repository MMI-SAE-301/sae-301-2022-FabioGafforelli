<template class="bg-blue-700">
  <nav>
    <Header />
  
  </nav>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
  <Footer />
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
import Footer from "./components/footer.vue";
import Header from "./components/header.vue";
import Login from "./components/Login.vue";
</script>
