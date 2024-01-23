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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life integer,
    is_spherical integer
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
-- Name: god; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.god (
    name character varying(30) NOT NULL,
    god_id integer NOT NULL,
    religion text
);


ALTER TABLE public.god OWNER TO freecodecamp;

--
-- Name: god_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.god_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.god_id_seq OWNER TO freecodecamp;

--
-- Name: god_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.god_id_seq OWNED BY public.god.god_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL
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
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean
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
    galaxy_id integer NOT NULL,
    is_spherical integer,
    has_life boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: god god_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god ALTER COLUMN god_id SET DEFAULT nextval('public.god_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'here', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'there', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'everywhere', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'andromeda', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'milky way', 6, NULL, NULL);


--
-- Data for Name: god; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.god VALUES ('Allah', 1, NULL);
INSERT INTO public.god VALUES ('shriram', 2, NULL);
INSERT INTO public.god VALUES ('christ', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'jupiter', 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'mars', 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mercury', 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'venus', 5, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 6, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'rand1', 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'rand2', 4, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'rand3', 5, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'rand4', 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'earth', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'venus', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'uranus', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'alfirk', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'algedi', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'algenib', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: god_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.god_id_seq', 1, false);


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
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: god god_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_id_key UNIQUE (god_id);


--
-- Name: god god_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_pkey PRIMARY KEY (god_id);


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
-- Name: moon some_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT some_moon UNIQUE (name);


--
-- Name: god some_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT some_name UNIQUE (god_id);


--
-- Name: planet some_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT some_planet UNIQUE (name);


--
-- Name: galaxy some_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT some_unique UNIQUE (name);


--
-- Name: star some_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT some_unique_star UNIQUE (name);


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

