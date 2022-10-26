<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
<div class="border bg-red-600">
    <button class="text-white" @pointerdown="supabase.auth.signIn({provider: 'google'})">
        Se connecter avec Google
    </button>
</div>
</template> 