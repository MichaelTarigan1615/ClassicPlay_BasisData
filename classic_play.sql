PGDMP  6    6                |            classic_play    16.4    16.4 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32855    classic_play    DATABASE     �   CREATE DATABASE classic_play WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE classic_play;
                postgres    false            �            1259    32868    arkanoid_score    TABLE     w   CREATE TABLE public.arkanoid_score (
    id_score integer NOT NULL,
    id_user integer,
    score integer NOT NULL
);
 "   DROP TABLE public.arkanoid_score;
       public         heap    postgres    false            �            1259    32867    arkanoid_score_id_score_seq    SEQUENCE     �   CREATE SEQUENCE public.arkanoid_score_id_score_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.arkanoid_score_id_score_seq;
       public          postgres    false    218                       0    0    arkanoid_score_id_score_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.arkanoid_score_id_score_seq OWNED BY public.arkanoid_score.id_score;
          public          postgres    false    217            �            1259    32892    snake_score    TABLE     t   CREATE TABLE public.snake_score (
    id_score integer NOT NULL,
    id_user integer,
    score integer NOT NULL
);
    DROP TABLE public.snake_score;
       public         heap    postgres    false            �            1259    32891    snake_score_id_score_seq    SEQUENCE     �   CREATE SEQUENCE public.snake_score_id_score_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.snake_score_id_score_seq;
       public          postgres    false    222                       0    0    snake_score_id_score_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.snake_score_id_score_seq OWNED BY public.snake_score.id_score;
          public          postgres    false    221            �            1259    32880    tetris_score    TABLE     u   CREATE TABLE public.tetris_score (
    id_score integer NOT NULL,
    id_user integer,
    score integer NOT NULL
);
     DROP TABLE public.tetris_score;
       public         heap    postgres    false            �            1259    32879    tetris_score_id_score_seq    SEQUENCE     �   CREATE SEQUENCE public.tetris_score_id_score_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tetris_score_id_score_seq;
       public          postgres    false    220                       0    0    tetris_score_id_score_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tetris_score_id_score_seq OWNED BY public.tetris_score.id_score;
          public          postgres    false    219            �            1259    32857    user_account    TABLE     �   CREATE TABLE public.user_account (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL
);
     DROP TABLE public.user_account;
       public         heap    postgres    false            �            1259    32856    user_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_account_id_seq;
       public          postgres    false    216                       0    0    user_account_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;
          public          postgres    false    215            `           2604    32871    arkanoid_score id_score    DEFAULT     �   ALTER TABLE ONLY public.arkanoid_score ALTER COLUMN id_score SET DEFAULT nextval('public.arkanoid_score_id_score_seq'::regclass);
 F   ALTER TABLE public.arkanoid_score ALTER COLUMN id_score DROP DEFAULT;
       public          postgres    false    217    218    218            b           2604    32895    snake_score id_score    DEFAULT     |   ALTER TABLE ONLY public.snake_score ALTER COLUMN id_score SET DEFAULT nextval('public.snake_score_id_score_seq'::regclass);
 C   ALTER TABLE public.snake_score ALTER COLUMN id_score DROP DEFAULT;
       public          postgres    false    221    222    222            a           2604    32883    tetris_score id_score    DEFAULT     ~   ALTER TABLE ONLY public.tetris_score ALTER COLUMN id_score SET DEFAULT nextval('public.tetris_score_id_score_seq'::regclass);
 D   ALTER TABLE public.tetris_score ALTER COLUMN id_score DROP DEFAULT;
       public          postgres    false    219    220    220            _           2604    32860    user_account id    DEFAULT     r   ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);
 >   ALTER TABLE public.user_account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    32868    arkanoid_score 
   TABLE DATA           B   COPY public.arkanoid_score (id_score, id_user, score) FROM stdin;
    public          postgres    false    218   �*                 0    32892    snake_score 
   TABLE DATA           ?   COPY public.snake_score (id_score, id_user, score) FROM stdin;
    public          postgres    false    222   �*                 0    32880    tetris_score 
   TABLE DATA           @   COPY public.tetris_score (id_score, id_user, score) FROM stdin;
    public          postgres    false    220   �*                 0    32857    user_account 
   TABLE DATA           E   COPY public.user_account (id, username, email, password) FROM stdin;
    public          postgres    false    216   �*                  0    0    arkanoid_score_id_score_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.arkanoid_score_id_score_seq', 1, false);
          public          postgres    false    217                       0    0    snake_score_id_score_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.snake_score_id_score_seq', 1, false);
          public          postgres    false    221                       0    0    tetris_score_id_score_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tetris_score_id_score_seq', 1, false);
          public          postgres    false    219                       0    0    user_account_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_account_id_seq', 1, true);
          public          postgres    false    215            j           2606    32873 "   arkanoid_score arkanoid_score_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.arkanoid_score
    ADD CONSTRAINT arkanoid_score_pkey PRIMARY KEY (id_score);
 L   ALTER TABLE ONLY public.arkanoid_score DROP CONSTRAINT arkanoid_score_pkey;
       public            postgres    false    218            n           2606    32897    snake_score snake_score_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.snake_score
    ADD CONSTRAINT snake_score_pkey PRIMARY KEY (id_score);
 F   ALTER TABLE ONLY public.snake_score DROP CONSTRAINT snake_score_pkey;
       public            postgres    false    222            l           2606    32885    tetris_score tetris_score_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tetris_score
    ADD CONSTRAINT tetris_score_pkey PRIMARY KEY (id_score);
 H   ALTER TABLE ONLY public.tetris_score DROP CONSTRAINT tetris_score_pkey;
       public            postgres    false    220            d           2606    32866 #   user_account user_account_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_email_key;
       public            postgres    false    216            f           2606    32862    user_account user_account_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
       public            postgres    false    216            h           2606    32864 &   user_account user_account_username_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_username_key UNIQUE (username);
 P   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_username_key;
       public            postgres    false    216            o           2606    32874 *   arkanoid_score arkanoid_score_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.arkanoid_score
    ADD CONSTRAINT arkanoid_score_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.user_account(id);
 T   ALTER TABLE ONLY public.arkanoid_score DROP CONSTRAINT arkanoid_score_id_user_fkey;
       public          postgres    false    218    216    4710            q           2606    32898 $   snake_score snake_score_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.snake_score
    ADD CONSTRAINT snake_score_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.user_account(id);
 N   ALTER TABLE ONLY public.snake_score DROP CONSTRAINT snake_score_id_user_fkey;
       public          postgres    false    4710    216    222            p           2606    32886 &   tetris_score tetris_score_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tetris_score
    ADD CONSTRAINT tetris_score_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.user_account(id);
 P   ALTER TABLE ONLY public.tetris_score DROP CONSTRAINT tetris_score_id_user_fkey;
       public          postgres    false    216    4710    220                  x������ � �            x������ � �            x������ � �         u   x�3�,��L1434�,ͭLJ-.I+�L�KI��+�
�:��&f��%��r�U�����'�;�E��:�d�y����y�����W%�;�;G备z��T��x��&�gr��qqq �#_     