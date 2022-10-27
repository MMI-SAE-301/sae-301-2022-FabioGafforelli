<script setup lang="ts">
import Login from '@/components/Login.vue';
import LoginFacebook from '@/components/LoginFacebook.vue';
import LoginGoogle from '@/components/LoginGoogle.vue';
import { supabase, user } from '@/supabase';

</script>

<template>
    <h1 class="text-center text-4xl font-bold text-bleuroi">SE CONNECTER ?</h1>
    <br>
    <div class="grid grid-cols-2">
    <div class="">
        <LoginGoogle />
    </div>
    <div>
        <LoginFacebook />
    </div>
    <div class="align-middle">
        <p class="text-center text-4xl font-bold text-bleuroi">- OU -</p>
    </div>
    <div class="grid grid-cols-1">
        <Login />
    </div>
</div>
</template>