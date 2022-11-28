PGDMP     :                
    z            product_backlog    15.0    15.0 #    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    16636    product_backlog    DATABASE     �   CREATE DATABASE product_backlog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE product_backlog;
                postgres    false            �            1259    16637    orden    TABLE     �   CREATE TABLE public.orden (
    "Orden_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Monto" numeric(20,0),
    "Direccion" character varying(150),
    "Fecha" date
);
    DROP TABLE public.orden;
       public         heap    postgres    false            �            1259    16640    orden_producto    TABLE     �   CREATE TABLE public.orden_producto (
    "Orden_Producto_ID" uuid NOT NULL,
    "Orden_ID" uuid NOT NULL,
    "Producto_ID" uuid NOT NULL
);
 "   DROP TABLE public.orden_producto;
       public         heap    postgres    false            �            1259    16643 	   pc_armado    TABLE     �   CREATE TABLE public.pc_armado (
    "PC_Armado_ID" uuid NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Descripcion" character varying(150)
);
    DROP TABLE public.pc_armado;
       public         heap    postgres    false            �            1259    16646    pc_armado_producto    TABLE     �   CREATE TABLE public.pc_armado_producto (
    "PC_Armado_Producto_ID" uuid NOT NULL,
    "PC_Armado_ID" uuid NOT NULL,
    "Producto_ID" uuid NOT NULL
);
 &   DROP TABLE public.pc_armado_producto;
       public         heap    postgres    false            �            1259    16649    producto    TABLE       CREATE TABLE public.producto (
    "Producto_ID" uuid NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Precio" numeric(20,0) NOT NULL,
    "Descripcion" character varying(150),
    "Categoria" character varying(100),
    "Url" character varying
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16652    reporte    TABLE       CREATE TABLE public.reporte (
    "Reporte_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Correo" character varying(100),
    "Nombre" character varying(100),
    "Telefono" numeric(20,0),
    "Asunto" character varying(250),
    "Descripcion" character varying(250)
);
    DROP TABLE public.reporte;
       public         heap    postgres    false            �            1259    16657    resena    TABLE     �   CREATE TABLE public.resena (
    "Resena_ID" uuid NOT NULL,
    "Usuario_ID" uuid,
    "Puntaje" numeric(15,0),
    "Comentario" character varying(100),
    "Link" character varying(200),
    "Tipo_Resena" character varying(100)
);
    DROP TABLE public.resena;
       public         heap    postgres    false            �            1259    16660    usuario    TABLE     �  CREATE TABLE public.usuario (
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
    DROP TABLE public.usuario;
       public         heap    postgres    false            %          0    16637    orden 
   TABLE DATA           X   COPY public.orden ("Orden_ID", "Usuario_ID", "Monto", "Direccion", "Fecha") FROM stdin;
    public          postgres    false    214   L,       &          0    16640    orden_producto 
   TABLE DATA           X   COPY public.orden_producto ("Orden_Producto_ID", "Orden_ID", "Producto_ID") FROM stdin;
    public          postgres    false    215   �,       '          0    16643 	   pc_armado 
   TABLE DATA           L   COPY public.pc_armado ("PC_Armado_ID", "Nombre", "Descripcion") FROM stdin;
    public          postgres    false    216   Q.       (          0    16646    pc_armado_producto 
   TABLE DATA           d   COPY public.pc_armado_producto ("PC_Armado_Producto_ID", "PC_Armado_ID", "Producto_ID") FROM stdin;
    public          postgres    false    217   $/       )          0    16649    producto 
   TABLE DATA           h   COPY public.producto ("Producto_ID", "Nombre", "Precio", "Descripcion", "Categoria", "Url") FROM stdin;
    public          postgres    false    218   4       *          0    16652    reporte 
   TABLE DATA           v   COPY public.reporte ("Reporte_ID", "Usuario_ID", "Correo", "Nombre", "Telefono", "Asunto", "Descripcion") FROM stdin;
    public          postgres    false    219   �=       +          0    16657    resena 
   TABLE DATA           k   COPY public.resena ("Resena_ID", "Usuario_ID", "Puntaje", "Comentario", "Link", "Tipo_Resena") FROM stdin;
    public          postgres    false    220   �=       ,          0    16660    usuario 
   TABLE DATA           �   COPY public.usuario ("Usuario_ID", "Nombre", "Apellido", "Correo", "Contraseña", "Direccion", "Departamento", "Ciudad", "Codigo_Postal", "Telefono") FROM stdin;
    public          postgres    false    221   �=       �           2606    16666 "   orden_producto Orden_Producto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "Orden_Producto_pkey" PRIMARY KEY ("Orden_Producto_ID");
 N   ALTER TABLE ONLY public.orden_producto DROP CONSTRAINT "Orden_Producto_pkey";
       public            postgres    false    215            �           2606    16668    orden Orden_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "Orden_pkey" PRIMARY KEY ("Orden_ID");
 <   ALTER TABLE ONLY public.orden DROP CONSTRAINT "Orden_pkey";
       public            postgres    false    214            �           2606    16670 *   pc_armado_producto PC_Armado_Producto_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "PC_Armado_Producto_pkey" PRIMARY KEY ("PC_Armado_Producto_ID");
 V   ALTER TABLE ONLY public.pc_armado_producto DROP CONSTRAINT "PC_Armado_Producto_pkey";
       public            postgres    false    217            �           2606    16672    pc_armado PC_Armado_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pc_armado
    ADD CONSTRAINT "PC_Armado_pkey" PRIMARY KEY ("PC_Armado_ID");
 D   ALTER TABLE ONLY public.pc_armado DROP CONSTRAINT "PC_Armado_pkey";
       public            postgres    false    216            �           2606    16674    producto Producto_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "Producto_pkey" PRIMARY KEY ("Producto_ID");
 B   ALTER TABLE ONLY public.producto DROP CONSTRAINT "Producto_pkey";
       public            postgres    false    218            �           2606    16676    reporte Reporte_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT "Reporte_pkey" PRIMARY KEY ("Reporte_ID");
 @   ALTER TABLE ONLY public.reporte DROP CONSTRAINT "Reporte_pkey";
       public            postgres    false    219            �           2606    16678    resena Resena_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.resena
    ADD CONSTRAINT "Resena_pkey" PRIMARY KEY ("Resena_ID");
 >   ALTER TABLE ONLY public.resena DROP CONSTRAINT "Resena_pkey";
       public            postgres    false    220            �           2606    16680    usuario Usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("Usuario_ID");
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "Usuario_pkey";
       public            postgres    false    221            �           2606    16681    orden_producto FK_Orden_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "FK_Orden_ID" FOREIGN KEY ("Orden_ID") REFERENCES public.orden("Orden_ID");
 F   ALTER TABLE ONLY public.orden_producto DROP CONSTRAINT "FK_Orden_ID";
       public          postgres    false    3201    215    214            �           2606    16686 "   pc_armado_producto FK_PC_Armado_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "FK_PC_Armado_ID" FOREIGN KEY ("PC_Armado_ID") REFERENCES public.pc_armado("PC_Armado_ID");
 N   ALTER TABLE ONLY public.pc_armado_producto DROP CONSTRAINT "FK_PC_Armado_ID";
       public          postgres    false    3205    216    217            �           2606    16691    orden_producto FK_Producto_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_producto
    ADD CONSTRAINT "FK_Producto_ID" FOREIGN KEY ("Producto_ID") REFERENCES public.producto("Producto_ID");
 I   ALTER TABLE ONLY public.orden_producto DROP CONSTRAINT "FK_Producto_ID";
       public          postgres    false    218    3209    215            �           2606    16696 !   pc_armado_producto FK_Producto_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.pc_armado_producto
    ADD CONSTRAINT "FK_Producto_ID" FOREIGN KEY ("Producto_ID") REFERENCES public.producto("Producto_ID");
 M   ALTER TABLE ONLY public.pc_armado_producto DROP CONSTRAINT "FK_Producto_ID";
       public          postgres    false    217    218    3209            �           2606    16701    reporte FK_Usuario_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");
 A   ALTER TABLE ONLY public.reporte DROP CONSTRAINT "FK_Usuario_ID";
       public          postgres    false    221    219    3215            �           2606    16706    orden FK_Usuario_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");
 ?   ALTER TABLE ONLY public.orden DROP CONSTRAINT "FK_Usuario_ID";
       public          postgres    false    221    214    3215            �           2606    16711    resena FK_Usuario_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public.resena
    ADD CONSTRAINT "FK_Usuario_ID" FOREIGN KEY ("Usuario_ID") REFERENCES public.usuario("Usuario_ID");
 @   ALTER TABLE ONLY public.resena DROP CONSTRAINT "FK_Usuario_ID";
       public          postgres    false    220    3215    221            %   _   x��1�0����2�ɀT�4Gd�PP��'4�l"gD�L���41��,���0
��2��KʁP*Cg�JǊ����û�һh������q      &   �  x���K� !D�]wa�ܥ7�x�#�'���/|I�zZ��F���¬�2�i�s��9נ����a·�,�"~NN�	^��8�=OHKds�|�8]ҁ`G] &����pvz���|G!�-�)$��gJJ�0��\z��JpC5-����qg��,�t���ƱYϚ�d�uq��j3GPW��D�����L�2��m�$��m�f-�
���h�� ��q�@��`؛;�i�7���=A��N��u�*�u��>�D# �w.�NKenYX��i�'"�yq"�`j�2���>Ǽz�Qi�[S-�n���m���m{$ؙ8X���c������u�#�S�aոH@�ɚ��=qKb��K�}�����Fr����<����      '   �   x�]��m�0@kk
/�@֟��Np��(��!���?�� �K
c���,�@
)z_�������S��\��:S��u�ve=J�������fȋ�5�P-�l̴�k���j_�Wpv��:��#Z��6����e��S2��L4�o���Mz#���q�ua)�h3hc�`��I�W���w �{;�������HYK�      (   �  x��V˕,;[w��=6�rycC�!<�DPg6=��GHصp�N����-�1�L�ᶴg�_�]�G�i2�hE�C��o?��!��D'�!���7嵶Zo#��.��'S�I�A���cvn-�7����Giţ��ȋ)�����*�^��'������/�����£opq��$%�ꂅ����z�c+�I]Q�Ȟ�c����8�E���λeb,W��=c�B�b^��G�c;
��xT����p������A�5b���8�2V��7v=�����:ʐSS�2D�*�>���Jt��B�.$VA��;��#��}ƚ}��m&��4��JϹ��g���e�{o�.,Ѥ�}eGK��ݮ����.S�9ЦOW��>2�����g#�K�ntWd̑��J��i .	ϋEF V�8c#ue�^� �h�#A�Y�m���3*/
�s�h�E	j �ds�� �[Ma�@�B�k�E_��P�78k�hh���؁hǱ�;y��m�iw�*d�1(�O�-��r�Y�6{��v��d��	������8��6��r�<�J7��;���i�9w�-�y��ˀ[�c��Ze��4��B�;�!Ň�&ڦ��5�{��ӡ�cl�e�w�g�i��?������P�9���ŀ��������+��Ά�:�>�As���'V���`�p��Đ��Ym}�����o�H[����j�]�$�b�A͆AʭJ�v4|�7�O�R���N�x�Yp)�w�[-O$2�cu�u���w���aۘbնCo�yf�wZ�n��5}�H�y�+f��^8R'FtPaa%rxu�����op�h���mkN�4�xw���'������9��i���n��n���_4�U����Xh&�
��;�Bz����ZG������n�7��C��E��v��f��:�@����@�8h~��D��P��<�� X5`�̿ױ�`b�/�>@e��v���<6���찜�5��>�@2�0����U煫�6ޯ��97]�N���z�:\�s�|������\���k��D��:s�zf��[%��p6:������,h�hh��	�� &\�ܻ,U.C<q��d@uKpg܁VwJ�q`���vIX`�v_������˫[P�{�`�j�;�������ٕ#a����^q�C�Z+� �v!��gO|��>�]v;cBFz��a��[�p����}l��KE�-"�u��?Ko*�z�����<���.b      )   i	  x��X�R�H}6_��!vҪ��6��0�����A��hZ�Ԓ���oJ��nfc�il\�YY�'�9E�6�=p����`�R �7�*
�&�O�ǧ�l~�����$����Q%I&�f���d��������_y���/�tY.�{���׫�z\�PV1?]�e��U�l���{fe����hԩP��<��G�_�u��}Ψ&2�\/�e�vƃ"̂����2A�6j�L�R�̮?^g�W��'١Rf�����lBŘ�y����ն/i�ʇ�ct�j�Mmwߍ�/m�Γ3����Z�`I�QT�O��e��揜齤d�B�A86��q��)�5�������R����_�O�1���1�Yw�4��Kj�P�n�vL�����*��9%��@02|��?������r����-x���<8��[)%�����_ab�(�Q6?����*�:����	���~�Ӫ\��&3l/��G�h��ISX��F
�l��r#\��H�
��
�*^r&���<;�]ߜ\������8;?�`+ɘ�Y����k�b��Գ]��]9$5mbN�*�.�-���W}ޕ]WB��NmiWe\�5Tc�������_�=mރU�)��lۺ���.��L�<�Ǩ�4v�{�����bo���q����1����`��s����a,':�m�{��#>�!ְ�JX�T�>B�?��5<�G�;`O��j�ZL*pe�]�2x��`���iUFF�B'��R�)/�7aBo��'���)�l�⺯[��ˉ�g6]U[�Pt|���vqy�(�����LRĆ FiqK�p<���ASib�D�SN2�/#�i&��\�͎f���)R�E��2!L�y��M�`�.�S,چ6�Ք��o�f*���j�r��p||%�1&��YK�@�@�E�L �d`"Ӑ|�N%�pocÐ��o�a�a޾�-N�w5��������q��`�!:\`x���O󱤚x����X��35
o#��G��D��������`]��M�am�G���zY�Y�\�cx���X:�	3����|L���� �)"Ef�2�AL I�㈄r4��0��Ӫ��i���ǀ<0�q�yR�l
�b�8J�%�ob@ �P ��@�E�|�3�� �����,;�a�X� m�(���O�_�ko���4����.�	�WçK�]�g< �ww�Ml7��,�)�Vw�ݓ`��*9~�a�m�9���Z c�"Q��0��cVY��d�����$+LX�!S0,�� 
��]W�/�i||jZ\��������z�2|��#eB*t��s�d :�(�Ӂ��hd�Qg|SV�SH#LL���@�,0	��-�b��J�H&;����;W@�e���oe~>;]^̮�7����%6^3�Q��38bK�"�B0�E _\��\m���KB�+t[��!,��8N}%q���1W?A06�bw���3�<b�|^������Y�����@�����N��L�8��\����(��z��Up�vt2]�
��\S�kAn�"c�#�ahO)E]�tD���J�(u��|D�@4��F$���84s�G$�]�$��1h�ڀ�^b�+�`a��g��,q������rO(�Tn��+	���G�����"��ux���^��ë�ů'��l˦�8�S����t�Q=����;��w|jW��zmG��K�H�c]�b�o=�6��7�'ʆA5+����6�c��=�=G���d�� 便;���ݾ��냍�����1��[|��9Pd�Vٿݭ��~*�$�je��˧�t�w�2��w�#�Ô�wA, �\���q�ĞC���tq��X��s��W�!Y�P�6�����?��K�^adǹT���D%���bU��m�\���f��֖��u�F����#v�`ob���*8�iK .:���\�j�2D�V}_ۖ\Kܿ�eU?C����n�V7}��|��\�	�w��./���{��`&�-��(�k�e�����.l+�u��(�Pb�Q�c��wJ�?j��&G����t��������/�&G�����Ъ�X�*���P��y�����������۲�4vk�8�~)�?
G�gC��g��Er��Q�4Qt�f�#.ߡ��q��VH�p~y��ʘV��������9�d8͕�����3���8&F�Ķ4��˫$��fLg���~������mE�5_n�K�'��X�~w���;����:�x���9������k/,x�@����_nO���_/�(@xo�å����=��n,|,�ch�@ �|�U�@@:Y��

���״������������+>�Kͥ�!>�<^�7���too�?$R_      *      x������ � �      +      x������ � �      ,   �  x���͊[1���S�4\˲e璉�Pf��z6�e�wHrý
��u~I(L�i��ptT���� �!�2$�2�'�j+��0.�lǹ~�2�s���z+��L[cё�&�M��u+���.�y�r��w֚#&�+m��ZRB��$q���̓�e6O�~�Mr�+Q�͋�U6u'�r���3��Js(C+�g�R 2�	6'�V�n����C�bd_7�Q�K[���z/��g��Ҿ��~+$7P�
��%��[A�F*�7Rx���b����l�䵻#��P|sl���r6?�rX��Y�ż����d�}�w��ӯ�!
ނ�V�q�M5K���L楾�=�c}=���*�ҩ�$$���~j��o���S,ڀl�#�	$��	��>��\�S'K���k��	�i�@b���\��������gw^��da��0��a��@%yȎ=`A䒺ku��'��a�Z��D�     