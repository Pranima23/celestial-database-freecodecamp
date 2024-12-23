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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    average_temperature_in_celsius integer,
    distance_from_earth_in_light_years numeric(50,2),
    description text,
    has_life boolean,
    has_black_hole boolean,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    average_temperature_in_celsius integer,
    distance_from_earth_in_light_years numeric(50,2),
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
    age_in_million_years integer,
    average_temperature_in_celsius integer,
    distance_from_earth_in_light_years numeric(50,2),
    description text,
    has_life boolean,
    is_spherical boolean,
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
    age_in_million_years integer,
    average_temperature_in_celsius integer,
    distance_from_earth_in_light_years numeric(50,2),
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1000, -10, 2.50, 'Largest nearby galaxy to Earth', true, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13000, 15, 0.00, 'Home galaxy of our solar system', true, true, 2);
INSERT INTO public.galaxy VALUES (3, 'Spiral', 3, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 8000, 20, 30.00, 'Unbarred spiral galaxy with a large central bulge', true, false, 3);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 5000, 10, 20.50, 'Face-on spiral galaxy with a high star formation rate', true, true, 1);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 15000, 0, 15.00, 'Grand-design spiral galaxy with a companion galaxy', true, true, 2);
INSERT INTO public.galaxy VALUES (7, 'Cigar Galaxy', 2000, -50, 10.00, 'Starburst galaxy with a high rate of star formation', true, true, 2);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral Galaxy', 'Characterized by spiral arms of stars.');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'More egg-shaped, with older star populations.');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular Galaxy', 'Lack a distinct regular shape.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 4600, 10, 0.00, 'Natural satellite of Earth', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1500, -100, 0.58, 'Largest moon of Mars', false, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 1000, -120, 1.80, 'Smaller moon of Mars', false, true, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5000, -500, 5.20, 'Largest moon of Jupiter', false, true, 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 4000, -600, 6.40, 'Second-largest moon of Jupiter', false, true, 4);
INSERT INTO public.moon VALUES (6, 'Io', 2000, -650, 7.00, 'Volcanic moon of Jupiter', false, true, 4);
INSERT INTO public.moon VALUES (7, 'Europa', 3000, -700, 8.00, 'Icy moon of Jupiter with a possible liquid water ocean', false, true, 4);
INSERT INTO public.moon VALUES (8, 'Triton', 200, -300, 5.00, 'Largest moon of Neptune', false, true, 8);
INSERT INTO public.moon VALUES (9, 'Titania', 400, -1000, 6.20, 'Largest moon of Uranus', false, true, 9);
INSERT INTO public.moon VALUES (10, 'Oberon', 3000, -1200, 7.00, 'Moon of Uranus', false, true, 9);
INSERT INTO public.moon VALUES (11, 'Umbriel', 2500, -1500, 8.40, 'Moon of Uranus', false, true, 9);
INSERT INTO public.moon VALUES (12, 'Ariel', 200, -1000, 6.00, 'Moon of Uranus', false, true, 9);
INSERT INTO public.moon VALUES (13, 'Miranda', 1500, -1200, 7.20, 'Moon of Uranus', false, true, 9);
INSERT INTO public.moon VALUES (14, 'Uranus moon', 2000, -2000, 8.00, 'Moon of Uranus', false, true, 9);
INSERT INTO public.moon VALUES (15, 'Neptune moon', 1500, -3000, 9.00, 'Moon of Neptune', false, true, 8);
INSERT INTO public.moon VALUES (18, 'Saturn moon', 3000, -2800, 12.00, 'Moon of Saturn', false, true, 7);
INSERT INTO public.moon VALUES (19, 'Jupiter moon', 4000, -6000, 13.00, 'Moon of Jupiter', false, true, 4);
INSERT INTO public.moon VALUES (20, 'Mars moon', 1500, -2000, 14.00, 'Moon of Mars', false, true, 2);
INSERT INTO public.moon VALUES (21, 'Mercury moon', 1000, -100, 15.00, 'Moon of Mercury', true, true, 3);
INSERT INTO public.moon VALUES (22, 'Venus moon', 500, 50, 12.00, 'Moon of Venus', false, true, 2);
INSERT INTO public.moon VALUES (23, 'Earth moon', 4600, 0, 0.00, 'Natural satellite of Earth', true, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4600, 15, 0.00, 'Third planet from the Sun', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4600, -65, 1.38, 'Fourth planet from the Sun', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4500, 462, 0.28, 'Second planet from the Sun', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 4600, -170, 0.46, 'Closest planet to the Sun', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 4000, -200, 4.10, 'Ice giant planet', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 3200, -180, 4.00, 'Ice giant planet with a tilted axis', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 4500, -140, 8.20, 'Ringed gas giant planet', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 3200, 110, 5.20, 'Largest planet in our solar system', false, true, 1);
INSERT INTO public.planet VALUES (9, 'K2-18b', 300, -20, 10.00, 'Exoplanet, a hot Jupiter', false, true, 1);
INSERT INTO public.planet VALUES (10, 'KELT-9b', 200, 3200, 12.00, 'Exoplanet, a hot Jupiter', false, true, 1);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 1500, 3900, 15.00, 'Exoplanet, a hot Jupiter', false, true, 1);
INSERT INTO public.planet VALUES (12, 'LHS 1140 b', 5000, 2300, 40.00, 'Exoplanet, a super-Earth', false, true, 1);
INSERT INTO public.planet VALUES (13, 'Kepler-1647 b', 200, 11000, 20.00, 'Exoplanet, a hot Jupiter', false, true, 1);
INSERT INTO public.planet VALUES (14, '55 Cancri e', 400, 5200, 12.00, 'Exoplanet, a super-Earth', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 5500, 0.00, 'Star at the center of our solar system', false, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 250, 9400, 8.60, 'Brightest star in the night sky', false, true, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1000, 3500, 640.00, 'Red supergiant star in the Orion constellation', false, true, 3);
INSERT INTO public.star VALUES (4, 'Rigel', 100, 12000, 860.00, 'Blue-white supergiant star in the Orion constellation', false, true, 4);
INSERT INTO public.star VALUES (5, 'Deneb', 200, 8500, 1400.00, 'Blue-white star in the Cygnus constellation', false, true, 5);
INSERT INTO public.star VALUES (6, 'Vega', 500, 9500, 25.00, 'Bright star in the Lyra constellation', false, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


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
