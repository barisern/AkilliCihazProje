--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 13.1

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

--
-- Name: AkilliCihaz; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "AkilliCihaz" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';


ALTER DATABASE "AkilliCihaz" OWNER TO postgres;

\connect "AkilliCihaz"

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
-- Name: kullanicilar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kullanicilar (
    id integer NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE public.kullanicilar OWNER TO postgres;

--
-- Name: kullanicilar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kullanicilar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kullanicilar_id_seq OWNER TO postgres;

--
-- Name: kullanicilar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kullanicilar_id_seq OWNED BY public.kullanicilar.id;


--
-- Name: loglar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loglar (
    id integer NOT NULL,
    sicaklik character varying NOT NULL,
    tarih timestamp without time zone NOT NULL
);


ALTER TABLE public.loglar OWNER TO postgres;

--
-- Name: loglar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loglar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loglar_id_seq OWNER TO postgres;

--
-- Name: loglar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loglar_id_seq OWNED BY public.loglar.id;


--
-- Name: kullanicilar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanicilar ALTER COLUMN id SET DEFAULT nextval('public.kullanicilar_id_seq'::regclass);


--
-- Name: loglar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loglar ALTER COLUMN id SET DEFAULT nextval('public.loglar_id_seq'::regclass);


--
-- Data for Name: kullanicilar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kullanicilar VALUES
	(1, 'b191210085', 'sifre'),
	(2, 'admin', 'pass');


--
-- Data for Name: loglar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.loglar VALUES
	(3, '35,4 °C', '2021-05-10 21:35:47');


--
-- Name: kullanicilar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kullanicilar_id_seq', 2, true);


--
-- Name: loglar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loglar_id_seq', 3, true);


--
-- Name: kullanicilar unique_kullanicilar_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanicilar
    ADD CONSTRAINT unique_kullanicilar_id PRIMARY KEY (id);


--
-- Name: loglar unique_loglar_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loglar
    ADD CONSTRAINT unique_loglar_id PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

