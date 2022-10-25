<script setup lang="ts">
    import type { Montre } from "@/types" 
    import { colors } from "@/types"
    import { supabase } from "@/supabase";
    import { ref } from "vue";
    import { useRouter } from "vue-router";
import FormKitListColors from "./FormKitListColors.vue";
import MontreCarree from "./MontreCarree.vue";
const router = useRouter();
    const props = defineProps<{
  data?: Montre;
  id?: string;
}>();
const montre = ref<Montre>(props.data ?? {});
    async function upsertMontre(dataForm, node) {
     const { data, error } = await supabase.from("Basket").upsert(dataForm);
     if (error) node.setErrors([error.message])
    else {
            node.setErrors([]);
            router.push({ name: "montre-edit-id", params: { id: data[0].id } });
        }
    }
</script>

<template>
    <div class="p-2">
        <div class="carousel w-64">
            <MontreCarree class="carousel-item w-64" v-bind="montre" />

        </div>
        <FormKit type="form" v-model="montre">
            <FormKitListColors name="bracelet" label="bracelet" />
            <FormKitListColors name="boitier" label="boitier" />
            <FormKitListColors name="ecran" label="Informations de l'écran" />

        </FormKit>
    </div>
</template>