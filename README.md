

# Proyecto de Base de Datos Pokémon

Este proyecto consiste en la creación y gestión de una base de datos para almacenar y consultar información sobre Pokémon, entrenadores, ciudades y películas. La base de datos está diseñada para facilitar el acceso y la manipulación de datos relacionados con el universo Pokémon.

## Módulo 1: Creación de la Base de Datos

Se ha creado una base de datos llamada `pokemon` que incluye las siguientes tablas:

- **Regiones**: Información sobre las distintas regiones en el mundo Pokémon.
- **Ciudades**: Detalles de las ciudades dentro de cada región.
- **Tipos**: Clasificación de los Pokémon según sus tipos (agua, fuego, etc.).
- **Entrenadores**: Datos de los entrenadores Pokémon.
- **Pokémon**: Información detallada sobre cada Pokémon.
- **Entrenadores_Pokémon**: Relación entre entrenadores y sus Pokémon.
- **Pokemon_Tipos**: Relación entre Pokémon y sus tipos.
- **Fortalezas**: Fortalezas de los tipos de Pokémon.
- **Debilidades**: Debilidades de los tipos de Pokémon.
- **Habilidades**: Habilidades especiales de los Pokémon.
- **Pokemon_Habilidades**: Relación entre Pokémon y sus habilidades.
- **Movimientos**: Movimientos que pueden realizar los Pokémon.
- **Pokemon_Movimientos**: Relación entre Pokémon y sus movimientos.
- **Pokemon_Regiones**: Relación entre Pokémon y sus regiones.
- **Gimnasios**: Información sobre los gimnasios Pokémon.
- **Objetos**: Objetos que pueden usar los Pokémon.
- **Pokemon_Objetos**: Relación entre Pokémon y objetos.
- **Películas**: Información sobre las películas de Pokémon.
- **Entrenadores_Peliculas**: Relación entre entrenadores y películas.

## Módulo 2: Inserción de Datos

Se han insertado datos en las tablas creadas, permitiendo la realización de diversas consultas sobre la información.

## Módulo 3: Consultas SQL

A continuación se presentan algunas de las consultas SQL implementadas para extraer información de la base de datos:

1. **Buscar nombre de la ciudad con su región**:
   ```sql
   SELECT C.nombre_ciudad, R.nombre_region
   FROM ciudades C
   INNER JOIN regiones R ON C.region_id = R.region_id;

2. **Buscar película con la duración, género y entrenador**:
    ```sql
    SELECT P.nombre_pelicula, P.duracion, P.genero, E.nombre
    FROM peliculas P
    INNER JOIN entrenadores_peliculas EP ON P.pelicula_id = EP.pelicula_id
    INNER JOIN entrenadores E ON EP.entrenador_id = E.entrenador_id;

3. **Buscar gimnasio con las medallas otorgadas, ciudad, región, nombre del entrenador y tipo**:
    ```sql
    SELECT G.nombre_gimnasio, G.medalla_otorgada, C.nombre_ciudad, R.nombre_region, E.nombre, T.nombre_tipo
    FROM gimnasios G
    INNER JOIN ciudades C ON G.gimnasio_id = C.ciudad_id
    INNER JOIN regiones R ON C.ciudad_id = R.region_id
    INNER JOIN entrenadores E ON G.gimnasio_id = E.entrenador_id
    INNER JOIN tipos T ON G.gimnasio_id = T.tipo_id;

4. **Obtener entrenadores que tienen Pokémon de un tipo específico**:
    ```sql
    SELECT E.nombre AS Entrenador, T.nombre_tipo AS Tipo
    FROM Entrenadores E
    INNER JOIN Entrenadores_Pokemon EP ON E.entrenador_id = EP.entrenador_id
    INNER JOIN Pokemon P ON EP.Id_pokemon = P.Id_pokemon
    INNER JOIN Pokemon_Tipos PT ON P.Id_pokemon = PT.pokemon_id
    INNER JOIN Tipos T ON PT.tipo_id = T.tipo_id
    WHERE T.nombre_tipo = 'Agua';


## Instalación

1. Clona el repositorio:
   ```bash
   git clone <https://github.com/Kevinromero04/Base-de-datos-Pokemon.git>
   ```
2. Accede al directorio del proyecto:
   ```bash
   cd <Base-de-datos-Pokemon>
   ```
3. Crea la base de datos y ejecuta los scripts SQL necesarios para crear las tablas e insertar datos.

## Uso

Puedes utilizar cualquier cliente de base de datos compatible con SQL para conectarte a la base de datos y ejecutar consultas.

## Contribuciones

Si deseas contribuir a este proyecto, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
## Contacto

Para más información, contacta a [Micorreo](kevinromerorincon7@gmail.com).
Para más información, contacta a [Micorreo](santiagopinzoncruz@gmail.com).
---
```

### Notas
- Personaliza el contenido según tus necesidades, incluyendo el enlace al repositorio y cualquier información adicional que consideres relevante.
- Asegúrate de que el formato del código SQL sea legible en tu archivo README. Markdown debería manejarlo bien.


