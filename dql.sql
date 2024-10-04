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

-- 19 Lista de Pokemon y su HP maximo
SELECT 
    P.Nombre AS Nombre_Pokemon,
    MAX(P.hp_base) AS HP_Maximo
FROM 
    Pokemon P
GROUP BY 
    P.Nombre;
-- 20 Obtener entrenadores que tienen Pokemon de un tipo especifico
SELECT 
    E.nombre AS Entrenador,
    T.nombre_tipo AS Tipo
FROM 
    Entrenadores E
INNER JOIN 
    Entrenadores_Pokemon EP ON E.entrenador_id = EP.entrenador_id
INNER JOIN 
    Pokemon P ON EP.Id_pokemon = P.Id_pokemon
INNER JOIN 
    Pokemon_Tipos PT ON P.Id_pokemon = PT.pokemon_id
INNER JOIN 
    Tipos T ON PT.tipo_id = T.tipo_id
WHERE 
    T.nombre_tipo = 'Agua';
    
    
-- 21 Filtrar los pokemones por Defensa, En este caso filtra los pokemones que tengan una defensa menor o igual a 50.
SELECT * FROM 
Pokemon WHERE defensa_base <= 50;

-- 22 Este saca el promedio de las habilidades basicas de cada pokemon
SELECT *,
(ataque_base +
defensa_base +
velocidad_base)/3 as Promedio_Habilidades
FROM Pokemon;

-- 23 Esta Seleccion lo que hacer es añadir tanto el promedio de las habilidades de cada pokemon
-- Como darle una asignacion de poder a cada pokemon que define si el pokemon tiene un poder alto o bajo

SELECT *,
CASE WHEN Tabla_base.Promedio_Habilidades >= 50 THEN 'Poder_Alto' ELSE 'Poder_bajo' END as Poder
FROM

(SELECT *,
(ataque_base +
defensa_base +
velocidad_base)/3 as Promedio_Habilidades
FROM Pokemon) as Tabla_base;

-- 24 Esta busqueda solo limita las busquedas
SELECT *  FROM Pokemon limit 20;

-- 25 Este busca un pokemon por el id
SELECT *  FROM Pokemon WHERE Id_pokemon = 10;

-- 26 Este busca todos los pokemones que son de una generacion especifica
SELECT *  FROM Pokemon WHERE generacion = 2;

-- 27 busqueda mas especifica donde cumple dos condiones ser de una generacion especifica y defensa especifica
SELECT *  FROM Pokemon WHERE generacion = 2 AND defensa_base = 100;


-- 28 busqueda donde busca pokemones que sean de una generacion o que tengan un ataque especifico
SELECT *  FROM Pokemon WHERE generacion = 2 OR ataque_base < 50;

-- 29 Busca todos los pokemones pero solo se odtienen Nombre y su generacion.
SELECT Nombre,generacion  FROM Pokemon;

-- 30 Este busqueda agrupa los pokemones que tiene cada tipo
SELECT 
    COUNT(*) AS cantidad_pokemon,
    T.nombre_tipo
FROM Pokemon P
INNER JOIN Pokemon_Tipos PT ON P.Id_pokemon = PT.pokemon_id
INNER JOIN Tipos T ON PT.tipo_id = T.tipo_id 
GROUP BY T.nombre_tipo
ORDER BY T.nombre_tipo;

-- 31 Realiza la busqueda de los pokemones con sus tipos y sus Debilidades.
SELECT 
    P.Nombre AS Nombre,
    P.generacion AS Generacion,
    T.nombre_tipo AS Tipo,
    TD.nombre_tipo AS Debilidad
FROM 
    Pokemon P
INNER JOIN 
    Pokemon_Tipos PT ON P.Id_pokemon = PT.pokemon_id
INNER JOIN 
    Tipos T ON PT.tipo_id = T.tipo_id 
LEFT JOIN 
    Debilidades D ON T.tipo_id = D.tipo_id 
LEFT JOIN 
    Tipos TD ON D.tipo_debil_contra = TD.tipo_id;
    
 -- 32 Genera la misma busqueda pero se le añade la fortaleza y se ordena
SELECT 
    P.Nombre AS Nombre,
    P.generacion AS Generacion,
    T.nombre_tipo AS Tipo,
    TD.nombre_tipo AS Debilidad,
    TF.nombre_tipo AS Fortaleza
FROM 
    Pokemon P
INNER JOIN 
    Pokemon_Tipos PT ON P.Id_pokemon = PT.pokemon_id
INNER JOIN 
    Tipos T ON PT.tipo_id = T.tipo_id 
LEFT JOIN 
    Debilidades D ON T.tipo_id = D.tipo_id  
LEFT JOIN 
    Tipos TD ON D.tipo_debil_contra = TD.tipo_id  
LEFT JOIN 
    Fortalezas F ON T.tipo_id = F.tipo_id  
LEFT JOIN 
    Tipos TF ON F.tipo_fuerte_contra = TF.tipo_id  
ORDER BY 
    P.Nombre;  
    
-- 33 Este busca las regiones que tengan cierta cantidad de ciudades en ella.
SELECT 
    COUNT(*) AS Cantidad_Ciudades,
    R.nombre_region
FROM Regiones R
INNER JOIN Ciudades C ON R.region_id = C.region_id
GROUP BY R.nombre_region
HAVING Cantidad_Ciudades > 6;

-- 34 Buscar todos los pokemones con su movimiento y sacar los que tengan mas de cierto punto de potencia
SELECT 
P.Nombre,
M.nombre_movimiento,
M.potencia,
M.puntos_poder,
T.nombre_tipo
FROM Pokemon P
INNER JOIN Pokemon_Movimientos PM ON P.Id_pokemon = PM.pokemon_id
INNER JOIN Movimientos M ON PM.movimiento_id = M.movimiento_id
INNER JOIN Tipos T ON M.tipo_id = T.tipo_id
HAVING potencia > 50;

-- 35 Me trae el pokemon con mas ataque
SELECT 
    P.Nombre AS Nombre_Pokemon,
    P.ataque_base AS Ataque
FROM 
    Pokemon P
ORDER BY 
    P.ataque_base DESC
LIMIT 1;

-- 36 Me dice cuantos pokemones tiene cada generacion
SELECT 
    P.generacion AS Generacion,
    COUNT(P.Id_pokemon) AS Cantidad_Pokemon
FROM 
    Pokemon P
GROUP BY 
    P.generacion;
    
-- 37 Listar los objetos y cuantos Pokemon pueden usarlos
SELECT 
    O.nombre_objeto AS Objeto,
    COUNT(PO.pokemon_id) AS Cantidad_Pokemon
FROM 
    Objetos O
LEFT JOIN 
    Pokemon_Objetos PO ON O.objeto_id = PO.objeto_id
GROUP BY 
    O.nombre_objeto;


-- 38 Obtener la edad promedio de los entrenadores
SELECT 
    AVG(E.edad) AS Edad_Promedio
FROM 
    Entrenadores E;


-- 39 Obtener la ciudad con mas entrenadores
SELECT 
    C.nombre_ciudad AS Ciudad,
    COUNT(E.entrenador_id) AS Cantidad_Entrenadores
FROM 
    Ciudades C
LEFT JOIN 
    Entrenadores E ON C.ciudad_id = E.ciudad_origen
GROUP BY 
    C.nombre_ciudad
ORDER BY 
    Cantidad_Entrenadores DESC
LIMIT 1;

-- 40 Obtener la ciudad con mas entrenadores
SELECT 
    P.Nombre AS Nombre_Pokemon,
    M.nombre_movimiento AS Movimiento
FROM 
    Movimientos M
INNER JOIN 
    Pokemon_Movimientos PM ON M.movimiento_id = PM.movimiento_id
INNER JOIN 
    Pokemon P ON PM.pokemon_id = P.Id_pokemon
WHERE 
    M.nombre_movimiento = 'Impactrueno';  -- Cambia 'Tiro Fuego' por el movimiento deseado
