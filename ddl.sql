CREATE DATABASE IF NOT EXISTS pokemon;

USE pokemon;


CREATE TABLE IF NOT EXISTS Regiones (
    region_id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre_region VARCHAR(100) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Ciudades (
    ciudad_id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_ciudad VARCHAR(100) NOT NULL,  
    region_id INT,  
    FOREIGN KEY (region_id) REFERENCES Regiones(region_id)  
);


CREATE TABLE IF NOT EXISTS Tipos (
    tipo_id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre_tipo VARCHAR(50) NOT NULL  
);

CREATE TABLE IF NOT EXISTS Entrenadores (
    entrenador_id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre VARCHAR(100) NOT NULL,                  
    edad INT NOT NULL,                           
    ciudad_origen INT,                    
    medallas_obtenidas INT DEFAULT 0,              
    FOREIGN KEY (ciudad_origen) REFERENCES Ciudades(ciudad_id)
);

CREATE TABLE IF NOT EXISTS Pokemon(
    Id_pokemon INT AUTO_INCREMENT PRIMARY KEY,                
    Numero_poquedex INT NOT NULL,                 
    Nombre VARCHAR(20) NOT NULL,
    ataque_base INT,                              
    defensa_base INT,                             
    velocidad_base INT,                            
    hp_base INT,
    generacion INT,
    evolucion BOOLEAN
);

CREATE TABLE IF NOT EXISTS Entrenadores_Pokemon(
    Id_pokemon INT,
    entrenador_id INT,
    PRIMARY KEY (Id_pokemon,entrenador_id),
    FOREIGN KEY (Id_pokemon) REFERENCES Pokemon(Id_pokemon),
    FOREIGN KEY (entrenador_id) REFERENCES Entrenadores(entrenador_id)
);

CREATE TABLE IF NOT EXISTS Pokemon_Tipos(
    pokemon_id INT,  
    tipo_id INT,
    PRIMARY KEY (pokemon_id,tipo_id),
	FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id)
);

CREATE TABLE IF NOT EXISTS Fortalezas (
    tipo_id INT,  
    tipo_fuerte_contra INT,  
    PRIMARY KEY (tipo_id, tipo_fuerte_contra), 
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id),  
    FOREIGN KEY (tipo_fuerte_contra) REFERENCES Tipos(tipo_id)  
);

CREATE TABLE IF NOT EXISTS Debilidades (
    tipo_id INT, 
    tipo_debil_contra INT,  
    PRIMARY KEY (tipo_id, tipo_debil_contra),  
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id),  
    FOREIGN KEY (tipo_debil_contra) REFERENCES Tipos(tipo_id)  
);

CREATE TABLE IF NOT EXISTS Habilidades (
    habilidad_id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_habilidad VARCHAR(100) NOT NULL, 
    descripcion_efecto TEXT NOT NULL  
);
CREATE TABLE IF NOT EXISTS Pokemon_Habilidades (
    pokemon_id INT, 
    habilidad_id INT,  
    PRIMARY KEY (pokemon_id, habilidad_id),  
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),  
    FOREIGN KEY (habilidad_id) REFERENCES Habilidades(habilidad_id)  
);

CREATE TABLE IF NOT EXISTS Movimientos (
    movimiento_id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre_movimiento VARCHAR(100) NOT NULL,  
    tipo_movimiento VARCHAR(50) NOT NULL,  
    potencia INT,  
    puntos_poder INT NOT NULL,  
    tipo_id INT,  
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id)  
);


CREATE TABLE IF NOT EXISTS Pokemon_Movimientos (
    pokemon_id INT,  
    movimiento_id INT,  
    PRIMARY KEY (pokemon_id, movimiento_id),  
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon), 
    FOREIGN KEY (movimiento_id) REFERENCES Movimientos(movimiento_id)  
);


CREATE TABLE IF NOT EXISTS Pokemon_Regiones (
    pokemon_id INT, 
    region_id INT,  
    PRIMARY KEY (pokemon_id, region_id),  
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon),  
    FOREIGN KEY (region_id) REFERENCES Regiones(region_id)  
);




CREATE TABLE IF NOT EXISTS Gimnasios (
    gimnasio_id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre_gimnasio VARCHAR(100) NOT NULL,  
    ciudad_id INT,  
    lider_id INT,  
    tipo_id INT,  
    medalla_otorgada VARCHAR(100),  
    FOREIGN KEY (ciudad_id) REFERENCES Ciudades(ciudad_id), 
    FOREIGN KEY (lider_id) REFERENCES Entrenadores(entrenador_id),  
    FOREIGN KEY (tipo_id) REFERENCES Tipos(tipo_id)  
);



CREATE TABLE IF NOT EXISTS Objetos (
    objeto_id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre_objeto VARCHAR(100) NOT NULL,  
    tipo_objeto VARCHAR(50) NOT NULL,  
    efecto TEXT NOT NULL  
);


CREATE TABLE IF NOT EXISTS Pokemon_Objetos (
    pokemon_id INT,  
    objeto_id INT, 
    PRIMARY KEY (pokemon_id, objeto_id),  
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(Id_pokemon), 
    FOREIGN KEY (objeto_id) REFERENCES Objetos(objeto_id) 
);


CREATE TABLE IF NOT EXISTS Peliculas (
    pelicula_id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_pelicula VARCHAR(100) NOT NULL,  
    genero VARCHAR(50) NOT NULL,  
    duracion INT NOT NULL,  
    personajes_principales TEXT NOT NULL  
);

CREATE TABLE IF NOT EXISTS Entrenadores_Peliculas (
pelicula_id INT,
entrenador_id INT,
PRIMARY KEY (pelicula_id,entrenador_id),
FOREIGN KEY (pelicula_id) REFERENCES Peliculas(pelicula_id),
FOREIGN KEY (entrenador_id) REFERENCES Entrenadores(entrenador_id)
);