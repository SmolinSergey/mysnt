--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: app_user
--

CREATE TABLE public.users (
    users_id integer NOT NULL,
    users_name text NOT NULL
);


ALTER TABLE public.users OWNER TO app_user;

--
-- Name: users_users_id_seq; Type: SEQUENCE; Schema: public; Owner: app_user
--

CREATE SEQUENCE public.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_users_id_seq OWNER TO app_user;

--
-- Name: users_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_user
--

ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users.users_id;


--
-- Name: users users_id; Type: DEFAULT; Schema: public; Owner: app_user
--

ALTER TABLE ONLY public.users ALTER COLUMN users_id SET DEFAULT nextval('public.users_users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: app_user
--

COPY public.users (users_id, users_name) FROM stdin;
1	Sergey
2	Leonid
3	Pavel
4	Maria
\.


--
-- Name: users_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_user
--

SELECT pg_catalog.setval('public.users_users_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

