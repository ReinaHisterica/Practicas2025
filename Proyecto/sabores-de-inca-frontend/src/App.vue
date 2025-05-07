<!--
<template>  // <-- Esto es la parte visual; dicho de otra forma, es el HTML que voy a ver. --<
  <div>
    <h1>🍴 Sabors d'Inca - Vista en Vue</h1>
    <p>Esta es la interfaz visual del proyecto</p>
  </div>
</template>

-->
<!--
<script> 
// Aquí se define la lógica del componente. Supongo que es tipo el <script> de los html en los que se mete js.
export default { // Componente de Vue.
  name: 'App' // Nombre que se le dará al componente. Creo que es como una variable; se puede refrerenciar en otros lugares.
}

</script>

<style scoped> /* Estilos. */
h1 {
  color: #4CAF50;
}
</style>
-->
<template>
  <div class="p-4">
    <h1 class="text-2xl font-bold mb-4">Restaurantes</h1>
    
    <div v-if="loading" class="text-gray-500">Cargando restaurantes...</div>
    <div v-else-if="error" class="text-red-500">Error: {{ error }}</div>
    
    <ul v-else class="space-y-2">
      <li v-for="restaurante in restaurantes" :key="restaurante.idRestaurante" class="p-4 border rounded shadow">
        <h2 class="text-lg font-semibold">{{ restaurante.Nombre }}</h2>
        <!-- <p>Tipo de cocina: {{ restaurante.tipo_cocina }}</p> -->
        <p>Dirección: {{ restaurante.Direccion }}</p>
      </li>
    </ul>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

const restaurantes = ref([])
const loading = ref(true)
const error = ref(null)

onMounted(async () => {
  try {
    const response = await fetch('http://localhost:8000/api/restaurantes')

    if (!response.ok) {
      throw new Error(`HTTP ${response.status}`)
    }

    const data = await response.json()
    restaurantes.value = data
  } catch (err) {
    error.value = err.message
  } finally {
    loading.value = false
  }
})
</script>

<style scoped>
/* Puedes añadir estilos si quieres */
</style>
