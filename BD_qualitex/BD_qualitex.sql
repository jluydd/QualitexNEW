PGDMP     8                    u            qualitex    9.6.2    9.6.2     d	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            e	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            f	           1262    16411    qualitex    DATABASE     f   CREATE DATABASE qualitex WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE qualitex;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            g	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            h	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16431    proposta    TABLE     F  CREATE TABLE proposta (
    numproposta integer NOT NULL,
    cliente character varying(255) NOT NULL,
    servico character varying(255) NOT NULL,
    localservico character varying(255) NOT NULL,
    valor character varying(255) NOT NULL,
    observacao character varying(255),
    status character varying(255) NOT NULL
);
    DROP TABLE public.proposta;
       public         postgres    false    3            �            1259    16429    proposta_numproposta_seq    SEQUENCE     z   CREATE SEQUENCE proposta_numproposta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.proposta_numproposta_seq;
       public       postgres    false    187    3            i	           0    0    proposta_numproposta_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE proposta_numproposta_seq OWNED BY proposta.numproposta;
            public       postgres    false    186            �            1259    16415    usuario    TABLE     �   CREATE TABLE usuario (
    id integer NOT NULL,
    usuario character varying(255) NOT NULL,
    funcao character varying(255) NOT NULL,
    senha character varying(255) NOT NULL
);
    DROP TABLE public.usuario;
       public         postgres    false    3            �            1259    16440    usuario_id_seq    SEQUENCE     p   CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       postgres    false    3    185            j	           0    0    usuario_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;
            public       postgres    false    188            �           2604    16434    proposta numproposta    DEFAULT     n   ALTER TABLE ONLY proposta ALTER COLUMN numproposta SET DEFAULT nextval('proposta_numproposta_seq'::regclass);
 C   ALTER TABLE public.proposta ALTER COLUMN numproposta DROP DEFAULT;
       public       postgres    false    186    187    187            �           2604    16442 
   usuario id    DEFAULT     Z   ALTER TABLE ONLY usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    185            `	          0    16431    proposta 
   TABLE DATA               c   COPY proposta (numproposta, cliente, servico, localservico, valor, observacao, status) FROM stdin;
    public       postgres    false    187   �       k	           0    0    proposta_numproposta_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('proposta_numproposta_seq', 4, true);
            public       postgres    false    186            ^	          0    16415    usuario 
   TABLE DATA               6   COPY usuario (id, usuario, funcao, senha) FROM stdin;
    public       postgres    false    185   �       l	           0    0    usuario_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('usuario_id_seq', 8, true);
            public       postgres    false    188            �           2606    16439    proposta proposta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY proposta
    ADD CONSTRAINT proposta_pkey PRIMARY KEY (numproposta);
 @   ALTER TABLE ONLY public.proposta DROP CONSTRAINT proposta_pkey;
       public         postgres    false    187    187            �           2606    16450    usuario usuario_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    185    185            `	   &  x�m�MN�0FדS��J�9���R�;�*ԍ�X"��;=��bZ!��f1}z�+h�q���z�?�w��a�c��d�n�-�C�����w��8Zoq�v#��A�����m��i
����95��t����Z&KXy�]��&�+�.t-��\��!�!�r�Ɠ8,@Y��O����=���ʓ)�5P?z,
�4�����
#d�qW�&-�4hʵ�K��M�Ċ��'6�������*MF�
�RU�(����J��uiPy�_
Д�;����~��-�$�L
~@      ^	   G   x�3�LL������Յ���9Ss��S�8]}���]���D�,8����*����
�b\1z\\\ ��     