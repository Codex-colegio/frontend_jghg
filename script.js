fetch('http://api.localhost/api/usuarios')
  .then(response => response.json())
  .then(data => {
    console.log('Datos de alumnos:', data);
    // Aquí podrías renderizar los datos en una tabla, cards, etc.
  })
  .catch(error => console.error('Error:', error));
