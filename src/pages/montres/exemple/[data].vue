<script setup lang="ts">
import FormMontreCarree from "@/components/FormMontreCarree.vue";
defineProps<{
  data: string;
}>();
</script>
<template>
  <FormMontreCarree :data="JSON.parse(data)" />
</template>