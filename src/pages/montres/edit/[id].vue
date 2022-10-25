<script setup lang="ts">
import FormMontreCarree from '@/components/FormMontreCarree.vue';

defineProps<{
  id: string;
}>();
</script>
<template>
  <FormMontreCarree :id="id" />
</template>