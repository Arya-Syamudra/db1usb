toc.dat                                                                                             0000600 0004000 0002000 00000006646 14337452444 0014465 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                        
    z            siakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16416    siakad    DATABASE     ?   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false         ?            1259    16417 	   mahasiswa    TABLE     ?   CREATE TABLE public.mahasiswa (
    nama character varying(30),
    nim character varying(8) NOT NULL,
    alamat character varying(30)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false         ?            1259    16423    makul    TABLE     v   CREATE TABLE public.makul (
    kode_makul integer NOT NULL,
    nama_makul character varying(30),
    sks integer
);
    DROP TABLE public.makul;
       public         heap    postgres    false         ?            1259    16422    makul_kode_makul_seq    SEQUENCE     ?   CREATE SEQUENCE public.makul_kode_makul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.makul_kode_makul_seq;
       public          postgres    false    216                    0    0    makul_kode_makul_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.makul_kode_makul_seq OWNED BY public.makul.kode_makul;
          public          postgres    false    215         i           2604    16426    makul kode_makul    DEFAULT     t   ALTER TABLE ONLY public.makul ALTER COLUMN kode_makul SET DEFAULT nextval('public.makul_kode_makul_seq'::regclass);
 ?   ALTER TABLE public.makul ALTER COLUMN kode_makul DROP DEFAULT;
       public          postgres    false    215    216    216         ?          0    16417 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nama, nim, alamat) FROM stdin;
    public          postgres    false    214       3324.dat ?          0    16423    makul 
   TABLE DATA           <   COPY public.makul (kode_makul, nama_makul, sks) FROM stdin;
    public          postgres    false    216       3326.dat            0    0    makul_kode_makul_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.makul_kode_makul_seq', 1, false);
          public          postgres    false    215         k           2606    16421    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    214         m           2606    16428    makul makul_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (kode_makul);
 :   ALTER TABLE ONLY public.makul DROP CONSTRAINT makul_pkey;
       public            postgres    false    216                                                                                                  3324.dat                                                                                            0000600 0004000 0002000 00000000046 14337452444 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Arya Syamudra	D0221357	Tammerodo
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3326.dat                                                                                            0000600 0004000 0002000 00000000046 14337452444 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        100	Pemrograman Berbasis Objek	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000006554 14337452444 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

DROP DATABASE siakad;
--
-- Name: siakad; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE siakad OWNER TO postgres;

\connect siakad

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
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswa (
    nama character varying(30),
    nim character varying(8) NOT NULL,
    alamat character varying(30)
);


ALTER TABLE public.mahasiswa OWNER TO postgres;

--
-- Name: makul; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.makul (
    kode_makul integer NOT NULL,
    nama_makul character varying(30),
    sks integer
);


ALTER TABLE public.makul OWNER TO postgres;

--
-- Name: makul_kode_makul_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.makul_kode_makul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.makul_kode_makul_seq OWNER TO postgres;

--
-- Name: makul_kode_makul_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.makul_kode_makul_seq OWNED BY public.makul.kode_makul;


--
-- Name: makul kode_makul; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.makul ALTER COLUMN kode_makul SET DEFAULT nextval('public.makul_kode_makul_seq'::regclass);


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswa (nama, nim, alamat) FROM stdin;
\.
COPY public.mahasiswa (nama, nim, alamat) FROM '$$PATH$$/3324.dat';

--
-- Data for Name: makul; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.makul (kode_makul, nama_makul, sks) FROM stdin;
\.
COPY public.makul (kode_makul, nama_makul, sks) FROM '$$PATH$$/3326.dat';

--
-- Name: makul_kode_makul_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.makul_kode_makul_seq', 1, false);


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);


--
-- Name: makul makul_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (kode_makul);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    