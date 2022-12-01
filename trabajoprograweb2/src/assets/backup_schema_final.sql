--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-01 07:59:58

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
-- TOC entry 214 (class 1259 OID 16637)
-- Name: orden; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orden (
    "Orden_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Monto" numeric(20,0),
    "Direccion" character varying(150),
    "Fecha" date
);


ALTER TABLE public.orden OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16640)
-- Name: orden_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orden_producto (
    "Orden_Producto_ID" uuid NOT NULL,
    "Orden_ID" uuid NOT NULL,
    "Producto_ID" uuid NOT NULL
);


ALTER TABLE public.orden_producto OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16643)
-- Name: pc_armado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pc_armado (
    "PC_Armado_ID" uuid NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Descripcion" character varying(150)
);


ALTER TABLE public.pc_armado OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16646)
-- Name: pc_armado_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pc_armado_producto (
    "PC_Armado_Producto_ID" uuid NOT NULL,
    "PC_Armado_ID" uuid NOT NULL,
    "Producto_ID" uuid NOT NULL
);


ALTER TABLE public.pc_armado_producto OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16649)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    "Producto_ID" uuid NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Precio" numeric(20,0) NOT NULL,
    "Descripcion" character varying(150),
    "Categoria" character varying(100),
    "Url" character varying
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16652)
-- Name: reporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reporte (
    "Reporte_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Correo" character varying(100),
    "Nombre" character varying(100),
    "Telefono" numeric(20,0),
    "Asunto" character varying(250),
    "Descripcion" character varying(250)
);


ALTER TABLE public.reporte OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16657)
-- Name: resena; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resena (
    "Resena_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Puntaje" numeric(15,0),
    "Comentario" character varying(100),
    "Link" character varying(200),
    "Tipo_Resena" character varying(100)
);


ALTER TABLE public.resena OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16660)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    "Usuario_ID" uuid NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Apellido" character varying(150) NOT NULL,
    "Correo" character varying(200) NOT NULL,
    "Contraseña" character varying(150) NOT NULL,
    "Direccion" character varying(200),
    "Departamento" character varying(100),
    "Ciudad" character varying(100),
    "Codigo_Postal" numeric(20,0),
    "Telefono" numeric(20,0)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 3203 (class 2606 OID 16666)
-- Name: orden_producto Orden_Producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "Orden_Producto_pkey" PRIMARY KEY ("Orden_Producto_ID");


--
-- TOC entry 3201 (class 2606 OID 16668)
-- Name: orden Orden_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "Orden_pkey" PRIMARY KEY ("Orden_ID");


--
-- TOC entry 3207 (class 2606 OID 16670)
-- Name: pc_armado_producto PC_Armado_Producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "PC_Armado_Producto_pkey" PRIMARY KEY ("PC_Armado_Producto_ID");


--
-- TOC entry 3205 (class 2606 OID 16672)
-- Name: pc_armado PC_Armado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pc_armado
    ADD CONSTRAINT "PC_Armado_pkey" PRIMARY KEY ("PC_Armado_ID");


--
-- TOC entry 3209 (class 2606 OID 16674)
-- Name: producto Producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY ("Producto_ID");


--
-- TOC entry 3211 (class 2606 OID 16676)
-- Name: reporte Reporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT "Reporte_pkey" PRIMARY KEY ("Reporte_ID");


--
-- TOC entry 3213 (class 2606 OID 16678)
-- Name: resena Resena_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resena
    ADD CONSTRAINT "Resena_pkey" PRIMARY KEY ("Resena_ID");


--
-- TOC entry 3215 (class 2606 OID 16680)
-- Name: usuario Usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("Usuario_ID");


--
-- TOC entry 3217 (class 2606 OID 16681)
-- Name: orden_producto FK_Orden_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "FK_Orden_ID" FOREIGN KEY ("Orden_ID") REFERENCES public.orden("Orden_ID");


--
-- TOC entry 3219 (class 2606 OID 16686)
-- Name: pc_armado_producto FK_PC_Armado_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "FK_PC_Armado_ID" FOREIGN KEY ("PC_Armado_ID") REFERENCES public.pc_armado("PC_Armado_ID");


--
-- TOC entry 3218 (class 2606 OID 16691)
-- Name: orden_producto FK_Producto_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "FK_Producto_ID" FOREIGN KEY ("Producto_ID") REFERENCES public.producto("Producto_ID");


--
-- TOC entry 3220 (class 2606 OID 16696)
-- Name: pc_armado_producto FK_Producto_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "FK_Producto_ID" FOREIGN KEY ("Producto_ID") REFERENCES public.producto("Producto_ID");


--
-- TOC entry 3221 (class 2606 OID 16701)
-- Name: reporte FK_Usuario_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");


--
-- TOC entry 3216 (class 2606 OID 16706)
-- Name: orden FK_Usuario_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");


--
-- TOC entry 3222 (class 2606 OID 16711)
-- Name: resena FK_Usuario_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resena
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");


-- Completed on 2022-12-01 07:59:59

--
-- PostgreSQL database dump complete
--

