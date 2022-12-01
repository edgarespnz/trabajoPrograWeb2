--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-01 08:00:45

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
-- TOC entry 3372 (class 0 OID 16660)
-- Dependencies: 221
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES ('e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'Luis', 'Ramirez', 'correo1@gmail.com', '1234', 'Calle Amatistas', 'Lima', 'Lima', 15311, 982282925);
INSERT INTO public.usuario VALUES ('dfd94164-36f8-4d42-8514-9a30562db244', 'Edgar', 'Espinoza', 'correo2@gmail.com', '4567', 'Magdalena', 'Lima', 'Lima', 15321, 925748966);
INSERT INTO public.usuario VALUES ('db6c0fc1-5572-48ac-872c-6d5671b9a11d', 'nombreprueba', 'apellidoprueba', 'emailprueba', 'passwordprueba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('243049de-e79d-4926-81ab-26a272f4da77', 'nombreprueba2', 'apellidoprueba2', 'emailprueba2', 'passwordprueba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('10810172-5dc1-4a88-80e7-5f371c37ffbb', 'Jesus', 'Graos', 'jesusgraos1419@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('ca3aed70-6a4a-4651-acfc-37e8fddba924', 'Choco', 'Mejia', 'choco@gmail.com', 'choco', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('ea4867a7-7cca-4ba2-9d49-bcc72efcd237', 'Choco', 'Mejia', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('32298cdf-4149-44b9-a99b-bc849d65ff3c', '', '', '1234', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('57ec29b4-a259-44bc-97d1-2a33b79f5727', 'Jesus', 'Graos', 'correoprueba3@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('13b60a27-0af7-4c95-b375-2c227c967ad3', 'Jesus', 'Graos', 'correoprueba3@gmail.co', '1234', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usuario VALUES ('168e13f4-bb27-4994-8869-51f985ba003f', 'prueba3', 'prueba3', 'prueba5@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 3365 (class 0 OID 16637)
-- Dependencies: 214
-- Data for Name: orden; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orden VALUES ('f2feddf8-e9f8-4759-9a88-94d4a28a82aa', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 1262, 'Amatistas', '2022-11-30');


--
-- TOC entry 3369 (class 0 OID 16649)
-- Dependencies: 218
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.producto VALUES ('eaadefec-30f0-4771-a966-50c9f991476f', 'NVIDIA GEFORCE GTX 1650 4GB', 299, NULL, 'Graphics', 'https://static.gigabyte.com/StaticFile/Image/Global/47cc2a5e55ccf61e8f7661906c1a9ce4/Product/21805/Png');
INSERT INTO public.producto VALUES ('f1278b9c-602a-4c92-885f-eeae85297fff', 'ASUS PRIME B660-A INTEL', 149, NULL, 'Motherboard', 'https://dlcdnwebimgs.asus.com/gain/fb95a37b-ee86-42f5-9615-cf9103c5fa0a/w328');
INSERT INTO public.producto VALUES ('f65da459-5d4b-4aed-a5b3-c0b68d8a9d07', '700W ATX 80 PLUS GOLD', 79, NULL, 'Power supply', 'https://images.evga.com/products/gallery/100-GD-0700-V1_XL_8.jpg');
INSERT INTO public.producto VALUES ('0f70493a-c1f9-4d6c-b815-a555036a9561', 'NVIDIA GEFORCE RTX 3060 12GB (VR READY)', 619, NULL, 'Graphics', 'https://i.linio.com/p/213762c4ce69661fb597a8e44395456d-product.jpg');
INSERT INTO public.producto VALUES ('181394bf-28b3-4076-a436-d67f24c53248', 'CM MASTERLIQUID ML360L', 109, NULL, 'Liquid cooling', 'https://yamoshi.com.pe/16250-large_default/sistema-de-enfriamiento-liquido-cooler-master-masterliquid-ml360-mirror-argb.jpg');
INSERT INTO public.producto VALUES ('4343849c-ce5c-4569-b21a-ed8070103ef2', 'NVIDIA GEFORCE RTX 3070 8GB (VR READY)', 679, NULL, 'Graphics', 'https://www.pcspeed.com.pe/wp-content/uploads/2022/08/tarjeta-de-video-msi-geforce-rtx-3070-ventus-2x-8gb-oc-gddr6-256-bit-lhr-912-v390-280-1.jpg');
INSERT INTO public.producto VALUES ('4b1695e4-8994-48fb-8a72-a668b6c43c9d', '1TB NVME M.2', 99, NULL, 'Storage', 'https://http2.mlstatic.com/D_NQ_NP_610199-MLA51076409684_082022-O.jpg');
INSERT INTO public.producto VALUES ('5d816e1e-0935-4d18-b520-09e346282446', 'PLACA MSI PRO Z690-A ', 199, NULL, 'Motherboard', 'https://storage-asset.msi.com/global/picture/image/feature/mb/PRO-Z690-A-DDR4/board01.png');
INSERT INTO public.producto VALUES ('60d0d4f0-650f-4152-9e28-fcd51626424b', 'NVIDIA GEFORCE RTX 3090 24GB (VR READY)', 999, NULL, 'Graphics', 'https://totalinformatica.com.pe/uploads/5-10-2022/TUF-RTX3090-O24G-GAMING.jpg');
INSERT INTO public.producto VALUES ('80cc6b61-894a-4324-b0c9-7cae252cea8a', '512GB NVME M.2', 79, NULL, 'Storage', 'https://www.grupocentrotecnologico.com/wp-content/uploads/2022/06/512-G-B.png');
INSERT INTO public.producto VALUES ('83029578-eaaa-49ee-b46e-5197e1c0ba5f', 'CM MASTERLIQUID ML240L', 89, NULL, 'Liquid cooling', 'https://files.coolermaster.com/og-image/masterliquid-ml240l-v2-rgb-1200x630.jpg');
INSERT INTO public.producto VALUES ('8c1af366-a06d-4690-97fd-568b01b47d53', '8 GB DDR4 DUAL CHANNEL', 49, NULL, 'Memory', 'https://moncasecomputer.com/wp-content/uploads/2021/01/memoria-ram-kingston-hyperx-8gb-ddr4-2666mhz-hx426c16fb3_8-negro.jpg');
INSERT INTO public.producto VALUES ('8d8a8c84-a490-4f13-8a62-2b60b2a6a36d', 'INTEL CORE i5-12400F 6-CORE', 299, NULL, 'Processor', 'https://pcexpress.pe/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/p/cpili512400f.png');
INSERT INTO public.producto VALUES ('97bbc3e9-ec2e-49ed-baed-7d62961669e0', 'MSI PRO H610M-G INTEL', 119, NULL, 'Motherboard', 'https://www.pcspeed.com.pe/wp-content/uploads/2022/05/MAINBOARD-MSI-PRO-H610M-G.jpg');
INSERT INTO public.producto VALUES ('9c82b300-2616-4c95-aa02-37e27421dbaf', 'COOLER MASTER TD500 RGB', 99, NULL, 'Case', 'https://yamoshi.com.pe/3121-large_default/case-cooler-master-masterbox-td500-mesh-black-mcb-d500d-kgnn-s01-argb.jpg');
INSERT INTO public.producto VALUES ('a56ab45f-e467-4739-94e9-97fd064826de', 'Windows 10', 49, NULL, 'Windows', 'https://i.blogs.es/b70f6e/win10/840_560.png');
INSERT INTO public.producto VALUES ('a9d782e9-c111-4885-8eec-5d450e58d1e9', 'INTEL CORE i9-12900F 24-CORE', 499, NULL, 'Processor', 'https://www.infotec.com.pe/53800-large_default/procesador-intel-core-i9-12900k-320ghz-lga1700-bx8071512900k.jpg');
INSERT INTO public.producto VALUES ('af4b8b1c-8d3f-4a46-a394-4869ab5d4246', '600W ATX 80 PLUS BRONZE', 39, NULL, 'Power supply', 'https://ripleype.imgix.net/https%3A%2F%2Fs3.amazonaws.com%2Fimagenes-sellers-mercado-ripley%2F2021%2F12%2F14182752%2Fevga-600bq-fuente.jpg?w=750&h=555&ch=Width&auto=format&cs=strip&bg=FFFFFF&q=60&trimcolor=FFFFFF&trim=color&fit=fillmax&ixlib=js-1.1.0&s=b7a828bff6cbd4d9ab0a3587800382b4');
INSERT INTO public.producto VALUES ('bc5355ce-e1b6-4939-bb24-2c3c6594452f', '16 GB DDR4 DUAL CHANNEL', 69, NULL, 'Memory', 'https://cyccomputer.pe/34032-large_default/memoria-16gb-ddr4-viper-gaming-elite-gris-con-disipador-bus-2666mhz-pnpve416g266c6gy.jpg');
INSERT INTO public.producto VALUES ('c0820edc-2250-43b6-b8a0-d7beb53e9bbf', 'Windows 10 Pro', 79, NULL, 'Windows', 'https://production-tailoy-repo-magento-statics.s3.amazonaws.com/imagenes/872x872/productos/i/w/i/windows-10-pro-licencia-digital-45701-default-1.jpg');
INSERT INTO public.producto VALUES ('c963bd8a-b115-49af-8a11-ffa8b336db9c', 'CASE LIAN LI PC-011 DYNAMIC', 129, NULL, 'Case', 'https://www.infotec.com.pe/60706-large_default/case-lian-li-pc-o11-dynamic-mini-black-2-vidrio-templado.jpg');
INSERT INTO public.producto VALUES ('ca9d9d96-7c65-41af-b9f2-b4f499cca7fb', 'INTEL CORE i7-12700F 12-CORE', 359, NULL, 'Processor', 'https://http2.mlstatic.com/D_NQ_NP_786312-MPE49941228603_052022-O.jpg');
INSERT INTO public.producto VALUES ('dc3fedaa-bcdf-43fd-8368-0b5224aee456', 'INTEL CORE i3-12100F 4-CORE', 259, NULL, 'Processor', 'https://i0.wp.com/store.computersac.com/wp-content/uploads/2022/07/intel-core-i3-12100f-procesador1.jpg?fit=1600%2C1600&ssl=1');
INSERT INTO public.producto VALUES ('dce03883-9e77-4037-94dc-c8c4a048999c', 'NVIDIA GEFORCE RTX 3050 8GB (VR READY)', 499, NULL, 'Graphics', 'https://images.evga.com/products/gallery/png/08G-P5-3553-KR_LG_1.png');
INSERT INTO public.producto VALUES ('e73b260b-4424-4cbf-8bd0-5b572ff76d72', '1000W ATX 80 PLUS PLATINIUM', 149, NULL, 'Power supply', 'https://images.evga.com/products/gallery/220-P6-1000-X1_XL_1.jpg');


--
-- TOC entry 3366 (class 0 OID 16640)
-- Dependencies: 215
-- Data for Name: orden_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orden_producto VALUES ('9c8e0bb8-824a-44a3-886f-3e5063551c89', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', 'dce03883-9e77-4037-94dc-c8c4a048999c');
INSERT INTO public.orden_producto VALUES ('0e4c96c9-4521-4966-9075-6866c3f4fef7', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', '8d8a8c84-a490-4f13-8a62-2b60b2a6a36d');
INSERT INTO public.orden_producto VALUES ('36c6c718-617e-4e7d-9b5c-98001e38cc8e', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', '8c1af366-a06d-4690-97fd-568b01b47d53');
INSERT INTO public.orden_producto VALUES ('6cef5f01-7dea-41a2-90a5-747867f7e405', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', '80cc6b61-894a-4324-b0c9-7cae252cea8a');
INSERT INTO public.orden_producto VALUES ('2e2257bb-6ebc-411d-ab19-807bbbc3d2fe', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', 'f1278b9c-602a-4c92-885f-eeae85297fff');
INSERT INTO public.orden_producto VALUES ('ca3267aa-a399-407b-964a-7e763b650e7e', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', '9c82b300-2616-4c95-aa02-37e27421dbaf');
INSERT INTO public.orden_producto VALUES ('7ad013f5-dba1-447d-88e5-e06d65ef2524', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', 'af4b8b1c-8d3f-4a46-a394-4869ab5d4246');
INSERT INTO public.orden_producto VALUES ('cdc5d108-4b62-4a8e-88ac-072347c5edfd', 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa', 'a56ab45f-e467-4739-94e9-97fd064826de');


--
-- TOC entry 3367 (class 0 OID 16643)
-- Dependencies: 216
-- Data for Name: pc_armado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pc_armado VALUES ('ce865977-0168-4f2c-9de1-868755f7339c', 'Monster PC', 'PC para juegos');
INSERT INTO public.pc_armado VALUES ('359ed7ba-c205-4d0c-b146-00a06f3a5b22', 'Cruser Build', 'PC para trabajo');
INSERT INTO public.pc_armado VALUES ('e4d7793e-c045-4e3f-bf3c-32c882a849ce', 'Nasa PC', 'PC para ingenieria');
INSERT INTO public.pc_armado VALUES ('c0162419-933f-461d-993b-0226e98534ef', 'Budget Build', 'PC para escritorio');
INSERT INTO public.pc_armado VALUES ('ea19825e-c15e-47ad-a59d-985fc1db17dd', 'Coding Build', 'PC para programadores');
INSERT INTO public.pc_armado VALUES ('b6b54cf8-f0cd-43ef-92b7-87fe3b521d76', 'Design Build', 'PC para diseñadores');


--
-- TOC entry 3368 (class 0 OID 16646)
-- Dependencies: 217
-- Data for Name: pc_armado_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pc_armado_producto VALUES ('8d8b98a9-5219-4e87-b35f-86ac20761e06', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', '4343849c-ce5c-4569-b21a-ed8070103ef2');
INSERT INTO public.pc_armado_producto VALUES ('14ee9152-e14e-4f53-9a02-c166351200e3', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', 'ca9d9d96-7c65-41af-b9f2-b4f499cca7fb');
INSERT INTO public.pc_armado_producto VALUES ('1f1f1a7f-e09e-4ab2-a617-2102c9a6f7fb', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', 'bc5355ce-e1b6-4939-bb24-2c3c6594452f');
INSERT INTO public.pc_armado_producto VALUES ('82ba6275-1602-44a5-ab34-0bd0cb3c2a44', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', 'f65da459-5d4b-4aed-a5b3-c0b68d8a9d07');
INSERT INTO public.pc_armado_producto VALUES ('649ba9af-5eeb-4f3e-a89f-bf424bf2049c', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', '9c82b300-2616-4c95-aa02-37e27421dbaf');
INSERT INTO public.pc_armado_producto VALUES ('0fb14965-63f8-4a06-9f8c-3eff4a95c8e9', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', '4b1695e4-8994-48fb-8a72-a668b6c43c9d');
INSERT INTO public.pc_armado_producto VALUES ('3759b739-14a4-40a2-8f36-59d1fe9e5a0a', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', '83029578-eaaa-49ee-b46e-5197e1c0ba5f');
INSERT INTO public.pc_armado_producto VALUES ('a45fb8c4-8359-4575-9530-5d0595969a08', 'e4d7793e-c045-4e3f-bf3c-32c882a849ce', 'c0820edc-2250-43b6-b8a0-d7beb53e9bbf');
INSERT INTO public.pc_armado_producto VALUES ('8b641541-3a08-425d-9a38-93912bc89f1e', 'c0162419-933f-461d-993b-0226e98534ef', 'dc3fedaa-bcdf-43fd-8368-0b5224aee456');
INSERT INTO public.pc_armado_producto VALUES ('c08df067-0e3b-4db4-9673-d957214e7359', 'c0162419-933f-461d-993b-0226e98534ef', '80cc6b61-894a-4324-b0c9-7cae252cea8a');
INSERT INTO public.pc_armado_producto VALUES ('0d786823-fdc3-4d33-bdf0-9c53d3d2e75f', 'c0162419-933f-461d-993b-0226e98534ef', '8c1af366-a06d-4690-97fd-568b01b47d53');
INSERT INTO public.pc_armado_producto VALUES ('68572c27-fa26-44d2-9e24-e4589d26abac', 'c0162419-933f-461d-993b-0226e98534ef', '9c82b300-2616-4c95-aa02-37e27421dbaf');
INSERT INTO public.pc_armado_producto VALUES ('cccd5b61-1ed5-4d22-9771-a8177f87152c', 'ce865977-0168-4f2c-9de1-868755f7339c', 'a9d782e9-c111-4885-8eec-5d450e58d1e9');
INSERT INTO public.pc_armado_producto VALUES ('9f181374-4012-4557-a0c4-bd522c56d11d', 'ce865977-0168-4f2c-9de1-868755f7339c', '60d0d4f0-650f-4152-9e28-fcd51626424b');
INSERT INTO public.pc_armado_producto VALUES ('b7ec2128-73c2-4c87-98de-20b6b16c707d', 'ce865977-0168-4f2c-9de1-868755f7339c', 'e73b260b-4424-4cbf-8bd0-5b572ff76d72');
INSERT INTO public.pc_armado_producto VALUES ('e569abcc-58ec-4273-a6d3-cb48f29dba39', 'ce865977-0168-4f2c-9de1-868755f7339c', '4b1695e4-8994-48fb-8a72-a668b6c43c9d');
INSERT INTO public.pc_armado_producto VALUES ('f5d4bfae-9bc3-4f69-9e75-90f79eabc54d', 'ce865977-0168-4f2c-9de1-868755f7339c', 'c963bd8a-b115-49af-8a11-ffa8b336db9c');
INSERT INTO public.pc_armado_producto VALUES ('cf18a321-764a-4289-806f-e04e927f59d1', 'ce865977-0168-4f2c-9de1-868755f7339c', '181394bf-28b3-4076-a436-d67f24c53248');
INSERT INTO public.pc_armado_producto VALUES ('61504982-b5bc-4c33-a809-0f6bd49194da', 'ce865977-0168-4f2c-9de1-868755f7339c', 'bc5355ce-e1b6-4939-bb24-2c3c6594452f');
INSERT INTO public.pc_armado_producto VALUES ('6e6709de-20a3-4438-a7e8-04c2028f1986', 'ce865977-0168-4f2c-9de1-868755f7339c', 'c0820edc-2250-43b6-b8a0-d7beb53e9bbf');
INSERT INTO public.pc_armado_producto VALUES ('266e11f6-70b7-4234-8f16-1640a1fb2461', 'ce865977-0168-4f2c-9de1-868755f7339c', '5d816e1e-0935-4d18-b520-09e346282446');
INSERT INTO public.pc_armado_producto VALUES ('aed19f32-b1a9-4548-981c-6b35fe5ceef2', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', '8d8a8c84-a490-4f13-8a62-2b60b2a6a36d');
INSERT INTO public.pc_armado_producto VALUES ('34a49f00-b5bf-4ef0-bdb6-243d3fc223d7', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', 'f1278b9c-602a-4c92-885f-eeae85297fff');
INSERT INTO public.pc_armado_producto VALUES ('fd9fe908-cfd3-40d7-8ff2-63cd2402b1fa', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', 'bc5355ce-e1b6-4939-bb24-2c3c6594452f');
INSERT INTO public.pc_armado_producto VALUES ('b2fc5ace-824c-470e-ae2d-403439248bc1', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', 'eaadefec-30f0-4771-a966-50c9f991476f');
INSERT INTO public.pc_armado_producto VALUES ('2d28d1f8-8f33-4743-9c7f-8fd54b03c197', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', 'af4b8b1c-8d3f-4a46-a394-4869ab5d4246');
INSERT INTO public.pc_armado_producto VALUES ('619ceda9-702e-41d3-99b2-a15cafe3e154', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', '80cc6b61-894a-4324-b0c9-7cae252cea8a');
INSERT INTO public.pc_armado_producto VALUES ('b9818175-7bc9-441d-afba-51ca5e3b032b', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', '9c82b300-2616-4c95-aa02-37e27421dbaf');
INSERT INTO public.pc_armado_producto VALUES ('e18c3509-1b2e-45ac-af7d-25dc1e3afe88', '359ed7ba-c205-4d0c-b146-00a06f3a5b22', 'a56ab45f-e467-4739-94e9-97fd064826de');


--
-- TOC entry 3370 (class 0 OID 16652)
-- Dependencies: 219
-- Data for Name: reporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reporte VALUES ('b2ac413f-b3bc-4dad-b3b4-870fd6abafe3', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'Jesus Graos', 51944130776, 'adf', 'adf');
INSERT INTO public.reporte VALUES ('027807f1-d513-4973-b2d4-d2c770da3e9e', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'adf', 98, 'jkdfal', 'jkñlda');
INSERT INTO public.reporte VALUES ('a9bcba71-c968-454d-a2d4-b4d0dd5da41b', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'lkfdaj', 213132, '12lkdjf', 'lkjdfgjkldfa');
INSERT INTO public.reporte VALUES ('dbd3ee52-4026-428f-bed8-aa41b14cfc10', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', '123', 134, 'lkadfj', 'adflksj');
INSERT INTO public.reporte VALUES ('55a81282-bd6a-479c-a405-ab8ddfc35697', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', '123', 134, 'lkadfj', 'adflksj');
INSERT INTO public.reporte VALUES ('9f956e8d-7320-44f1-8ef2-32344fbbbaed', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'adfdfa', 1344, 'dfafda', 'afdfad');
INSERT INTO public.reporte VALUES ('15944749-96b3-42f2-a500-adb307eeb049', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'Edgar', 91349, 'prueba1', 'kldvj');
INSERT INTO public.reporte VALUES ('8d5e123b-a63b-4f93-85b8-d819961f6719', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'Edgar', 91349, 'prueba1', 'kldvj');
INSERT INTO public.reporte VALUES ('4331b84b-89a5-4dfa-b071-4a41c5f06477', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'Jesus Graos', 1944130776, 'adfdfa', '');
INSERT INTO public.reporte VALUES ('d6653433-5fd4-485f-89f9-0ceca5aa6862', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 'correo1@gmail.com', 'Edgar2', 931494, 'Prueba5', 'kfdaj');


--
-- TOC entry 3371 (class 0 OID 16657)
-- Dependencies: 220
-- Data for Name: resena; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.resena VALUES ('419aaa1e-c367-4bbf-a4bb-808a59401a00', 'e838db8a-2609-42d7-945f-b2d3a3ad3efc', 5, 'Recomiendo completamente el servicio', NULL, NULL);
INSERT INTO public.resena VALUES ('77ea0b31-25f7-4843-9efe-0d320a8cf9fc', 'dfd94164-36f8-4d42-8514-9a30562db244', 5, 'Buenas PCs', NULL, NULL);
INSERT INTO public.resena VALUES ('c231ca8e-39f9-43f3-aeec-29555949dbec', '10810172-5dc1-4a88-80e7-5f371c37ffbb', 5, 'Con esta pc apruebo progra web', NULL, NULL);


-- Completed on 2022-12-01 08:00:45

--
-- PostgreSQL database dump complete
--

