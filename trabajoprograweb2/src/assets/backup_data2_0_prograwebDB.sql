--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-19 10:43:52

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
-- TOC entry 3365 (class 0 OID 16406)
-- Dependencies: 214
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario" ("Usuario_ID", "Nombre", "Apellido", "Correo", "Contraseña", "Direccion", "Departamento", "Ciudad", "Codigo_Postal", "Telefono") FROM stdin;
e838db8a-2609-42d7-945f-b2d3a3ad3efc	Luis	Ramirez	correo1@gmail.com	1234	Calle Amatistas	Lima	Lima	15311	982282925
dfd94164-36f8-4d42-8514-9a30562db244	Edgar	Espinoza	correo2@gmail.com	4567	Magdalena	Lima	Lima	15321	925748966
\.


--
-- TOC entry 3367 (class 0 OID 16425)
-- Dependencies: 216
-- Data for Name: Orden; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Orden" ("Orden_ID", "Usuario_ID", "Monto", "Direccion", "Fecha") FROM stdin;
f2feddf8-e9f8-4759-9a88-94d4a28a82aa	e838db8a-2609-42d7-945f-b2d3a3ad3efc	1262	Amatistas	2022-11-30
\.


--
-- TOC entry 3369 (class 0 OID 16447)
-- Dependencies: 218
-- Data for Name: Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Producto" ("Producto_ID", "Nombre", "Precio", "Descripcion", "Categoria") FROM stdin;
ca9d9d96-7c65-41af-b9f2-b4f499cca7fb	INTEL CORE i7-12700F 12-CORE	359	\N	Processor
f1278b9c-602a-4c92-885f-eeae85297fff	ASUS PRIME B660-A INTEL	149	\N	Motherboard
83029578-eaaa-49ee-b46e-5197e1c0ba5f	CM MASTERLIQUID ML240L	89	\N	Liquid cooling
f65da459-5d4b-4aed-a5b3-c0b68d8a9d07	700W ATX 80 PLUS GOLD	79	\N	Power supply
9c82b300-2616-4c95-aa02-37e27421dbaf	COOLER MASTER TD500 RGB	99	\N	Case
4343849c-ce5c-4569-b21a-ed8070103ef2	NVIDIA GEFORCE RTX 3070 8GB (VR READY)	679	\N	Graphics
4b1695e4-8994-48fb-8a72-a668b6c43c9d	1TB NVME M.2	99	\N	Storage
bc5355ce-e1b6-4939-bb24-2c3c6594452f	16 GB DDR4 DUAL CHANNEL	69	\N	Memory
eaadefec-30f0-4771-a966-50c9f991476f	NVIDIA GEFORCE GTX 1650 4GB	299	\N	Graphics
dce03883-9e77-4037-94dc-c8c4a048999c	NVIDIA GEFORCE RTX 3050 8GB (VR READY)	499	\N	Graphics
0f70493a-c1f9-4d6c-b815-a555036a9561	NVIDIA GEFORCE RTX 3060 12GB (VR READY)	619	\N	Graphics
60d0d4f0-650f-4152-9e28-fcd51626424b	NVIDIA GEFORCE RTX 3090 24GB (VR READY)	999	\N	Graphics
8d8a8c84-a490-4f13-8a62-2b60b2a6a36d	INTEL CORE i5-12400F 6-CORE	299	\N	Processor
dc3fedaa-bcdf-43fd-8368-0b5224aee456	INTEL CORE i3-12100F 4-CORE	259	\N	Processor
8c1af366-a06d-4690-97fd-568b01b47d53	8 GB DDR4 DUAL CHANNEL	49	\N	Memory
80cc6b61-894a-4324-b0c9-7cae252cea8a	512GB NVME M.2	79	\N	Storage
181394bf-28b3-4076-a436-d67f24c53248	CM MASTERLIQUID ML360L	109	\N	Liquid cooling
a56ab45f-e467-4739-94e9-97fd064826de	Windows 10	49	\N	Windows
c0820edc-2250-43b6-b8a0-d7beb53e9bbf	Windows 10 Pro	79	\N	Windows
af4b8b1c-8d3f-4a46-a394-4869ab5d4246	600W ATX 80 PLUS BRONZE	39	\N	Power supply
97bbc3e9-ec2e-49ed-baed-7d62961669e0	MSI PRO H610M-G INTEL	119	\N	Motherboard
a9d782e9-c111-4885-8eec-5d450e58d1e9	INTEL CORE i9-12900F 24-CORE	499	\N	Processor
e73b260b-4424-4cbf-8bd0-5b572ff76d72	1000W ATX 80 PLUS PLATINIUM	149	\N	Power supply
c963bd8a-b115-49af-8a11-ffa8b336db9c	CASE LIAN LI PC-011 DYNAMIC	129	\N	Case
5d816e1e-0935-4d18-b520-09e346282446	PLACA MSI PRO Z690-A 	199	\N	Motherboard
\.


--
-- TOC entry 3370 (class 0 OID 16474)
-- Dependencies: 219
-- Data for Name: Orden_Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Orden_Producto" ("Orden_Producto_ID", "Orden_ID", "Producto_ID") FROM stdin;
9c8e0bb8-824a-44a3-886f-3e5063551c89	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	dce03883-9e77-4037-94dc-c8c4a048999c
0e4c96c9-4521-4966-9075-6866c3f4fef7	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	8d8a8c84-a490-4f13-8a62-2b60b2a6a36d
36c6c718-617e-4e7d-9b5c-98001e38cc8e	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	8c1af366-a06d-4690-97fd-568b01b47d53
6cef5f01-7dea-41a2-90a5-747867f7e405	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	80cc6b61-894a-4324-b0c9-7cae252cea8a
2e2257bb-6ebc-411d-ab19-807bbbc3d2fe	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	f1278b9c-602a-4c92-885f-eeae85297fff
ca3267aa-a399-407b-964a-7e763b650e7e	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	9c82b300-2616-4c95-aa02-37e27421dbaf
7ad013f5-dba1-447d-88e5-e06d65ef2524	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	af4b8b1c-8d3f-4a46-a394-4869ab5d4246
cdc5d108-4b62-4a8e-88ac-072347c5edfd	f2feddf8-e9f8-4759-9a88-94d4a28a82aa	a56ab45f-e467-4739-94e9-97fd064826de
\.


--
-- TOC entry 3371 (class 0 OID 16489)
-- Dependencies: 220
-- Data for Name: PC_Armado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PC_Armado" ("PC_Armado_ID", "Nombre", "Descripcion") FROM stdin;
ce865977-0168-4f2c-9de1-868755f7339c	Monster PC	PC para juegos
359ed7ba-c205-4d0c-b146-00a06f3a5b22	Cruser Build	PC para trabajo
e4d7793e-c045-4e3f-bf3c-32c882a849ce	Nasa PC	PC para ingenieria
c0162419-933f-461d-993b-0226e98534ef	Budget Build	PC para escritorio
\.


--
-- TOC entry 3372 (class 0 OID 16494)
-- Dependencies: 221
-- Data for Name: PC_Armado_Producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PC_Armado_Producto" ("PC_Armado_Producto_ID", "PC_Armado_ID", "Producto_ID") FROM stdin;
8d8b98a9-5219-4e87-b35f-86ac20761e06	e4d7793e-c045-4e3f-bf3c-32c882a849ce	4343849c-ce5c-4569-b21a-ed8070103ef2
14ee9152-e14e-4f53-9a02-c166351200e3	e4d7793e-c045-4e3f-bf3c-32c882a849ce	ca9d9d96-7c65-41af-b9f2-b4f499cca7fb
1f1f1a7f-e09e-4ab2-a617-2102c9a6f7fb	e4d7793e-c045-4e3f-bf3c-32c882a849ce	bc5355ce-e1b6-4939-bb24-2c3c6594452f
82ba6275-1602-44a5-ab34-0bd0cb3c2a44	e4d7793e-c045-4e3f-bf3c-32c882a849ce	f65da459-5d4b-4aed-a5b3-c0b68d8a9d07
649ba9af-5eeb-4f3e-a89f-bf424bf2049c	e4d7793e-c045-4e3f-bf3c-32c882a849ce	9c82b300-2616-4c95-aa02-37e27421dbaf
0fb14965-63f8-4a06-9f8c-3eff4a95c8e9	e4d7793e-c045-4e3f-bf3c-32c882a849ce	4b1695e4-8994-48fb-8a72-a668b6c43c9d
3759b739-14a4-40a2-8f36-59d1fe9e5a0a	e4d7793e-c045-4e3f-bf3c-32c882a849ce	83029578-eaaa-49ee-b46e-5197e1c0ba5f
a45fb8c4-8359-4575-9530-5d0595969a08	e4d7793e-c045-4e3f-bf3c-32c882a849ce	c0820edc-2250-43b6-b8a0-d7beb53e9bbf
8b641541-3a08-425d-9a38-93912bc89f1e	c0162419-933f-461d-993b-0226e98534ef	dc3fedaa-bcdf-43fd-8368-0b5224aee456
c08df067-0e3b-4db4-9673-d957214e7359	c0162419-933f-461d-993b-0226e98534ef	80cc6b61-894a-4324-b0c9-7cae252cea8a
0d786823-fdc3-4d33-bdf0-9c53d3d2e75f	c0162419-933f-461d-993b-0226e98534ef	8c1af366-a06d-4690-97fd-568b01b47d53
68572c27-fa26-44d2-9e24-e4589d26abac	c0162419-933f-461d-993b-0226e98534ef	9c82b300-2616-4c95-aa02-37e27421dbaf
cccd5b61-1ed5-4d22-9771-a8177f87152c	ce865977-0168-4f2c-9de1-868755f7339c	a9d782e9-c111-4885-8eec-5d450e58d1e9
9f181374-4012-4557-a0c4-bd522c56d11d	ce865977-0168-4f2c-9de1-868755f7339c	60d0d4f0-650f-4152-9e28-fcd51626424b
b7ec2128-73c2-4c87-98de-20b6b16c707d	ce865977-0168-4f2c-9de1-868755f7339c	e73b260b-4424-4cbf-8bd0-5b572ff76d72
e569abcc-58ec-4273-a6d3-cb48f29dba39	ce865977-0168-4f2c-9de1-868755f7339c	4b1695e4-8994-48fb-8a72-a668b6c43c9d
f5d4bfae-9bc3-4f69-9e75-90f79eabc54d	ce865977-0168-4f2c-9de1-868755f7339c	c963bd8a-b115-49af-8a11-ffa8b336db9c
cf18a321-764a-4289-806f-e04e927f59d1	ce865977-0168-4f2c-9de1-868755f7339c	181394bf-28b3-4076-a436-d67f24c53248
61504982-b5bc-4c33-a809-0f6bd49194da	ce865977-0168-4f2c-9de1-868755f7339c	bc5355ce-e1b6-4939-bb24-2c3c6594452f
6e6709de-20a3-4438-a7e8-04c2028f1986	ce865977-0168-4f2c-9de1-868755f7339c	c0820edc-2250-43b6-b8a0-d7beb53e9bbf
266e11f6-70b7-4234-8f16-1640a1fb2461	ce865977-0168-4f2c-9de1-868755f7339c	5d816e1e-0935-4d18-b520-09e346282446
aed19f32-b1a9-4548-981c-6b35fe5ceef2	359ed7ba-c205-4d0c-b146-00a06f3a5b22	8d8a8c84-a490-4f13-8a62-2b60b2a6a36d
34a49f00-b5bf-4ef0-bdb6-243d3fc223d7	359ed7ba-c205-4d0c-b146-00a06f3a5b22	f1278b9c-602a-4c92-885f-eeae85297fff
fd9fe908-cfd3-40d7-8ff2-63cd2402b1fa	359ed7ba-c205-4d0c-b146-00a06f3a5b22	bc5355ce-e1b6-4939-bb24-2c3c6594452f
b2fc5ace-824c-470e-ae2d-403439248bc1	359ed7ba-c205-4d0c-b146-00a06f3a5b22	eaadefec-30f0-4771-a966-50c9f991476f
2d28d1f8-8f33-4743-9c7f-8fd54b03c197	359ed7ba-c205-4d0c-b146-00a06f3a5b22	af4b8b1c-8d3f-4a46-a394-4869ab5d4246
619ceda9-702e-41d3-99b2-a15cafe3e154	359ed7ba-c205-4d0c-b146-00a06f3a5b22	80cc6b61-894a-4324-b0c9-7cae252cea8a
b9818175-7bc9-441d-afba-51ca5e3b032b	359ed7ba-c205-4d0c-b146-00a06f3a5b22	9c82b300-2616-4c95-aa02-37e27421dbaf
e18c3509-1b2e-45ac-af7d-25dc1e3afe88	359ed7ba-c205-4d0c-b146-00a06f3a5b22	a56ab45f-e467-4739-94e9-97fd064826de
\.


--
-- TOC entry 3366 (class 0 OID 16413)
-- Dependencies: 215
-- Data for Name: Reporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Reporte" ("Reporte_ID", "Usuario_ID", "Correo", "Nombre", "Telefono", "Asunto", "Descripcion") FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 16435)
-- Dependencies: 217
-- Data for Name: Resena; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Resena" ("Resena_ID", "Usuario_ID", "Puntaje", "Comentario", "Link", "Tipo_Reseña") FROM stdin;
\.


-- Completed on 2022-11-19 10:43:53

--
-- PostgreSQL database dump complete
--

