<template class="bg-blue-700">
  <nav>
    <Header />
    <ul>
      <li>
        <router-link class="text-red-600 underline" to="/">
          lien vers
          <code class="font-mono">/src/pages/index.vue</code>
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/montres/new">
          lien vers
          <code class="font-mono">/src/pages/new.vue</code>
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/montres/liste">
          lien vers
          <code class="font-mono">/src/pages/liste.vue</code>
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/login">
          lien vers
          <code class="font-mono">/src/pages/login.vue</code>
        </router-link>
      </li>
    </ul>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
import Header from "./components/header.vue";
import Login from "./components/Login.vue";
</script>
