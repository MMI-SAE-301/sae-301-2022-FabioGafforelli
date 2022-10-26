<script setup lang="ts">
import { supabase, user } from '../supabase';
import LogoGoogle from './LogoGoogle.vue';
</script>
<template>
<div class="flex justify-center  ">
                <div class=" mt-auto p-16 border-neutral-50 border-4 ">
    <button class="text-white" @pointerdown="supabase.auth.signIn({provider: 'google'})">
        <LogoGoogle />
        Se connecter avec Google
    </button>
</div>
</div>
</template> 