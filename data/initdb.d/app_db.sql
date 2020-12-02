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
-- Name: users; Type: TABLE; Schema: api; Owner: app_user
--

CREATE SCHEMA api;
ALTER SCHEMA api OWNER TO app_user;


CREATE TABLE api.users (
    users_id integer NOT NULL,
    users_name text NOT NULL
);


ALTER TABLE api.users OWNER TO app_user;

--
-- Name: users_users_id_seq; Type: SEQUENCE; Schema: api; Owner: app_user
--

CREATE SEQUENCE api.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.users_users_id_seq OWNER TO app_user;

--
-- Name: users_users_id_seq; Type: SEQUENCE OWNED BY; Schema: api; Owner: app_user
--

ALTER SEQUENCE api.users_users_id_seq OWNED BY api.users.users_id;


--
-- Name: users users_id; Type: DEFAULT; Schema: api; Owner: app_user
--

ALTER TABLE ONLY api.users ALTER COLUMN users_id SET DEFAULT nextval('api.users_users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: api; Owner: app_user
--

COPY api.users (users_id, users_name) FROM stdin;
1	Sergey
2	Leonid
3	Pavel
4	Maria
5	Peter
\.


--
-- Name: users_users_id_seq; Type: SEQUENCE SET; Schema: api; Owner: app_user
--

SELECT pg_catalog.setval('api.users_users_id_seq', 5, true);


create role web_anon nologin;

grant usage on schema api to web_anon;
grant select on api.users to web_anon;


create role authenticator noinherit login password 'BBmcmqRPip5s35R1Ifm6lx5qHfIWXBYM';
grant web_anon to authenticator;


--
-- PostgreSQL database dump complete
--

