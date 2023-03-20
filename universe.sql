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
-- Name: creator; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.creator (
    creator_id integer NOT NULL,
    name character varying(30) NOT NULL,
    power character varying(20)
);


ALTER TABLE public.creator OWNER TO freecodecamp;

--
-- Name: creator_creator_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.creator_creator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.creator_creator_id_seq OWNER TO freecodecamp;

--
-- Name: creator_creator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.creator_creator_id_seq OWNED BY public.creator.creator_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type character varying(20),
    constellation character varying(20),
    apparent_magnitude numeric(3,1)
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
    planet_id integer,
    name character varying(20) NOT NULL,
    description character varying(40),
    is_spherical boolean
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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(40),
    has_life boolean,
    number_of_moons integer
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
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_in_light_years_from_sun integer,
    description text
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
-- Name: creator creator_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creator ALTER COLUMN creator_id SET DEFAULT nextval('public.creator_creator_id_seq'::regclass);


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
-- Data for Name: creator; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.creator VALUES (1, 'God', 'creation');
INSERT INTO public.creator VALUES (2, 'Satan', 'kill');
INSERT INTO public.creator VALUES (3, 'Jesus', 'love');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sb Sbc', NULL, -20.9);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Sb', 'Andromeda', 3.4);
INSERT INTO public.galaxy VALUES (3, 'Barnard', 'IB (s) m', 'Sagittarius', 9.3);
INSERT INTO public.galaxy VALUES (4, 'Phoenix', 'dE0', 'Phoenix', 13.1);
INSERT INTO public.galaxy VALUES (5, 'Circinus', 'SA (s) b', 'Compass', 12.1);
INSERT INTO public.galaxy VALUES (6, 'Draco', 'E pec', 'Draco', 10.9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', 'Our Moon!', true);
INSERT INTO public.moon VALUES (2, 2, 'Fobos', 'Our next Moon!', false);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 'Demigod?', false);
INSERT INTO public.moon VALUES (4, 3, 'Io', 'Volcan World', true);
INSERT INTO public.moon VALUES (5, 3, 'Europe', 'Looking for Life', true);
INSERT INTO public.moon VALUES (6, 3, 'Ganymede', 'The largest!', true);
INSERT INTO public.moon VALUES (7, 3, 'Callisto', 'Crater World', true);
INSERT INTO public.moon VALUES (8, 4, 'Caronte', 'Not Friendly', true);
INSERT INTO public.moon VALUES (9, 4, 'Nix', 'Shell Moon', false);
INSERT INTO public.moon VALUES (10, 4, 'Styx', 'Love Greeks!', false);
INSERT INTO public.moon VALUES (11, 4, 'Kerbero', 'Woof!', false);
INSERT INTO public.moon VALUES (12, 4, 'Hydra', 'Heads!', false);
INSERT INTO public.moon VALUES (13, 7, 'Enceladus', 'Science!', true);
INSERT INTO public.moon VALUES (14, 7, 'Titan', 'Flowing!', true);
INSERT INTO public.moon VALUES (15, 9, 'Ariel', 'Disney?', true);
INSERT INTO public.moon VALUES (16, 9, 'Bianca', 'Bianconero!', true);
INSERT INTO public.moon VALUES (17, 9, 'Oberon', 'A lot more!', true);
INSERT INTO public.moon VALUES (18, 9, 'Puck', 'And more..', false);
INSERT INTO public.moon VALUES (19, 9, 'Rosalind', 'Colors?', true);
INSERT INTO public.moon VALUES (20, 9, 'Umbriel', 'Gray', true);
INSERT INTO public.moon VALUES (21, 10, 'Triton', 'Nitrogen ice', true);
INSERT INTO public.moon VALUES (22, 10, 'Proteus', '1989', false);
INSERT INTO public.moon VALUES (23, 10, 'Sao', 'Anime', false);
INSERT INTO public.moon VALUES (24, 10, 'Naiad', 'Good Name!', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 8, 'Lucius', 'HP Planet?', true, NULL);
INSERT INTO public.planet VALUES (6, 8, 'Dobby', 'Loyal Friend', true, NULL);
INSERT INTO public.planet VALUES (1, 9, 'Earth', 'Our Planet!', true, 1);
INSERT INTO public.planet VALUES (2, 9, 'Mars', 'Next Home!', true, 2);
INSERT INTO public.planet VALUES (3, 9, 'Jupiter', 'The Big One!', false, 95);
INSERT INTO public.planet VALUES (4, 9, 'Pluto', 'The Small One!', false, 5);
INSERT INTO public.planet VALUES (7, 9, 'Saturn', 'Rings of Power!', false, 83);
INSERT INTO public.planet VALUES (8, 9, 'Venus', 'No Moon!', false, 3);
INSERT INTO public.planet VALUES (9, 9, 'Uranus', 'No Jokes!', false, 5);
INSERT INTO public.planet VALUES (10, 9, 'Neptune', 'Ice Giant!', false, 14);
INSERT INTO public.planet VALUES (11, 9, 'Mercury', 'Too Hot!', false, 0);
INSERT INTO public.planet VALUES (12, 9, 'Ceres', 'Too Small!', false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sirius', 9, NULL);
INSERT INTO public.star VALUES (2, 1, 'Capella', 43, NULL);
INSERT INTO public.star VALUES (3, 2, 'Alpheratz', 97, NULL);
INSERT INTO public.star VALUES (4, 2, 'Mirach', 199, NULL);
INSERT INTO public.star VALUES (5, 4, 'Ankaa', 77, NULL);
INSERT INTO public.star VALUES (6, 5, 'Alfa Circini', 54, NULL);
INSERT INTO public.star VALUES (7, 3, 'Barnard Star', 20, NULL);
INSERT INTO public.star VALUES (8, 6, 'Malphoy', 10, NULL);
INSERT INTO public.star VALUES (9, 1, 'Sun', 0, NULL);


--
-- Name: creator_creator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.creator_creator_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: creator creator_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creator
    ADD CONSTRAINT creator_name_key UNIQUE (name);


--
-- Name: creator creator_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.creator
    ADD CONSTRAINT creator_pkey PRIMARY KEY (creator_id);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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

