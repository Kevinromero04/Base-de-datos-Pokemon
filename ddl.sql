CREATE DATABASE IF NOT EXISTS pokemon;

USE pokemon;


-- Tabla de Regiones
CREATE TABLE IF NOT EXISTS Regiones (
    region_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada región
    nombre_region VARCHAR(100) NOT NULL  -- Nombre de la región (e.g., Kanto, Johto, Hoenn)
);

-- Tabla de Ciudades
CREATE TABLE IF NOT EXISTS Ciudades (
    ciudad_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada ciudad
    nombre_ciudad VARCHAR(100) NOT NULL,  -- Nombre de la ciudad o gimnasio
    region_id INT,  -- Relación con la región
    FOREIGN KEY (region_id) REFERENCES Regiones(region_id)  -- Clave foránea que referencia a Regiones
);

-- Tabla de Tipos
CREATE TABLE IF NOT EXISTS Tipos (
    tipo_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada tipo
    nombre_tipo VARCHAR(50) NOT NULL  -- Nombre del tipo (e.g., Fuego, Agua, Eléctrico)
);

-- Tabla de Entrenadores
CREATE TABLE IF NOT EXISTS Entrenadores (
    entrenador_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada entrenador
    nombre VARCHAR(100) NOT NULL,                  -- Nombre del entrenador
    edad INT NOT NULL,                             -- Edad del entrenador
    ciudad_origen INT,                    -- Ciudad o región de origen
    medallas_obtenidas INT DEFAULT 0,               -- Número de medallas obtenidas
    FOREIGN KEY (ciudad_origen) REFERENCES Ciudades(ciudad_id)
);

-- Tabla de Pokemon
CREATE TABLE IF NOT EXISTS Pokemon(
    Id_pokemon INT AUTO_INCREMENT PRIMARY KEY,                    -- Identificador 
    Numero_poquedex INT NOT NULL,                     -- Numero en el que está ubicado el Pokémon en la Pokédex
    Nombre VARCHAR(20) NOT NULL,
    ataque_base INT,                               -- Estadística base de ataque
    defensa_base INT,                              -- Estadística base de defensa
    velocidad_base INT,                            -- Estadística base de velocidad
    hp_base INT,                                   -- Estadística base de puntos de salud (HP)
    generacion INT,
);

CREATE TABLE IF NOT EXISTS Entrenadores_Pokemon(
    Id_pokemon INT,
    entrenador_id INT,
    PRIMARY KEY (Id_pokemon,entrenador_id),
    FOREIGN KEY (Id_pokemon) REFERENCES Pokemon(Id_pokemon),
    FOREIGN KEY (entrenador_id) REFERENCES Entrenadores(entrenador_id);
);

-- POKEMONES Y TIPOS
CREATE TABLE IF NOT EXISTS Pokemon_Tipos(
    pokemon_id INT,  -- ID del Pokémon que consume
    tipo_id INT,
    PRIMARY KEY (pokemon_id,tipo_id),
	FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id)
);

-- Tabla de Fortalezas
CREATE TABLE IF NOT EXISTS Fortalezas (
    tipo_id INT,  -- Tipo que tiene fortalezas
    tipo_fuerte_contra INT,  -- Tipo contra el cual es fuerte
    PRIMARY KEY (tipo_id, tipo_fuerte_contra),  -- Clave primaria compuesta
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id),  -- Clave foránea que referencia a Tipos
    FOREIGN KEY (tipo_fuerte_contra) REFERENCES Tipos(tipo_id)  -- Clave foránea que referencia a Tipos (contra quién es fuerte)
);

-- Tabla de Debilidades
CREATE TABLE IF NOT EXISTS Debilidades (
    tipo_id INT,  -- Tipo que tiene debilidades
    tipo_debil_contra INT,  -- Tipo contra el cual es débil
    PRIMARY KEY (tipo_id, tipo_debil_contra),  -- Clave primaria compuesta
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id),  -- Clave foránea que referencia a Tipos
    FOREIGN KEY (tipo_debil_contra) REFERENCES Tipos(tipo_id)  -- Clave foránea que referencia a Tipos (contra quién es débil)
);

-- Tabla de Habilidades
CREATE TABLE IF NOT EXISTS Habilidades (
    habilidad_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada habilidad
    nombre_habilidad VARCHAR(100) NOT NULL,  -- Nombre de la habilidad
    descripcion_efecto TEXT NOT NULL  -- Descripción del efecto de la habilidad
);
-- Tabla de relación entre Habilidades y Pokémon
CREATE TABLE IF NOT EXISTS Pokemon_Habilidades (
    pokemon_id INT,  -- ID del Pokémon que tiene la habilidad
    habilidad_id INT,  -- ID de la habilidad
    PRIMARY KEY (pokemon_id, habilidad_id),  -- Clave primaria compuesta por el Pokémon y la habilidad
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),  -- Clave foránea que referencia a Pokémon
    FOREIGN KEY (habilidad_id) REFERENCES Habilidades(habilidad_id)  -- Clave foránea que referencia a Habilidades
);

-- Tabla de Movimientos
CREATE TABLE IF NOT EXISTS Movimientos (
    movimiento_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada movimiento
    nombre_movimiento VARCHAR(100) NOT NULL,  -- Nombre del movimiento
    tipo_movimiento VARCHAR(50) NOT NULL,  -- Tipo de movimiento (físico, especial, estado)
    potencia INT,  -- Potencia del movimiento (puede ser NULL si no aplica)
    puntos_poder INT NOT NULL,  -- Puntos de poder (PP)
    tipo_id INT,  -- Relación con la entidad Tipos (fuego, agua, eléctrico, etc.)
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id)  -- Clave foránea que relaciona con Tipos
);

-- Tabla de relación entre Movimientos y Pokémon
CREATE TABLE IF NOT EXISTS Pokemon_Movimientos (
    pokemon_id INT,  -- ID del Pokémon que puede aprender el movimiento
    movimiento_id INT,  -- ID del movimiento
    PRIMARY KEY (pokemon_id, movimiento_id),  -- Clave primaria compuesta por el Pokémon y el movimiento
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),  -- Clave foránea que referencia a Pokémon
    FOREIGN KEY (movimiento_id) REFERENCES Movimientos(movimiento_id)  -- Clave foránea que referencia a Movimientos
);

-- Tabla de relación entre Pokémon y Regiones (Pokémon nativos)
CREATE TABLE IF NOT EXISTS Pokemon_Regiones (
    pokemon_id INT,  -- ID del Pokémon nativo de la región
    region_id INT,  -- ID de la región
    PRIMARY KEY (pokemon_id, region_id),  -- Clave primaria compuesta
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),  -- Clave foránea que referencia a Pokémon
    FOREIGN KEY (region_id) REFERENCES Regiones(region_id)  -- Clave foránea que referencia a Regiones
);



-- Tabla de Gimnasios
CREATE TABLE IF NOT EXISTS Gimnasios (
    gimnasio_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada gimnasio
    nombre_gimnasio VARCHAR(100) NOT NULL,  -- Nombre del gimnasio
    ciudad_id INT,  -- ID de la ciudad donde está ubicado el gimnasio
    lider_id INT,  -- ID del líder del gimnasio
    tipo_id INT,  -- ID del tipo de gimnasio (relacionado con Tipos)
    medalla_otorgada VARCHAR(100),  -- Nombre de la medalla que otorga
    FOREIGN KEY (ciudad_id) REFERENCES Ciudades(ciudad_id),  -- Clave foránea que referencia a Ciudades
    FOREIGN KEY (lider_id) REFERENCES Entrenadores(entrenador_id),  -- Clave foránea que referencia a Entrenadores
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id)  -- Clave foránea que referencia a Tipos
);

-- Tabla de Evoluciones
CREATE TABLE IF NOT EXISTS Evoluciones (
    evolucion_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada evolución
    pokemon_origen_id INT,  -- ID del Pokémon de origen
    pokemon_evolucionado_id INT,  -- ID del Pokémon evolucionado
    condicion_evolucion VARCHAR(100) NOT NULL,  -- Condición necesaria para la evolución (nivel, piedra, amistad, etc.)
    FOREIGN KEY (pokemon_origen_id) REFERENCES Pokemon(Id_pokemon),  -- Clave foránea que referencia al Pokémon de origen
    FOREIGN KEY (pokemon_evolucionado_id) REFERENCES Pokemon(Id_pokemon)  -- Clave foránea que referencia al Pokémon evolucionado
);

-- Tabla de Objetos
CREATE TABLE IF NOT EXISTS Objetos (
    objeto_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada objeto
    nombre_objeto VARCHAR(100) NOT NULL,  -- Nombre del objeto (e.g., Poción, Baya, Piedra Evolutiva)
tipo_objeto VARCHAR(50) NOT NULL,  -- Tipo del objeto (e.g., Poción, Baya, Piedra Evolutiva)
    efecto TEXT NOT NULL  -- Descripción del efecto del objeto
);

-- Tabla de relación entre Objetos y Pokémon
CREATE TABLE IF NOT EXISTS Pokemon_Objetos (
    pokemon_id INT,  -- ID del Pokémon que puede utilizar el objeto
    objeto_id INT,  -- ID del objeto
    PRIMARY KEY (pokemon_id, objeto_id),  -- Clave primaria compuesta por el Pokémon y el objeto
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),  -- Clave foránea que referencia a Pokémon
    FOREIGN KEY (objeto_id) REFERENCES Objetos(objeto_id)  -- Clave foránea que referencia a Objetos
);

-- Tabla de Películas
CREATE TABLE IF NOT EXISTS Peliculas (
    pelicula_id INT AUTO_INCREMENT PRIMARY KEY,  -- ID único para cada película
    nombre_pelicula VARCHAR(100) NOT NULL,  -- Nombre de la película
    genero VARCHAR(50) NOT NULL,  -- Género de la película (e.g., Aventura, Acción, Fantasía)
    duracion INT NOT NULL,  -- Duración de la película en minutos
    personajes_principales TEXT NOT NULL  -- Personaje(s) principal(es) de la película
);
CREATE TABLE IF NOT EXISTS Entrenadores_Peliculas (
pelicula_id INT,
entrenador_id INT,
PRIMARY KEY (pelicula_id,entrenador_id),
FOREIGN KEY (pelicula_id) REFERENCES Peliculas(pelicula_id),
FOREIGN KEY (entrenador_id) REFERENCES Entrenadores(entrenador_id)
);