--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    star_in_galaxy character varying(50) NOT NULL,
    age_in_million_years integer,
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    planet_id integer NOT NULL,
    size integer,
    density integer,
    weight integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planets_in_star character varying(60) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types numeric,
    moon_of_planet text,
    name character varying(49)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    has_life boolean,
    number_of_planets integer,
    planets_in_star character varying(50) NOT NULL,
    description text,
    star_in_galaxy character varying(50) NOT NULL,
    name character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: zeros; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zeros (
    zeros_id integer NOT NULL,
    zero_1 integer NOT NULL,
    zero_2 integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public.zeros OWNER TO freecodecamp;

--
-- Name: zeros_zero_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zeros_zero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zeros_zero_id_seq OWNER TO freecodecamp;

--
-- Name: zeros_zero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zeros_zero_id_seq OWNED BY public.zeros.zeros_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: zeros zeros_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zeros ALTER COLUMN zeros_id SET DEFAULT nextval('public.zeros_zero_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', false, 'alpheratz', 2220, 500);
INSERT INTO public.galaxy VALUES (2, 'milky way', true, 'sun', 1650, 300);
INSERT INTO public.galaxy VALUES (3, 'ursa major', false, 'ursa major 2', 3450, 200);
INSERT INTO public.galaxy VALUES (4, 'ursa minor', false, 'ursa minor 1', 2340, 100);
INSERT INTO public.galaxy VALUES (5, 'draco 2', false, 'draco', 5030, 900);
INSERT INTO public.galaxy VALUES (6, 'hercules dwarf', true, 'hercules', 4030, 560);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 7, 1000, 2000, 3000);
INSERT INTO public.moon VALUES (2, 'ganymede', 3, 200, 40, 1003);
INSERT INTO public.moon VALUES (3, 'io', 4, 2340, 3024, 230);
INSERT INTO public.moon VALUES (4, 'europa', 5, 3403, 4023, 2354);
INSERT INTO public.moon VALUES (5, 'callisto', 6, 301132, 34123, 219);
INSERT INTO public.moon VALUES (6, 'drop 1', 4, 3232, 323, 12);
INSERT INTO public.moon VALUES (7, 'drop 2', 5, 213, 31345, 231);
INSERT INTO public.moon VALUES (8, 'drop 3', 6, 224, 313, 190);
INSERT INTO public.moon VALUES (9, 'drop 4', 11, 695, 349, 145);
INSERT INTO public.moon VALUES (10, 'drop 5', 16, 345, 5423, 21);
INSERT INTO public.moon VALUES (11, 'drop 6', 13, 131, 145, 41);
INSERT INTO public.moon VALUES (12, 'phobos', 10, 44, 4124, 1341);
INSERT INTO public.moon VALUES (13, 'deimos', 11, 452, 424, 123);
INSERT INTO public.moon VALUES (14, 'prometheus', 15, 341, 425, 4131);
INSERT INTO public.moon VALUES (15, 'pandora', 16, 1344, 7654, 4523);
INSERT INTO public.moon VALUES (16, 'zero1', 3, 4245, 4123, 512);
INSERT INTO public.moon VALUES (17, 'zero2', 4, 123, 34131, 524);
INSERT INTO public.moon VALUES (18, 'zero4', 6, 31, 313, 313);
INSERT INTO public.moon VALUES (19, 'zero5', 5, 14, 313, 5423);
INSERT INTO public.moon VALUES (20, 'zero6', 7, 344, 412, 313);
INSERT INTO public.moon VALUES (21, 'zero7', 10, 1254, 136, 12);
INSERT INTO public.moon VALUES (22, 'zero3', 5, 524, 425, 424);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, true, 1.2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', false, true, 1.8, 'ganymede', NULL);
INSERT INTO public.planet VALUES (4, 'jupiter', false, true, 1.8, 'europa', NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', false, true, 1.8, 'Io', NULL);
INSERT INTO public.planet VALUES (6, 'jupiter', false, true, 1.8, 'callisto', NULL);
INSERT INTO public.planet VALUES (7, 'earth', true, true, 1.2, 'moon', NULL);
INSERT INTO public.planet VALUES (8, 'mercury', false, false, 1.0, '', NULL);
INSERT INTO public.planet VALUES (9, 'mars', false, true, 1.1, 'phobos', NULL);
INSERT INTO public.planet VALUES (10, 'mars', false, true, 1.1, 'deimos', NULL);
INSERT INTO public.planet VALUES (11, 'saturn', false, false, 1.7, 'janus', NULL);
INSERT INTO public.planet VALUES (12, 'saturn', false, false, 1.7, 'calypso', NULL);
INSERT INTO public.planet VALUES (13, 'saturn', false, false, 1.7, 'phoebe', NULL);
INSERT INTO public.planet VALUES (14, 'saturn', false, false, 1.7, 'pan', NULL);
INSERT INTO public.planet VALUES (15, 'saturn', false, false, 1.7, 'prometheus', NULL);
INSERT INTO public.planet VALUES (16, 'saturn', false, false, 1.7, 'pandora', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, true, 10, 'earth', 'our solar system', 'sun', NULL);
INSERT INTO public.star VALUES (2, false, 200, 'sojor2', 'far far away', 'draco', NULL);
INSERT INTO public.star VALUES (3, false, 1000, 'atreides', 'greek mythology', 'hercules', NULL);
INSERT INTO public.star VALUES (4, false, 400, 'dromedarus', 'our neighbour', 'alpheratz', NULL);
INSERT INTO public.star VALUES (5, false, 4, 'bruno', 'little bear', 'ursa minor 1', NULL);
INSERT INTO public.star VALUES (6, false, 30, 'lars', 'big bear', 'ursa major 2', NULL);
INSERT INTO public.star VALUES (7, false, 10, 'mercury', 'solar system', 'sun', NULL);
INSERT INTO public.star VALUES (8, false, 10, 'mars', 'solar system', 'sun', NULL);
INSERT INTO public.star VALUES (9, false, 10, 'neptun', 'solar system', 'sun', NULL);
INSERT INTO public.star VALUES (10, false, 10, 'venus', 'solar system', 'sun', NULL);
INSERT INTO public.star VALUES (11, false, 10, 'uranus', 'solar system', 'sun', NULL);
INSERT INTO public.star VALUES (12, false, 10, 'saturn', 'solar system', 'sun', NULL);
INSERT INTO public.star VALUES (13, false, 10, 'jupiter', 'solar system', 'sun', NULL);


--
-- Data for Name: zeros; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zeros VALUES (1, 2, 3, 'tada');
INSERT INTO public.zeros VALUES (2, 4, 5, 'zozo');
INSERT INTO public.zeros VALUES (3, 4, 5, 'bubu');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: zeros_zero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zeros_zero_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_in_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_in_galaxy_key UNIQUE (star_in_galaxy);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planets_in_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planets_in_star_key UNIQUE (planets_in_star);


--
-- Name: zeros zeros_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zeros
    ADD CONSTRAINT zeros_name_key UNIQUE (name);


--
-- Name: zeros zeros_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zeros
    ADD CONSTRAINT zeros_pkey PRIMARY KEY (zeros_id);


--
-- Name: zeros zeros_zero_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zeros
    ADD CONSTRAINT zeros_zero_id_key UNIQUE (zeros_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planets_in_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planets_in_star_fkey FOREIGN KEY (planets_in_star) REFERENCES public.star(planets_in_star);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (star_in_galaxy) REFERENCES public.galaxy(star_in_galaxy);


--
-- PostgreSQL database dump complete
--

