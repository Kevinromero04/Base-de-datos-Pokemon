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

INSERT INTO Pokemon (Numero_pokedex, Nombre, ataque_base, defensa_base, velocidad_base, hp_base, generacion) 
VALUES
(25, 'Pikachu', 55, 40, 90, 35, 1),      
(6, 'Charizard', 84, 78, 100, 78, 1),   
(1, 'Bulbasaur', 49, 49, 45, 45, 1),    
(7, 'Squirtle', 48, 65, 43, 44, 1),      
(658, 'Greninja', 110, 75, 122, 72, 6),  
(121, 'Starmie', 65, 70, 97, 60, 1),    
(54, 'Psyduck', 52, 48, 55, 50, 1),      
(130, 'Gyarados', 125, 79, 81, 95, 1),   
(175, 'Togepi', 40, 40, 20, 35, 2),     
(118, 'Goldeen', 30, 55, 52, 45, 1),    
(95, 'Onix', 45, 160, 30, 35, 1),      
(74, 'Geodude', 80, 100, 30, 40, 1),   
(37, 'Vulpix', 60, 50, 65, 38, 1),     
(453, 'Croagunk', 61, 40, 50, 70, 4),    
(208, 'Steelix', 75, 100, 30, 75, 2),   
(256, 'Torchic', 120, 70, 80, 80, 3),     
(267, 'Beautifly', 70, 50, 65, 60, 3),    
(393, 'Piplup', 50, 40, 56, 64, 4),       
(427, 'Buneary', 50, 60, 60, 60, 4),      
(417, 'Pachirisu', 60, 40, 67, 60, 4),    
(424, 'Ambipom', 100, 60, 115, 75, 4),  
(474, 'Porygon-Z', 80, 70, 40, 85, 4),    
(38, 'Skitty', 60, 55, 40, 90, 1),         
(258, 'Mudkip', 70, 70, 50, 50, 3),       
(143, 'Snorlax', 110, 70, 30, 160, 1),   
(131, 'Lapras', 130, 80, 60, 130, 1),      
(12, 'Butterfree', 45, 50, 70, 60, 1),   
(4, 'Charmander', 52, 43, 60, 39, 1),     
(158, 'Blastoise', 83, 100, 78, 59, 2),    
(59, 'Arcanine', 110, 80, 95, 65, 1),     
(94, 'Gengar', 65, 60, 110, 60, 1),       
(197, 'Umbreon', 95, 110, 65, 95, 2),     
(18, 'Pidgeot', 80, 75, 101, 83, 1),     
(655, 'Fennekin', 59, 90, 104, 60, 6),    
(674, 'Pancham', 60, 60, 50, 67, 6),      
(700, 'Sylveon', 65, 65, 60, 95, 6),       
(359, 'Absol', 130, 75, 75, 65, 3),       
(445, 'Garchomp', 130, 95, 102, 108, 4),   
(442, 'Spiritomb', 50, 92, 35, 50, 4),    
(407, 'Roserade', 70, 65, 90, 60, 4),       
(448, 'Lucario', 110, 70, 110, 70, 4),      
(349, 'Milotic', 60, 79, 81, 95, 3);

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