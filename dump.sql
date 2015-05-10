--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: article; Type: TABLE; Schema: public; Owner: hblog; Tablespace: 
--

CREATE TABLE article (
    id integer NOT NULL,
    title character varying(1024),
    bodytext text
);


ALTER TABLE public.article OWNER TO hblog;

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: hblog
--

CREATE SEQUENCE article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_id_seq OWNER TO hblog;

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hblog
--

ALTER SEQUENCE article_id_seq OWNED BY article.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: hblog; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    login character varying(1024),
    password character varying(1024)
);


ALTER TABLE public.users OWNER TO hblog;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: hblog
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO hblog;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hblog
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hblog
--

ALTER TABLE ONLY article ALTER COLUMN id SET DEFAULT nextval('article_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hblog
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: hblog
--

COPY article (id, title, bodytext) FROM stdin;
\.


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hblog
--

SELECT pg_catalog.setval('article_id_seq', 34864, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: hblog
--

COPY users (id, login, password) FROM stdin;
1	dim	563728df0fdd90631ac1e51258e2857d
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hblog
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Name: article_pkey; Type: CONSTRAINT; Schema: public; Owner: hblog; Tablespace: 
--

ALTER TABLE ONLY article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: hblog; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

