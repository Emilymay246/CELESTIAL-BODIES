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
-- Name: explorer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.explorer (
    explorer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    planet_id integer
);


ALTER TABLE public.explorer OWNER TO freecodecamp;

--
-- Name: explorer_explorer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.explorer_explorer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.explorer_explorer_id_seq OWNER TO freecodecamp;

--
-- Name: explorer_explorer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.explorer_explorer_id_seq OWNED BY public.explorer.explorer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_size text,
    galaxy_age_m integer,
    galaxy_found boolean
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
    distance_from_planet integer,
    crater_count numeric,
    name character varying(30) NOT NULL,
    planet_id integer
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
    name character varying(30) NOT NULL,
    planet_desc text,
    is_livable boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    age integer,
    found_yet boolean,
    galaxy_id integer
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
-- Name: explorer explorer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer ALTER COLUMN explorer_id SET DEFAULT nextval('public.explorer_explorer_id_seq'::regclass);


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
-- Data for Name: explorer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.explorer VALUES (1, 'George Jeson', 854, 1);
INSERT INTO public.explorer VALUES (2, 'Barny Rubble', 14, 2);
INSERT INTO public.explorer VALUES (3, 'Superman', 35, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'alpha', 'small', 100, true);
INSERT INTO public.galaxy VALUES (2, 'beta', 'medium', 152, false);
INSERT INTO public.galaxy VALUES (3, 'capta', 'large', 657, true);
INSERT INTO public.galaxy VALUES (4, 'delta', 'small', 1548, false);
INSERT INTO public.galaxy VALUES (5, 'eggs', 'medium', 1225, false);
INSERT INTO public.galaxy VALUES (6, 'frogs', 'large', 5, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 564, 1, 'moon_ape', 1);
INSERT INTO public.moon VALUES (2, 687, 5, 'moon_baby', 1);
INSERT INTO public.moon VALUES (3, 15, 4, 'moon_cat', 2);
INSERT INTO public.moon VALUES (4, 687, 3, 'moon_dog', 2);
INSERT INTO public.moon VALUES (5, 654, 7, 'moon_egret', 3);
INSERT INTO public.moon VALUES (6, 615, 5, 'moon_fish', 3);
INSERT INTO public.moon VALUES (7, 87, 6, 'moon_goat', 4);
INSERT INTO public.moon VALUES (8, 165, 1, 'moon_hippo', 4);
INSERT INTO public.moon VALUES (9, 87, 1, 'moon_ibis', 5);
INSERT INTO public.moon VALUES (10, 654, 8, 'moon_jackle', 5);
INSERT INTO public.moon VALUES (11, 15, 9, 'moon_kanga', 6);
INSERT INTO public.moon VALUES (12, 564, 4, 'moon_lama', 6);
INSERT INTO public.moon VALUES (13, 55, 5, 'moon_marmot', 7);
INSERT INTO public.moon VALUES (14, 15, 6, 'moon_narwal', 7);
INSERT INTO public.moon VALUES (15, 458, 7, 'moon_octo', 8);
INSERT INTO public.moon VALUES (16, 354, 2, 'moon_platty', 8);
INSERT INTO public.moon VALUES (17, 2156, 6, 'moon_rino', 9);
INSERT INTO public.moon VALUES (18, 546, 7, 'moon_stega', 9);
INSERT INTO public.moon VALUES (19, 454, 1, 'moon_trex', 10);
INSERT INTO public.moon VALUES (20, 454, 3, 'moon_walrus', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_amy', 'shes a doll', true, 1);
INSERT INTO public.planet VALUES (2, 'planet_betty', 'unkind bitch', false, 1);
INSERT INTO public.planet VALUES (3, 'planet_cassie', 'cant live here', true, 2);
INSERT INTO public.planet VALUES (4, 'planet_dorinda', 'so much sulpher', false, 2);
INSERT INTO public.planet VALUES (5, 'planet_erica', 'why now', true, 3);
INSERT INTO public.planet VALUES (6, 'planet_francescca', 'pokemeon from here', false, 3);
INSERT INTO public.planet VALUES (7, 'planet_georgia', 'fruitcake from here', true, 4);
INSERT INTO public.planet VALUES (8, 'planet_hellen', 'all candy', false, 4);
INSERT INTO public.planet VALUES (9, 'planet_izzy', 'so so fun', true, 5);
INSERT INTO public.planet VALUES (10, 'planet_jessie', 'planet hard to describe', false, 5);
INSERT INTO public.planet VALUES (11, 'planet_kim', 'shell take your husband', true, 6);
INSERT INTO public.planet VALUES (12, 'planet_lisa', 'shell make you dinner', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_andrew', 654, true, 1);
INSERT INTO public.star VALUES (2, 'star_betty', 878, true, 1);
INSERT INTO public.star VALUES (3, 'star_calum', 3218, true, 2);
INSERT INTO public.star VALUES (4, 'star_dave', 543, true, 2);
INSERT INTO public.star VALUES (5, 'star_eric', 548, true, 3);
INSERT INTO public.star VALUES (6, 'star_fred', 45, true, 3);


--
-- Name: explorer_explorer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.explorer_explorer_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: explorer explorer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer
    ADD CONSTRAINT explorer_name_key UNIQUE (name);


--
-- Name: explorer explorer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer
    ADD CONSTRAINT explorer_pkey PRIMARY KEY (explorer_id);


--
-- Name: galaxy galaxy_galaxy_age_m_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_age_m_key UNIQUE (galaxy_age_m);


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
-- Name: explorer explorer_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorer
    ADD CONSTRAINT explorer_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

