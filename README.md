# README

## Heroku Link

**https://limitless-sierra-18058.herokuapp.com**

### Versiones

* Ruby: ruby-2.6.6
* Rails 6.0.3.6

###

- [x] El diagrama de relaciones para los modelos propuestos es el siguiente.

![Imagen_relaciones_modelo_bookmarks](relaciones_bookmarks.png)

- [x] El CRUD para la administración de categorías, marcadores y tipos, se realizó con **scaffolds**.

- [x] Se define el endpoint **https://localhost:3000/retrieve/:category_id** para retornar un JSON con los datos de una categoría (incluyendo subcategorías y marcadores). El esquema json es el siguiente: 

*Parad *

Entregar un CRUD para la administración de Categorías, Marcador y Tipo.
3. El formulario para agregar Marcadores debe ser enviado a través de una petición
AJAX y antes de ser enviado debe pedir confirmación.
4. Crear un endpoint que retorne un JSON con los datos de una categoría (debe incluir
subcategorías y marcadores). El esquema del JSON de salida debe quedar a su
criterio.
5. Inicialmente, nuestro sistema debe contener al menos 20 registros predefinidos.
6. Mostrar un gráfico de torta que muestre cómo están distribuidos los tipos de
marcadores.