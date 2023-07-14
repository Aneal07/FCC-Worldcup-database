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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 70, 74, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 72, 77, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 74, 77, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 70, 72, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 74, 88, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 77, 82, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 72, 85, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 70, 90, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 77, 100, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 82, 108, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 72, 109, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 85, 110, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 74, 111, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 88, 112, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 90, 113, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 70, 96, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 93, 96, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 95, 85, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 96, 95, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 93, 85, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 95, 104, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 96, 72, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 85, 100, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 93, 70, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 85, 114, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 100, 90, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 70, 115, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 93, 116, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 95, 110, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 104, 117, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 96, 108, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 72, 118, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (70, 'France');
INSERT INTO public.teams VALUES (71, './insert_data.sh');
INSERT INTO public.teams VALUES (72, 'Belgium');
INSERT INTO public.teams VALUES (74, 'Croatia');
INSERT INTO public.teams VALUES (77, 'England');
INSERT INTO public.teams VALUES (82, 'Sweden');
INSERT INTO public.teams VALUES (85, 'Brazil');
INSERT INTO public.teams VALUES (88, 'Russia');
INSERT INTO public.teams VALUES (90, 'Uruguay');
INSERT INTO public.teams VALUES (93, 'Germany');
INSERT INTO public.teams VALUES (95, 'Netherlands');
INSERT INTO public.teams VALUES (96, 'Argentina');
INSERT INTO public.teams VALUES (100, 'Colombia');
INSERT INTO public.teams VALUES (104, 'Costa Rica');
INSERT INTO public.teams VALUES (108, 'Switzerland');
INSERT INTO public.teams VALUES (109, 'Japan');
INSERT INTO public.teams VALUES (110, 'Mexico');
INSERT INTO public.teams VALUES (111, 'Denmark');
INSERT INTO public.teams VALUES (112, 'Spain');
INSERT INTO public.teams VALUES (113, 'Portugal');
INSERT INTO public.teams VALUES (114, 'Chile');
INSERT INTO public.teams VALUES (115, 'Nigeria');
INSERT INTO public.teams VALUES (116, 'Algeria');
INSERT INTO public.teams VALUES (117, 'Greece');
INSERT INTO public.teams VALUES (118, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 118, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

