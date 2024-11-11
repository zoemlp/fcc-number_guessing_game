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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 2);
INSERT INTO public.games VALUES (2, 64, 3);
INSERT INTO public.games VALUES (3, 279, 3);
INSERT INTO public.games VALUES (4, 384, 4);
INSERT INTO public.games VALUES (5, 498, 4);
INSERT INTO public.games VALUES (6, 531, 3);
INSERT INTO public.games VALUES (7, 209, 3);
INSERT INTO public.games VALUES (8, 723, 3);
INSERT INTO public.games VALUES (9, 920, 5);
INSERT INTO public.games VALUES (10, 285, 5);
INSERT INTO public.games VALUES (11, 178, 6);
INSERT INTO public.games VALUES (12, 314, 6);
INSERT INTO public.games VALUES (13, 924, 5);
INSERT INTO public.games VALUES (14, 426, 5);
INSERT INTO public.games VALUES (15, 876, 5);
INSERT INTO public.games VALUES (16, 192, 7);
INSERT INTO public.games VALUES (17, 668, 7);
INSERT INTO public.games VALUES (18, 460, 8);
INSERT INTO public.games VALUES (19, 851, 8);
INSERT INTO public.games VALUES (20, 941, 7);
INSERT INTO public.games VALUES (21, 956, 7);
INSERT INTO public.games VALUES (22, 998, 7);
INSERT INTO public.games VALUES (23, 660, 9);
INSERT INTO public.games VALUES (24, 888, 9);
INSERT INTO public.games VALUES (25, 44, 10);
INSERT INTO public.games VALUES (26, 272, 10);
INSERT INTO public.games VALUES (27, 339, 9);
INSERT INTO public.games VALUES (28, 680, 9);
INSERT INTO public.games VALUES (29, 462, 9);
INSERT INTO public.games VALUES (30, 39, 11);
INSERT INTO public.games VALUES (31, 73, 11);
INSERT INTO public.games VALUES (32, 787, 12);
INSERT INTO public.games VALUES (33, 349, 12);
INSERT INTO public.games VALUES (34, 845, 11);
INSERT INTO public.games VALUES (35, 977, 11);
INSERT INTO public.games VALUES (36, 384, 11);
INSERT INTO public.games VALUES (37, 723, 13);
INSERT INTO public.games VALUES (38, 352, 13);
INSERT INTO public.games VALUES (39, 88, 14);
INSERT INTO public.games VALUES (40, 822, 14);
INSERT INTO public.games VALUES (41, 532, 13);
INSERT INTO public.games VALUES (42, 175, 13);
INSERT INTO public.games VALUES (43, 992, 13);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'luis');
INSERT INTO public.users VALUES (2, 'kl');
INSERT INTO public.users VALUES (3, 'user_1726892240477');
INSERT INTO public.users VALUES (4, 'user_1726892240476');
INSERT INTO public.users VALUES (5, 'user_1726892590901');
INSERT INTO public.users VALUES (6, 'user_1726892590900');
INSERT INTO public.users VALUES (7, 'user_1726892675538');
INSERT INTO public.users VALUES (8, 'user_1726892675537');
INSERT INTO public.users VALUES (9, 'user_1726892783658');
INSERT INTO public.users VALUES (10, 'user_1726892783657');
INSERT INTO public.users VALUES (11, 'user_1726892822272');
INSERT INTO public.users VALUES (12, 'user_1726892822271');
INSERT INTO public.users VALUES (13, 'user_1726892864458');
INSERT INTO public.users VALUES (14, 'user_1726892864457');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
