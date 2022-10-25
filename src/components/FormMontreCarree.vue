<script setup lang="ts">
    import type { Montre } from "@/types"
    import { colors } from "@/types"
    import { ref } from "vue";
import MontreCarree from "./MontreCarree.vue";
    const props = defineProps<{
  data?: Montre;
  id?: string;
}>();

const montre = ref<Montre>(props.data ?? {});
</script>

<template>
    <div class="p-2">
        <ul class="flex gap-1">
            <li><a href="#profil">Profil</a></li>
            <li><a href="#dessus">Dessus</a></li>
        </ul>
        <div class="carousel w-64">
            <MontreCarree class="carousel-item w-64" v-bind="montre" id="profil" />
        </div>
        <FormKit type="form" v-model="montre">
        <FormKit name="bracelet" label="bracelet" value="#000000" type="select" :options="colors" />
        <FormKit name="boitier" label="boitier" value="#000000" type="select" :options="colors" />
        <FormKit name="ecran" label="ecran" value="#ffffff" type="select" :options="colors" />

        </FormKit>
    </div>
</template>