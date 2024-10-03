INSERT INTO Tipos (nombre_tipo)
VALUES
    ('Normal'),
    ('Fuego'),
    ('Agua'),
    ('Eléctrico'),
    ('Planta'),
    ('Hielo'),
    ('Lucha'),
    ('Veneno'),
    ('Tierra'),
    ('Volador'),
    ('Psíquico'),
    ('Bicho'),
    ('Roca'),
    ('Fantasma'),
    ('Dragón'),
    ('Siniestro'),
    ('Acero'),
    ('Hada');


INSERT INTO Objetos (nombre_objeto, tipo_objeto, efecto)
VALUES
    -- Pociones
    ('Poción', 'Poción', 'Restaura 20 PS a un Pokémon.'),
    ('Superpoción', 'Poción', 'Restaura 60 PS a un Pokémon.'),
    ('Hiperpoción', 'Poción', 'Restaura 120 PS a un Pokémon.'),
    ('Poción Máxima', 'Poción', 'Restaura todos los PS a un Pokémon.'),
    -- Revivir
    ('Revivir', 'Revivir', 'Restaura la mitad de los PS de un Pokémon debilitado.'),
    ('Revivir Máximo', 'Revivir', 'Restaura todos los PS de un Pokémon debilitado.'),
    -- Antídotos y curaciones
    ('Antídoto', 'Curación', 'Cura a un Pokémon del envenenamiento.'),
    ('Anti-paraliz', 'Curación', 'Cura a un Pokémon de la parálisis.'),
    ('Despertar', 'Curación', 'Despierta a un Pokémon que está dormido.'),
    ('Antiquemar', 'Curación', 'Cura a un Pokémon de quemaduras.'),
    ('Antihielo', 'Curación', 'Cura a un Pokémon de congelación.'),
    ('Cura Total', 'Curación', 'Cura a un Pokémon de cualquier problema de estado.'),
    -- Bayas
    ('Baya Ziuela', 'Baya', 'Cura a un Pokémon de la parálisis.'),
    ('Baya Aranja', 'Baya', 'Restaura 10 PS a un Pokémon.'),
    ('Baya Caoca', 'Baya', 'Restaura 50 PS a un Pokémon.'),
    ('Baya Atania', 'Baya', 'Cura la confusión de un Pokémon.'),
    ('Baya Meloc', 'Baya', 'Cura el envenenamiento de un Pokémon.'),
    ('Baya Ziuela', 'Baya', 'Cura la parálisis de un Pokémon.'),
    -- Piedras Evolutivas
    ('Piedra Fuego', 'Piedra Evolutiva', 'Hace evolucionar a ciertos Pokémon de tipo Fuego.'),
    ('Piedra Agua', 'Piedra Evolutiva', 'Hace evolucionar a ciertos Pokémon de tipo Agua.'),
    ('Piedra Trueno', 'Piedra Evolutiva', 'Hace evolucionar a ciertos Pokémon de tipo Eléctrico.'),
    ('Piedra Hoja', 'Piedra Evolutiva', 'Hace evolucionar a ciertos Pokémon de tipo Planta.'),
    ('Piedra Lunar', 'Piedra Evolutiva', 'Hace evolucionar a ciertos Pokémon que evolucionan bajo la influencia de la Luna.'),
    ('Piedra Solar', 'Piedra Evolutiva', 'Hace evolucionar a ciertos Pokémon bajo la luz solar.'),
    -- MT y MO (Máquinas Técnicas y Ocultas)
    ('MT01', 'MT', 'Enseña a un Pokémon el movimiento "Danza Espada".'),
    ('MT02', 'MT', 'Enseña a un Pokémon el movimiento "Garra Dragón".'),
    ('MT03', 'MT', 'Enseña a un Pokémon el movimiento "Hidropulso".'),
    ('MO01', 'MO', 'Enseña a un Pokémon el movimiento "Corte", que puede ser usado fuera de combate.'),
    -- Objetos de batalla
    ('Proteína', 'Mejora', 'Aumenta permanentemente el Ataque de un Pokémon.'),
    ('Hierro', 'Mejora', 'Aumenta permanentemente la Defensa de un Pokémon.'),
    ('Carburante', 'Mejora', 'Aumenta permanentemente la Velocidad de un Pokémon.'),
    ('Calcio', 'Mejora', 'Aumenta permanentemente el Ataque Especial de un Pokémon.'),
    ('Zinc', 'Mejora', 'Aumenta permanentemente la Defensa Especial de un Pokémon.'),
    ('Caramelo Raro', 'Mejora', 'Sube un nivel al Pokémon que lo consume.'),
    -- Objetos clave
    ('Bicicleta', 'Objeto clave', 'Permite desplazarse rápidamente por el mundo.'),
    ('Super Caña', 'Objeto clave', 'Permite pescar Pokémon en cuerpos de agua.'),
    ('Pokédex', 'Objeto clave', 'Dispositivo que registra información sobre los Pokémon que se encuentran.'),
    ('Cuerda Huida', 'Objeto clave', 'Permite escapar instantáneamente de una cueva o mazmorra.'),
    -- Poké Balls
    ('Poké Ball', 'Poké Ball', 'Permite capturar Pokémon.'),
    ('Super Ball', 'Poké Ball', 'Mejora la tasa de captura en comparación con una Poké Ball.'),
    ('Ultra Ball', 'Poké Ball', 'Mayor tasa de captura que la Super Ball.'),
    ('Master Ball', 'Poké Ball', 'Captura cualquier Pokémon sin fallar.');
INSERT INTO Regiones (region_id,nombre_region)
VALUES
("Kanto"),
("Johto"),
("Hoenn"),
("Sinnoh"),
("Unova"),
("Kalos"),
("Alola"),
("Galar"),
("Hisui"),
("Orre"),
("Almia"),
("Oblivia"),
("Pasio"),
("Roto"),
("Fiore");


INSERT INTO Ciudades (nombre_ciudad,region_id)
VALUES
("Pueblo Paleta",1),
("Ciudad Verde",1),
("Ciudad Celeste",1),
("Ciudad Azafrán",1),
("Ciudad Fucsia",1),
("Ciudad Carmín",1),
("Ciudad Celadon",1),
("Pueblo Nuevo",2),
("Ciudad Chococor",2),
("Ciudad Olivo",2),
("Ciudad Ecruteak",2),
("Ciudad Mahogany",2),
("Ciudad Iris",2),
("Pueblo Caoba",2),
("Pueblo raíz",3),
("Ciudad Mauville",3),
("Ciudad Tohjo",3),
("Pueblo Pastoria",3),
("Ciudad Sootopolis",3),
("Ciudad Tohjo",4),
("Ciudad de Eterna",4),
("Ciudad de Sunyshore",4),
("Ciudad Twinleaf",4),
("Ciudad de Jubilife",4),
("Ciudad de Nuvema",5),
("Ciudad de Accumula",5),
("Ciudad de Striaton",5),
("Ciudad de Nimbasa",5),
("Ciudad de Castelia",5),
("Ciudad de Vaniville",6),
("Ciudad de Lumiose",6),
("Ciudad de Santalune",6),
("Ciudad de Couriway",6),
("Ciudad de Shalour",6),
("Ciudad de Akala",7),
("Ciudad de Hau'oli",7),
("Ciudad de Akala",7),
("Ciudad de Ula'ula",7),
("Ciudad de Poni",7),
("Ciudad de Wyndon",8),
("Ciudad de Motostoke",8),
("Ciudad de Hammerlocke",8),
("Ciudad de Turffield",8),
("Ciudad de Stow-on-Side",8),
("Pueblo Jubilife",9),
("Pueblo de la Luna",9),
("Pueblo de la Isla de la Corriente",9),
("Pueblo de las Sombras",9),
("Cascada de las Almas",9),
("Pueblo Phenac",10),
("Ciudad Pyrite",10),
("Ciudad de Gateon",10),
("Pueblo Agate",10),
("Pueblo de la Colonia",10),
("Pueblo de Kincaid",11),
("Pueblo de Ringtown",11),
("Pueblo de la Bahía",11),
("Ciudad de la Aurora",11),
("Ciudad de Almia",11),
("Isla Oblivia",12),
("Pueblo de la Isla",12),
("Ciudad de Fuego",12),
("Ciudad de la Luz",12),
("Pueblo de las Aguas",12),
("Ciudad de Pasio",13),
("Isla de la Nieve",13),
("Isla de la Luz ",13),
("Isla de la Fuerza",13),
("Isla de la Velocidad",13),
("Pueblo de Roto",14),
("Playa de Roto",14),
("Bosque de Roto",14),
("Montañas de Roto",14),
("Cueva de Roto",14),
("Pueblo de Fiore",15),
("Pueblo de Florar",15),
("Ciudad de la Costa",15),
("Ciudad de Relieve",15),
("Isla de Fiore",15);

INSERT INTO Peliculas (nombre_pelicula, genero, duracion, personajes_principales)
VALUES
    ('Pokémon: La Película', 'Aventura/Fantasía', 81, 'Ash Ketchum, Pikachu, Misty'),
    ('Pokémon: El poder de todos', 'Aventura/Fantasía', 100, 'Ash Ketchum, Pikachu, Lugia'),
    ('Pokémon: Detective Pikachu', 'Aventura/Comedia', 104, 'Detective Pikachu, Tim Goodman, Lucy Stevens'),
    ('Pokémon: El viaje de los héroes', 'Aventura/Fantasía', 90, 'Ash Ketchum, Pikachu, Team Rocket'),
    ('Pokémon: Mewtwo contraataca', 'Ciencia Ficción/Aventura', 75, 'Ash Ketchum, Mewtwo, Pikachu'),
    ('Pokémon: La historia de Mewtwo', 'Ciencia Ficción/Fantasía', 70, 'Mewtwo, Ash Ketchum, Pikachu'),
    ('Pokémon: Lucario y el misterio de Mew', 'Aventura/Fantasía', 102, 'Ash Ketchum, Pikachu, Lucario'),
    ('Pokémon: Genesect y el despertar de una leyenda', 'Aventura/Fantasía', 110, 'Ash Ketchum, Pikachu, Genesect'),
    ('Pokémon: El origen de Mewtwo', 'Aventura/Fantasía', 75, 'Mewtwo, Ash Ketchum, Pikachu'),
    ('Pokémon: El destino de un maestro', 'Aventura/Fantasía', 80, 'Ash Ketchum, Pikachu, Gary Oak');
    
INSERT INTO Entrenadores (nombre,edad,ciudad_origen,medallas_obtenidas) 
VALUES
("Ash Ketchum",10,1,8),
("Misty (Kasumi)",16,3,2),
("Brock (Takeshi)",16,5,1),
("Giovanni",30,2,8),
("May (Haruka)",12,16,0),
("Dawn (Hikari)",10,23,0),
("Serena",10,30,0),
("Cynthia",25,7,0),
("Leon",21,40,1),
("Roxie ",16,25,1),
("Clair",20,9,1),
("Korrina",15,34,1),
("Alain",16,31,1),
("N",16,28,0),
("Lusamine",35,37,0);

INSERT INTO Pokemon (Numero_poquedex, Nombre, ataque_base, defensa_base, velocidad_base, hp_base, generacion, evolucion) 
VALUES
(25, 'Pikachu', 55, 40, 90, 35, 1, TRUE),         -- Pikachu evoluciona a Raichu
(6, 'Charizard', 84, 78, 100, 78, 1, FALSE),      -- Charizard es la forma final
(1, 'Bulbasaur', 49, 49, 45, 45, 1, TRUE),        -- Bulbasaur evoluciona a Ivysaur
(7, 'Squirtle', 48, 65, 43, 44, 1, TRUE),         -- Squirtle evoluciona a Wartortle
(658, 'Greninja', 110, 75, 122, 72, 6, FALSE),    -- Greninja es la forma final
(121, 'Starmie', 65, 70, 97, 60, 1, FALSE),       -- Starmie es la forma final
(54, 'Psyduck', 52, 48, 55, 50, 1, TRUE),         -- Psyduck evoluciona a Golduck
(130, 'Gyarados', 125, 79, 81, 95, 1, FALSE),     -- Gyarados es la forma final
(175, 'Togepi', 40, 40, 20, 35, 2, TRUE),         -- Togepi evoluciona a Togetic
(118, 'Goldeen', 30, 55, 52, 45, 1, TRUE),        -- Goldeen evoluciona a Seaking
(95, 'Onix', 45, 160, 30, 35, 1, TRUE),           -- Onix evoluciona a Steelix
(74, 'Geodude', 80, 100, 30, 40, 1, TRUE),        -- Geodude evoluciona a Graveler
(37, 'Vulpix', 60, 50, 65, 38, 1, TRUE),          -- Vulpix evoluciona a Ninetales
(453, 'Croagunk', 61, 40, 50, 70, 4, TRUE),       -- Croagunk evoluciona a Toxicroak
(208, 'Steelix', 75, 100, 30, 75, 2, FALSE),      -- Steelix es la forma final
(256, 'Torchic', 120, 70, 80, 80, 3, TRUE),       -- Torchic evoluciona a Combusken
(267, 'Beautifly', 70, 50, 65, 60, 3, FALSE),     -- Beautifly es la forma final
(393, 'Piplup', 50, 40, 56, 64, 4, TRUE),         -- Piplup evoluciona a Prinplup
(427, 'Buneary', 50, 60, 60, 60, 4, TRUE),        -- Buneary evoluciona a Lopunny
(417, 'Pachirisu', 60, 40, 67, 60, 4, FALSE),     -- Pachirisu no evoluciona
(424, 'Ambipom', 100, 60, 115, 75, 4, FALSE),     -- Ambipom es la forma final
(474, 'Porygon-Z', 80, 70, 40, 85, 4, FALSE),     -- Porygon-Z es la forma final
(38, 'Skitty', 60, 55, 40, 90, 1, TRUE),          -- Skitty evoluciona a Delcatty
(258, 'Mudkip', 70, 70, 50, 50, 3, TRUE),         -- Mudkip evoluciona a Marshtomp
(143, 'Snorlax', 110, 70, 30, 160, 1, FALSE),     -- Snorlax es la forma final
(131, 'Lapras', 130, 80, 60, 130, 1, FALSE),      -- Lapras no evoluciona
(12, 'Butterfree', 45, 50, 70, 60, 1, FALSE),     -- Butterfree es la forma final
(4, 'Charmander', 52, 43, 60, 39, 1, TRUE),       -- Charmander evoluciona a Charmeleon
(158, 'Blastoise', 83, 100, 78, 59, 2, FALSE),    -- Blastoise es la forma final
(59, 'Arcanine', 110, 80, 95, 65, 1, FALSE),      -- Arcanine es la forma final
(94, 'Gengar', 65, 60, 110, 60, 1, FALSE),        -- Gengar es la forma final
(197, 'Umbreon', 95, 110, 65, 95, 2, FALSE),      -- Umbreon es la forma final
(18, 'Pidgeot', 80, 75, 101, 83, 1, FALSE),       -- Pidgeot es la forma final
(655, 'Fennekin', 59, 90, 104, 60, 6, TRUE),      -- Fennekin evoluciona a Braixen
(674, 'Pancham', 60, 60, 50, 67, 6, TRUE),        -- Pancham evoluciona a Pangoro
(700, 'Sylveon', 65, 65, 60, 95, 6, FALSE),       -- Sylveon es la forma final
(359, 'Absol', 130, 75, 75, 65, 3, FALSE),        -- Absol no evoluciona
(445, 'Garchomp', 130, 95, 102, 108, 4, FALSE),   -- Garchomp es la forma final
(442, 'Spiritomb', 50, 92, 35, 50, 4, FALSE),     -- Spiritomb no evoluciona
(407, 'Roserade', 70, 65, 90, 60, 4, FALSE),      -- Roserade es la forma final
(448, 'Lucario', 110, 70, 110, 70, 4, FALSE),     -- Lucario es la forma final
(349, 'Milotic', 60, 79, 81, 95, 3, FALSE);       -- Milotic es la forma final

INSERT INTO Habilidades (nombre_habilidad, descripcion_efecto)
VALUES
    ('Pararrayos', 'Atrae ataques de tipo Eléctrico y aumenta su Ataque Especial.'), --1
    ('Mar Llamas', 'Potencia los ataques de tipo Fuego cuando el Pokémon tiene poca salud.'), --2
    ('Espesura', 'Potencia los ataques de tipo Planta cuando el Pokémon tiene poca salud.'), --3
    ('Torrente', 'Potencia los ataques de tipo Agua cuando el Pokémon tiene poca salud.'), --4
    ('Mutatipo', 'Cambia el tipo del Pokémon al del último movimiento que usó.'), --5
    ('Cura Natural', 'Cura los problemas de estado del Pokémon al ser retirado del combate.'), --6
    ('Despiste', 'Evita que el Pokémon sea afectado por movimientos que inducen el enamoramiento.'), --7
    ('Intimidación', 'Baja el Ataque del oponente al entrar en combate.'), --8
    ('Gran Encanto', 'Tiene una probabilidad de causar enamoramiento al rival si es golpeado con un ataque de contacto.'), --9
    ('Nado Rápido', 'Duplica la velocidad del Pokémon bajo la lluvia.'), --10
    ('Robustez', 'Evita que el Pokémon sea derrotado de un solo golpe.'), --11
    ('Absorber Agua', 'Recupera HP si es golpeado por un ataque de tipo Agua.'), --12
    ('Sequía', 'Invoca sol intenso al entrar en combate.'),--13
    ('Llovizna', 'Invoca lluvia al entrar en combate.'),--14
    ('Poder Solar', 'Aumenta el Ataque Especial en clima soleado, pero reduce el HP.'), --15
    ('Medio Compensar', 'Si las estadísticas del Pokémon bajan, sube su Ataque.'), --16
    ('Garra Dura', 'Aumenta la potencia de los movimientos que hacen contacto físico.'), --17
    ('Nado Rápido', 'Aumenta la velocidad del Pokémon cuando llueve.'), --18
    ('Sebo', 'Reduce el daño de ataques de tipo Fuego y Hielo.'), --19
    ('Absorber Agua', 'Restaura HP si el Pokémon es golpeado por un ataque de tipo Agua.'), --20
    ('Corte Fuerte', 'Aumenta el poder de los movimientos de corte.'), --21
    ('Robustez', 'Evita que el Pokémon sea derrotado de un solo golpe.'), --22
    ('Cuerpo Puro', 'Evita que las estadísticas del Pokémon sean reducidas por movimientos del oponente.'), --23
    ('Cura Natural', 'Cura sus problemas de estado al ser retirado del combate.'), --24
    ('Sincronía', 'Pasa los problemas de estado del Pokémon al rival.'), --25
    ('Flaqueza', 'Aumenta el Ataque si el Pokémon recibe daño de un ataque fuerte.'), --26
    ('Manto Frondoso', 'Reduce la precisión de los ataques en clima soleado.'); --27

INSERT INTO Movimientos (nombre_movimiento, tipo_movimiento, potencia, puntos_poder, tipo_id)
VALUES
    ('Danza Espada', 'Estado', NULL, 20, 1), -- Movimiento de tipo Normal
    ('Hiperrayo', 'Especial', 150, 5, 1),
    ('Corte', 'Físico', 50, 30, 1),
    ('Ataque Rápido', 'Físico', 40, 30, 1),
    ('Placaje', 'Físico', 40, 35, 1),
    ('Lanzallamas', 'Especial', 90, 15, 2),  -- Movimiento de tipo Fuego
    ('Llamarada', 'Especial', 110, 5, 2),
    ('Giro Fuego', 'Especial', 35, 15, 2),
    ('Ascuas', 'Especial', 40, 25, 2),
    ('Sofoco', 'Especial', 130, 5, 2),
    ('Surf', 'Especial', 90, 15, 3),         -- Movimiento de tipo Agua
    ('Hidrobomba', 'Especial', 110, 5, 3),   -- Movimiento de tipo Agua
    ('Pistola Agua', 'Especial', 40, 25, 3),
    ('Aqua Jet', 'Físico', 40, 20, 3),
    ('Burbuja', 'Especial', 40, 30, 3),
    ('Pulso de Agua', 'Especial', 60, 20, 3),
    ('Impactrueno', 'Especial', 40, 30, 4),  -- Movimiento de tipo Eléctrico
    ('Trueno', 'Especial', 110, 10, 4),
    ('Rayo', 'Especial', 90, 15, 4),
    ('Chispazo', 'Especial', 80, 15, 4),
    ('Onda Trueno', 'Estado', NULL, 20, 4),
    ('Voltio Cruel', 'Físico', 90, 15, 4),
    ('Gigadrenado', 'Especial', 75, 10, 5),  -- Movimiento de tipo Planta
    ('Hoja Afilada', 'Físico', 70, 20, 5),   -- Movimiento de tipo Planta
    ('Rayo Solar', 'Especial', 120, 10, 5),
    ('Latigazo', 'Físico', 120, 15, 5),
    ('Hoja Mágica', 'Especial', 60, 20, 5),
    ('Absorber', 'Especial', 20, 25, 5),      -- Movimiento de tipo Eléctrico
    ('Ventisca', 'Especial', 110, 5, 6),     -- Movimiento de tipo Hielo
    ('Puño Hielo', 'Físico', 75, 15, 6),     -- Movimiento de tipo Hielo
    ('Rayo Hielo', 'Especial', 90, 10, 6),
    ('Canto Helado', 'Físico', 65, 20, 6),
    ('Ventisca', 'Especial', 110, 5, 6),
    ('Vaho Gélido', 'Especial', 40, 30, 6),
    ('Patada Baja', 'Físico', NULL, 20, 7),  -- Movimiento de tipo Lucha
    ('Puño Dinámico', 'Físico', 100, 5, 7),
    ('Demolición', 'Físico', 75, 10, 7),
    ('Puño Cometa', 'Físico', 18, 15, 7),
    ('Patada Salto Alta', 'Físico', 130, 10, 7),
    ('Bomba Lodo', 'Especial', 90, 10, 8),   -- Movimiento de tipo Veneno
    ('Ácido', 'Especial', 40, 30, 8),
    ('Bomba Lodo', 'Especial', 90, 10, 8),
    ('Cola Veneno', 'Físico', 50, 25, 8),
    ('Onda Tóxica', 'Especial', 95, 10, 8),
    ('Terremoto', 'Físico', 100, 10, 9),     -- Movimiento de tipo Tierra
    ('Terremoto', 'Físico', 100, 10, 9),
    ('Excavar', 'Físico', 80, 10, 9),
    ('Bucle Arena', 'Especial', 35, 15, 9),
    ('Fuerza Telúrica', 'Especial', 90, 10, 9),
    ('Ataque Aéreo', 'Físico', 120, 5, 10),
    ('Pájaro Osado', 'Físico', 120, 15, 10),
    ('Tornado', 'Especial', 40, 35, 10),
    ('Ala de Acero', 'Físico', 70, 25, 10),
    ('Confusión', 'Especial', 50, 25, 11),
    ('Psíquico', 'Especial', 90, 10, 11),
    ('Premonición', 'Especial', 120, 10, 11),
    ('Paz Mental', 'Estado', NULL, 20, 11),
    ('Picadura', 'Físico', 60, 20, 12),
    ('Zumbido', 'Especial', 90, 10, 12),
    ('Señuelo', 'Estado', NULL, 20, 12),
    ('Tijera X', 'Físico', 80, 15, 12),
    ('Avalancha', 'Físico', 75, 10, 13),
    ('Poder Pasado', 'Especial', 60, 5, 13),
    ('Roca Afilada', 'Físico', 100, 5, 13),
    ('Lanzarrocas', 'Físico', 50, 15, 13),
    ('Sombra Vil', 'Físico', 40, 30, 14),    -- Movimiento de tipo Fantasma
    ('Tinieblas', 'Especial', NULL, 15, 14),
    ('Bola Sombra', 'Especial', 80, 15, 14),
    ('Golpe Fantasma', 'Físico', 90, 10, 14),
    ('Maldición', 'Estado', NULL, 10, 14),
    ('Garra Dragón', 'Físico', 80, 15, 15),  -- Movimiento de tipo Dragón
    ('Cometa Draco', 'Especial', 130, 5, 15),
    ('Garra Dragón', 'Físico', 80, 15, 15),
    ('Pulso Dragón', 'Especial', 85, 10, 15),
    ('Enfado', 'Físico', 120, 10, 15),
    ('Juego Sucio', 'Físico', 95, 15, 16),   -- Movimiento de tipo Siniestro
    ('Triturar', 'Físico', 80, 15, 16),
    ('Juego Sucio', 'Físico', 95, 15, 16),
    ('Pulso Umbrío', 'Especial', 80, 15, 16),
    ('Mofa', 'Estado', NULL, 20, 16),
    ('Ala de Acero', 'Físico', 70, 25, 17),  -- Movimiento de tipo Acero
    ('Cabezahierro', 'Físico', 80, 15, 17),
    ('Cola Férrea', 'Físico', 100, 15, 17),
    ('Puño Meteoro', 'Físico', 90, 10, 17),
    ('Cañón de Luz', 'Especial', 80, 10, 17),
    ('Carantoña', 'Físico', 90, 10, 18),     -- Movimiento de tipo Hada
    ('Fuerza Lunar', 'Especial', 95, 15, 18),
    ('Brillo Mágico', 'Especial', 80, 10, 18),
    ('Carantoña', 'Físico', 90, 10, 18),
    ('Vozarrón', 'Especial', 90, 10, 18);





INSERT INTO Pokemon_Habilidades (pokemon_id, habilidad_id)
VALUES
(1, 1),  -- Pikachu - Pararrayos
(2, 2),  -- Charizard - Mar Llamas
(3, 3),  -- Bulbasaur - Espesura
(4, 4),  -- Squirtle - Torrente
(5, 5),  -- Greninja - Mutatipo
(6, 6),  -- Starmie - Cura Natural
(7, 8),  -- Gyarados - Intimidación
(8, 12),  -- Lapras - Absorber Agua
(9, 26),  -- Snorlax - Flaqueza
(10, 10),  -- Garchomp - Nado Rápido
(11, 7),  -- Psyduck - Despiste
(12, 23),  -- Togepi - Cuerpo Puro
(13, 10),  -- Goldeen - Nado Rápido
(14, 14),  -- Onix - Llovizna ++
(15, 11),  -- Geodude - Robustez
(16, 13),  -- Vulpix - Sequía
(17, 17),  -- Croagunk - Garra Dura
(18, 11),  -- Steelix - Robustez
(19, 2),  -- Torchic - Mar Llamas
(20, 20),  -- Beautifly - Absorber Agua
(21, 4),  -- Piplup - Torrente
(22, 24),  -- Buneary - Cura Natural
(23, 23),  -- Pachirisu - Cuerpo Puro
(24, 6),  -- Ambipom - Cura Natural
(25, 25),  -- Porygon-Z - Sincronía
(26, 26),  -- Skitty - Flaqueza
(27, 4),  -- Mudkip - Torrente
(28, 4),  -- Blastoise - Torrente
(29, 8),  -- Arcanine - Intimidación
(30, 7),  -- Gengar - Despiste
(31, 17),  -- Umbreon - Garra Dura
(32, 26),  -- Pidgeot - Flaqueza
(33, 2),  -- Fennekin - Mar Llamas
(34, 3),  -- Pancham - Espesura
(35, 23),  -- Sylveon - Cuerpo Puro
(36, 9),  -- Absol - Gran Encanto
(37, 17),  -- Spiritomb - Garra Dura
(38, 6),  -- Roserade - Cura Natural
(39, 25),  -- Lucario - Sincronía
(40, 10);  -- Milotic - Nado Rápido

INSERT INTO Pokemon_Tipos (pokemon_id, tipo_id)
VALUES
    -- Pikachu es de tipo Eléctrico
    (1, 4),
    -- Charizard es de tipo Fuego y Volador
    (2, 2), 
    (2, 10),
    -- Bulbasaur es de tipo Planta y Veneno
    (3, 5), 
    (3, 8),
    -- Squirtle es de tipo Agua
    (4, 3),
    -- Greninja es de tipo Agua y Siniestro
    (5, 3), 
    (5, 16),
    -- Starmie es de tipo Agua y Psíquico
    (6, 3), 
    (6, 11),
    -- Psyduck es de tipo Agua
    (7, 3),
    -- Gyarados es de tipo Agua y Volador
    (8, 3), 
    (8, 10),
    -- Togepi es de tipo Hada
    (9, 18),
    -- Goldeen es de tipo Agua
    (10, 3),
    -- Onix es de tipo Roca y Tierra
    (11, 13), 
    (11, 9),
    -- Geodude es de tipo Roca y Tierra
    (12, 13), 
    (12, 9),
    -- Vulpix es de tipo Fuego
    (13, 2),
    -- Croagunk es de tipo Veneno y Lucha
    (14, 8), 
    (14, 7),
    -- Steelix es de tipo Acero y Tierra
    (15, 17), 
    (15, 9),
    -- Torchic es de tipo Fuego
    (16, 2),
    -- Beautifly es de tipo Bicho y Volador
    (17, 12), 
    (17, 10),
    -- Piplup es de tipo Agua
    (18, 3),
    -- Buneary es de tipo Normal
    (19, 1),
    -- Pachirisu es de tipo Eléctrico
    (20, 4),
    -- Ambipom es de tipo Normal
    (21, 1),
    -- Porygon-Z es de tipo Normal
    (22, 1),
    -- Skitty es de tipo Normal
    (23, 1),
    -- Mudkip es de tipo Agua
    (24, 3),
    -- Snorlax es de tipo Normal
    (25, 1),
    -- Lapras es de tipo Agua y Hielo
    (26, 3), 
    (26, 6),
    -- Butterfree es de tipo Bicho y Volador
    (27, 12), 
    (27, 10),
    -- Charmander es de tipo Fuego
    (28, 2),
    -- Blastoise es de tipo Agua
    (29, 3),
    -- Arcanine es de tipo Fuego
    (30, 2),
    -- Gengar es de tipo Fantasma y Veneno
    (31, 14), 
    (31, 8),
    -- Umbreon es de tipo Siniestro
    (32, 16),
    -- Pidgeot es de tipo Normal y Volador
    (33, 1), 
    (33, 10),
    -- Fennekin es de tipo Fuego
    (34, 2),
    -- Pancham es de tipo Lucha
    (35, 7),
    -- Sylveon es de tipo Hada
    (36, 18),
    -- Absol es de tipo Siniestro
    (37, 16),
    -- Garchomp es de tipo Dragón y Tierra
    (38, 15), 
    (38, 9),
    -- Spiritomb es de tipo Fantasma y Siniestro
    (39, 14), 
    (39, 16),
    -- Roserade es de tipo Planta y Veneno
    (40, 5), 
    (40, 8),
    -- Lucario es de tipo Lucha y Acero
    (41, 7), 
    (41, 17),
    -- Milotic es de tipo Agua
    (42, 3);

INSERT INTO Entrenadores_Pokemon (Id_pokemon, entrenador_id)
VALUES
-- Ash Ketchum (Entrenador 1)
(1, 1),  -- Pikachu
(2, 1),  -- Charizard
(3, 1),  -- Bulbasaur
(4, 1),  -- Squirtle
(143, 1), -- Snorlax
-- Misty (Kasumi) (Entrenadora 2)
(121, 2), -- Starmie
(54, 2),  -- Psyduck
(118, 2), -- Goldeen
-- Brock (Takeshi) (Entrenador 3)
(95, 3),  -- Onix
(74, 3),  -- Geodude
(130, 3), -- Gyarados (anime)
-- Giovanni (Entrenador 4)
(59, 4),  -- Arcanine
(94, 4),  -- Gengar
(130, 4), -- Gyarados
-- May (Haruka) (Entrenadora 5)
(256, 5), -- Torchic
(267, 5), -- Beautifly
(258, 5), -- Mudkip
-- Dawn (Hikari) (Entrenadora 6)
(393, 6), -- Piplup
(417, 6), -- Pachirisu
(427, 6), -- Buneary
-- Serena (Entrenadora 7)
(700, 7), -- Sylveon
(655, 7), -- Fennekin
-- Cynthia (Entrenadora 8)
(445, 8), -- Garchomp
(442, 8), -- Spiritomb
(448, 8), -- Lucario
-- Leon (Entrenador 9)
(6, 9),   -- Charizard
(18, 9),  -- Pidgeot
-- Roxie (Entrenadora 10)
(453, 10), -- Croagunk
-- Clair (Entrenadora 11)
(130, 11), -- Gyarados
(208, 11), -- Steelix
-- Korrina (Entrenadora 12)
(448, 12), -- Lucario
-- Alain (Entrenador 13)
(6, 13),   -- Charizard (Mega Charizard X)
-- N (Entrenador 14)
(474, 14), -- Porygon-Z
-- Lusamine (Entrenadora 15)
(349, 15); -- Milotic


INSERT INTO Fortalezas (tipo_id, tipo_fuerte_contra)
VALUES
-- Normal
(1, 0), -- No tiene fortalezas
-- Fuego
(2, 5), -- Fuerte contra Planta
(2, 6), -- Fuerte contra Hielo
(2, 13), -- Fuerte contra Bicho
(2, 17), -- Fuerte contra Acero
-- Agua
(3, 2), -- Fuerte contra Fuego
(3, 9), -- Fuerte contra Tierra
(3, 13), -- Fuerte contra Roca
-- Eléctrico
(4, 3), -- Fuerte contra Agua
(4, 10), -- Fuerte contra Volador
-- Planta
(5, 3), -- Fuerte contra Agua
(5, 9), -- Fuerte contra Tierra
(5, 13), -- Fuerte contra Roca
-- Hielo
(6, 5), -- Fuerte contra Planta
(6, 10), -- Fuerte contra Volador
(6, 15), -- Fuerte contra Dragón
(6, 9), -- Fuerte contra Tierra
-- Lucha
(7, 1), -- Fuerte contra Normal
(7, 13), -- Fuerte contra Roca
(7, 17), -- Fuerte contra Acero
(7, 16), -- Fuerte contra Siniestro
(7, 14), -- Fuerte contra Hielo
-- Veneno
(8, 5), -- Fuerte contra Planta
(8, 18), -- Fuerte contra Hada
-- Tierra
(9, 4), -- Fuerte contra Eléctrico
(9, 17), -- Fuerte contra Acero
(9, 8), -- Fuerte contra Veneno
(9, 2), -- Fuerte contra Fuego
(9, 13), -- Fuerte contra Roca
-- Volador
(10, 5), -- Fuerte contra Planta
(10, 11), -- Fuerte contra Bicho
(10, 7), -- Fuerte contra Lucha
-- Psíquico
(11, 7), -- Fuerte contra Lucha
(11, 8), -- Fuerte contra Veneno
-- Bicho
(12, 11), -- Fuerte contra Psíquico
(12, 5), -- Fuerte contra Planta
(12, 16), -- Fuerte contra Siniestro
-- Roca
(13, 10), -- Fuerte contra Volador
(13, 2), -- Fuerte contra Fuego
(13, 6), -- Fuerte contra Hielo
(13, 12), -- Fuerte contra Bicho
-- Fantasma
(14, 14), -- Fuerte contra Fantasma
(14, 11), -- Fuerte contra Psíquico
-- Dragón
(15, 15), -- Fuerte contra Dragón
-- Siniestro
(16, 14), -- Fuerte contra Fantasma
(16, 11), -- Fuerte contra Psíquico
-- Acero
(17, 6), -- Fuerte contra Hielo
(17, 18), -- Fuerte contra Hada
(17, 13), -- Fuerte contra Roca
-- Hada
(18, 15), -- Fuerte contra Dragón
(18, 16); -- Fuerte contra Siniestro


INSERT INTO Pokemon_Movimientos (pokemon_id, movimiento_id) 
VALUES
    -- Pikachu (Id_pokemon = 1)
    (1, 17),  -- Impactrueno
    (1, 18),  -- Trueno
    (1, 19),  -- Rayo
    (1, 21),  -- Onda Trueno
    (1, 22),  -- Voltio Cruel,
    -- Charizard (Id_pokemon = 2)
    (2, 6),   -- Lanzallamas
    (2, 7),   -- Llamarada
    (2, 8),   -- Giro Fuego
    (2, 9),   -- Ascuas
    (2, 10),  -- Sofoco,
    -- Bulbasaur (Id_pokemon = 3)
    (3, 25),  -- Gigadrenado
    (3, 26),  -- Hoja Afilada
    (3, 27),  -- Rayo Solar
    (3, 28),  -- Latigazo
    (3, 29),  -- Hoja Mágica,
    -- Squirtle (Id_pokemon = 4)
    (4, 11),  -- Surf
    (4, 12),  -- Hidrobomba
    (4, 13),  -- Pistola Agua
    (4, 14),  -- Aqua Jet
    (4, 15),  -- Burbuja,
    -- Greninja (Id_pokemon = 5)
    (5, 11),  -- Surf
    (5, 12),  -- Hidrobomba
    (5, 59),  -- Pulso Umbrío
    (5, 14),  -- Aqua Jet
    (5, 52),  -- Fuerza Telúrica,
    -- Starmie (Id_pokemon = 6)
    (6, 11),  -- Surf
    (6, 12),  -- Hidrobomba
    (6, 13),  -- Pistola Agua
    (6, 16),  -- Pulso de Agua
    (6, 51),  -- Poder Pasado,
    -- Psyduck (Id_pokemon = 7)
    (7, 11),  -- Surf
    (7, 13),  -- Pistola Agua
    (7, 16),  -- Pulso de Agua
    (7, 56),  -- Confusión
    (7, 57),  -- Garra Dragón,
    -- Gyarados (Id_pokemon = 8)
    (8, 11),  -- Surf
    (8, 12),  -- Hidrobomba
    (8, 60),  -- Pulso Dragón
    (8, 58),  -- Avalancha
    (8, 52),  -- Fuerza Telúrica,
    -- Togepi (Id_pokemon = 9)
    (9, 85),  -- Carantoña
    (9, 86),  -- Fuerza Lunar
    (9, 87),  -- Brillo Mágico,
    -- Goldeen (Id_pokemon = 10)
    (10, 11),  -- Surf
    (10, 13),  -- Pistola Agua
    (10, 14),  -- Aqua Jet,
    -- Onix (Id_pokemon = 11)
    (11, 53),  -- Terremoto
    (11, 58),  -- Avalancha
    (11, 54),  -- Lanzarrocas
    (11, 55),  -- Roca Afilada,
    -- Geodude (Id_pokemon = 12)
    (12, 53),  -- Terremoto
    (12, 58),  -- Avalancha
    (12, 54),  -- Lanzarrocas
    (12, 55),  -- Roca Afilada,
    -- Vulpix (Id_pokemon = 13)
    (13, 6),   -- Lanzallamas
    (13, 7),   -- Llamarada
    (13, 8),   -- Giro Fuego
    (13, 9),   -- Ascuas
    (13, 10),  -- Sofoco,
    -- Croagunk (Id_pokemon = 14)
    (14, 72),  -- Bomba Lodo
    (14, 73),  -- Ácido
    (14, 74),  -- Cola Veneno
    (14, 77),  -- Terremoto,
    -- Steelix (Id_pokemon = 15)
    (15, 53),  -- Terremoto
    (15, 58),  -- Avalancha
    (15, 54),  -- Lanzarrocas
    (15, 55),  -- Roca Afilada,
    -- Torchic (Id_pokemon = 16)
    (16, 6),   -- Lanzallamas
    (16, 7),   -- Llamarada
    (16, 8),   -- Giro Fuego
    (16, 9),   -- Ascuas
    (16, 10),  -- Sofoco,
    -- Beautifly (Id_pokemon = 17)
    (17, 66),  -- Picadura
    (17, 67),  -- Zumbido
    (17, 68),  -- Señuelo
    (17, 69),  -- Tijera X,
    -- Piplup (Id_pokemon = 18)
    (18, 11),  -- Surf
    (18, 13),  -- Pistola Agua
    (18, 14),  -- Aqua Jet
    (18, 16),  -- Pulso de Agua,
    -- Buneary (Id_pokemon = 19)
    (19, 4),   -- Ataque Rápido
    (19, 43),  -- Puño Cometa,
    -- Pachirisu (Id_pokemon = 20)
    (20, 17),  -- Impactrueno
    (20, 18),  -- Trueno
    (20, 19),  -- Rayo
    (20, 21),  -- Onda Trueno,
    -- Ambipom (Id_pokemon = 21)
    (21, 3),   -- Corte
    (21, 1),   -- Danza Espada,
    -- Porygon-Z (Id_pokemon = 22)
    (22, 19),  -- Rayo
    (22, 61),  -- Enfado,
    -- Skitty (Id_pokemon = 23)
    (23, 4),   -- Ataque Rápido
    (23, 5),   -- Placaje,
    -- Mudkip (Id_pokemon = 24)
    (24, 11),  -- Surf
    (24, 13),  -- Pistola Agua
    (24, 14),  -- Aqua Jet,
    -- Snorlax (Id_pokemon = 25)
    (25, 2),   -- Hiperrayo,
    -- Lapras (Id_pokemon = 26)
    (26, 11),  -- Surf
    (26, 12),  -- Hidrobomba
    (26, 13),  -- Pistola Agua
    (26, 63),  -- Rayo Hielo,
    -- Butterfree (Id_pokemon = 27)
    (27, 67),  -- Zumbido
    (27, 68),  -- Señuelo,
    -- Charmander (Id_pokemon = 28)
    (28, 6),   -- Lanzallamas
    (28, 9),   -- Ascuas,
    -- Blastoise (Id_pokemon = 29)
    (29, 11),  -- Surf
    (29, 12),  -- Hidrobomba,
    -- Arcanine (Id_pokemon = 30)
    (30, 6),   -- Lanzallamas
    (30, 7),   -- Llamarada,
    -- Gengar (Id_pokemon = 31)
    (31, 56),  -- Confusión
    (31, 82),  -- Bola Sombra,
    -- Umbreon (Id_pokemon = 32)
    (32, 64),  -- Juego Sucio,
    -- Pidgeot (Id_pokemon = 33)
    (33, 60),  -- Pulso Dragón,
    -- Fennekin (Id_pokemon = 34)
    (34, 10),  -- Sofoco,
    -- Pancham (Id_pokemon = 35)
    (35, 46),  -- Puño Dinámico,
    -- Sylveon (Id_pokemon = 36)
    (36, 85),  -- Carantoña,
    -- Absol (Id_pokemon = 37)
    (37, 64),  -- Juego Sucio,
    -- Garchomp (Id_pokemon = 38)
    (38, 53),  -- Terremoto
    (38, 60),  -- Pulso Dragón
    (38, 61),  -- Enfado
    -- Spiritomb (Id_pokemon = 39)
    (39, 82),  -- Bola Sombra
    (39, 64),  -- Juego Sucio
    (39, 56),  -- Confusión
    (39, 83),  -- Pulso Umbrío
    (39, 84),  -- Maldición,
    -- Roserade (Id_pokemon = 40)
    (40, 25),  -- Gigadrenado
    (40, 26),  -- Hoja Afilada
    (40, 27),  -- Rayo Solar
    (40, 28),  -- Latigazo
    (40, 29),  -- Hoja Mágica,
    -- Lucario (Id_pokemon = 41)
    (41, 1),   -- Danza Espada
    (41, 46),  -- Puño Dinámico
    (41, 48),  -- A Bocajarro
    (41, 44),  -- Golpe Karate
    (41, 45),  -- Puño Incremento,
    -- Milotic (Id_pokemon = 42)
    (42, 11),  -- Surf
    (42, 12),  -- Hidrobomba
    (42, 13),  -- Pistola Agua
    (42, 14),  -- Aqua Jet
    (42, 63);  -- Rayo Hielo


INSERT INTO Debilidades (tipo_id, tipo_debil_contra)
VALUES
-- Normal
(1, 7),  -- Débil contra Lucha
-- Fuego
(2, 3),  -- Débil contra Agua
(2, 9),  -- Débil contra Tierra
(2, 17), -- Débil contra Roca
-- Agua
(3, 5),  -- Débil contra Planta
(3, 4),  -- Débil contra Eléctrico
-- Eléctrico
(4, 9),  -- Débil contra Tierra
-- Planta
(5, 2),  -- Débil contra Fuego
(5, 6),  -- Débil contra Hielo
(5, 10), -- Débil contra Volador
(5, 13), -- Débil contra Bicho
-- Hielo
(6, 2),  -- Débil contra Fuego
(6, 7),  -- Débil contra Lucha
(6, 9),  -- Débil contra Tierra
(6, 17), -- Débil contra Acero
-- Lucha
(7, 11), -- Débil contra Psíquico
(7, 10), -- Débil contra Volador
(7, 12), -- Débil contra Bicho
(7, 14), -- Débil contra Hada
-- Veneno
(8, 9),  -- Débil contra Tierra
(8, 11), -- Débil contra Psíquico
-- Tierra
(9, 5),  -- Débil contra Planta
(9, 3),  -- Débil contra Agua
(9, 10), -- Débil contra Hielo
-- Volador
(10, 4),  -- Débil contra Eléctrico
(10, 9),  -- Débil contra Roca
(10, 6),  -- Débil contra Hielo
-- Psíquico
(11, 16), -- Débil contra Siniestro
(11, 12), -- Débil contra Bicho
(11, 14), -- Débil contra Fantasma
-- Bicho
(12, 2),  -- Débil contra Fuego
(12, 10), -- Débil contra Volador
(12, 7),  -- Débil contra Lucha
(12, 9),  -- Débil contra Roca
-- Roca
(13, 5),  -- Débil contra Planta
(13, 3),  -- Débil contra Agua
(13, 7),  -- Débil contra Lucha
(13, 9),  -- Débil contra Tierra
(13, 17), -- Débil contra Acero
-- Fantasma
(14, 14), -- Débil contra Fantasma
(14, 16), -- Débil contra Siniestro
-- Dragón
(15, 6),  -- Débil contra Hielo
(15, 15), -- Débil contra Dragón
(15, 18), -- Débil contra Hada
-- Siniestro
(16, 7),  -- Débil contra Lucha
(16, 12), -- Débil contra Bicho
(16, 18), -- Débil contra Hada
-- Acero
(17, 2),  -- Débil contra Fuego
(17, 9),  -- Débil contra Tierra
(17, 7),  -- Débil contra Lucha
-- Hada
(18, 17), -- Débil contra Acero
(18, 2);  -- Débil contra Veneno

INSERT INTO Gimnasios (nombre_gimnasio, ciudad_id, lider_id, tipo_id, medalla_otorgada)
VALUES
    -- Ciudad Verde (Giovanni, Tipo Tierra)
    ('Gimnasio Ciudad Verde', 2, 4, 9, 'Medalla Tierra'),
    -- Ciudad Celeste (Misty, Tipo Agua)
    ('Gimnasio Ciudad Celeste', 3, 2, 3, 'Medalla Cascada'),
    -- Ciudad Fucsia (Koga/Roxie, Tipo Veneno)
    ('Gimnasio Ciudad Fucsia', 5, 11, 8, 'Medalla Alma'),
    -- Ciudad Azafrán (Sabrina, Tipo Psíquico)
    ('Gimnasio Ciudad Azafrán', 4, NULL, 11, 'Medalla Pantano'),
    -- Ciudad Iris (Clair, Tipo Dragón)
    ('Gimnasio Ciudad Iris', 12, 11, 15, 'Medalla Dragón'),
    -- Ciudad Sootopolis (Wallace, Tipo Agua)
    ('Gimnasio Ciudad Sootopolis', 19, NULL, 3, 'Medalla Lluvia'),
    -- Ciudad de Eterna (Gardenia, Tipo Planta)
    ('Gimnasio Ciudad de Eterna', 20, NULL, 5, 'Medalla Bosque'),
    -- Ciudad de Shalour (Korrina, Tipo Lucha)
    ('Gimnasio Ciudad de Shalour', 34, 12, 7, 'Medalla Puño'),
    -- Ciudad de Wyndon (Leon, Tipo Dragón)
    ('Gimnasio Ciudad de Wyndon', 40, 9, 15, 'Medalla Campeón');


INSERT INTO Pokemon_Objetos (pokemon_id, objeto_id)
VALUES
    -- Pikachu
    (1, 1),   -- Poción
    (1, 2),   -- Superpoción
    (1, 6),   -- Revivir
    (1, 20),  -- Baya Ziuela
    -- Charizard
    (2, 1),   -- Poción
    (2, 3),   -- Hiperpoción
    (2, 17),  -- Piedra Fuego
    (2, 28),  -- MT02
    -- Bulbasaur
    (3, 1),   -- Poción
    (3, 3),   -- Hiperpoción
    (3, 17),  -- Piedra Hoja
    (3, 19),  -- MT01
    -- Squirtle
    (4, 1),   -- Poción
    (4, 3),   -- Hiperpoción
    (4, 18),  -- Piedra Agua
    -- Greninja
    (5, 1),   -- Poción
    (5, 3),   -- Hiperpoción
    (5, 29),  -- Caramelo Raro
    -- Starmie
    (6, 1),   -- Poción
    (6, 3),   -- Hiperpoción
    (6, 20),  -- Baya Ziuela
    -- Psyduck
    (7, 1),   -- Poción
    (7, 3),   -- Hiperpoción
    (7, 12),  -- Antídoto
    -- Gyarados
    (8, 1),   -- Poción
    (8, 3),   -- Hiperpoción
    (8, 19),  -- MT01
    -- Togepi
    (9, 1),   -- Poción
    (9, 3),   -- Hiperpoción
    (9, 5),   -- Despertar
    -- Goldeen
    (10, 1),  -- Poción
    (10, 3),  -- Hiperpoción
    (10, 6),  -- Revivir
    -- Onix
    (11, 1),  -- Poción
    (11, 3),  -- Hiperpoción
    (11, 9),  -- Antihielo
    -- Geodude
    (12, 1),  -- Poción
    (12, 3),  -- Hiperpoción
    (12, 20), -- Baya Ziuela
    -- Vulpix
    (13, 1),  -- Poción
    (13, 3),  -- Hiperpoción
    (13, 18), -- Piedra Fuego
    -- Croagunk
    (14, 1),  -- Poción
    (14, 3),  -- Hiperpoción
    (14, 6),  -- Revivir
    -- Steelix
    (15, 1),  -- Poción
    (15, 3),  -- Hiperpoción
    (15, 10), -- Anti-paraliz
    -- Torchic
    (16, 1),  -- Poción
    (16, 3),  -- Hiperpoción
    (16, 19), -- MT01
    -- Beautifly
    (17, 1),  -- Poción
    (17, 3),  -- Hiperpoción
    (17, 12), -- Antídoto
    -- Piplup
    (18, 1),  -- Poción
    (18, 3),  -- Hiperpoción
    (18, 20), -- Baya Ziuela
    -- Buneary
    (19, 1),  -- Poción
    (19, 3),  -- Hiperpoción
    (19, 12), -- Antídoto
    -- Pachirisu
    (20, 1),  -- Poción
    (20, 3),  -- Hiperpoción
    (20, 6),  -- Revivir
    -- Ambipom
    (21, 1),  -- Poción
    (21, 3),  -- Hiperpoción
    (21, 12), -- Antídoto
    -- Porygon-Z
    (22, 1),  -- Poción
    (22, 3),  -- Hiperpoción
    (22, 30), -- MT03
    -- Skitty
    (23, 1),  -- Poción
    (23, 3),  -- Hiperpoción
    (23, 5),  -- Despertar
    -- Mudkip
    (24, 1),  -- Poción
    (24, 3),  -- Hiperpoción
    (24, 10), -- Anti-paraliz
    -- Snorlax
    (25, 1),  -- Poción
    (25, 3),  -- Hiperpoción
    (25, 29), -- Caramelo Raro
    -- Lapras
    (26, 1),  -- Poción
    (26, 3),  -- Hiperpoción
    (26, 6),  -- Revivir
    -- Butterfree
    (27, 1),  -- Poción
    (27, 3),  -- Hiperpoción
    (27, 12), -- Antídoto
    -- Charmander
    (28, 1),  -- Poción
    (28, 3),  -- Hiperpoción
    (28, 17), -- Piedra Fuego
    -- Blastoise
    (29, 1),  -- Poción
    (29, 3),  -- Hiperpoción
    (29, 18), -- Piedra Agua
    -- Arcanine
    (30, 1),  -- Poción
    (30, 3),  -- Hiperpoción
    (30, 18), -- Piedra Agua
    -- Gengar
    (31, 1),  -- Poción
    (31, 3),  -- Hiperpoción
    (31, 12), -- Antídoto
    -- Umbreon
    (32, 1),  -- Poción
    (32, 3),  -- Hiperpoción
    (32, 20), -- Baya Ziuela
    -- Pidgeot
    (33, 1),  -- Poción
    (33, 3),  -- Hiperpoción
    (33, 19), -- MT01
    -- Fennekin
    (34, 1),  -- Poción
    (34, 3),  -- Hiperpoción
    (34, 20), -- Baya Ziuela
    -- Pancham
    (35, 1),  -- Poción
    (35, 3),  -- Hiperpoción
    (35, 10), -- Anti-paraliz
    -- Sylveon
    (36, 1),  -- Poción
    (36, 3),  -- Hiperpoción
    (36, 5),  -- Despertar
    -- Absol
    (37, 1),  -- Poción
    (37, 3),  -- Hiperpoción
    (37, 6),  -- Revivir
    -- Garchomp
    (38, 1),  -- Poción
    (38, 3),  -- Hiperpoción
    (38, 17), -- Piedra Fuego
    -- Spiritomb
    (39, 1),  -- Poción
    (39, 3),  -- Hiperpoción
    (39, 10), -- Anti-paraliz
    -- Roserade
    (40, 1),  -- Poción
    (40, 3),  -- Hiperpoción
    (40, 5),  -- Despertar
    -- Lucario
    (41, 1),  -- Poción
    (41, 3),  -- Hiperpoción
    (41, 10), -- Anti-paraliz
    -- Milotic
    (42, 1),  -- Poción
    (42, 3),  -- Hiperpoción
    (42, 5);  -- Despertar

INSERT INTO Entrenadores_Peliculas (pelicula_id, entrenador_id)
VALUES
    -- Ash Ketchum aparece en la mayoría de las películas
    (1, 1),  -- 'Pokémon: La Película' con Ash Ketchum
    (2, 1),  -- 'Pokémon: El poder de todos' con Ash Ketchum
    (3, 1),  -- 'Pokémon: Detective Pikachu' con Ash Ketchum
    (4, 1),  -- 'Pokémon: El viaje de los héroes' con Ash Ketchum
    (5, 1),  -- 'Pokémon: Mewtwo contraataca' con Ash Ketchum
    (6, 1),  -- 'Pokémon: La historia de Mewtwo' con Ash Ketchum
    (7, 1),  -- 'Pokémon: Lucario y el misterio de Mew' con Ash Ketchum
    (8, 1),  -- 'Pokémon: Genesect y el despertar de una leyenda' con Ash Ketchum
    (9, 1),  -- 'Pokémon: El origen de Mewtwo' con Ash Ketchum
    (10, 1), -- 'Pokémon: El destino de un maestro' con Ash Ketchum
    -- Misty aparece en algunas películas clásicas
    (1, 2),  -- 'Pokémon: La Película' con Misty
    (4, 2),  -- 'Pokémon: El viaje de los héroes' con Misty
    (2, 2),  -- 'Pokémon: El poder de todos' con Misty
    (5, 2),  -- 'Pokémon: Mewtwo contraataca' con Misty
    -- Brock también tiene presencia en películas
    (1, 3),  -- 'Pokémon: La Película' con Brock
    (2, 3),  -- 'Pokémon: El poder de todos' con Brock
    (5, 3),  -- 'Pokémon: Mewtwo contraataca' con Brock
    (7, 3),  -- 'Pokémon: Lucario y el misterio de Mew' con Brock
    -- Giovanni y Mewtwo tienen una relación importante en estas películas
    (5, 4),  -- 'Pokémon: Mewtwo contraataca' con Giovanni
    (6, 4),  -- 'Pokémon: La historia de Mewtwo' con Giovanni
    (9, 4),  -- 'Pokémon: El origen de Mewtwo' con Giovanni
    (2, 4),  -- 'Pokémon: El poder de todos' con Giovanni
    -- May aparece en varias películas
    (4, 5),  -- 'Pokémon: El viaje de los héroes' con May
    -- Dawn aparece en varias películas donde comparte protagonismo con Ash
    (6, 6),  -- 'Pokémon: La historia de Mewtwo' con Dawn
    (9, 6),  -- 'Pokémon: El origen de Mewtwo' con Dawn
    -- Serena es otra compañera de Ash en películas más modernas
    (7, 7),  -- 'Pokémon: Lucario y el misterio de Mew' con Serena
    -- Cynthia es una de las protagonistas en películas recientes
    (8, 8),  -- 'Pokémon: Genesect y el despertar de una leyenda' con Cynthia
    (7, 8),  -- 'Pokémon: Lucario y el misterio de Mew' con Cynthia
    -- Leon como campeón tiene su aparición en películas recientes
    (10, 9); -- 'Pokémon: El destino de un maestro' con Leon
    (7, 13);  -- 'Pokémon: Lucario y el misterio de Mew' con Alain