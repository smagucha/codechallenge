PGDMP     #    &                y            banking    13.0    13.0 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    106807    banking    DATABASE     k   CREATE DATABASE banking WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE banking;
                postgres    false            ?            1259    115030 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    115028    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    115040    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    115038    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    115022    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    115020    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    115048 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    115058    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    115056    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    115046    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    115066    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    115064 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    115224    codechallenege_bankdetails    TABLE     g  CREATE TABLE public.codechallenege_bankdetails (
    id integer NOT NULL,
    account_name character varying(100) NOT NULL,
    acount_no integer NOT NULL,
    "Bank" character varying(100) NOT NULL,
    branch character varying(100) NOT NULL,
    bio_id integer NOT NULL,
    CONSTRAINT codechallenege_bankdetails_acount_no_check CHECK ((acount_no >= 0))
);
 .   DROP TABLE public.codechallenege_bankdetails;
       public         heap    postgres    false            ?            1259    115222 !   codechallenege_bankdetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.codechallenege_bankdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.codechallenege_bankdetails_id_seq;
       public          postgres    false    230            ?           0    0 !   codechallenege_bankdetails_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.codechallenege_bankdetails_id_seq OWNED BY public.codechallenege_bankdetails.id;
          public          postgres    false    229            ?            1259    115210    codechallenege_bioinfo    TABLE     ?  CREATE TABLE public.codechallenege_bioinfo (
    id integer NOT NULL,
    membership_no integer NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    "DateOfBirth" date NOT NULL,
    "Homeaddress" character varying(50) NOT NULL,
    "OffieNumber" integer NOT NULL,
    mobile_no character varying(12) NOT NULL,
    "Pin_no" character varying(50) NOT NULL,
    "Email" character varying(100) NOT NULL,
    physical_add character varying(100) NOT NULL,
    town character varying(100) NOT NULL,
    estate character varying(100) NOT NULL,
    house_no character varying(100) NOT NULL,
    livedthrere character varying(100) NOT NULL,
    "Houseowned" character varying(3) NOT NULL,
    martial_status character varying(7) NOT NULL,
    "No_dependents" integer NOT NULL,
    bio_id integer NOT NULL,
    CONSTRAINT "codechallenege_bioinfo_No_dependents_check" CHECK (("No_dependents" >= 0)),
    CONSTRAINT "codechallenege_bioinfo_OffieNumber_check" CHECK (("OffieNumber" >= 0)),
    CONSTRAINT codechallenege_bioinfo_membership_no_check CHECK ((membership_no >= 0))
);
 *   DROP TABLE public.codechallenege_bioinfo;
       public         heap    postgres    false            ?            1259    115208    codechallenege_bioinfo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.codechallenege_bioinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.codechallenege_bioinfo_id_seq;
       public          postgres    false    228            ?           0    0    codechallenege_bioinfo_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.codechallenege_bioinfo_id_seq OWNED BY public.codechallenege_bioinfo.id;
          public          postgres    false    227            ?            1259    115200    codechallenege_businessdetails    TABLE     ?  CREATE TABLE public.codechallenege_businessdetails (
    id integer NOT NULL,
    typeofbusiness character varying(100) NOT NULL,
    yrsoperation integer NOT NULL,
    "Businessincome" integer NOT NULL,
    bio_id integer NOT NULL,
    CONSTRAINT "codechallenege_businessdetails_Businessincome_check" CHECK (("Businessincome" >= 0)),
    CONSTRAINT codechallenege_businessdetails_yrsoperation_check CHECK ((yrsoperation >= 0))
);
 2   DROP TABLE public.codechallenege_businessdetails;
       public         heap    postgres    false            ?            1259    115198 %   codechallenege_businessdetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.codechallenege_businessdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.codechallenege_businessdetails_id_seq;
       public          postgres    false    226            ?           0    0 %   codechallenege_businessdetails_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.codechallenege_businessdetails_id_seq OWNED BY public.codechallenege_businessdetails.id;
          public          postgres    false    225            ?            1259    115192     codechallenege_employmentdetails    TABLE     2  CREATE TABLE public.codechallenege_employmentdetails (
    id integer NOT NULL,
    employer character varying(100) NOT NULL,
    physical_add character varying(100) NOT NULL,
    designation character varying(100) NOT NULL,
    employmenterms character varying(9) NOT NULL,
    bio_id integer NOT NULL
);
 4   DROP TABLE public.codechallenege_employmentdetails;
       public         heap    postgres    false            ?            1259    115190 '   codechallenege_employmentdetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.codechallenege_employmentdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.codechallenege_employmentdetails_id_seq;
       public          postgres    false    224            ?           0    0 '   codechallenege_employmentdetails_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.codechallenege_employmentdetails_id_seq OWNED BY public.codechallenege_employmentdetails.id;
          public          postgres    false    223            ?            1259    115180    codechallenege_loantype    TABLE     /  CREATE TABLE public.codechallenege_loantype (
    id integer NOT NULL,
    loan character varying(16) NOT NULL,
    "Purposeofloan" text NOT NULL,
    amountapplied integer NOT NULL,
    bio_id integer NOT NULL,
    CONSTRAINT codechallenege_loantype_amountapplied_check CHECK ((amountapplied >= 0))
);
 +   DROP TABLE public.codechallenege_loantype;
       public         heap    postgres    false            ?            1259    115178    codechallenege_loantype_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.codechallenege_loantype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.codechallenege_loantype_id_seq;
       public          postgres    false    222            ?           0    0    codechallenege_loantype_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.codechallenege_loantype_id_seq OWNED BY public.codechallenege_loantype.id;
          public          postgres    false    221            ?            1259    115169    codechallenege_otherloans    TABLE     \  CREATE TABLE public.codechallenege_otherloans (
    id integer NOT NULL,
    bank character varying(100) NOT NULL,
    amount_advanced integer NOT NULL,
    date_granted date NOT NULL,
    "Repayment_period" integer NOT NULL,
    "Outstanding_balance" integer NOT NULL,
    bio_id integer NOT NULL,
    CONSTRAINT "codechallenege_otherloans_Outstanding_balance_check" CHECK (("Outstanding_balance" >= 0)),
    CONSTRAINT "codechallenege_otherloans_Repayment_period_check" CHECK (("Repayment_period" >= 0)),
    CONSTRAINT codechallenege_otherloans_amount_advanced_check CHECK ((amount_advanced >= 0))
);
 -   DROP TABLE public.codechallenege_otherloans;
       public         heap    postgres    false            ?            1259    115167     codechallenege_otherloans_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.codechallenege_otherloans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.codechallenege_otherloans_id_seq;
       public          postgres    false    220            ?           0    0     codechallenege_otherloans_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.codechallenege_otherloans_id_seq OWNED BY public.codechallenege_otherloans.id;
          public          postgres    false    219            ?            1259    115126    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    115124    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    115012    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    115010    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    115001    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    114999    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    115157    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?           2604    115033    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?           2604    115043    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    115025    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?           2604    115051    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?           2604    115061    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    115069    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    115227    codechallenege_bankdetails id    DEFAULT     ?   ALTER TABLE ONLY public.codechallenege_bankdetails ALTER COLUMN id SET DEFAULT nextval('public.codechallenege_bankdetails_id_seq'::regclass);
 L   ALTER TABLE public.codechallenege_bankdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    115213    codechallenege_bioinfo id    DEFAULT     ?   ALTER TABLE ONLY public.codechallenege_bioinfo ALTER COLUMN id SET DEFAULT nextval('public.codechallenege_bioinfo_id_seq'::regclass);
 H   ALTER TABLE public.codechallenege_bioinfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    115203 !   codechallenege_businessdetails id    DEFAULT     ?   ALTER TABLE ONLY public.codechallenege_businessdetails ALTER COLUMN id SET DEFAULT nextval('public.codechallenege_businessdetails_id_seq'::regclass);
 P   ALTER TABLE public.codechallenege_businessdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    115195 #   codechallenege_employmentdetails id    DEFAULT     ?   ALTER TABLE ONLY public.codechallenege_employmentdetails ALTER COLUMN id SET DEFAULT nextval('public.codechallenege_employmentdetails_id_seq'::regclass);
 R   ALTER TABLE public.codechallenege_employmentdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    115183    codechallenege_loantype id    DEFAULT     ?   ALTER TABLE ONLY public.codechallenege_loantype ALTER COLUMN id SET DEFAULT nextval('public.codechallenege_loantype_id_seq'::regclass);
 I   ALTER TABLE public.codechallenege_loantype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    115172    codechallenege_otherloans id    DEFAULT     ?   ALTER TABLE ONLY public.codechallenege_otherloans ALTER COLUMN id SET DEFAULT nextval('public.codechallenege_otherloans_id_seq'::regclass);
 K   ALTER TABLE public.codechallenege_otherloans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ?           2604    115129    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    115015    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    115004    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            s          0    115030 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   q?       u          0    115040    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       q          0    115022    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ??       w          0    115048 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   ??       y          0    115058    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ??       {          0    115066    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ??       ?          0    115224    codechallenege_bankdetails 
   TABLE DATA           i   COPY public.codechallenege_bankdetails (id, account_name, acount_no, "Bank", branch, bio_id) FROM stdin;
    public          postgres    false    230   ??       ?          0    115210    codechallenege_bioinfo 
   TABLE DATA             COPY public.codechallenege_bioinfo (id, membership_no, first_name, middle_name, last_name, "DateOfBirth", "Homeaddress", "OffieNumber", mobile_no, "Pin_no", "Email", physical_add, town, estate, house_no, livedthrere, "Houseowned", martial_status, "No_dependents", bio_id) FROM stdin;
    public          postgres    false    228   ??       ?          0    115200    codechallenege_businessdetails 
   TABLE DATA           t   COPY public.codechallenege_businessdetails (id, typeofbusiness, yrsoperation, "Businessincome", bio_id) FROM stdin;
    public          postgres    false    226   ??       ?          0    115192     codechallenege_employmentdetails 
   TABLE DATA           {   COPY public.codechallenege_employmentdetails (id, employer, physical_add, designation, employmenterms, bio_id) FROM stdin;
    public          postgres    false    224   X?       ?          0    115180    codechallenege_loantype 
   TABLE DATA           c   COPY public.codechallenege_loantype (id, loan, "Purposeofloan", amountapplied, bio_id) FROM stdin;
    public          postgres    false    222   ??       ?          0    115169    codechallenege_otherloans 
   TABLE DATA           ?   COPY public.codechallenege_otherloans (id, bank, amount_advanced, date_granted, "Repayment_period", "Outstanding_balance", bio_id) FROM stdin;
    public          postgres    false    220   ??       }          0    115126    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ?       o          0    115012    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ??       m          0    115001    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   j?       ~          0    115157    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   Q?       ?           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 56, true);
          public          postgres    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 54, true);
          public          postgres    false    204            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 10, true);
          public          postgres    false    212            ?           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);
          public          postgres    false    210            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            ?           0    0 !   codechallenege_bankdetails_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.codechallenege_bankdetails_id_seq', 7, true);
          public          postgres    false    229            ?           0    0    codechallenege_bioinfo_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.codechallenege_bioinfo_id_seq', 7, true);
          public          postgres    false    227            ?           0    0 %   codechallenege_businessdetails_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.codechallenege_businessdetails_id_seq', 6, true);
          public          postgres    false    225            ?           0    0 '   codechallenege_employmentdetails_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.codechallenege_employmentdetails_id_seq', 4, true);
          public          postgres    false    223            ?           0    0    codechallenege_loantype_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.codechallenege_loantype_id_seq', 7, true);
          public          postgres    false    221            ?           0    0     codechallenege_otherloans_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.codechallenege_otherloans_id_seq', 3, true);
          public          postgres    false    219            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    216            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 52, true);
          public          postgres    false    200            ?           2606    115155    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    115082 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    115045 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    115035    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    115073 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    115027 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    115063 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    115097 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    115053    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    115071 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    115111 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    115149     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    115230 :   codechallenege_bankdetails codechallenege_bankdetails_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.codechallenege_bankdetails
    ADD CONSTRAINT codechallenege_bankdetails_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.codechallenege_bankdetails DROP CONSTRAINT codechallenege_bankdetails_pkey;
       public            postgres    false    230            ?           2606    115221 2   codechallenege_bioinfo codechallenege_bioinfo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.codechallenege_bioinfo
    ADD CONSTRAINT codechallenege_bioinfo_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.codechallenege_bioinfo DROP CONSTRAINT codechallenege_bioinfo_pkey;
       public            postgres    false    228            ?           2606    115207 B   codechallenege_businessdetails codechallenege_businessdetails_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_businessdetails
    ADD CONSTRAINT codechallenege_businessdetails_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.codechallenege_businessdetails DROP CONSTRAINT codechallenege_businessdetails_pkey;
       public            postgres    false    226            ?           2606    115197 F   codechallenege_employmentdetails codechallenege_employmentdetails_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_employmentdetails
    ADD CONSTRAINT codechallenege_employmentdetails_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.codechallenege_employmentdetails DROP CONSTRAINT codechallenege_employmentdetails_pkey;
       public            postgres    false    224            ?           2606    115189 4   codechallenege_loantype codechallenege_loantype_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.codechallenege_loantype
    ADD CONSTRAINT codechallenege_loantype_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.codechallenege_loantype DROP CONSTRAINT codechallenege_loantype_pkey;
       public            postgres    false    222            ?           2606    115177 8   codechallenege_otherloans codechallenege_otherloans_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.codechallenege_otherloans
    ADD CONSTRAINT codechallenege_otherloans_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.codechallenege_otherloans DROP CONSTRAINT codechallenege_otherloans_pkey;
       public            postgres    false    220            ?           2606    115135 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    115019 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    115017 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    115009 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    115164 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           1259    115156    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    115093 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    115094 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    115079 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    115109 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    115108 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    115123 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    115122 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    115150     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    115266 *   codechallenege_bankdetails_bio_id_e2815fa3    INDEX     s   CREATE INDEX codechallenege_bankdetails_bio_id_e2815fa3 ON public.codechallenege_bankdetails USING btree (bio_id);
 >   DROP INDEX public.codechallenege_bankdetails_bio_id_e2815fa3;
       public            postgres    false    230            ?           1259    115260 &   codechallenege_bioinfo_bio_id_86db0c9c    INDEX     k   CREATE INDEX codechallenege_bioinfo_bio_id_86db0c9c ON public.codechallenege_bioinfo USING btree (bio_id);
 :   DROP INDEX public.codechallenege_bioinfo_bio_id_86db0c9c;
       public            postgres    false    228            ?           1259    115254 .   codechallenege_businessdetails_bio_id_3c234afe    INDEX     {   CREATE INDEX codechallenege_businessdetails_bio_id_3c234afe ON public.codechallenege_businessdetails USING btree (bio_id);
 B   DROP INDEX public.codechallenege_businessdetails_bio_id_3c234afe;
       public            postgres    false    226            ?           1259    115248 0   codechallenege_employmentdetails_bio_id_9edc958b    INDEX        CREATE INDEX codechallenege_employmentdetails_bio_id_9edc958b ON public.codechallenege_employmentdetails USING btree (bio_id);
 D   DROP INDEX public.codechallenege_employmentdetails_bio_id_9edc958b;
       public            postgres    false    224            ?           1259    115242 '   codechallenege_loantype_bio_id_f6e2015c    INDEX     m   CREATE INDEX codechallenege_loantype_bio_id_f6e2015c ON public.codechallenege_loantype USING btree (bio_id);
 ;   DROP INDEX public.codechallenege_loantype_bio_id_f6e2015c;
       public            postgres    false    222            ?           1259    115236 )   codechallenege_otherloans_bio_id_bfac4196    INDEX     q   CREATE INDEX codechallenege_otherloans_bio_id_bfac4196 ON public.codechallenege_otherloans USING btree (bio_id);
 =   DROP INDEX public.codechallenege_otherloans_bio_id_bfac4196;
       public            postgres    false    220            ?           1259    115146 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    115147 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    115166 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    115165 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            ?           2606    115088 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2980    209    205            ?           2606    115083 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2985    209    207            ?           2606    115074 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2975    203    205            ?           2606    115103 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    213    2985            ?           2606    115098 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    213    2993            ?           2606    115117 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2980    205    215            ?           2606    115112 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2993    215    211            ?           2606    115261 U   codechallenege_bankdetails codechallenege_bankdetails_bio_id_e2815fa3_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_bankdetails
    ADD CONSTRAINT codechallenege_bankdetails_bio_id_e2815fa3_fk_auth_user_id FOREIGN KEY (bio_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.codechallenege_bankdetails DROP CONSTRAINT codechallenege_bankdetails_bio_id_e2815fa3_fk_auth_user_id;
       public          postgres    false    230    2993    211            ?           2606    115255 M   codechallenege_bioinfo codechallenege_bioinfo_bio_id_86db0c9c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_bioinfo
    ADD CONSTRAINT codechallenege_bioinfo_bio_id_86db0c9c_fk_auth_user_id FOREIGN KEY (bio_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.codechallenege_bioinfo DROP CONSTRAINT codechallenege_bioinfo_bio_id_86db0c9c_fk_auth_user_id;
       public          postgres    false    228    211    2993            ?           2606    115249 ]   codechallenege_businessdetails codechallenege_businessdetails_bio_id_3c234afe_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_businessdetails
    ADD CONSTRAINT codechallenege_businessdetails_bio_id_3c234afe_fk_auth_user_id FOREIGN KEY (bio_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.codechallenege_businessdetails DROP CONSTRAINT codechallenege_businessdetails_bio_id_3c234afe_fk_auth_user_id;
       public          postgres    false    2993    211    226            ?           2606    115243 R   codechallenege_employmentdetails codechallenege_emplo_bio_id_9edc958b_fk_auth_user    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_employmentdetails
    ADD CONSTRAINT codechallenege_emplo_bio_id_9edc958b_fk_auth_user FOREIGN KEY (bio_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.codechallenege_employmentdetails DROP CONSTRAINT codechallenege_emplo_bio_id_9edc958b_fk_auth_user;
       public          postgres    false    211    2993    224            ?           2606    115237 O   codechallenege_loantype codechallenege_loantype_bio_id_f6e2015c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_loantype
    ADD CONSTRAINT codechallenege_loantype_bio_id_f6e2015c_fk_auth_user_id FOREIGN KEY (bio_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.codechallenege_loantype DROP CONSTRAINT codechallenege_loantype_bio_id_f6e2015c_fk_auth_user_id;
       public          postgres    false    211    222    2993            ?           2606    115231 S   codechallenege_otherloans codechallenege_otherloans_bio_id_bfac4196_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codechallenege_otherloans
    ADD CONSTRAINT codechallenege_otherloans_bio_id_bfac4196_fk_auth_user_id FOREIGN KEY (bio_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.codechallenege_otherloans DROP CONSTRAINT codechallenege_otherloans_bio_id_bfac4196_fk_auth_user_id;
       public          postgres    false    220    211    2993            ?           2606    115136 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2975    217    203            ?           2606    115141 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    211    2993    217            s   -   x?3?,OMJL????,.I-?2?s??8?s2S?JJ???1z\\\ .
-      u   ?   x??ˑ!C?u?`???@????c??H??=?S"'??L????Ln??᝼hM?H???w_Ȃ?P"+*dG?,i#[:Ț.aN?{?{!??Q?"	{Q??h?^l?^?^\?^???\????e?ߌI??"?e??r??????R????բ??({5+?WI}[+?^5e?6e?e?.????-??cz?Nw?5=?u?_zO????}Y;      q     x?m?ێ? @??W?Fͥ??y??X??6?&?*I???Ob?Yނ9a?U??m???]_?L??*??e]?RՀ|ߴ퍠|???Όf????o0/?m????a??0σ?EjP.'@?c???	{"EA?#??Ѳ???Q4 ߪ?q???^?T?) ??HM* ?n??s6Sт????????x???t?p?l܆???1???첾Z???؃????N\$?QH?g??????zG?	?????l??@W??NzFLT;a?1V??UD?ү??tf??8G?bU?b?,?	\Ի??R???%????n?]q??~?Q??ˀ??',??u A?* ???????@???h#ܣ?MD?L???l.^#???*?	w??Q?]??`??I??^ ?1E?^.+?I?(z0?^)IlY3?????Iԕ?[??{?0????m?Iĸ8???"??aP1???(`ԥn??	??B~"A"?]????qѥ	??g]????Q???+W~?i?^&????]nQ??????V????J?_?v?k      w   ?  x???Y??Hǟ?O??PL?>????9?sj??/|?c??OA?????\R??W??*?Vn???{,DY1Ь?W'?"??Ie?????????m?j?A????޺Zu?L??3<g?q˓Ri??|??B ??@?
??$H%?9?????]??R?p&?|?̾{???9'K?s?7?/JKq?g@??􂞧?k'??&_????Σ]??.@qhڥ<?_g?M˅?`~!?????U???b???/a"!???S8?"???m=>?[~%*r@?+?|??tn?eta?S?r2u?Ƀ?PO?TvA??|z??yw?}?<?m}(?~??? ????g~B%8ڄ%????JZ?*bDL"7q?s8?21?#S??|??FM@??&ۮ???m]??؇??_?{#R7??Iv?0?f??????yU ???_??V ???(??)??a_O??2)<l?Z1ڇYiʗ???????G ?.?m??J?np???f?Н?DI??Ƽ ?)	??/0?Nd?v????*??Ώ}X?ˉr$?Bm????S??+???z??)A???yT?b.?7???5v>CR?Z?<e<?.?sN? ?~????ċ"z???s:Z)???)m?2?A?	*-n??f?W[???$??JݜT5T???<?L?(/4z;|??
$"p??$??{+ɯ??9'? ?0O|?S|?9?D??o^t/y2?*m??_??nl?:J??B?????ŗ^?Ls??.???B?L???9)?(? f?{??^???}?J?	»???E$*p?@??d???3]?KзF'?0?????{v9
???f4J???q0?y4/??݁.o5?????mO%?L.̉?b ???0MC?aҳeg???S??L ???y?xM5??
0?u>?|˯??N?N˵z???.???wHe?r"??2?*}?Թ??e?s??(?E????c?=u??*»???@`ע?f?????g???      y   5   x???  ?????p?B?u??$?d?A?b?ɲ?m7???Dw&?&?0      {      x?????? ? ?      ?   ?   x?]?An? ????S???ܥ?1F??D?}i6?????g?5??????
a?Ų Ժ#׼h?Vu#???'???T??I?????z?W?[|???%?ڃ6?<9cQ¢????=?????F??N????ٱ֒??;<	6??o(????%?h?D?TJ?`k??=願i?c?0v????An?u%? DL?      ?     x???A??0???.̳?f??\???<???+??43???yX?'???Fi??rtWx>??}-d?.??fHݙF?
D':4X????q:?օ?}8?aZ??oCZ??|N?C|?p??@ 4ps+,??w#???Ni??0??v?K?D????Tpڂ#4)?eT_8?2????|??'?Bq"n???>????????0?TtF??ց2߲?ƍ?pbZ_:?Z?5"??<t???ؕ??m?0?#???N???r???v?x????Jb?l??Hy?`a-H!D-???[l O+S J??ʠRZ?@Z??8??0͏J/r?????N{??J? ??Ҁ??$̴\
P?_?w/ŘZ?"?42?F??X??Q????xZ?g???7?=%~3?g????Z??W??}?Ȧ??]6?a-????fSv?H?3??j????<?ˢ?*?E??????t?V?VP??m.??F??ãn1??ּP??g?? ks??h~?x????L\???񯁾??VU?/?O2      ?   s   x?E?K?0C??a???????*RI?????PU/??'??????A????a?2G}7??X?W???0y???1?q?`r??v? Ӑ?Z?v1<G<???Z???R???j?o{??D???"?      ?      x?m?1?0F???)8m??A??MDMmp?J?=s?7}z'?i?b?ș?xCT9?G??y?rBGfQ~zHU_??=?S?3ϵ?5??.??94@??c?p??6F?$>?ޖ*Zp?Ǒ?~?;?      ?   ?   x?U?M?0???)r???n???@?6?PP??PeA???{?{I!4?s?:f?z?A??.?ZP?:?a7~?q޲L09?????6???9?!@9? n????<'?l)???h+?8p??B?!͒???????ٝ}?_?r?ߑU?u?????S??L}??_\?~B?/?O?      ?   Q   x?3?L??/H-J,?,K?44 N##C]]#NC#NS???BS4e?`???\Ɯ??I?fiK]CC??HĄ+F??? 6?S      }   ?   x??α
?0??9y
?Zɽ11y??ݭ?Դh,?N??Wj??P?v???Hd.l.!p?q?? ?9$???'@??]?M????lf???6??b?q????RE$????Ю(? n*?6?i??'??!?0??f??v\????[???u?y??P? ȥ>>??????9??G?P?      o   ?   x?e?K?0??a?????M ?&v'n?DU????F?5???ˀ???q%?&b
?J?pZ6C?ἄ???b:?\?<E?? W?8ۺp????y?????????+?w???%??????յǝ\????5???????m?H????? ? <?f?      m   ?  x???ю? E??????t?
?[6!D?D?E?L????؝???/??=u?V	uf7??utS h??go?????;?aE??pJ ?_?NT?e?<S?Yqͳ?????LBg??Z??%d??&??j??ç3?~0?i?\oqg?;#錭g????ԗ????!??DU?H????.L?1???!???2J???????]??4eGYoz?e:7???C?.	tF??n?eJ?????Q8I.?L?;??R???	?|?J?:`??!??朼O?-??̹?z3??Sʔ????=?5w?C;?B???vʛ?O????!N??]?!??M?m?1v?JE[clǩ?p??\??p]F?;I????U?SG?MB?????5
Ӛ?S?4˘rf????????H??6+?2#=6????]?G?m?W??nU?>?1??L?_?q??v??k?ż??,	?V??@L?????????9?d?E?"=??m&~?O??_x?zg      ~     x??Ɏ?0  г|??'?B?Enl.?((0?I?X?ͅb)د??H?e??E???{R^v)??e?Mf?;??????????Y???܃????,6"FOY?fD??rxa????"?SW8??B??j???dk:?Mv?\8N^?c?(??z?`?0?6????A?.C?*?.?l?>%????Mr??{?X????AY??&D??;?&?.???z??+???4??7QSRvj??Ë??????j???D?<???? ֑?#0S5 #?@?w&I??M`t     