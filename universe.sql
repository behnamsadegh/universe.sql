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
    name character varying(35) NOT NULL,
    origin_of_name text,
    galaxy_shap character varying(35),
    red_shift boolean,
    distance_to_earth_in_mly numeric(10,2)
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
    name character varying(35) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_its_planet integer,
    shape character varying(35)
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
-- Name: other_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_bodies (
    other_bodies_id integer NOT NULL,
    name character varying(35) NOT NULL,
    catagory character varying(35)
);


ALTER TABLE public.other_bodies OWNER TO freecodecamp;

--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_bodies_other_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_bodies_other_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_bodies_other_bodies_id_seq OWNED BY public.other_bodies.other_bodies_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(35) NOT NULL,
    star_id integer NOT NULL,
    number_of_moon integer,
    orbital_period integer
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
    name character varying(35) NOT NULL,
    galaxy_id integer NOT NULL,
    has_multiplanetary_system boolean,
    mass_in_sm integer
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
-- Name: other_bodies other_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies ALTER COLUMN other_bodies_id SET DEFAULT nextval('public.other_bodies_other_bodies_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda, which is shortened from Andromeda Galaxy, gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'SA(s)b', true, 2.50);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'Appearance is similar to an insects antennae.', 'SB(s)m pec / SA(s)m pec', true, 45.00);
INSERT INTO public.galaxy VALUES (3, 'Bear Paw Galaxy', 'It resembles the appearance of a bears claw.', 'SB(rs)dm', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'It has a spectacular dark band of absorbing dust in front of the galaxys bright nucleus, giving rise to its nicknames of the Black Eye or Evil Eye galaxy.', 'SA(r)ab', true, 200.00);
INSERT INTO public.galaxy VALUES (5, 'Cosmos Redshift 7', 'The name of this galaxy is based on a Redshift (z) measurement of nearly 7 (actually, z = 6.604).[5]', 'Lyman-alpha emitter', true, 12.90);
INSERT INTO public.galaxy VALUES (6, 'Eye of God', 'Name after its structural appearance', 'prolate spheroid', false, NULL);
INSERT INTO public.galaxy VALUES (7, 'Eye of Sauron', 'Due to its resemblance to the Eye of Sauron from The Lord of the Rings.', 'spiral galaxy', false, 15.80);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'The appearance from Earth of the galaxy—a band of light', 'Sb; Sbc; SB(rs)bc', false, 0.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 15, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 19, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 19, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 16, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 16, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 16, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 16, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 16, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 16, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Elara', 16, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 16, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Sinope', 16, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Lysithea', 16, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Carme', 16, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Ananke', 16, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Leda', 16, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Thebe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Adrastea', 16, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Metis', 16, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Themisto', 16, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Megaclite', 16, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Taygete', 16, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Chaldene', 16, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Harpalyke', 16, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Kalyke', 16, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Iocaste', 16, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Erinome', 16, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Isonoe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Praxidike', 16, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Autonoe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'Thyone', 16, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'Hermippe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'Aitne', 16, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'Eurydome', 16, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'Euanthe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'Euporie', 16, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Orthosie', 16, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'Sponde', 16, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'Kale', 16, NULL, NULL);
INSERT INTO public.moon VALUES (41, 'Pasithee', 16, NULL, NULL);
INSERT INTO public.moon VALUES (42, 'Hegemone', 16, NULL, NULL);
INSERT INTO public.moon VALUES (43, 'Mneme', 16, NULL, NULL);
INSERT INTO public.moon VALUES (44, 'Aoede', 16, NULL, NULL);
INSERT INTO public.moon VALUES (45, 'Thelxinoe', 16, NULL, NULL);
INSERT INTO public.moon VALUES (46, 'Arche', 16, NULL, NULL);
INSERT INTO public.moon VALUES (47, 'Kallichore', 16, NULL, NULL);
INSERT INTO public.moon VALUES (48, 'Helike', 16, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'Carpo', 16, NULL, NULL);
INSERT INTO public.moon VALUES (50, 'Eukelade', 16, NULL, NULL);
INSERT INTO public.moon VALUES (51, 'Cyllene', 16, NULL, NULL);
INSERT INTO public.moon VALUES (52, 'Kore', 16, NULL, NULL);
INSERT INTO public.moon VALUES (53, 'Herse', 16, NULL, NULL);
INSERT INTO public.moon VALUES (54, 'S/2010 J 1', 16, NULL, NULL);
INSERT INTO public.moon VALUES (55, 'S/2010 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (56, 'Dia', 16, NULL, NULL);
INSERT INTO public.moon VALUES (57, 'S/2016 J 1', 16, NULL, NULL);
INSERT INTO public.moon VALUES (58, 'S/2003 J 18', 16, NULL, NULL);
INSERT INTO public.moon VALUES (59, 'S/2011 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (60, 'Eirene', 16, NULL, NULL);
INSERT INTO public.moon VALUES (61, 'Philophrosyne', 16, NULL, NULL);
INSERT INTO public.moon VALUES (62, 'S/2017 J 1', 16, NULL, NULL);
INSERT INTO public.moon VALUES (63, 'Eupheme', 16, NULL, NULL);
INSERT INTO public.moon VALUES (64, 'S/2003 J 19', 16, NULL, NULL);
INSERT INTO public.moon VALUES (65, 'Valetudo', 16, NULL, NULL);
INSERT INTO public.moon VALUES (66, 'S/2017 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (67, 'S/2017 J 3', 16, NULL, NULL);
INSERT INTO public.moon VALUES (68, 'Pandia', 16, NULL, NULL);
INSERT INTO public.moon VALUES (69, 'S/2017 J 5', 16, NULL, NULL);
INSERT INTO public.moon VALUES (70, 'S/2017 J 6', 16, NULL, NULL);
INSERT INTO public.moon VALUES (71, 'S/2017 J 7', 16, NULL, NULL);
INSERT INTO public.moon VALUES (72, 'S/2017 J 8', 16, NULL, NULL);
INSERT INTO public.moon VALUES (73, 'S/2017 J 9', 16, NULL, NULL);
INSERT INTO public.moon VALUES (74, 'Ersa', 16, NULL, NULL);
INSERT INTO public.moon VALUES (75, 'S/2011 J 1', 16, NULL, NULL);
INSERT INTO public.moon VALUES (76, 'S/2003 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (77, 'S/2003 J 4', 16, NULL, NULL);
INSERT INTO public.moon VALUES (78, 'S/2003 J 9', 16, NULL, NULL);
INSERT INTO public.moon VALUES (79, 'S/2003 J 10', 16, NULL, NULL);
INSERT INTO public.moon VALUES (80, 'S/2003 J 12', 16, NULL, NULL);
INSERT INTO public.moon VALUES (81, 'S/2003 J 16', 16, NULL, NULL);
INSERT INTO public.moon VALUES (82, 'S/2003 J 23', 16, NULL, NULL);
INSERT INTO public.moon VALUES (83, 'S/2003 J 24', 16, NULL, NULL);
INSERT INTO public.moon VALUES (84, 'S/2011 J 3', 16, NULL, NULL);
INSERT INTO public.moon VALUES (85, 'S/2016 J 3', 16, NULL, NULL);
INSERT INTO public.moon VALUES (86, 'S/2016 J 4', 16, NULL, NULL);
INSERT INTO public.moon VALUES (87, 'S/2018 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (88, 'S/2018 J 3', 16, NULL, NULL);
INSERT INTO public.moon VALUES (89, 'S/2018 J 4', 16, NULL, NULL);
INSERT INTO public.moon VALUES (90, 'S/2021 J 1', 16, NULL, NULL);
INSERT INTO public.moon VALUES (91, 'S/2021 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (92, 'S/2021 J 3', 16, NULL, NULL);
INSERT INTO public.moon VALUES (93, 'S/2021 J 4', 16, NULL, NULL);
INSERT INTO public.moon VALUES (94, 'S/2021 J 5', 16, NULL, NULL);
INSERT INTO public.moon VALUES (95, 'S/2021 J 6', 16, NULL, NULL);
INSERT INTO public.moon VALUES (96, 'S/2022 J 1', 16, NULL, NULL);
INSERT INTO public.moon VALUES (97, 'S/2022 J 2', 16, NULL, NULL);
INSERT INTO public.moon VALUES (98, 'S/2022 J 3', 16, NULL, NULL);
INSERT INTO public.moon VALUES (99, 'Mimas', 17, NULL, NULL);
INSERT INTO public.moon VALUES (100, 'Enceladus', 17, NULL, NULL);
INSERT INTO public.moon VALUES (101, 'Tethys', 17, NULL, NULL);
INSERT INTO public.moon VALUES (102, 'Dione', 17, NULL, NULL);
INSERT INTO public.moon VALUES (103, 'Rhea', 17, NULL, NULL);
INSERT INTO public.moon VALUES (104, 'Titan', 17, NULL, NULL);
INSERT INTO public.moon VALUES (105, 'Hyperion', 17, NULL, NULL);
INSERT INTO public.moon VALUES (106, 'Iapetus', 17, NULL, NULL);
INSERT INTO public.moon VALUES (107, 'Phoebe', 17, NULL, NULL);
INSERT INTO public.moon VALUES (108, 'Janus', 17, NULL, NULL);
INSERT INTO public.moon VALUES (109, 'Epimetheus', 17, NULL, NULL);
INSERT INTO public.moon VALUES (110, 'Helene', 17, NULL, NULL);
INSERT INTO public.moon VALUES (111, 'Telesto', 17, NULL, NULL);
INSERT INTO public.moon VALUES (112, 'Calypso', 17, NULL, NULL);
INSERT INTO public.moon VALUES (113, 'Atlas', 17, NULL, NULL);
INSERT INTO public.moon VALUES (114, 'Prometheus', 17, NULL, NULL);
INSERT INTO public.moon VALUES (115, 'Pandora', 17, NULL, NULL);
INSERT INTO public.moon VALUES (116, 'Pan', 17, NULL, NULL);
INSERT INTO public.moon VALUES (117, 'Ymir', 17, NULL, NULL);
INSERT INTO public.moon VALUES (118, 'Paaliaq', 17, NULL, NULL);
INSERT INTO public.moon VALUES (119, 'Tarvos', 17, NULL, NULL);
INSERT INTO public.moon VALUES (120, 'Ijiraq', 17, NULL, NULL);
INSERT INTO public.moon VALUES (121, 'Suttungr', 17, NULL, NULL);
INSERT INTO public.moon VALUES (122, 'Kiviuq', 17, NULL, NULL);
INSERT INTO public.moon VALUES (123, 'Mundilfari', 17, NULL, NULL);
INSERT INTO public.moon VALUES (124, 'Albiorix', 17, NULL, NULL);
INSERT INTO public.moon VALUES (125, 'Skathi', 17, NULL, NULL);
INSERT INTO public.moon VALUES (126, 'Erriapus', 17, NULL, NULL);
INSERT INTO public.moon VALUES (127, 'Siarnaq', 17, NULL, NULL);
INSERT INTO public.moon VALUES (128, 'Thrymr', 17, NULL, NULL);
INSERT INTO public.moon VALUES (129, 'Narvi', 17, NULL, NULL);
INSERT INTO public.moon VALUES (130, 'Methone', 17, NULL, NULL);
INSERT INTO public.moon VALUES (131, 'Pallene', 17, NULL, NULL);
INSERT INTO public.moon VALUES (132, 'Polydeuces', 17, NULL, NULL);
INSERT INTO public.moon VALUES (133, 'Daphnis', 17, NULL, NULL);
INSERT INTO public.moon VALUES (134, 'Aegir', 17, NULL, NULL);
INSERT INTO public.moon VALUES (135, 'Bebhionn', 17, NULL, NULL);
INSERT INTO public.moon VALUES (136, 'Bergelmir', 17, NULL, NULL);
INSERT INTO public.moon VALUES (137, 'Bestla', 17, NULL, NULL);
INSERT INTO public.moon VALUES (138, 'Farbauti', 17, NULL, NULL);
INSERT INTO public.moon VALUES (139, 'Fenrir', 17, NULL, NULL);
INSERT INTO public.moon VALUES (140, 'Fornjot', 17, NULL, NULL);
INSERT INTO public.moon VALUES (141, 'Hati', 17, NULL, NULL);
INSERT INTO public.moon VALUES (142, 'Hyrrokkin', 17, NULL, NULL);
INSERT INTO public.moon VALUES (143, 'Kari', 17, NULL, NULL);
INSERT INTO public.moon VALUES (144, 'Loge', 17, NULL, NULL);
INSERT INTO public.moon VALUES (145, 'Skoll', 17, NULL, NULL);
INSERT INTO public.moon VALUES (146, 'Surtur', 17, NULL, NULL);
INSERT INTO public.moon VALUES (147, 'Anthe', 17, NULL, NULL);
INSERT INTO public.moon VALUES (148, 'Jarnsaxa', 17, NULL, NULL);
INSERT INTO public.moon VALUES (149, 'Greip', 17, NULL, NULL);
INSERT INTO public.moon VALUES (150, 'Tarqeq', 17, NULL, NULL);
INSERT INTO public.moon VALUES (151, 'Aegaeon', 17, NULL, NULL);
INSERT INTO public.moon VALUES (152, 'Gridr', 17, NULL, NULL);
INSERT INTO public.moon VALUES (153, 'Angrboda', 17, NULL, NULL);
INSERT INTO public.moon VALUES (154, 'Skrymir', 17, NULL, NULL);
INSERT INTO public.moon VALUES (155, 'Gerd', 17, NULL, NULL);
INSERT INTO public.moon VALUES (156, 'S/2004 S 26', 17, NULL, NULL);
INSERT INTO public.moon VALUES (157, 'Eggther', 17, NULL, NULL);
INSERT INTO public.moon VALUES (158, 'S/2004 S 29', 17, NULL, NULL);
INSERT INTO public.moon VALUES (159, 'Beli', 17, NULL, NULL);
INSERT INTO public.moon VALUES (160, 'Gunnlod', 17, NULL, NULL);
INSERT INTO public.moon VALUES (161, 'Thiazzi', 17, NULL, NULL);
INSERT INTO public.moon VALUES (162, 'S/2004 S 34', 17, NULL, NULL);
INSERT INTO public.moon VALUES (163, 'Alvaldi', 17, NULL, NULL);
INSERT INTO public.moon VALUES (164, 'Geirrod', 17, NULL, NULL);
INSERT INTO public.moon VALUES (165, 'S/2004 S 7', 17, NULL, NULL);
INSERT INTO public.moon VALUES (166, 'S/2004 S 12', 17, NULL, NULL);
INSERT INTO public.moon VALUES (167, 'S/2004 S 13', 17, NULL, NULL);
INSERT INTO public.moon VALUES (168, 'S/2004 S 17', 17, NULL, NULL);
INSERT INTO public.moon VALUES (169, 'S/2004 S 21', 17, NULL, NULL);
INSERT INTO public.moon VALUES (170, 'S/2004 S 24', 17, NULL, NULL);
INSERT INTO public.moon VALUES (171, 'S/2004 S 28', 17, NULL, NULL);
INSERT INTO public.moon VALUES (172, 'S/2004 S 31', 17, NULL, NULL);
INSERT INTO public.moon VALUES (173, 'S/2004 S 36', 17, NULL, NULL);
INSERT INTO public.moon VALUES (174, 'S/2004 S 37', 17, NULL, NULL);
INSERT INTO public.moon VALUES (175, 'S/2004 S 39', 17, NULL, NULL);
INSERT INTO public.moon VALUES (176, 'S/2004 S 40', 17, NULL, NULL);
INSERT INTO public.moon VALUES (177, 'S/2004 S 41', 17, NULL, NULL);
INSERT INTO public.moon VALUES (178, 'S/2004 S 42', 17, NULL, NULL);
INSERT INTO public.moon VALUES (179, 'S/2004 S 43', 17, NULL, NULL);
INSERT INTO public.moon VALUES (180, 'S/2004 S 44', 17, NULL, NULL);
INSERT INTO public.moon VALUES (181, 'S/2004 S 45', 17, NULL, NULL);
INSERT INTO public.moon VALUES (182, 'S/2004 S 46', 17, NULL, NULL);
INSERT INTO public.moon VALUES (183, 'S/2004 S 47', 17, NULL, NULL);
INSERT INTO public.moon VALUES (184, 'S/2004 S 48', 17, NULL, NULL);
INSERT INTO public.moon VALUES (185, 'S/2004 S 49', 17, NULL, NULL);
INSERT INTO public.moon VALUES (186, 'S/2004 S 50', 17, NULL, NULL);
INSERT INTO public.moon VALUES (187, 'S/2004 S 51', 17, NULL, NULL);
INSERT INTO public.moon VALUES (188, 'S/2004 S 52', 17, NULL, NULL);
INSERT INTO public.moon VALUES (189, 'S/2004 S 53', 17, NULL, NULL);
INSERT INTO public.moon VALUES (190, 'S/2005 S 4', 17, NULL, NULL);
INSERT INTO public.moon VALUES (191, 'S/2005 S 5', 17, NULL, NULL);
INSERT INTO public.moon VALUES (192, 'S/2006 S 1', 17, NULL, NULL);
INSERT INTO public.moon VALUES (193, 'S/2006 S 3', 17, NULL, NULL);
INSERT INTO public.moon VALUES (194, 'S/2006 S 9', 17, NULL, NULL);
INSERT INTO public.moon VALUES (195, 'S/2006 S 10', 17, NULL, NULL);
INSERT INTO public.moon VALUES (196, 'S/2006 S 11', 17, NULL, NULL);
INSERT INTO public.moon VALUES (197, 'S/2006 S 12', 17, NULL, NULL);
INSERT INTO public.moon VALUES (198, 'S/2006 S 13', 17, NULL, NULL);
INSERT INTO public.moon VALUES (199, 'S/2006 S 14', 17, NULL, NULL);
INSERT INTO public.moon VALUES (200, 'S/2006 S 15', 17, NULL, NULL);
INSERT INTO public.moon VALUES (201, 'S/2006 S 16', 17, NULL, NULL);
INSERT INTO public.moon VALUES (202, 'S/2006 S 17', 17, NULL, NULL);
INSERT INTO public.moon VALUES (203, 'S/2006 S 18', 17, NULL, NULL);
INSERT INTO public.moon VALUES (204, 'S/2006 S 19', 17, NULL, NULL);
INSERT INTO public.moon VALUES (205, 'S/2006 S 20', 17, NULL, NULL);
INSERT INTO public.moon VALUES (206, 'S/2007 S 2', 17, NULL, NULL);
INSERT INTO public.moon VALUES (207, 'S/2007 S 3', 17, NULL, NULL);
INSERT INTO public.moon VALUES (208, 'S/2007 S 5', 17, NULL, NULL);
INSERT INTO public.moon VALUES (209, 'S/2007 S 6', 17, NULL, NULL);
INSERT INTO public.moon VALUES (210, 'S/2007 S 7', 17, NULL, NULL);
INSERT INTO public.moon VALUES (211, 'S/2007 S 8', 17, NULL, NULL);
INSERT INTO public.moon VALUES (212, 'S/2007 S 9', 17, NULL, NULL);
INSERT INTO public.moon VALUES (213, 'S/2009 S 1', 17, NULL, NULL);
INSERT INTO public.moon VALUES (214, 'S/2019 S 1', 17, NULL, NULL);
INSERT INTO public.moon VALUES (215, 'S/2019 S 2', 17, NULL, NULL);
INSERT INTO public.moon VALUES (216, 'S/2019 S 3', 17, NULL, NULL);
INSERT INTO public.moon VALUES (217, 'S/2019 S 4', 17, NULL, NULL);
INSERT INTO public.moon VALUES (218, 'S/2019 S 5', 17, NULL, NULL);
INSERT INTO public.moon VALUES (219, 'S/2019 S 6', 17, NULL, NULL);
INSERT INTO public.moon VALUES (220, 'S/2019 S 7', 17, NULL, NULL);
INSERT INTO public.moon VALUES (221, 'S/2019 S 8', 17, NULL, NULL);
INSERT INTO public.moon VALUES (222, 'S/2019 S 9', 17, NULL, NULL);
INSERT INTO public.moon VALUES (223, 'S/2019 S 10', 17, NULL, NULL);
INSERT INTO public.moon VALUES (224, 'S/2019 S 11', 17, NULL, NULL);
INSERT INTO public.moon VALUES (225, 'S/2019 S 12', 17, NULL, NULL);
INSERT INTO public.moon VALUES (226, 'S/2019 S 13', 17, NULL, NULL);
INSERT INTO public.moon VALUES (227, 'S/2019 S 14', 17, NULL, NULL);
INSERT INTO public.moon VALUES (228, 'S/2019 S 15', 17, NULL, NULL);
INSERT INTO public.moon VALUES (229, 'S/2019 S 16', 17, NULL, NULL);
INSERT INTO public.moon VALUES (230, 'S/2019 S 17', 17, NULL, NULL);
INSERT INTO public.moon VALUES (231, 'S/2019 S 18', 17, NULL, NULL);
INSERT INTO public.moon VALUES (232, 'S/2019 S 19', 17, NULL, NULL);
INSERT INTO public.moon VALUES (233, 'S/2019 S 20', 17, NULL, NULL);
INSERT INTO public.moon VALUES (234, 'S/2019 S 21', 17, NULL, NULL);
INSERT INTO public.moon VALUES (235, 'S/2020 S 1', 17, NULL, NULL);
INSERT INTO public.moon VALUES (236, 'S/2020 S 2', 17, NULL, NULL);
INSERT INTO public.moon VALUES (237, 'S/2020 S 3', 17, NULL, NULL);
INSERT INTO public.moon VALUES (238, 'S/2020 S 4', 17, NULL, NULL);
INSERT INTO public.moon VALUES (239, 'S/2020 S 5', 17, NULL, NULL);
INSERT INTO public.moon VALUES (240, 'S/2020 S 6', 17, NULL, NULL);
INSERT INTO public.moon VALUES (241, 'S/2020 S 7', 17, NULL, NULL);
INSERT INTO public.moon VALUES (242, 'S/2020 S 8', 17, NULL, NULL);
INSERT INTO public.moon VALUES (243, 'S/2020 S 9', 17, NULL, NULL);
INSERT INTO public.moon VALUES (244, 'S/2020 S 10', 17, NULL, NULL);
INSERT INTO public.moon VALUES (245, 'Ariel', 21, NULL, NULL);
INSERT INTO public.moon VALUES (246, 'Umbriel', 21, NULL, NULL);
INSERT INTO public.moon VALUES (247, 'Titania', 21, NULL, NULL);
INSERT INTO public.moon VALUES (248, 'Oberon', 21, NULL, NULL);
INSERT INTO public.moon VALUES (249, 'Miranda', 21, NULL, NULL);
INSERT INTO public.moon VALUES (250, 'Cordelia', 21, NULL, NULL);
INSERT INTO public.moon VALUES (251, 'Ophelia', 21, NULL, NULL);
INSERT INTO public.moon VALUES (252, 'Bianca', 21, NULL, NULL);
INSERT INTO public.moon VALUES (253, 'Cressida', 21, NULL, NULL);
INSERT INTO public.moon VALUES (254, 'Desdemona', 21, NULL, NULL);
INSERT INTO public.moon VALUES (255, 'Juliet', 21, NULL, NULL);
INSERT INTO public.moon VALUES (256, 'Portia', 21, NULL, NULL);
INSERT INTO public.moon VALUES (257, 'Rosalind', 21, NULL, NULL);
INSERT INTO public.moon VALUES (258, 'Belinda', 21, NULL, NULL);
INSERT INTO public.moon VALUES (259, 'Puck', 21, NULL, NULL);
INSERT INTO public.moon VALUES (260, 'Caliban', 21, NULL, NULL);
INSERT INTO public.moon VALUES (261, 'Sycorax', 21, NULL, NULL);
INSERT INTO public.moon VALUES (262, 'Prospero', 21, NULL, NULL);
INSERT INTO public.moon VALUES (263, 'Setebos', 21, NULL, NULL);
INSERT INTO public.moon VALUES (264, 'Stephano', 21, NULL, NULL);
INSERT INTO public.moon VALUES (265, 'Trinculo', 21, NULL, NULL);
INSERT INTO public.moon VALUES (266, 'Francisco', 21, NULL, NULL);
INSERT INTO public.moon VALUES (267, 'Margaret', 21, NULL, NULL);
INSERT INTO public.moon VALUES (268, 'Ferdinand', 21, NULL, NULL);
INSERT INTO public.moon VALUES (269, 'Perdita', 21, NULL, NULL);
INSERT INTO public.moon VALUES (270, 'Mab', 21, NULL, NULL);
INSERT INTO public.moon VALUES (271, 'Cupid', 21, NULL, NULL);
INSERT INTO public.moon VALUES (272, 'S/2023 U 1', 21, NULL, NULL);
INSERT INTO public.moon VALUES (273, 'Triton', 20, NULL, NULL);
INSERT INTO public.moon VALUES (274, 'Nereid', 20, NULL, NULL);
INSERT INTO public.moon VALUES (275, 'Naiad', 20, NULL, NULL);
INSERT INTO public.moon VALUES (276, 'Thalassa', 20, NULL, NULL);
INSERT INTO public.moon VALUES (277, 'Despina', 20, NULL, NULL);
INSERT INTO public.moon VALUES (278, 'Galatea', 20, NULL, NULL);
INSERT INTO public.moon VALUES (279, 'Larissa', 20, NULL, NULL);
INSERT INTO public.moon VALUES (280, 'Proteus', 20, NULL, NULL);
INSERT INTO public.moon VALUES (281, 'Halimede', 20, NULL, NULL);
INSERT INTO public.moon VALUES (282, 'Psamathe', 20, NULL, NULL);
INSERT INTO public.moon VALUES (283, 'Sao', 20, NULL, NULL);
INSERT INTO public.moon VALUES (284, 'Laomedeia', 20, NULL, NULL);
INSERT INTO public.moon VALUES (285, 'Neso', 20, NULL, NULL);
INSERT INTO public.moon VALUES (286, 'Hippocamp', 20, NULL, NULL);
INSERT INTO public.moon VALUES (287, 'S/2002 N 5', 20, NULL, NULL);
INSERT INTO public.moon VALUES (288, 'S/2021 N 1', 20, NULL, NULL);


--
-- Data for Name: other_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_bodies VALUES (1, 'Ganymede', 'nonplanet');
INSERT INTO public.other_bodies VALUES (2, 'Titan', 'nonplanet');
INSERT INTO public.other_bodies VALUES (3, 'Callisto', 'nonplanet');
INSERT INTO public.other_bodies VALUES (4, 'Pluto', 'nonplanet');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (15, 'Earth', 3, 1, 1);
INSERT INTO public.planet VALUES (16, 'Jupiter', 3, 95, 30);
INSERT INTO public.planet VALUES (17, 'Saturn', 3, 146, 163);
INSERT INTO public.planet VALUES (18, 'Venus', 3, 0, 179);
INSERT INTO public.planet VALUES (19, 'Mars', 3, 2, 252);
INSERT INTO public.planet VALUES (20, 'Neptune', 3, 16, 58);
INSERT INTO public.planet VALUES (21, 'Uranus', 3, 28, 239);
INSERT INTO public.planet VALUES (22, 'Mercury', 3, 0, 41);
INSERT INTO public.planet VALUES (23, '47 Ursae Majoris c', 6, 66, 106);
INSERT INTO public.planet VALUES (24, '55 Cancri e', 11, 24, 29);
INSERT INTO public.planet VALUES (25, 'Mu Arae c', 7, 187, 2);
INSERT INTO public.planet VALUES (26, 'TrES-3b', 5, 480, 186);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sun', 8, true, 1);
INSERT INTO public.star VALUES (4, 'UY Scuti', 8, false, 171);
INSERT INTO public.star VALUES (5, 'AH Scorpii', 3, true, 187);
INSERT INTO public.star VALUES (6, 'RSGC1-F01', 1, true, 21);
INSERT INTO public.star VALUES (7, 'VY Canis Majoris', 3, true, 18);
INSERT INTO public.star VALUES (8, 'WOH G64', 2, false, 161);
INSERT INTO public.star VALUES (9, 'Gamma Velorum', 5, false, 68);
INSERT INTO public.star VALUES (10, 'Zeta Ophiuchi', 6, true, 74);
INSERT INTO public.star VALUES (11, 'Rigel', 3, false, 40);
INSERT INTO public.star VALUES (12, 'Sirius', 3, true, 121);
INSERT INTO public.star VALUES (13, 'Proxima Centauri', 3, false, 113);
INSERT INTO public.star VALUES (14, 'HV 888', 4, false, 195);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 288, true);


--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_bodies_other_bodies_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


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
-- Name: other_bodies other_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_name_key UNIQUE (name);


--
-- Name: other_bodies other_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_pkey PRIMARY KEY (other_bodies_id);


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

