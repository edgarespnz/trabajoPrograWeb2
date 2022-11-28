PGDMP     )                
    z            product_backlog    15.0    15.0     '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    16636    product_backlog    DATABASE        CREATE DATABASE product_backlog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE product_backlog;
                postgres    false            Φ            1259    16637    orden    TABLE     ¨   CREATE TABLE public.orden (
    "Orden_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Monto" numeric(20,0),
    "Direccion" character varying(150),
    "Fecha" date
);
    DROP TABLE public.orden;
       public         heap    postgres    false            Χ            1259    16640    orden_producto    TABLE        CREATE TABLE public.orden_producto (
    "Orden_Producto_ID" uuid NOT NULL,
    "Orden_ID" uuid NOT NULL,
    "Producto_ID" uuid NOT NULL
);
 "   DROP TABLE public.orden_producto;
       public         heap    postgres    false            Ψ            1259    16643 	   pc_armado    TABLE        CREATE TABLE public.pc_armado (
    "PC_Armado_ID" uuid NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Descripcion" character varying(150)
);
    DROP TABLE public.pc_armado;
       public         heap    postgres    false            Ω            1259    16646    pc_armado_producto    TABLE        CREATE TABLE public.pc_armado_producto (
    "PC_Armado_Producto_ID" uuid NOT NULL,
    "PC_Armado_ID" uuid NOT NULL,
    "Producto_ID" uuid NOT NULL
);
 &   DROP TABLE public.pc_armado_producto;
       public         heap    postgres    false            Ϊ            1259    16649    producto    TABLE       CREATE TABLE public.producto (
    "Producto_ID" uuid NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Precio" numeric(20,0) NOT NULL,
    "Descripcion" character varying(150),
    "Categoria" character varying(100),
    "Url" character varying
);
    DROP TABLE public.producto;
       public         heap    postgres    false            Ϋ            1259    16652    reporte    TABLE       CREATE TABLE public.reporte (
    "Reporte_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Correo" character varying(100),
    "Nombre" character varying(100),
    "Telefono" numeric(20,0),
    "Asunto" character varying(250),
    "Descripcion" character varying(250)
);
    DROP TABLE public.reporte;
       public         heap    postgres    false            ά            1259    16657    resena    TABLE     θ   CREATE TABLE public.resena (
    "Resena_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Puntaje" numeric(15,0),
    "Comentario" character varying(100),
    "Link" character varying(200),
    "Tipo_Resena" character varying(100)
);
    DROP TABLE public.resena;
       public         heap    postgres    false            έ            1259    16660    usuario    TABLE     Έ  CREATE TABLE public.usuario (
    "Usuario_ID" uuid NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Apellido" character varying(150) NOT NULL,
    "Correo" character varying(200) NOT NULL,
    "ContraseΓ±a" character varying(150) NOT NULL,
    "Direccion" character varying(200),
    "Departamento" character varying(100),
    "Ciudad" character varying(100),
    "Codigo_Postal" numeric(20,0),
    "Telefono" numeric(20,0)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false                       2606    16666 "   orden_producto Orden_Producto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "Orden_Producto_pkey" PRIMARY KEY ("Orden_Producto_ID");
 N   ALTER TABLE ONLY public.orden_producto DROP CONSTRAINT "Orden_Producto_pkey";
       public            postgres    false    215                       2606    16668    orden Orden_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "Orden_pkey" PRIMARY KEY ("Orden_ID");
 <   ALTER TABLE ONLY public.orden DROP CONSTRAINT "Orden_pkey";
       public            postgres    false    214                       2606    16670 *   pc_armado_producto PC_Armado_Producto_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "PC_Armado_Producto_pkey" PRIMARY KEY ("PC_Armado_Producto_ID");
 V   ALTER TABLE ONLY public.pc_armado_producto DROP CONSTRAINT "PC_Armado_Producto_pkey";
       public            postgres    false    217                       2606    16672    pc_armado PC_Armado_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pc_armado
    ADD CONSTRAINT "PC_Armado_pkey" PRIMARY KEY ("PC_Armado_ID");
 D   ALTER TABLE ONLY public.pc_armado DROP CONSTRAINT "PC_Armado_pkey";
       public            postgres    false    216                       2606    16674    producto Producto_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY ("Producto_ID");
 B   ALTER TABLE ONLY public.producto DROP CONSTRAINT "Producto_pkey";
       public            postgres    false    218                       2606    16676    reporte Reporte_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT "Reporte_pkey" PRIMARY KEY ("Reporte_ID");
 @   ALTER TABLE ONLY public.reporte DROP CONSTRAINT "Reporte_pkey";
       public            postgres    false    219                       2606    16678    resena Resena_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.resena
    ADD CONSTRAINT "Resena_pkey" PRIMARY KEY ("Resena_ID");
 >   ALTER TABLE ONLY public.resena DROP CONSTRAINT "Resena_pkey";
       public            postgres    false    220                       2606    16680    usuario Usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("Usuario_ID");
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "Usuario_pkey";
       public            postgres    false    221                       2606    16681    orden_producto FK_Orden_ID    FK CONSTRAINT        ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "FK_Orden_ID" FOREIGN KEY ("Orden_ID") REFERENCES public.orden("Orden_ID");
 F   ALTER TABLE ONLY public.orden_producto DROP CONSTRAINT "FK_Orden_ID";
       public          postgres    false    3201    215    214                       2606    16686 "   pc_armado_producto FK_PC_Armado_ID    FK CONSTRAINT        ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "FK_PC_Armado_ID" FOREIGN KEY ("PC_Armado_ID") REFERENCES public.pc_armado("PC_Armado_ID");
 N   ALTER TABLE ONLY public.pc_armado_producto DROP CONSTRAINT "FK_PC_Armado_ID";
       public          postgres    false    3205    216    217                       2606    16691    orden_producto FK_Producto_ID    FK CONSTRAINT        ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "FK_Producto_ID" FOREIGN KEY ("Producto_ID") REFERENCES public.producto("Producto_ID");
 I   ALTER TABLE ONLY public.orden_producto DROP CONSTRAINT "FK_Producto_ID";
       public          postgres    false    218    3209    215                       2606    16696 !   pc_armado_producto FK_Producto_ID    FK CONSTRAINT        ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "FK_Producto_ID" FOREIGN KEY ("Producto_ID") REFERENCES public.producto("Producto_ID");
 M   ALTER TABLE ONLY public.pc_armado_producto DROP CONSTRAINT "FK_Producto_ID";
       public          postgres    false    217    218    3209                       2606    16701    reporte FK_Usuario_ID    FK CONSTRAINT        ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");
 A   ALTER TABLE ONLY public.reporte DROP CONSTRAINT "FK_Usuario_ID";
       public          postgres    false    221    219    3215                       2606    16706    orden FK_Usuario_ID    FK CONSTRAINT        ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");
 ?   ALTER TABLE ONLY public.orden DROP CONSTRAINT "FK_Usuario_ID";
       public          postgres    false    221    214    3215                       2606    16711    resena FK_Usuario_ID    FK CONSTRAINT        ALTER TABLE ONLY public.resena
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");
 @   ALTER TABLE ONLY public.resena DROP CONSTRAINT "FK_Usuario_ID";
       public          postgres    false    220    3215    221           