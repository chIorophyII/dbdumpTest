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
-- Name: candidate_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.candidate_earth (
    candidate_earth_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer
);


ALTER TABLE public.candidate_earth OWNER TO freecodecamp;

--
-- Name: candidate_earth_candidate_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.candidate_earth_candidate_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.candidate_earth_candidate_earth_id_seq OWNER TO freecodecamp;

--
-- Name: candidate_earth_candidate_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.candidate_earth_candidate_earth_id_seq OWNED BY public.candidate_earth.candidate_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    name character varying NOT NULL,
    age_in_millions_of_years integer
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
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
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
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
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
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
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
-- Name: candidate_earth candidate_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.candidate_earth ALTER COLUMN candidate_earth_id SET DEFAULT nextval('public.candidate_earth_candidate_earth_id_seq'::regclass);


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
-- Data for Name: candidate_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.candidate_earth VALUES (1, 'kepler-438b', 640, 11);
INSERT INTO public.candidate_earth VALUES (2, 'kepler-442b', 1100, 11);
INSERT INTO public.candidate_earth VALUES (3, 'GJ 273b', 12, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'our galaxy', false, 24800, 'milky way', 132);
INSERT INTO public.galaxy VALUES (3, 'elliptical galaxy', false, 110, 'ngc 474', 100);
INSERT INTO public.galaxy VALUES (4, 'irregular galaxy', false, 12, 'ngc 4499', 11);
INSERT INTO public.galaxy VALUES (5, 'samsung galaxy', true, 1, 'galaxy s23', 1);
INSERT INTO public.galaxy VALUES (6, 'samsung galaxy', false, 1, 'galaxy s23 ultra', 1);
INSERT INTO public.galaxy VALUES (7, 'samsung galaxy', false, 1, 'galaxy s22', 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'earth moon', true, 0.0026, 'moon', 45, 1);
INSERT INTO public.moon VALUES (2, NULL, true, NULL, 'Titan', 45, 1);
INSERT INTO public.moon VALUES (3, NULL, false, NULL, 'Europa', 45, 1);
INSERT INTO public.moon VALUES (4, NULL, false, NULL, 'Ganymede', 45, 1);
INSERT INTO public.moon VALUES (5, NULL, false, NULL, 'Callisto', 45, 1);
INSERT INTO public.moon VALUES (6, NULL, false, NULL, 'Io', 45, 1);
INSERT INTO public.moon VALUES (7, NULL, false, NULL, 'Enceladus', 45, 1);
INSERT INTO public.moon VALUES (8, NULL, false, NULL, 'Dione', 45, 1);
INSERT INTO public.moon VALUES (9, NULL, false, NULL, 'Ariel', 45, 1);
INSERT INTO public.moon VALUES (10, NULL, false, NULL, 'Rhea', 45, 1);
INSERT INTO public.moon VALUES (11, NULL, false, NULL, 'Tethys', 45, 1);
INSERT INTO public.moon VALUES (12, NULL, false, NULL, 'Mimas', 45, 1);
INSERT INTO public.moon VALUES (13, NULL, false, NULL, 'Thebe', 45, 1);
INSERT INTO public.moon VALUES (14, NULL, false, NULL, 'Nysaean', 45, 1);
INSERT INTO public.moon VALUES (15, NULL, false, NULL, 'Amalthea', 45, 1);
INSERT INTO public.moon VALUES (16, NULL, false, NULL, 'Hyperion', 45, 1);
INSERT INTO public.moon VALUES (17, NULL, false, NULL, 'Pan', 45, 1);
INSERT INTO public.moon VALUES (18, NULL, false, NULL, 'Anox', 45, 1);
INSERT INTO public.moon VALUES (19, NULL, false, NULL, 'Ymir', 45, 1);
INSERT INTO public.moon VALUES (20, NULL, false, NULL, 'Group', 45, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tmp', false, 2, 'new planet', 2, 1);
INSERT INTO public.planet VALUES (2, 'suseong', true, 0.39, 'Mercury', 45, 1);
INSERT INTO public.planet VALUES (3, 'geumsung', true, 0.72, 'Venus', 45, 1);
INSERT INTO public.planet VALUES (4, 'hwasung', true, 1.5, 'Mars', 45, 1);
INSERT INTO public.planet VALUES (5, 'mocksung', false, 5.2, 'Jupiter', 45, 1);
INSERT INTO public.planet VALUES (6, 'tosung', false, 9.5, 'Saturn', 45, 1);
INSERT INTO public.planet VALUES (7, 'chunwangseoung', true, 19.18, 'Uranus', 45, 1);
INSERT INTO public.planet VALUES (8, 'haewangsung', true, 30.07, 'Neptune', 45, 1);
INSERT INTO public.planet VALUES (9, 'in front of haewangsung', false, 39.48, 'Pluto', 45, 1);
INSERT INTO public.planet VALUES (10, 'one of the kaper belt', false, 41, 'Makemake', 45, 1);
INSERT INTO public.planet VALUES (11, 'one of the kaper belt', false, 68, 'Eris', 45, 1);
INSERT INTO public.planet VALUES (12, 'one of the alien planet', true, 0.05, 'Osiris', 10, 1);
INSERT INTO public.planet VALUES (13, 'our home', true, 0, 'Earth', 45, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (8, 'sirius', false, 542000, 'Sirius', 24, 1);
INSERT INTO public.star VALUES (7, 'proxima', false, 4.24, 'Proxima Centauri', 50, 1);
INSERT INTO public.star VALUES (9, 'betelgeuse', false, 640, 'Betelgeuse', 0, 1);
INSERT INTO public.star VALUES (1, 'our home', true, 0.000015813, 'Solar', 46, 1);
INSERT INTO public.star VALUES (10, 'pollux', false, 34, 'Pollux', 1, 1);
INSERT INTO public.star VALUES (11, 'muramasa', false, 12, 'Mu Arae', 5, 1);
INSERT INTO public.star VALUES (12, 'andromeda', false, 2500000, 'Andromeda', 1000, 1);


--
-- Name: candidate_earth_candidate_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.candidate_earth_candidate_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: candidate_earth candidate_earth_candidate_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.candidate_earth
    ADD CONSTRAINT candidate_earth_candidate_earth_id_key UNIQUE (candidate_earth_id);


--
-- Name: candidate_earth candidate_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.candidate_earth
    ADD CONSTRAINT candidate_earth_pkey PRIMARY KEY (candidate_earth_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

