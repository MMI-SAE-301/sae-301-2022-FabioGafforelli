<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
<div>
    <button @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
        Se connecter avec Facebook
    </button>
</div>
</template> 