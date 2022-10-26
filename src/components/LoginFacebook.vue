<script setup lang="ts">
import { supabase, user } from '../supabase';
import LogoFacebook from './LogoFacebook.vue';
</script>
<template>
<div class="flex justify-center  ">
                <div class=" mt-auto p-16 border-neutral-50 border-4 ">
    <button @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
        <LogoFacebook />
        Se connecter avec Facebook
    </button>
</div>
</div>
</template> 