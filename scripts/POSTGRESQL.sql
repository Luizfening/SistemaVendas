PGDMP         ;                w            vendas    11.3    11.2 ;    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            H           1262    16449    vendas    DATABASE     �   CREATE DATABASE vendas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE vendas;
             postgres    false            �            1259    16549 	   tbcliente    TABLE     �   CREATE TABLE public.tbcliente (
    codigo integer NOT NULL,
    nome character varying(100) NOT NULL,
    cpf character varying(14) NOT NULL,
    datanascimento date NOT NULL
);
    DROP TABLE public.tbcliente;
       public         postgres    false            �            1259    16547    tbcliente_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbcliente_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbcliente_codigo_seq;
       public       postgres    false    197            I           0    0    tbcliente_codigo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tbcliente_codigo_seq OWNED BY public.tbcliente.codigo;
            public       postgres    false    196            �            1259    16586    tbcompra    TABLE     �   CREATE TABLE public.tbcompra (
    codigo integer NOT NULL,
    codigofornecedor integer NOT NULL,
    datacompra date NOT NULL,
    valortotal double precision NOT NULL,
    situacao integer NOT NULL
);
    DROP TABLE public.tbcompra;
       public         postgres    false            �            1259    16584    tbcompra_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbcompra_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbcompra_codigo_seq;
       public       postgres    false    205            J           0    0    tbcompra_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbcompra_codigo_seq OWNED BY public.tbcompra.codigo;
            public       postgres    false    204            �            1259    16557    tbfornecedor    TABLE     �   CREATE TABLE public.tbfornecedor (
    codigo integer NOT NULL,
    nome character varying(100) NOT NULL,
    "CNPJ" character varying(18) NOT NULL
);
     DROP TABLE public.tbfornecedor;
       public         postgres    false            �            1259    16555    tbfornecedor_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbfornecedor_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbfornecedor_codigo_seq;
       public       postgres    false    199            K           0    0    tbfornecedor_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbfornecedor_codigo_seq OWNED BY public.tbfornecedor.codigo;
            public       postgres    false    198            �            1259    16617    tbitemcompra    TABLE     �   CREATE TABLE public.tbitemcompra (
    codigo integer NOT NULL,
    codigoproduto integer NOT NULL,
    codigocompra integer NOT NULL,
    quantidade integer NOT NULL,
    valorunitario double precision NOT NULL
);
     DROP TABLE public.tbitemcompra;
       public         postgres    false            �            1259    16615    tbitemcompra_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbitemcompra_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbitemcompra_codigo_seq;
       public       postgres    false    209            L           0    0    tbitemcompra_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbitemcompra_codigo_seq OWNED BY public.tbitemcompra.codigo;
            public       postgres    false    208            �            1259    16599    tbitemvenda    TABLE     �   CREATE TABLE public.tbitemvenda (
    codigo integer NOT NULL,
    codigoproduto integer NOT NULL,
    codigovenda integer NOT NULL,
    quantidade integer NOT NULL,
    valorunitario double precision NOT NULL
);
    DROP TABLE public.tbitemvenda;
       public         postgres    false            �            1259    16597    tbitemvenda_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbitemvenda_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbitemvenda_codigo_seq;
       public       postgres    false    207            M           0    0    tbitemvenda_codigo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbitemvenda_codigo_seq OWNED BY public.tbitemvenda.codigo;
            public       postgres    false    206            �            1259    16565 	   tbproduto    TABLE     �   CREATE TABLE public.tbproduto (
    codigo integer NOT NULL,
    nome character varying(100) NOT NULL,
    precocompra double precision NOT NULL,
    precovenda double precision NOT NULL,
    quantidadeestoque integer NOT NULL
);
    DROP TABLE public.tbproduto;
       public         postgres    false            �            1259    16563    tbproduto_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbproduto_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbproduto_codigo_seq;
       public       postgres    false    201            N           0    0    tbproduto_codigo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tbproduto_codigo_seq OWNED BY public.tbproduto.codigo;
            public       postgres    false    200            �            1259    16573    tbvenda    TABLE     �   CREATE TABLE public.tbvenda (
    codigo integer NOT NULL,
    codigocliente integer NOT NULL,
    datavenda date NOT NULL,
    valortotal double precision NOT NULL,
    situacao integer NOT NULL
);
    DROP TABLE public.tbvenda;
       public         postgres    false            �            1259    16571    tbvenda_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.tbvenda_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbvenda_codigo_seq;
       public       postgres    false    203            O           0    0    tbvenda_codigo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbvenda_codigo_seq OWNED BY public.tbvenda.codigo;
            public       postgres    false    202            �
           2604    16552    tbcliente codigo    DEFAULT     t   ALTER TABLE ONLY public.tbcliente ALTER COLUMN codigo SET DEFAULT nextval('public.tbcliente_codigo_seq'::regclass);
 ?   ALTER TABLE public.tbcliente ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    16589    tbcompra codigo    DEFAULT     r   ALTER TABLE ONLY public.tbcompra ALTER COLUMN codigo SET DEFAULT nextval('public.tbcompra_codigo_seq'::regclass);
 >   ALTER TABLE public.tbcompra ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    16560    tbfornecedor codigo    DEFAULT     z   ALTER TABLE ONLY public.tbfornecedor ALTER COLUMN codigo SET DEFAULT nextval('public.tbfornecedor_codigo_seq'::regclass);
 B   ALTER TABLE public.tbfornecedor ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    16620    tbitemcompra codigo    DEFAULT     z   ALTER TABLE ONLY public.tbitemcompra ALTER COLUMN codigo SET DEFAULT nextval('public.tbitemcompra_codigo_seq'::regclass);
 B   ALTER TABLE public.tbitemcompra ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16602    tbitemvenda codigo    DEFAULT     x   ALTER TABLE ONLY public.tbitemvenda ALTER COLUMN codigo SET DEFAULT nextval('public.tbitemvenda_codigo_seq'::regclass);
 A   ALTER TABLE public.tbitemvenda ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    16568    tbproduto codigo    DEFAULT     t   ALTER TABLE ONLY public.tbproduto ALTER COLUMN codigo SET DEFAULT nextval('public.tbproduto_codigo_seq'::regclass);
 ?   ALTER TABLE public.tbproduto ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16576    tbvenda codigo    DEFAULT     p   ALTER TABLE ONLY public.tbvenda ALTER COLUMN codigo SET DEFAULT nextval('public.tbvenda_codigo_seq'::regclass);
 =   ALTER TABLE public.tbvenda ALTER COLUMN codigo DROP DEFAULT;
       public       postgres    false    203    202    203            6          0    16549 	   tbcliente 
   TABLE DATA               F   COPY public.tbcliente (codigo, nome, cpf, datanascimento) FROM stdin;
    public       postgres    false    197   D       >          0    16586    tbcompra 
   TABLE DATA               ^   COPY public.tbcompra (codigo, codigofornecedor, datacompra, valortotal, situacao) FROM stdin;
    public       postgres    false    205   �D       8          0    16557    tbfornecedor 
   TABLE DATA               <   COPY public.tbfornecedor (codigo, nome, "CNPJ") FROM stdin;
    public       postgres    false    199   �D       B          0    16617    tbitemcompra 
   TABLE DATA               f   COPY public.tbitemcompra (codigo, codigoproduto, codigocompra, quantidade, valorunitario) FROM stdin;
    public       postgres    false    209   �D       @          0    16599    tbitemvenda 
   TABLE DATA               d   COPY public.tbitemvenda (codigo, codigoproduto, codigovenda, quantidade, valorunitario) FROM stdin;
    public       postgres    false    207   	E       :          0    16565 	   tbproduto 
   TABLE DATA               ]   COPY public.tbproduto (codigo, nome, precocompra, precovenda, quantidadeestoque) FROM stdin;
    public       postgres    false    201   /E       <          0    16573    tbvenda 
   TABLE DATA               Y   COPY public.tbvenda (codigo, codigocliente, datavenda, valortotal, situacao) FROM stdin;
    public       postgres    false    203   ]E       P           0    0    tbcliente_codigo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbcliente_codigo_seq', 6, true);
            public       postgres    false    196            Q           0    0    tbcompra_codigo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbcompra_codigo_seq', 1, true);
            public       postgres    false    204            R           0    0    tbfornecedor_codigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbfornecedor_codigo_seq', 1, true);
            public       postgres    false    198            S           0    0    tbitemcompra_codigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbitemcompra_codigo_seq', 1, true);
            public       postgres    false    208            T           0    0    tbitemvenda_codigo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbitemvenda_codigo_seq', 1, true);
            public       postgres    false    206            U           0    0    tbproduto_codigo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbproduto_codigo_seq', 1, true);
            public       postgres    false    200            V           0    0    tbvenda_codigo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tbvenda_codigo_seq', 1, true);
            public       postgres    false    202            �
           2606    16554    tbcliente tbcliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbcliente
    ADD CONSTRAINT tbcliente_pkey PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.tbcliente DROP CONSTRAINT tbcliente_pkey;
       public         postgres    false    197            �
           2606    16591    tbcompra tbcompra_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbcompra
    ADD CONSTRAINT tbcompra_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.tbcompra DROP CONSTRAINT tbcompra_pkey;
       public         postgres    false    205            �
           2606    16562    tbfornecedor tbfornecedor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbfornecedor
    ADD CONSTRAINT tbfornecedor_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.tbfornecedor DROP CONSTRAINT tbfornecedor_pkey;
       public         postgres    false    199            �
           2606    16622    tbitemcompra tbitemcompra_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbitemcompra
    ADD CONSTRAINT tbitemcompra_pkey PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public.tbitemcompra DROP CONSTRAINT tbitemcompra_pkey;
       public         postgres    false    209            �
           2606    16604    tbitemvenda tbitemvenda_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbitemvenda
    ADD CONSTRAINT tbitemvenda_pkey PRIMARY KEY (codigo);
 F   ALTER TABLE ONLY public.tbitemvenda DROP CONSTRAINT tbitemvenda_pkey;
       public         postgres    false    207            �
           2606    16570    tbproduto tbproduto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbproduto
    ADD CONSTRAINT tbproduto_pkey PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.tbproduto DROP CONSTRAINT tbproduto_pkey;
       public         postgres    false    201            �
           2606    16578    tbvenda tbvenda_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbvenda
    ADD CONSTRAINT tbvenda_pkey PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.tbvenda DROP CONSTRAINT tbvenda_pkey;
       public         postgres    false    203            �
           2606    16592 '   tbcompra tbcompra_codigofornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbcompra
    ADD CONSTRAINT tbcompra_codigofornecedor_fkey FOREIGN KEY (codigofornecedor) REFERENCES public.tbfornecedor(codigo);
 Q   ALTER TABLE ONLY public.tbcompra DROP CONSTRAINT tbcompra_codigofornecedor_fkey;
       public       postgres    false    205    199    2731            �
           2606    16628 +   tbitemcompra tbitemcompra_codigocompra_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbitemcompra
    ADD CONSTRAINT tbitemcompra_codigocompra_fkey FOREIGN KEY (codigocompra) REFERENCES public.tbcompra(codigo);
 U   ALTER TABLE ONLY public.tbitemcompra DROP CONSTRAINT tbitemcompra_codigocompra_fkey;
       public       postgres    false    209    205    2737            �
           2606    16623 ,   tbitemcompra tbitemcompra_codigoproduto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbitemcompra
    ADD CONSTRAINT tbitemcompra_codigoproduto_fkey FOREIGN KEY (codigoproduto) REFERENCES public.tbproduto(codigo);
 V   ALTER TABLE ONLY public.tbitemcompra DROP CONSTRAINT tbitemcompra_codigoproduto_fkey;
       public       postgres    false    201    2733    209            �
           2606    16605 *   tbitemvenda tbitemvenda_codigoproduto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbitemvenda
    ADD CONSTRAINT tbitemvenda_codigoproduto_fkey FOREIGN KEY (codigoproduto) REFERENCES public.tbproduto(codigo);
 T   ALTER TABLE ONLY public.tbitemvenda DROP CONSTRAINT tbitemvenda_codigoproduto_fkey;
       public       postgres    false    2733    201    207            �
           2606    16610 (   tbitemvenda tbitemvenda_codigovenda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbitemvenda
    ADD CONSTRAINT tbitemvenda_codigovenda_fkey FOREIGN KEY (codigovenda) REFERENCES public.tbvenda(codigo);
 R   ALTER TABLE ONLY public.tbitemvenda DROP CONSTRAINT tbitemvenda_codigovenda_fkey;
       public       postgres    false    2735    203    207            �
           2606    16579 "   tbvenda tbvenda_codigocliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbvenda
    ADD CONSTRAINT tbvenda_codigocliente_fkey FOREIGN KEY (codigocliente) REFERENCES public.tbcliente(codigo);
 L   ALTER TABLE ONLY public.tbvenda DROP CONSTRAINT tbvenda_codigocliente_fkey;
       public       postgres    false    203    2729    197            6   s   x�3��)ͬR�LN,J��470�3�`]N#CK]S]#C.#N����+�3s�9�%�9! EԄ�$��$����L���D���D��Y�)gfqbfi>�63������=... (%T      >   "   x�3�4�420��50�52�441�4����� 8�      8      x�3�,I-.I������ �      B      x�3�4ANC�=... p0      @      x�3�4BN#�=... �       :      x�3�LN�)�I,�44�42 �\1z\\\ L�      <   !   x�3�4�420��50�52�0�4����� 3��     