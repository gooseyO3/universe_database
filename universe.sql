--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    civ_type integer NOT NULL,
    population integer NOT NULL,
    multiplanetary boolean NOT NULL,
    name character varying(30)
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years numeric(8,2),
    number_of_black_holes integer,
    distance_light_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_km integer,
    has_life boolean,
    age_in_million_years integer,
    discovered_date date,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_km integer,
    has_life boolean,
    rings_number integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_km integer,
    age_in_million_years integer,
    discovered_date date,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 1, 1000000, true, 'Solarians');
INSERT INTO public.civilization VALUES (2, 2, 500000, false, 'Andromedans');
INSERT INTO public.civilization VALUES (3, 1, 750000, true, 'Triangulans');
INSERT INTO public.civilization VALUES (4, 3, 200000, false, 'Whirlers');
INSERT INTO public.civilization VALUES (5, 2, 300000, true, 'Sombrerians');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A barred spiral galaxy containing our Solar System.', 13.60, 100, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest major galaxy to the Milky Way, expected to collide with it in 4.5 billion years.', 10.00, 200, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group, known for its small size compared to its neighbors.', 7.00, 50, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A grand-design spiral galaxy with a distinct spiral structure.', 6.00, 75, 23000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'An unbarred spiral galaxy with a bright nucleus and an unusually large central bulge.', 8.80, 150, 29000000);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'A galaxy with a dark band of absorbing dust in front of the bright nucleus.', 8800.00, 200, 17000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mercury I', 1000, false, 4500, '2000-01-01', 1);
INSERT INTO public.moon VALUES (2, 'Mercury II', 2000, false, 4500, '2000-01-02', 1);
INSERT INTO public.moon VALUES (3, 'Venus I', 5000, false, 4400, '2005-03-15', 2);
INSERT INTO public.moon VALUES (4, 'Venus II', 6000, false, 4400, '2005-03-16', 2);
INSERT INTO public.moon VALUES (5, 'Proxima b I', 3000, false, 4500, '2010-04-10', 3);
INSERT INTO public.moon VALUES (6, 'Proxima b II', 4000, false, 4500, '2010-04-11', 3);
INSERT INTO public.moon VALUES (7, 'Proxima c I', 7000, false, 4200, '2015-05-20', 4);
INSERT INTO public.moon VALUES (8, 'Proxima c II', 8000, false, 4200, '2015-05-21', 4);
INSERT INTO public.moon VALUES (9, 'Andromeda I Moon 1', 9000, false, 5000, '2020-06-30', 5);
INSERT INTO public.moon VALUES (10, 'Andromeda I Moon 2', 10000, false, 5000, '2020-07-01', 5);
INSERT INTO public.moon VALUES (11, 'Andromeda II Moon 1', 11000, false, 4900, '2021-08-10', 6);
INSERT INTO public.moon VALUES (12, 'Andromeda II Moon 2', 12000, false, 4900, '2021-08-11', 6);
INSERT INTO public.moon VALUES (13, 'Andromeda III Moon 1', 13000, false, 4800, '2022-09-20', 7);
INSERT INTO public.moon VALUES (14, 'Andromeda III Moon 2', 14000, false, 4800, '2022-09-21', 7);
INSERT INTO public.moon VALUES (15, 'Andromeda IV Moon 1', 15000, false, 4700, '2023-10-30', 8);
INSERT INTO public.moon VALUES (16, 'Andromeda IV Moon 2', 16000, false, 4700, '2023-10-31', 8);
INSERT INTO public.moon VALUES (17, 'Triangulum I Moon 1', 17000, false, 4600, '2024-11-01', 9);
INSERT INTO public.moon VALUES (18, 'Triangulum I Moon 2', 18000, false, 4600, '2024-11-02', 9);
INSERT INTO public.moon VALUES (19, 'Triangulum II Moon 1', 19000, false, 4500, '2025-12-10', 10);
INSERT INTO public.moon VALUES (20, 'Triangulum II Moon 2', 20000, false, 4500, '2025-12-11', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 5790, false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 10820, false, 0, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 75000, false, 0, 2);
INSERT INTO public.planet VALUES (4, 'Proxima c', 1500, false, 1, 2);
INSERT INTO public.planet VALUES (5, 'Andromeda I', 25000, false, 2, 3);
INSERT INTO public.planet VALUES (6, 'Andromeda II', 500, true, 3, 3);
INSERT INTO public.planet VALUES (7, 'Andromeda III', 75000, false, 1, 4);
INSERT INTO public.planet VALUES (8, 'Andromeda IV', 1000, false, 0, 4);
INSERT INTO public.planet VALUES (9, 'Triangulum I', 30000, false, 2, 5);
INSERT INTO public.planet VALUES (10, 'Triangulum II', 6000, true, 3, 5);
INSERT INTO public.planet VALUES (11, 'Triangulum III', 9000, false, 1, 6);
INSERT INTO public.planet VALUES (12, 'Triangulum IV', 1200, false, 0, 6);
INSERT INTO public.planet VALUES (13, 'Whirlpool I', 230000, false, 2, 7);
INSERT INTO public.planet VALUES (14, 'Whirlpool II', 46000, true, 3, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4600, '1000-01-01', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 39900, 4500, '1915-10-18', 1);
INSERT INTO public.star VALUES (3, 'Andromeda Alpha', 250000, 5000, '1924-09-05', 2);
INSERT INTO public.star VALUES (4, 'Andromeda Beta', 25001, 4900, '1924-09-06', 2);
INSERT INTO public.star VALUES (5, 'Triangulum Alpha', 3000, 4700, '1926-08-07', 3);
INSERT INTO public.star VALUES (6, 'Triangulum Beta', 3001, 4650, '1926-08-08', 3);
INSERT INTO public.star VALUES (7, 'Whirlpool Alpha', 23000, 4800, '1932-05-12', 4);
INSERT INTO public.star VALUES (8, 'Whirlpool Beta', 23001, 4750, '1932-05-13', 4);
INSERT INTO public.star VALUES (9, 'Sombrero Alpha', 290000, 4900, '1950-01-01', 5);
INSERT INTO public.star VALUES (10, 'Sombrero Beta', 290001, 4850, '1950-01-02', 5);
INSERT INTO public.star VALUES (11, 'Black Eye Alpha', 17000, 5000, '1968-07-20', 6);
INSERT INTO public.star VALUES (12, 'Black Eye Beta', 17001, 4950, '1968-07-21', 6);


--
-- Name: civilization civilization_civ_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_civ_id_key UNIQUE (civilization_id);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id, planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id, star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id, galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

