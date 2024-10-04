USE pokemon;

-- 1. Buscar Nombre de la ciudad con su region

SELECT C.nombre_ciudad, R.nombre_region
FROM ciudades C
INNER JOIN regiones R ON C.region_id = R.region_id;

-- 2. Buscar pelicula con la duracion, genero y entrenador 

SELECT P.nombre_pelicula,P.duracion,P.genero,E.nombre
FROM peliculas P
INNER JOIN entrenadores_peliculas EP ON P.pelicula_id = EP.pelicula_id
INNER JOIN entrenadores E ON EP.entrenador_id = E.entrenador_id;

-- 3. Buscar Gimnasio con las medallas otorgadas, ciudad, region, nombre del entrenador y tipo

SELECT G.nombre_gimnasio, G.medalla_otorgada, C.nombre_ciudad, R.nombre_region, E.nombre, T.nombre_tipo
FROM gimnasios G
INNER JOIN ciudades C ON G.gimnasio_id = C.ciudad_id
INNER JOIN regiones R ON C.ciudad_id = R.region_id
INNER JOIN entrenadores E ON G.gimnasio_id = E.entrenador_id
INNER JOIN tipos T ON G.gimnasio_id = T.tipo_id;

-- 4. Buscar Entrenador, edad, medallas obtenidas, ciudad y pokemon

SELECT E.nombre, E.edad, E.medallas_obtenidas, C.nombre_ciudad, P.Nombre
FROM entrenadores E
RIGHT JOIN ciudades C ON E.entrenador_id = C.ciudad_id
RIGHT JOIN pokemon P ON E.entrenador_id = p.Id_pokemon;

-- 5. Buscar objetos con sus respectivos pokemones

SELECT O.nombre_objeto, O.tipo_objeto, O.efecto, P.Nombre
FROM objetos O
INNER JOIN pokemon P ON O.objeto_id = P.Id_pokemon;

-- 6. Buscar Pokemon por nombre, ataque, defensa, velocidad, vida, generacion (0 si no tiene y 1 es que si tiene igual que evolucion)
-- habilidad , region, ciudad, entrenador, movimiento y tipo

SELECT P.Nombre, P.Numero_poquedex, P.ataque_base, P.defensa_base, P.velocidad_base,
P.hp_base, P.generacion, P.evolucion, H.nombre_habilidad, R.nombre_region, C.nombre_ciudad,
E.nombre, M.nombre_movimiento, T.nombre_tipo
FROM pokemon P
INNER JOIN habilidades H ON P.Id_pokemon = H.habilidad_id
INNER JOIN regiones R ON P.Id_pokemon = R.region_id
INNER JOIN ciudades C ON R.region_id = C.ciudad_id
INNER JOIN entrenadores E ON P.Id_pokemon = E.entrenador_id
INNER JOIN movimientos M ON P.Id_pokemon = M.movimiento_id
INNER JOIN tipos T ON P.Id_pokemon = T.tipo_id;

-- 7. Ordenar alfabeticamente peliculas
SELECT P.nombre_pelicula, P.duracion, P.genero
FROM peliculas P
INNER JOIN entrenadores_peliculas EP ON P.pelicula_id = EP.pelicula_id
ORDER BY P.nombre_pelicula ASC;
-- 8. Buscar pokemon con ciertos tipos

SELECT P.Nombre, T.nombre_tipo
FROM pokemon P
INNER JOIN tipos T ON P.Id_pokemon = T.tipo_id
WHERE T.nombre_tipo IN ("Agua" , "Electrico" , "Fuego" , "Hielo") ;


-- 9. Ordenar descendiente el nombre de los entrenadores

SELECT E.nombre, E.edad, E.medallas_obtenidas, C.nombre_ciudad, P.Nombre
FROM entrenadores E
INNER JOIN ciudades C ON E.entrenador_id = C.ciudad_id
INNER JOIN pokemon P ON E.entrenador_id = p.Id_pokemon
ORDER BY E.nombre DESC;

-- 10. Busacar peliculas donde la duracion sea igual o mayor a 75

SELECT P.nombre_pelicula,P.duracion,P.genero,E.nombre
FROM peliculas P
INNER JOIN entrenadores_peliculas EP ON P.pelicula_id = EP.pelicula_id
INNER JOIN entrenadores E ON EP.entrenador_id = E.entrenador_id
WHERE P.duracion >= 75;

-- 11 Mostrar todos los pokemones que tengan evolucion
SELECT P.Nombre, P.evolucion
FROM pokemon P
WHERE P.evolucion = 1;

-- 12 Mostrar todos los pokemones que no tengan evolucion
SELECT P.Nombre, P.evolucion
FROM pokemon P
WHERE P.evolucion = 0;

-- 13 Mostrar todos los pokemones, tipos, entrenadores, peliculas, gimnasios y ciudades
SELECT 
(SELECT COUNT(P.Nombre) FROM pokemon P) AS total_pokemones,
(SELECT COUNT(T.nombre_tipo) FROM tipos T) AS total_tipos,
(SELECT COUNT(E.nombre) FROM entrenadores E) AS total_entrenadores,
(SELECT COUNT(P.nombre_pelicula) FROM peliculas P) AS total_peliculas,
(SELECT COUNT(G.nombre_gimnasio) FROM gimnasios G) AS total_gimnasios,
(SELECT COUNT(C.nombre_ciudad) FROM ciudades C) AS total_ciudades;

-- 14 Promedio de ataque, defensa, velocidad y vida

SELECT  
(SELECT AVG(P.ataque_base) FROM pokemon P) AS promedio_ataque,
(SELECT AVG(P.defensa_base) FROM pokemon P) AS promedio_defensa,
(SELECT AVG(P.velocidad_base) FROM pokemon P) AS promedio_velocidad,
(SELECT AVG(P.hp_base) FROM pokemon P) AS promedio_vida;

-- 15 Entrenador con mas medallas

SELECT E.Nombre, E.medallas_obtenidas
FROM entrenadores E
ORDER BY E.medallas_obtenidas DESC
LIMIT 1;

-- 16 Las 4 peliculas que menos duran de Pokemon

SELECT P.nombre_pelicula, P.duracion
FROM peliculas P
ORDER BY P.duracion
LIMIT 4;

-- 17 Mostrar el pokemon, gimnasio y entrenador que pertenecen a ciudad verde

SELECT P.Nombre,  G.nombre_gimnasio, E.nombre, C.nombre_ciudad
FROM pokemon P
INNER JOIN regiones R ON P.Id_pokemon = R.region_id
INNER JOIN ciudades C ON R.region_id = C.ciudad_id
INNER JOIN gimnasios G ON G.gimnasio_id = C.ciudad_id
INNER JOIN entrenadores E on E.entrenador_id = C.ciudad_id
WHERE C.nombre_ciudad = 'Ciudad Verde';

-- 18. Mostrar todos los objetos que sean de tipo baya y curacion
SELECT O.nombre_objeto, O.tipo_objeto
FROM objetos O
WHERE O.tipo_objeto IN ("Baya", "Curación");


