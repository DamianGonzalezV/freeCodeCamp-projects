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
    name character varying(40) NOT NULL,
    size numeric,
    speed integer,
    distance_from_earth integer
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
    name character varying(40) NOT NULL,
    size numeric,
    distance_from_earth integer,
    story text,
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
-- Name: moons_characteristics; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moons_characteristics (
    moons_characteristics_id integer NOT NULL,
    name character varying(40) NOT NULL,
    orbital_period integer,
    mass integer,
    atmospherte text,
    age text
);


ALTER TABLE public.moons_characteristics OWNER TO freecodecamp;

--
-- Name: moons_characteristics_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_characteristics_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_characteristics_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moons_characteristics_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_characteristics_galaxy_id_seq OWNED BY public.moons_characteristics.moons_characteristics_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size numeric,
    has_life boolean,
    age integer,
    story text,
    star_id integer,
    distance_from_earth integer
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
    name character varying(40) NOT NULL,
    size numeric,
    is_dying boolean,
    galaxy_id integer,
    speed_kms integer,
    distance_from_earth integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moons_characteristics moons_characteristics_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moons_characteristics ALTER COLUMN moons_characteristics_id SET DEFAULT nextval('public.moons_characteristics_galaxy_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 220000, 110, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 105700, 552, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 182, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 76000, 463, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 49000, 100, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 980000, 1300, NULL);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 14000, 278, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Triton', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Charon', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (12, 'Miranda', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Titania', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Mimas', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Dione', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Tethys', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, 'Titan', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Rhea', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Iapetus', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, NULL, NULL, 6);


--
-- Data for Name: moons_characteristics; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moons_characteristics VALUES (1, 'Moon', 27, 7, 'Exosphere', '4.5 billion years');
INSERT INTO public.moons_characteristics VALUES (2, 'Io', 2, 9, 'Thin, sulfur', '4.5 billion years');
INSERT INTO public.moons_characteristics VALUES (3, 'Europa', 4, 5, 'Thin, oxygen', '4.5 billion years');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, NULL, NULL, NULL, 10, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1.71, NULL, 2, 8, NULL);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 764, NULL, 2, 30, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 0.0017, NULL, 2, 30, NULL);
INSERT INTO public.star VALUES (4, 'Vega', 2.362, NULL, 2, 14, NULL);
INSERT INTO public.star VALUES (5, 'Rigel', 78.9, NULL, 2, 22, NULL);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 1.223, NULL, 2, 22, NULL);
INSERT INTO public.star VALUES (10, 'Sun', NULL, NULL, 2, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moons_characteristics_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_characteristics_galaxy_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moons_characteristics moons_characteristics_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moons_characteristics
    ADD CONSTRAINT moons_characteristics_name_key UNIQUE (name);


--
-- Name: moons_characteristics moons_characteristics_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moons_characteristics
    ADD CONSTRAINT moons_characteristics_pkey PRIMARY KEY (moons_characteristics_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_g; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_g UNIQUE (name);


--
-- Name: planet unique_name_p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_p UNIQUE (name);


--
-- Name: star unique_name_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_s UNIQUE (name);


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

