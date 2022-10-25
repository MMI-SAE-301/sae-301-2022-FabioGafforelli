<script setup lang="ts">
import LoginFacebook from '@/components/LoginFacebook.vue';
import LoginGoogle from '@/components/LoginGoogle.vue';
import { supabase, user } from '@/supabase';

</script>

<template>
    <h1 class="text-center">SE CONNECTER ?</h1>
    <br>
    <div class="grid grid-cols-2">
        <LoginGoogle />
        <LoginFacebook />
    </div>
</template>