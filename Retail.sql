toc.dat                                                                                             0000600 0004000 0002000 00000013712 14345146561 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           z         	   indomerit    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    24622 	   indomerit    DATABASE     ?   CREATE DATABASE indomerit WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE indomerit;
                postgres    false         ?            1259    41003    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    stok integer,
    harga integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false         ?            1259    40990    barang_masuk    TABLE     ?   CREATE TABLE public.barang_masuk (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    stok_masuk integer,
    tanggal_masuk date,
    id_supplier integer NOT NULL,
    id_transaksi integer
);
     DROP TABLE public.barang_masuk;
       public         heap    postgres    false         ?            1259    41023 	   penjualan    TABLE     ?   CREATE TABLE public.penjualan (
    id_penjualan integer NOT NULL,
    id_transaksi integer NOT NULL,
    nama_barang character varying(50),
    jumlah integer,
    tanggal_penjualan date
);
    DROP TABLE public.penjualan;
       public         heap    postgres    false         ?            1259    24623    supplier    TABLE     l   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false         ?            1259    40960 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    total_transaksi integer,
    tanggal_transaksi integer
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                   0    41003    barang 
   TABLE DATA           E   COPY public.barang (id_barang, nama_barang, stok, harga) FROM stdin;
    public          postgres    false    217       3344.dat           0    40990    barang_masuk 
   TABLE DATA           t   COPY public.barang_masuk (id_barang, nama_barang, stok_masuk, tanggal_masuk, id_supplier, id_transaksi) FROM stdin;
    public          postgres    false    216       3343.dat           0    41023 	   penjualan 
   TABLE DATA           g   COPY public.penjualan (id_penjualan, id_transaksi, nama_barang, jumlah, tanggal_penjualan) FROM stdin;
    public          postgres    false    218       3345.dat           0    24623    supplier 
   TABLE DATA           >   COPY public.supplier (id_supplier, nama_supplier) FROM stdin;
    public          postgres    false    214       3341.dat           0    40960 	   transaksi 
   TABLE DATA           U   COPY public.transaksi (id_transaksi, total_transaksi, tanggal_transaksi) FROM stdin;
    public          postgres    false    215       3342.dat y           2606    41007    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    217         {           2606    41027    penjualan penjualan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.penjualan
    ADD CONSTRAINT penjualan_pkey PRIMARY KEY (id_penjualan);
 B   ALTER TABLE ONLY public.penjualan DROP CONSTRAINT penjualan_pkey;
       public            postgres    false    218         u           2606    24627    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214         w           2606    40964    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    215         |           2606    40993 *   barang_masuk barang_masuk_id_supplier_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang_masuk
    ADD CONSTRAINT barang_masuk_id_supplier_fkey FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier);
 T   ALTER TABLE ONLY public.barang_masuk DROP CONSTRAINT barang_masuk_id_supplier_fkey;
       public          postgres    false    216    214    3189         }           2606    40998 +   barang_masuk barang_masuk_id_transaksi_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang_masuk
    ADD CONSTRAINT barang_masuk_id_transaksi_fkey FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi);
 U   ALTER TABLE ONLY public.barang_masuk DROP CONSTRAINT barang_masuk_id_transaksi_fkey;
       public          postgres    false    215    216    3191         ~           2606    41028 %   penjualan penjualan_id_transaksi_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.penjualan
    ADD CONSTRAINT penjualan_id_transaksi_fkey FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi);
 O   ALTER TABLE ONLY public.penjualan DROP CONSTRAINT penjualan_id_transaksi_fkey;
       public          postgres    false    3191    215    218                                                              3344.dat                                                                                            0000600 0004000 0002000 00000000545 14345146561 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Mie Sedaap	100	3000
2	Mie Suksess Isi 2	99	5000
3	Ale-Ale	95	1000
4	Floridina	100	7000
5	Indomie	97	7000
6	indomilk	50	18000
7	Segitiga Biru 1Kg	35	10000
8	Bimoli 2l	48	26000
9	Kecap ABC Manis 135ml	47	6000
10	Chocolatos Wafer Roll	49	1000
11	Nextar	49	1000
12	Teh Gelas	90	1000
13	Aqua 600ml	49	3000
14	kopikap	49	1000
15	Le Minerale 1500ml	50	5000
\.


                                                                                                                                                           3343.dat                                                                                            0000600 0004000 0002000 00000001360 14345146561 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1000001	Ale Ale	100	2022-12-08	240901	212001
1000002	Mie Sedaap	100	2022-12-08	240901	212001
1000003	Mie Suksess Isi 2	100	2022-12-08	240901	212001
1000004	Floridina	100	2022-12-08	240901	212001
1000005	Indomie	100	2022-12-08	240902	212002
1000006	Segitiga Biru 1Kg	50	2022-12-08	240902	212002
1000007	Indomilk	50	2022-12-08	240902	212002
1000008	Bimoli 2L	50	2022-12-08	240902	212002
1000009	Kecap ABC Manis 135Ml	50	2022-12-08	240903	212003
1000010	Le Minerale 1500Ml	50	2022-12-08	240904	212004
1000011	Chocolatos Wafer Roll	50	2022-12-08	240905	212005
1000012	Nextar Brownies	50	2022-12-08	240906	212006
1000013	Teh Gelas	100	2022-12-08	240907	212007
1000014	Aqua 600Ml	50	2022-12-08	240908	212008
1000015	Kopikap	100	2022-12-08	240909	212009
\.


                                                                                                                                                                                                                                                                                3345.dat                                                                                            0000600 0004000 0002000 00000001076 14345146561 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        111	212010	Segitiga Biru 1Kg	5	2022-12-10
112	212010	Bimoli 2L	1	2022-12-10
113	212010	Kecap ABC Manis 135Ml	1	2022-12-10
114	212011	Ale-Ale	5	2022-12-10
115	212011	Aqua 600ml	1	2022-12-10
116	212012	Segitiga Biru 1Kg	10	2022-12-10
117	212012	Indomie	3	2022-12-10
118	212012	Kecap ABC Manis 135Ml	1	2022-12-10
119	212012	Bimoli 2L	1	2022-12-10
120	212013	Teh Gelas	10	2022-12-10
121	212014	Chocolate Wafer Roll	1	2022-12-10
122	212014	Kopikap	1	2022-12-10
123	212014	Nextar	1	2022-12-10
124	212015	Mie Suksess Isi 2	1	2022-12-10
125	212015	Kecap ABC Manis	1	2022-12-10
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3341.dat                                                                                            0000600 0004000 0002000 00000000442 14345146561 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        240901	PT. WINGSFOOD
240902	PT. Indofood Sukses Makmur
240903	PT. Heinz ABC Indonesia
240904	PT. Mayora Indah TBK
240905	PT. Garuda Food Putra Putri TBK
240906	PT. Kaldu Sari Nabati Indonesia
240908	PT. Aqua Golden Missisipi TBK
240909	PT. Tirta Fresindo Jaya
240907	PT. Orang Tua TBK
\.


                                                                                                                                                                                                                              3342.dat                                                                                            0000600 0004000 0002000 00000000433 14345146561 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        212001	1600000	2002
212002	2118000	2002
212003	300000	2002
212004	250000	2002
212005	50000	2002
212006	50000	2002
212007	100000	2002
212009	100000	2002
212008	300000	2002
212010	50000	2002
212011	8000	2002
212012	130000	2002
212013	10000	2002
212014	3000	2002
212015	11000	2002
\.


                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000013056 14345146561 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE indomerit;
--
-- Name: indomerit; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE indomerit WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE indomerit OWNER TO postgres;

\connect indomerit

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
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    stok integer,
    harga integer
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_masuk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang_masuk (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    stok_masuk integer,
    tanggal_masuk date,
    id_supplier integer NOT NULL,
    id_transaksi integer
);


ALTER TABLE public.barang_masuk OWNER TO postgres;

--
-- Name: penjualan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penjualan (
    id_penjualan integer NOT NULL,
    id_transaksi integer NOT NULL,
    nama_barang character varying(50),
    jumlah integer,
    tanggal_penjualan date
);


ALTER TABLE public.penjualan OWNER TO postgres;

--
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    total_transaksi integer,
    tanggal_transaksi integer
);


ALTER TABLE public.transaksi OWNER TO postgres;

--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (id_barang, nama_barang, stok, harga) FROM stdin;
\.
COPY public.barang (id_barang, nama_barang, stok, harga) FROM '$$PATH$$/3344.dat';

--
-- Data for Name: barang_masuk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang_masuk (id_barang, nama_barang, stok_masuk, tanggal_masuk, id_supplier, id_transaksi) FROM stdin;
\.
COPY public.barang_masuk (id_barang, nama_barang, stok_masuk, tanggal_masuk, id_supplier, id_transaksi) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: penjualan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.penjualan (id_penjualan, id_transaksi, nama_barang, jumlah, tanggal_penjualan) FROM stdin;
\.
COPY public.penjualan (id_penjualan, id_transaksi, nama_barang, jumlah, tanggal_penjualan) FROM '$$PATH$$/3345.dat';

--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (id_supplier, nama_supplier) FROM stdin;
\.
COPY public.supplier (id_supplier, nama_supplier) FROM '$$PATH$$/3341.dat';

--
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi (id_transaksi, total_transaksi, tanggal_transaksi) FROM stdin;
\.
COPY public.transaksi (id_transaksi, total_transaksi, tanggal_transaksi) FROM '$$PATH$$/3342.dat';

--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);


--
-- Name: penjualan penjualan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penjualan
    ADD CONSTRAINT penjualan_pkey PRIMARY KEY (id_penjualan);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);


--
-- Name: transaksi transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);


--
-- Name: barang_masuk barang_masuk_id_supplier_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang_masuk
    ADD CONSTRAINT barang_masuk_id_supplier_fkey FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier);


--
-- Name: barang_masuk barang_masuk_id_transaksi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang_masuk
    ADD CONSTRAINT barang_masuk_id_transaksi_fkey FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi);


--
-- Name: penjualan penjualan_id_transaksi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penjualan
    ADD CONSTRAINT penjualan_id_transaksi_fkey FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  