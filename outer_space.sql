-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

CREATE TABLE galaxy (
  id SERIAL PRIMARY KEY,
  galaxy_name VARCHAR(50) NOT NULL
);

INSERT INTO galaxy (galaxy_name) VALUES ('Milky Way') RETURNING id;

CREATE TABLE celestial_bodies (
  id SERIAL PRIMARY KEY,
  body_name VARCHAR(50) NOT NULL,
  body_type TEXT NOT NULL
);

INSERT INTO celestial_bodies (body_name, body_type) VALUES
('Earth', 'planet'),
('Mars', 'planet'),
('Venus', 'planet'),
('Neptune', 'planet'),
('Proxima Cenauri b', 'planet'),
('Gliese 876 b', 'planet'),
('The Sun', 'star'),
('Proxima Centauri', 'star'),
('Gliese 876', 'star'),
('The Moon', 'moon'),
('Phobos', 'moon'),
('Deimos', 'moon'),
('Naiad', 'moon'),
('Thalassa', 'moon'),
('Despina', 'moon'),
('Galatea', 'moon'),
('Larissa', 'moon'),
('S/2004 N 1', 'moon'),
('Proteus', 'moon'), 
('Triton', 'moon'), 
('Nereid', 'moon'),
('Halimede', 'moon'),
('Sao', 'moon'),
('Laomedeia', 'moon'),
('Psamathe', 'moon'),
('Neso', 'moon')

RETURNING id;

CREATE TABLE celestial_object_orbit (
  id SERIAL PRIMARY KEY,
  celestial_body_id VARCHAR(50) NOT NULL,
  orbits_around VARCHAR(50) NOT NULL,
  orbital_period_in_years INT DEFAULT NULL
)

INSERT INTO celestial_object_orbit (celestial_body_id, orbits_around_celestial_body_id, orbital_period_in_years) VALUES
('1', '7', '1.00'),
('2', '7', '1.88'),
('3', '7', '0.62'),
('4', '7', '164.8'),
('5', '8', '0.03'),
('6', '9', '0.23'),
('10', '1'),
('11', '2'),
('12', '2'),
('13', '4'),
('14', '4'),
('15', '4'),
('16', '4'),
('17', '4'),
('18', '4'),
('19', '4'), 
('20', '4'), 
('21', '4'),
('22', '4'),
('23', '4'),
('24', '4'),
('25', '4'),
('26', '4');
