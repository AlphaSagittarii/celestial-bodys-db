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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric,
    description text,
    type_id integer
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    type_id integer,
    description text
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
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    type_id integer
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
    name character varying(50) NOT NULL,
    is_black_hole boolean NOT NULL,
    galaxy_id integer NOT NULL,
    type_id integer
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
-- Name: type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type (
    type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    classification_no integer
);


ALTER TABLE public.type OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.type.type_id;


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
-- Name: type type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type ALTER COLUMN type_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Bear Paw Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Needle Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 7, NULL, 'Moon of Mars, named after the Greek god of fear.');
INSERT INTO public.moon VALUES (2, 'Deimos', 7, NULL, 'Moon of Mars, named after the Greek god of terror.');
INSERT INTO public.moon VALUES (3, 'Luna', 8, NULL, 'The Earth''s only natural satellite, commonly known as the Moon.');
INSERT INTO public.moon VALUES (4, 'Ganymede', 9, NULL, 'Largest moon of Jupiter and in the Solar System.');
INSERT INTO public.moon VALUES (5, 'Io', 9, NULL, 'Innermost of the four Galilean moons of Jupiter.');
INSERT INTO public.moon VALUES (6, 'Europa', 9, NULL, 'One of the Galilean moons of Jupiter, known for its possible subsurface ocean.');
INSERT INTO public.moon VALUES (7, 'Callisto', 9, NULL, 'Galilean moon of Jupiter, heavily cratered and icy.');
INSERT INTO public.moon VALUES (8, 'Titan', 12, NULL, 'Largest moon of Saturn, known for its thick atmosphere.');
INSERT INTO public.moon VALUES (9, 'Rhea', 12, NULL, 'Second-largest moon of Saturn, with a heavily cratered surface.');
INSERT INTO public.moon VALUES (10, 'Iapetus', 12, NULL, 'Third-largest moon of Saturn, known for its two-tone coloration.');
INSERT INTO public.moon VALUES (11, 'Triton', 11, NULL, 'Largest moon of Neptune and the only large moon in the Solar System with a retrograde orbit.');
INSERT INTO public.moon VALUES (12, 'Proteus', 11, NULL, 'Second-largest moon of Neptune, irregularly shaped and heavily cratered.');
INSERT INTO public.moon VALUES (13, 'Titania', 25, NULL, 'Largest moon of Uranus, known for its diverse terrain.');
INSERT INTO public.moon VALUES (14, 'Oberon', 25, NULL, 'Second-largest moon of Uranus, with a heavily cratered surface.');
INSERT INTO public.moon VALUES (15, 'Ariel', 25, NULL, 'One of the five major moons of Uranus, with a relatively young surface.');
INSERT INTO public.moon VALUES (16, 'Umbriel', 25, NULL, 'Dark and heavily cratered moon of Uranus, the third-largest of its moons.');
INSERT INTO public.moon VALUES (17, 'Miranda', 25, NULL, 'Smallest and innermost of Uranus''s five round moons.');
INSERT INTO public.moon VALUES (18, 'Corot-7b', 23, NULL, 'Discovered exoplanet, one of the first rocky planets outside the Solar System.');
INSERT INTO public.moon VALUES (19, 'GJ 1214 b', 24, NULL, 'Super-Earth exoplanet, discovered by the MEarth Project.');
INSERT INTO public.moon VALUES (20, '55 Cancri e', 30, NULL, 'Super-Earth exoplanet orbiting the star 55 Cancri in the constellation of Cancer.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Mars', false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Earth', true, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Jupiter', false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Venus', false, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Neptune', false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Saturn', false, 1, NULL);
INSERT INTO public.planet VALUES (23, 'Proxima Centauri b', false, 1, NULL);
INSERT INTO public.planet VALUES (24, 'TRAPPIST-1e', false, 2, NULL);
INSERT INTO public.planet VALUES (25, 'Kepler-186f', false, 3, NULL);
INSERT INTO public.planet VALUES (26, 'HD 40307 g', false, 4, NULL);
INSERT INTO public.planet VALUES (27, 'Gliese 581g', false, 5, NULL);
INSERT INTO public.planet VALUES (28, 'Kepler-22b', false, 1, NULL);
INSERT INTO public.planet VALUES (29, 'Kepler-62e', false, 2, NULL);
INSERT INTO public.planet VALUES (30, 'Kepler-62f', false, 3, NULL);
INSERT INTO public.planet VALUES (31, 'Kepler-62d', false, 4, NULL);
INSERT INTO public.planet VALUES (32, 'Kepler-62c', false, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 5, NULL);
INSERT INTO public.star VALUES (2, 'UY Scuti', false, 5, NULL);
INSERT INTO public.star VALUES (3, 'VY Canis Majoris', false, 5, NULL);
INSERT INTO public.star VALUES (4, 'RW Cephei', false, 5, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', false, 5, NULL);
INSERT INTO public.star VALUES (6, 'Antares', false, 5, NULL);


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type VALUES (1, 'Super-Jupiter', NULL);
INSERT INTO public.type VALUES (2, 'Giant planet', NULL);
INSERT INTO public.type VALUES (3, 'Neptunian Planet', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 32, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 3, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: type types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT types_pkey PRIMARY KEY (type_id);


--
-- Name: type unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT unique_constraint UNIQUE (name);


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

