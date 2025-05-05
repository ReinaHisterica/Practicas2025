export default {
    name: 'ListaRestaurantes',
    data() {
      return {
        restaurantes: []
      };
    },
    mounted() {
      fetch('http://localhost:8000/api/restaurantes')
        .then(res => res.json())
        .then(data => {
          this.restaurantes = data;
        })
        .catch(error => {
          console.error('Error al obtener restaurantes:', error);
        });
    }
  };
  