--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(30) NOT NULL,
    asteroid_id integer NOT NULL,
    mass numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight numeric,
    age integer,
    description text,
    has_life boolean
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    has_rings boolean,
    age integer,
    weight numeric,
    description text,
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    weight numeric,
    age integer,
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
    name character varying(30) NOT NULL,
    weight numeric,
    age integer,
    description text,
    star_id integer NOT NULL,
    is_pulsar boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('rock 1', 1, 1000);
INSERT INTO public.asteroid VALUES ('rock 2', 2, 1000);
INSERT INTO public.asteroid VALUES ('rock 3', 3, 1000);
INSERT INTO public.asteroid VALUES ('rock 4', 4, 1000);
INSERT INTO public.asteroid VALUES ('rock 5', 5, 1000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1.5, 13600, 'Our home galaxy, a barred spiral containing 100-400 billion stars', false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1.23, 10000, 'Largest galaxy in the Local Group, on collision course with Milky Way', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 0.05, 13000, 'Third-largest in Local Group, a spiral galaxy with active star formation', false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 0.01, 1300, 'Irregular dwarf galaxy, satellite of Milky Way', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 0.8, 13200, 'Unusual galaxy with bright nucleus and large central bulge', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 0.16, 400, 'Grand-design spiral galaxy interacting with companion NGC 5195', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon 09', 57, true, 1000, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Moon 10', 58, true, 1000, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Moon 11', 59, true, 1000, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Moon 12', 60, true, 1000, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('Moon 14', 61, true, 1000, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Moon1', 64, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon2', 65, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon3', 66, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon4', 67, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon5', 68, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon6', 69, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon7', 70, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon8', 71, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon9', 72, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon10', 73, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon11', 74, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon 05', 53, true, 1000, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon 06', 54, true, 1000, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Moon 07', 55, true, 1000, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Moon 08', 56, true, 1000, NULL, NULL, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet 1', 1, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 2', 2, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 3', 3, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 4', 4, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 5', 5, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 6', 6, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 7', 7, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 8', 8, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 9', 9, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 10', 10, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 11', 11, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 12', 12, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 13', 13, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 14', 14, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 15', 15, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 16', 16, false, 1000, 1000, 1);
INSERT INTO public.planet VALUES ('Planet 17', 17, false, 1000, 1000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Álpa centuri', 1000, 1000, 'CENTER OF THE WILKY WAY', 1, false, 1);
INSERT INTO public.star VALUES ('Álpa centuri--proxima', 1000, 1000, 'CENTER OF THE WILKY WAY', 2, false, 2);
INSERT INTO public.star VALUES ('Álpa centuri--proxim 1a', 1000, 1000, 'CENTER OF THE WILKY WAY', 3, false, 2);
INSERT INTO public.star VALUES ('Álpa centuri--prox', 1000, 1000, 'CENTER OF THE WILKY WAY', 4, false, 1);
INSERT INTO public.star VALUES ('Álpa -prox', 1000, 1000, 'CENTER OF THE WILKY WAY', 5, false, 3);
INSERT INTO public.star VALUES ('Álpa romania', 1000, 1000, 'CENTER OF THE WILKY WAY', 6, false, 3);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 74, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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

