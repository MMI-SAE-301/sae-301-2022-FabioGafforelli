<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
<div class="border bg-red-600">
    <button v-if="user" @pointerdown="supabase.auth.signOut()">
        Se déconnecter ({{user.email}})
    </button>
    <button class="text-white" v-else @pointerdown="supabase.auth.signIn({provider: 'google'})">
        Se connecter avec Google
    </button>
</div>
</template> 