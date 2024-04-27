-- INTRO BBDD - EJERCICIO PRÁCTICO
-- Pedro Felipe Gomez Bonilla
-- •
-- Ayer
-- 100 puntos
-- Fecha límite: 6:20 p.m.
-- Estimados compañeros, un cordial saludo.

-- Por favor realizamos el siguiente ejercicio: 



-- El Ministerio del Medio Ambiente ha decidido crear un Software que permita manejar los
--datos e información que se generan sobre los parques naturales gestionados por cada
-- departamento,
-- Como parte del proceso de validación y estructuración de requerimientos en su primera
-- versión, determino las siguientes características para el diseño inicial del sistema:
-- 1. Un departamento puede tener varios parques naturales.
-- 2. Todo departamento tiene solo una entidad responsable de los parques.
-- 3. Aunque un departamento tiene una entidad responsable para sus parques, dicha entidad puede ser responsable de parques en varios departamentos.
-- 4. Un parque puede ser compartido por más de un departamento.
-- 5. Un parque natural se identifica por un nombre, el día en que fue declarado, tiene variaas áreas identificadas por un nombre y una determinada extensión. Por motivos de eficiencia se desea favorecer las consults que se refieran al número de parques existentes en cada departamento y la superficie total declarada de cada parque.
-- 6. En cada área residen diferentes especies, las cuales pueden ser de tres (3) tipos:
-- Vegetales, Animales o Minerales.
-- 7. Cada especie tiene una denominación científica, una denominación vulgar y un
-- número de inventario de individuos por área.
-- 8. Del personal del parque se guarda el número de cédula, nombre, dirección, teléfonos
-- (incluido móvil) y sueldo. Se distinguen los siguientes tipos de personal:
-- 8.1. 001: Personal de Gestión: Registra los datos de los visitantes del parque y están ubicados en las entradas del mismo, las cuales están identificadas conun número).
-- 8.2. 002: Personal de Vigilancia: Vigila un área determinada del parque que recorre en un vehículo el cual está identificado por un tipo y una marca).
-- 8.3. 003: Personal de Conservación: Mantiene y conserva un área determinada delparque. Cada uno lo realiza en una especialidad determinada (Limpieza, aminos, etc.).
-- 8.4. 004: Personal Investigador: Tiene una titulación y realizan funciones (incluso en equipo), a nivel de proyectos de investigación sobre una determinada  especie. Un investigador trabaja en un proyecto analizando varias especies, una especie puede ser investigada por un investigador en varios proyectos y en un proyecto una especie puede ser investigada por varios investigadores.
-- 9. Un proyecto de investigación tiene un presupuesto y un periodo de realización.
-- 10. De un visitante se tiene identificación, nombre, dirección y profesión, puede alojarse
-- en cualquiera de los alojamientos de los que dispone el parque los cuales tienen
-- capacidad limitada y una categoría establecida.



-- Realizar el Diagrama E-R del enunciado anterior incluyendo las

-- relaciones necesarias, adicionalmente se debe indicar claramente

-- aquellos supuestos que no se hayan podido incorporar en enunciado

-- y que ustedes consideren debe incluirse para mejorar el modelo.


-- OPCIONAL : Realizar los comandos .sql para la creación de las tablas y relaciones con mínimo 51 entradas donde esta se aplique.