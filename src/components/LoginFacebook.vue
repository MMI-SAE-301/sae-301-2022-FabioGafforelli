<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
<div class="flex justify-center  ">
                <div class=" mt-auto p-16 border-neutral-50 border-2 ">
    <button @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
        Se connecter avec Facebook
    </button>
</div>
</div>
</template> 