PGDMP     1    !                z         
   magnet_crm    13.7    13.1               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16385 
   magnet_crm    DATABASE     U   CREATE DATABASE magnet_crm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE magnet_crm;
                postgres    false            �            1259    19635 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    19638    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    200            #           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    201            �            1259    19640    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    19643    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    202            $           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    203            �            1259    19645    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    19648    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    204            %           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    205            �            1259    19650 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    19656    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    19659    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    207            &           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    19661    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    206            '           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    209            �            1259    19663    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    19666 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    210            (           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    211            �            1259    19668    client_client    TABLE     �  CREATE TABLE public.client_client (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    is_registred boolean NOT NULL,
    source character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer,
    domisili character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    nama character varying(255) NOT NULL,
    pekerjaan character varying(255) NOT NULL,
    umur character varying(255) NOT NULL,
    is_locked boolean NOT NULL,
    email character varying(254),
    phone_no character varying(255) NOT NULL
);
 !   DROP TABLE public.client_client;
       public         heap    postgres    false            �            1259    19671    client_client_followup    TABLE     �  CREATE TABLE public.client_client_followup (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    answer character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    followup_id bigint NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 *   DROP TABLE public.client_client_followup;
       public         heap    postgres    false            �            1259    19674    client_client_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_followup_id_seq;
       public          postgres    false    213            )           0    0    client_client_followup_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_followup_id_seq OWNED BY public.client_client_followup.id;
          public          postgres    false    214            �            1259    19676    client_client_id_seq    SEQUENCE     }   CREATE SEQUENCE public.client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          postgres    false    212            *           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client_client.id;
          public          postgres    false    215            �            1259    20270    client_client_journey    TABLE     �  CREATE TABLE public.client_client_journey (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    journal_type character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 )   DROP TABLE public.client_client_journey;
       public         heap    postgres    false            �            1259    20268    client_client_journey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_journey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.client_client_journey_id_seq;
       public          postgres    false    240            +           0    0    client_client_journey_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.client_client_journey_id_seq OWNED BY public.client_client_journey.id;
          public          postgres    false    239            �            1259    19678    client_client_schedule    TABLE     .  CREATE TABLE public.client_client_schedule (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    schedule_date timestamp with time zone,
    status character varying(255) NOT NULL,
    answer character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer,
    schedule_type character varying(255) NOT NULL,
    notes text NOT NULL
);
 *   DROP TABLE public.client_client_schedule;
       public         heap    postgres    false            �            1259    19684    client_client_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_schedule_id_seq;
       public          postgres    false    216            ,           0    0    client_client_schedule_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_schedule_id_seq OWNED BY public.client_client_schedule.id;
          public          postgres    false    217            �            1259    19686    client_client_staff    TABLE     �  CREATE TABLE public.client_client_staff (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer,
    color character varying(255) NOT NULL
);
 '   DROP TABLE public.client_client_staff;
       public         heap    postgres    false            �            1259    19689    client_client_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.client_client_staff_id_seq;
       public          postgres    false    218            -           0    0    client_client_staff_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.client_client_staff_id_seq OWNED BY public.client_client_staff.id;
          public          postgres    false    219            �            1259    19691    core_profile    TABLE     �  CREATE TABLE public.core_profile (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    is_supervisor boolean NOT NULL,
    reset_token character varying(255) NOT NULL,
    is_ib boolean NOT NULL,
    full_name character varying(255) NOT NULL,
    no_ktp character varying(255) NOT NULL,
    phone_no character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    is_verified boolean NOT NULL,
    verify_uid character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer,
    user_id integer NOT NULL,
    last_login_ip character varying(255) NOT NULL
);
     DROP TABLE public.core_profile;
       public         heap    postgres    false            �            1259    19697    core_profile_id_seq    SEQUENCE     |   CREATE SEQUENCE public.core_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_profile_id_seq;
       public          postgres    false    220            .           0    0    core_profile_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_profile_id_seq OWNED BY public.core_profile.id;
          public          postgres    false    221            �            1259    19699    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    19706    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    222            /           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    223            �            1259    19708    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    19711    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    224            0           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    225            �            1259    19713    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    19719    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    226            1           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    227            �            1259    19721    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    19727    followup_followup    TABLE     �  CREATE TABLE public.followup_followup (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_choices character varying(255) NOT NULL,
    followup_choice_code text NOT NULL,
    followup_choice_head text NOT NULL,
    followup_textfield boolean NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 %   DROP TABLE public.followup_followup;
       public         heap    postgres    false            �            1259    19733    followup_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.followup_followup_id_seq;
       public          postgres    false    229            2           0    0    followup_followup_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.followup_followup_id_seq OWNED BY public.followup_followup.id;
          public          postgres    false    230            �            1259    19735    followup_followupselected    TABLE     7  CREATE TABLE public.followup_followupselected (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_selected_code text NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.followup_followupselected;
       public         heap    postgres    false            �            1259    19741     followup_followupselected_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followupselected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.followup_followupselected_id_seq;
       public          postgres    false    231            3           0    0     followup_followupselected_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.followup_followupselected_id_seq OWNED BY public.followup_followupselected.id;
          public          postgres    false    232            �            1259    19743    staff_staff    TABLE     �  CREATE TABLE public.staff_staff (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    created_by_id integer NOT NULL,
    profile_id bigint NOT NULL,
    staff_level_id bigint NOT NULL,
    staff_parent_id bigint,
    updated_by_id integer,
    is_locked boolean NOT NULL
);
    DROP TABLE public.staff_staff;
       public         heap    postgres    false            �            1259    19746    staff_staff_history    TABLE     P  CREATE TABLE public.staff_staff_history (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    child_staff_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    parent_staff_id bigint NOT NULL,
    updated_by_id integer
);
 '   DROP TABLE public.staff_staff_history;
       public         heap    postgres    false            �            1259    19749    staff_staff_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.staff_staff_history_id_seq;
       public          postgres    false    234            4           0    0    staff_staff_history_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.staff_staff_history_id_seq OWNED BY public.staff_staff_history.id;
          public          postgres    false    235            �            1259    19751    staff_staff_id_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_staff_id_seq;
       public          postgres    false    233            5           0    0    staff_staff_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff_staff.id;
          public          postgres    false    236            �            1259    19753    staff_staff_level    TABLE     h  CREATE TABLE public.staff_staff_level (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    level integer NOT NULL,
    level_name character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 %   DROP TABLE public.staff_staff_level;
       public         heap    postgres    false            �            1259    19756    staff_staff_level_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.staff_staff_level_id_seq;
       public          postgres    false    237            6           0    0    staff_staff_level_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.staff_staff_level_id_seq OWNED BY public.staff_staff_level.id;
          public          postgres    false    238            �           2604    20116    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            �           2604    20117    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    20118    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    20119    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    206            �           2604    20120    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    20121    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    20122    client_client id    DEFAULT     t   ALTER TABLE ONLY public.client_client ALTER COLUMN id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client_client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    212            �           2604    20123    client_client_followup id    DEFAULT     �   ALTER TABLE ONLY public.client_client_followup ALTER COLUMN id SET DEFAULT nextval('public.client_client_followup_id_seq'::regclass);
 H   ALTER TABLE public.client_client_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    20273    client_client_journey id    DEFAULT     �   ALTER TABLE ONLY public.client_client_journey ALTER COLUMN id SET DEFAULT nextval('public.client_client_journey_id_seq'::regclass);
 G   ALTER TABLE public.client_client_journey ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    20124    client_client_schedule id    DEFAULT     �   ALTER TABLE ONLY public.client_client_schedule ALTER COLUMN id SET DEFAULT nextval('public.client_client_schedule_id_seq'::regclass);
 H   ALTER TABLE public.client_client_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    20125    client_client_staff id    DEFAULT     �   ALTER TABLE ONLY public.client_client_staff ALTER COLUMN id SET DEFAULT nextval('public.client_client_staff_id_seq'::regclass);
 E   ALTER TABLE public.client_client_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    20126    core_profile id    DEFAULT     r   ALTER TABLE ONLY public.core_profile ALTER COLUMN id SET DEFAULT nextval('public.core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    20127    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    20128    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    20129    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    20130    followup_followup id    DEFAULT     |   ALTER TABLE ONLY public.followup_followup ALTER COLUMN id SET DEFAULT nextval('public.followup_followup_id_seq'::regclass);
 C   ALTER TABLE public.followup_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    20131    followup_followupselected id    DEFAULT     �   ALTER TABLE ONLY public.followup_followupselected ALTER COLUMN id SET DEFAULT nextval('public.followup_followupselected_id_seq'::regclass);
 K   ALTER TABLE public.followup_followupselected ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    20132    staff_staff id    DEFAULT     p   ALTER TABLE ONLY public.staff_staff ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);
 =   ALTER TABLE public.staff_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    233            �           2604    20133    staff_staff_history id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_history ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_history_id_seq'::regclass);
 E   ALTER TABLE public.staff_staff_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    20134    staff_staff_level id    DEFAULT     |   ALTER TABLE ONLY public.staff_staff_level ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_level_id_seq'::regclass);
 C   ALTER TABLE public.staff_staff_level ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �          0    19635 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    200   ̀      �          0    19640    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    202   �      �          0    19645    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    204   �      �          0    19650 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    206   ��      �          0    19656    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    207   K�      �          0    19663    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    210   h�                 0    19668    client_client 
   TABLE DATA           �   COPY public.client_client (id, created_at, updated_at, is_active, uid, is_registred, source, created_by_id, updated_by_id, domisili, gender, nama, pekerjaan, umur, is_locked, email, phone_no) FROM stdin;
    public          postgres    false    212   ��                0    19671    client_client_followup 
   TABLE DATA           �   COPY public.client_client_followup (id, created_at, updated_at, is_active, uid, answer, client_id, created_by_id, followup_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    213   MT                0    20270    client_client_journey 
   TABLE DATA           �   COPY public.client_client_journey (id, created_at, updated_at, is_active, uid, journal_type, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    240   jT                0    19678    client_client_schedule 
   TABLE DATA           �   COPY public.client_client_schedule (id, created_at, updated_at, is_active, uid, schedule_date, status, answer, client_id, created_by_id, staff_id, updated_by_id, schedule_type, notes) FROM stdin;
    public          postgres    false    216   ;U                0    19686    client_client_staff 
   TABLE DATA           �   COPY public.client_client_staff (id, created_at, updated_at, is_active, uid, client_id, created_by_id, staff_id, updated_by_id, color) FROM stdin;
    public          postgres    false    218   XU                0    19691    core_profile 
   TABLE DATA           �   COPY public.core_profile (id, created_at, updated_at, is_active, uid, is_supervisor, reset_token, is_ib, full_name, no_ktp, phone_no, email, is_verified, verify_uid, created_by_id, updated_by_id, user_id, last_login_ip) FROM stdin;
    public          postgres    false    220   ��      
          0    19699    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    222   ٵ                0    19708    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    224   ��                0    19713    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    226   ��                0    19721    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    228   /�                0    19727    followup_followup 
   TABLE DATA           �   COPY public.followup_followup (id, created_at, updated_at, is_active, followup_choices, followup_choice_code, followup_choice_head, followup_textfield, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    229   ��                0    19735    followup_followupselected 
   TABLE DATA           �   COPY public.followup_followupselected (id, created_at, updated_at, is_active, followup_selected_code, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   ��                0    19743    staff_staff 
   TABLE DATA           �   COPY public.staff_staff (id, created_at, updated_at, is_active, uid, created_by_id, profile_id, staff_level_id, staff_parent_id, updated_by_id, is_locked) FROM stdin;
    public          postgres    false    233   �                0    19746    staff_staff_history 
   TABLE DATA           �   COPY public.staff_staff_history (id, created_at, updated_at, is_active, child_staff_id, created_by_id, parent_staff_id, updated_by_id) FROM stdin;
    public          postgres    false    234   k�                0    19753    staff_staff_level 
   TABLE DATA           �   COPY public.staff_staff_level (id, created_at, updated_at, is_active, uid, level, level_name, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   ��      7           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    201            8           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    203            9           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);
          public          postgres    false    205            :           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            ;           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 143, true);
          public          postgres    false    209            <           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    211            =           0    0    client_client_followup_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_followup_id_seq', 6, true);
          public          postgres    false    214            >           0    0    client_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.client_client_id_seq', 2010, true);
          public          postgres    false    215            ?           0    0    client_client_journey_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_journey_id_seq', 20, true);
          public          postgres    false    239            @           0    0    client_client_schedule_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_schedule_id_seq', 19, true);
          public          postgres    false    217            A           0    0    client_client_staff_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_staff_id_seq', 1843, true);
          public          postgres    false    219            B           0    0    core_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_profile_id_seq', 141, true);
          public          postgres    false    221            C           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    223            D           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);
          public          postgres    false    225            E           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);
          public          postgres    false    227            F           0    0    followup_followup_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followup_followup_id_seq', 26, true);
          public          postgres    false    230            G           0    0     followup_followupselected_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.followup_followupselected_id_seq', 1, false);
          public          postgres    false    232            H           0    0    staff_staff_history_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.staff_staff_history_id_seq', 1, false);
          public          postgres    false    235            I           0    0    staff_staff_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.staff_staff_id_seq', 135, true);
          public          postgres    false    236            J           0    0    staff_staff_level_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.staff_staff_level_id_seq', 8, true);
          public          postgres    false    238            �           2606    19778    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    200            �           2606    19780 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    202    202            �           2606    19782 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    202            �           2606    19784    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    200            �           2606    19786 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    204    204            �           2606    19788 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    204            �           2606    19790 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    207            �           2606    19792 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    207    207            �           2606    19794    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    206            �           2606    19796 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    210            �           2606    19798 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    210    210            �           2606    19800     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    206            �           2606    19802 2   client_client_followup client_client_followup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_pkey;
       public            postgres    false    213            �           2606    19804 5   client_client_followup client_client_followup_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_uid_key;
       public            postgres    false    213            ?           2606    20275 0   client_client_journey client_client_journey_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_pkey;
       public            postgres    false    240            B           2606    20277 3   client_client_journey client_client_journey_uid_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_uid_key UNIQUE (uid);
 ]   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_uid_key;
       public            postgres    false    240            �           2606    19806     client_client client_client_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_pkey;
       public            postgres    false    212            �           2606    19810 2   client_client_schedule client_client_schedule_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_pkey;
       public            postgres    false    216            �           2606    19812 5   client_client_schedule client_client_schedule_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_uid_key;
       public            postgres    false    216            �           2606    19814 ,   client_client_staff client_client_staff_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_pkey;
       public            postgres    false    218                       2606    19816 /   client_client_staff client_client_staff_uid_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_uid_key UNIQUE (uid);
 Y   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_uid_key;
       public            postgres    false    218            �           2606    19818 #   client_client client_client_uid_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_uid_key UNIQUE (uid);
 M   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_uid_key;
       public            postgres    false    212                       2606    19820 #   core_profile core_profile_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_email_key;
       public            postgres    false    220            	           2606    19822 &   core_profile core_profile_phone_no_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_phone_no_key UNIQUE (phone_no);
 P   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_phone_no_key;
       public            postgres    false    220                       2606    19824    core_profile core_profile_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_pkey;
       public            postgres    false    220                       2606    19826 !   core_profile core_profile_uid_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_uid_key UNIQUE (uid);
 K   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_uid_key;
       public            postgres    false    220                       2606    19828 %   core_profile core_profile_user_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_key;
       public            postgres    false    220                       2606    19830 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    222                       2606    19832 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    224    224                       2606    19834 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    224                       2606    19836 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    226                       2606    19838 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    228            !           2606    19840 (   followup_followup followup_followup_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_pkey;
       public            postgres    false    229            %           2606    19842 8   followup_followupselected followup_followupselected_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupselected_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupselected_pkey;
       public            postgres    false    231            4           2606    19844 ,   staff_staff_history staff_staff_history_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_pkey;
       public            postgres    false    234            8           2606    19846 (   staff_staff_level staff_staff_level_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_pkey;
       public            postgres    false    237            :           2606    19848 +   staff_staff_level staff_staff_level_uid_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_uid_key UNIQUE (uid);
 U   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_uid_key;
       public            postgres    false    237            )           2606    19850    staff_staff staff_staff_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_pkey;
       public            postgres    false    233            .           2606    19852    staff_staff staff_staff_uid_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_uid_key UNIQUE (uid);
 I   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_uid_key;
       public            postgres    false    233            �           1259    19853    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    200            �           1259    19854 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    202            �           1259    19855 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    202            �           1259    19856 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    204            �           1259    19857 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    207            �           1259    19858 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    207            �           1259    19859 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    210            �           1259    19860 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    210            �           1259    19861     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    206            �           1259    19862 $   client_client_created_by_id_a8280477    INDEX     g   CREATE INDEX client_client_created_by_id_a8280477 ON public.client_client USING btree (created_by_id);
 8   DROP INDEX public.client_client_created_by_id_a8280477;
       public            postgres    false    212            �           1259    19863 )   client_client_followup_client_id_45370856    INDEX     q   CREATE INDEX client_client_followup_client_id_45370856 ON public.client_client_followup USING btree (client_id);
 =   DROP INDEX public.client_client_followup_client_id_45370856;
       public            postgres    false    213            �           1259    19864 -   client_client_followup_created_by_id_57569ec6    INDEX     y   CREATE INDEX client_client_followup_created_by_id_57569ec6 ON public.client_client_followup USING btree (created_by_id);
 A   DROP INDEX public.client_client_followup_created_by_id_57569ec6;
       public            postgres    false    213            �           1259    19865 +   client_client_followup_followup_id_fc5601fd    INDEX     u   CREATE INDEX client_client_followup_followup_id_fc5601fd ON public.client_client_followup USING btree (followup_id);
 ?   DROP INDEX public.client_client_followup_followup_id_fc5601fd;
       public            postgres    false    213            �           1259    19866 (   client_client_followup_staff_id_04b7a4de    INDEX     o   CREATE INDEX client_client_followup_staff_id_04b7a4de ON public.client_client_followup USING btree (staff_id);
 <   DROP INDEX public.client_client_followup_staff_id_04b7a4de;
       public            postgres    false    213            �           1259    19867 -   client_client_followup_updated_by_id_20a2ab61    INDEX     y   CREATE INDEX client_client_followup_updated_by_id_20a2ab61 ON public.client_client_followup USING btree (updated_by_id);
 A   DROP INDEX public.client_client_followup_updated_by_id_20a2ab61;
       public            postgres    false    213            <           1259    20298 (   client_client_journey_client_id_2e449a98    INDEX     o   CREATE INDEX client_client_journey_client_id_2e449a98 ON public.client_client_journey USING btree (client_id);
 <   DROP INDEX public.client_client_journey_client_id_2e449a98;
       public            postgres    false    240            =           1259    20299 ,   client_client_journey_created_by_id_88c21422    INDEX     w   CREATE INDEX client_client_journey_created_by_id_88c21422 ON public.client_client_journey USING btree (created_by_id);
 @   DROP INDEX public.client_client_journey_created_by_id_88c21422;
       public            postgres    false    240            @           1259    20300 '   client_client_journey_staff_id_6ff5bed2    INDEX     m   CREATE INDEX client_client_journey_staff_id_6ff5bed2 ON public.client_client_journey USING btree (staff_id);
 ;   DROP INDEX public.client_client_journey_staff_id_6ff5bed2;
       public            postgres    false    240            C           1259    20301 ,   client_client_journey_updated_by_id_1f07dea5    INDEX     w   CREATE INDEX client_client_journey_updated_by_id_1f07dea5 ON public.client_client_journey USING btree (updated_by_id);
 @   DROP INDEX public.client_client_journey_updated_by_id_1f07dea5;
       public            postgres    false    240            �           1259    19868 )   client_client_schedule_client_id_e3ee1cbc    INDEX     q   CREATE INDEX client_client_schedule_client_id_e3ee1cbc ON public.client_client_schedule USING btree (client_id);
 =   DROP INDEX public.client_client_schedule_client_id_e3ee1cbc;
       public            postgres    false    216            �           1259    19869 -   client_client_schedule_created_by_id_9b078863    INDEX     y   CREATE INDEX client_client_schedule_created_by_id_9b078863 ON public.client_client_schedule USING btree (created_by_id);
 A   DROP INDEX public.client_client_schedule_created_by_id_9b078863;
       public            postgres    false    216            �           1259    19870 (   client_client_schedule_staff_id_92fd05bd    INDEX     o   CREATE INDEX client_client_schedule_staff_id_92fd05bd ON public.client_client_schedule USING btree (staff_id);
 <   DROP INDEX public.client_client_schedule_staff_id_92fd05bd;
       public            postgres    false    216            �           1259    19871 -   client_client_schedule_updated_by_id_89e26ce0    INDEX     y   CREATE INDEX client_client_schedule_updated_by_id_89e26ce0 ON public.client_client_schedule USING btree (updated_by_id);
 A   DROP INDEX public.client_client_schedule_updated_by_id_89e26ce0;
       public            postgres    false    216            �           1259    19872 &   client_client_staff_client_id_196dca78    INDEX     k   CREATE INDEX client_client_staff_client_id_196dca78 ON public.client_client_staff USING btree (client_id);
 :   DROP INDEX public.client_client_staff_client_id_196dca78;
       public            postgres    false    218            �           1259    19873 *   client_client_staff_created_by_id_ef63d6bf    INDEX     s   CREATE INDEX client_client_staff_created_by_id_ef63d6bf ON public.client_client_staff USING btree (created_by_id);
 >   DROP INDEX public.client_client_staff_created_by_id_ef63d6bf;
       public            postgres    false    218            �           1259    19874 %   client_client_staff_staff_id_2a3b6b6e    INDEX     i   CREATE INDEX client_client_staff_staff_id_2a3b6b6e ON public.client_client_staff USING btree (staff_id);
 9   DROP INDEX public.client_client_staff_staff_id_2a3b6b6e;
       public            postgres    false    218                       1259    19875 *   client_client_staff_updated_by_id_35a02e55    INDEX     s   CREATE INDEX client_client_staff_updated_by_id_35a02e55 ON public.client_client_staff USING btree (updated_by_id);
 >   DROP INDEX public.client_client_staff_updated_by_id_35a02e55;
       public            postgres    false    218            �           1259    19876 $   client_client_updated_by_id_12f0c54f    INDEX     g   CREATE INDEX client_client_updated_by_id_12f0c54f ON public.client_client USING btree (updated_by_id);
 8   DROP INDEX public.client_client_updated_by_id_12f0c54f;
       public            postgres    false    212                       1259    19877 #   core_profile_created_by_id_d0c22ea6    INDEX     e   CREATE INDEX core_profile_created_by_id_d0c22ea6 ON public.core_profile USING btree (created_by_id);
 7   DROP INDEX public.core_profile_created_by_id_d0c22ea6;
       public            postgres    false    220                       1259    19878     core_profile_email_858298b3_like    INDEX     n   CREATE INDEX core_profile_email_858298b3_like ON public.core_profile USING btree (email varchar_pattern_ops);
 4   DROP INDEX public.core_profile_email_858298b3_like;
       public            postgres    false    220                       1259    19879 #   core_profile_phone_no_312b2c31_like    INDEX     t   CREATE INDEX core_profile_phone_no_312b2c31_like ON public.core_profile USING btree (phone_no varchar_pattern_ops);
 7   DROP INDEX public.core_profile_phone_no_312b2c31_like;
       public            postgres    false    220                       1259    19880 #   core_profile_updated_by_id_f1bd9ad3    INDEX     e   CREATE INDEX core_profile_updated_by_id_f1bd9ad3 ON public.core_profile USING btree (updated_by_id);
 7   DROP INDEX public.core_profile_updated_by_id_f1bd9ad3;
       public            postgres    false    220                       1259    19881 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    222                       1259    19882 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    222                       1259    19883 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    228                       1259    19884 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    228                       1259    19885 (   followup_followup_created_by_id_bd33bd23    INDEX     o   CREATE INDEX followup_followup_created_by_id_bd33bd23 ON public.followup_followup USING btree (created_by_id);
 <   DROP INDEX public.followup_followup_created_by_id_bd33bd23;
       public            postgres    false    229            "           1259    19886 (   followup_followup_updated_by_id_aeb66564    INDEX     o   CREATE INDEX followup_followup_updated_by_id_aeb66564 ON public.followup_followup USING btree (updated_by_id);
 <   DROP INDEX public.followup_followup_updated_by_id_aeb66564;
       public            postgres    false    229            #           1259    19887 0   followup_followupselected_created_by_id_d6e0a19e    INDEX        CREATE INDEX followup_followupselected_created_by_id_d6e0a19e ON public.followup_followupselected USING btree (created_by_id);
 D   DROP INDEX public.followup_followupselected_created_by_id_d6e0a19e;
       public            postgres    false    231            &           1259    19888 0   followup_followupselected_updated_by_id_f571c189    INDEX        CREATE INDEX followup_followupselected_updated_by_id_f571c189 ON public.followup_followupselected USING btree (updated_by_id);
 D   DROP INDEX public.followup_followupselected_updated_by_id_f571c189;
       public            postgres    false    231            '           1259    19889 "   staff_staff_created_by_id_750bb59d    INDEX     c   CREATE INDEX staff_staff_created_by_id_750bb59d ON public.staff_staff USING btree (created_by_id);
 6   DROP INDEX public.staff_staff_created_by_id_750bb59d;
       public            postgres    false    233            0           1259    19890 +   staff_staff_history_child_staff_id_339b898a    INDEX     u   CREATE INDEX staff_staff_history_child_staff_id_339b898a ON public.staff_staff_history USING btree (child_staff_id);
 ?   DROP INDEX public.staff_staff_history_child_staff_id_339b898a;
       public            postgres    false    234            1           1259    19891 *   staff_staff_history_created_by_id_d7ef2079    INDEX     s   CREATE INDEX staff_staff_history_created_by_id_d7ef2079 ON public.staff_staff_history USING btree (created_by_id);
 >   DROP INDEX public.staff_staff_history_created_by_id_d7ef2079;
       public            postgres    false    234            2           1259    19892 ,   staff_staff_history_parent_staff_id_a548da9e    INDEX     w   CREATE INDEX staff_staff_history_parent_staff_id_a548da9e ON public.staff_staff_history USING btree (parent_staff_id);
 @   DROP INDEX public.staff_staff_history_parent_staff_id_a548da9e;
       public            postgres    false    234            5           1259    19893 *   staff_staff_history_updated_by_id_0a1a85b8    INDEX     s   CREATE INDEX staff_staff_history_updated_by_id_0a1a85b8 ON public.staff_staff_history USING btree (updated_by_id);
 >   DROP INDEX public.staff_staff_history_updated_by_id_0a1a85b8;
       public            postgres    false    234            6           1259    19894 (   staff_staff_level_created_by_id_591009cc    INDEX     o   CREATE INDEX staff_staff_level_created_by_id_591009cc ON public.staff_staff_level USING btree (created_by_id);
 <   DROP INDEX public.staff_staff_level_created_by_id_591009cc;
       public            postgres    false    237            ;           1259    19895 (   staff_staff_level_updated_by_id_27db31c0    INDEX     o   CREATE INDEX staff_staff_level_updated_by_id_27db31c0 ON public.staff_staff_level USING btree (updated_by_id);
 <   DROP INDEX public.staff_staff_level_updated_by_id_27db31c0;
       public            postgres    false    237            *           1259    19896    staff_staff_profile_id_f1607ae4    INDEX     ]   CREATE INDEX staff_staff_profile_id_f1607ae4 ON public.staff_staff USING btree (profile_id);
 3   DROP INDEX public.staff_staff_profile_id_f1607ae4;
       public            postgres    false    233            +           1259    19897 #   staff_staff_staff_level_id_02e5808b    INDEX     e   CREATE INDEX staff_staff_staff_level_id_02e5808b ON public.staff_staff USING btree (staff_level_id);
 7   DROP INDEX public.staff_staff_staff_level_id_02e5808b;
       public            postgres    false    233            ,           1259    19898 $   staff_staff_staff_parent_id_3a0ea1e3    INDEX     g   CREATE INDEX staff_staff_staff_parent_id_3a0ea1e3 ON public.staff_staff USING btree (staff_parent_id);
 8   DROP INDEX public.staff_staff_staff_parent_id_3a0ea1e3;
       public            postgres    false    233            /           1259    19899 "   staff_staff_updated_by_id_ae4985b6    INDEX     c   CREATE INDEX staff_staff_updated_by_id_ae4985b6 ON public.staff_staff USING btree (updated_by_id);
 6   DROP INDEX public.staff_staff_updated_by_id_ae4985b6;
       public            postgres    false    233            D           2606    19900 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    204    202    3282            E           2606    19905 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    200    202    3271            F           2606    19910 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    224    204    3352            G           2606    19915 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    200    207    3271            H           2606    19920 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    206    207    3284            I           2606    19925 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    204    210    3282            J           2606    19930 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    206    210    3284            K           2606    19935 B   client_client client_client_created_by_id_a8280477_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id;
       public          postgres    false    206    212    3284            M           2606    19940 M   client_client_followup client_client_follow_followup_id_fc5601fd_fk_followup_    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_ FOREIGN KEY (followup_id) REFERENCES public.followup_followup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_;
       public          postgres    false    229    3361    213            N           2606    19945 T   client_client_followup client_client_followup_client_id_45370856_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id;
       public          postgres    false    213    212    3302            O           2606    19950 T   client_client_followup client_client_followup_created_by_id_57569ec6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id;
       public          postgres    false    3284    213    206            P           2606    19955 Q   client_client_followup client_client_followup_staff_id_04b7a4de_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id;
       public          postgres    false    233    213    3369            Q           2606    20141 T   client_client_followup client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id;
       public          postgres    false    213    206    3284            n           2606    20278 R   client_client_journey client_client_journey_client_id_2e449a98_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id;
       public          postgres    false    3302    240    212            o           2606    20283 R   client_client_journey client_client_journey_created_by_id_88c21422_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id;
       public          postgres    false    3284    206    240            p           2606    20288 O   client_client_journey client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id;
       public          postgres    false    3369    240    233            q           2606    20293 R   client_client_journey client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id;
       public          postgres    false    240    206    3284            R           2606    19970 T   client_client_schedule client_client_schedule_client_id_e3ee1cbc_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id;
       public          postgres    false    212    216    3302            S           2606    19975 T   client_client_schedule client_client_schedule_created_by_id_9b078863_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id;
       public          postgres    false    206    216    3284            T           2606    19980 Q   client_client_schedule client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id;
       public          postgres    false    233    216    3369            U           2606    20146 T   client_client_schedule client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id;
       public          postgres    false    216    3284    206            V           2606    19990 N   client_client_staff client_client_staff_client_id_196dca78_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id;
       public          postgres    false    212    218    3302            W           2606    19995 N   client_client_staff client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id;
       public          postgres    false    206    218    3284            X           2606    20000 K   client_client_staff client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id;
       public          postgres    false    233    218    3369            Y           2606    20151 N   client_client_staff client_client_staff_updated_by_id_35a02e55_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id;
       public          postgres    false    206    3284    218            L           2606    20136 B   client_client client_client_updated_by_id_12f0c54f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id;
       public          postgres    false    206    212    3284            Z           2606    20015 @   core_profile core_profile_created_by_id_d0c22ea6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id;
       public          postgres    false    220    3284    206            \           2606    20156 @   core_profile core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id;
       public          postgres    false    3284    206    220            [           2606    20025 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public          postgres    false    220    206    3284            ]           2606    20030 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3352    224    222            ^           2606    20035 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    222    206    3284            _           2606    20040 J   followup_followup followup_followup_created_by_id_bd33bd23_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id;
       public          postgres    false    206    3284    229            `           2606    20161 J   followup_followup followup_followup_updated_by_id_aeb66564_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id;
       public          postgres    false    229    3284    206            b           2606    20050 R   followup_followupselected followup_followupsel_created_by_id_d6e0a19e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user;
       public          postgres    false    3284    231    206            a           2606    20166 R   followup_followupselected followup_followupsel_updated_by_id_f571c189_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user;
       public          postgres    false    206    3284    231            d           2606    20060 >   staff_staff staff_staff_created_by_id_750bb59d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id;
       public          postgres    false    3284    233    206            i           2606    20065 Q   staff_staff_history staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id FOREIGN KEY (child_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id;
       public          postgres    false    3369    233    234            j           2606    20070 N   staff_staff_history staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id;
       public          postgres    false    3284    206    234            k           2606    20075 R   staff_staff_history staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id FOREIGN KEY (parent_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id;
       public          postgres    false    3369    234    233            h           2606    20176 N   staff_staff_history staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id;
       public          postgres    false    206    234    3284            m           2606    20085 J   staff_staff_level staff_staff_level_created_by_id_591009cc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id;
       public          postgres    false    206    3284    237            l           2606    20181 J   staff_staff_level staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id;
       public          postgres    false    3284    206    237            e           2606    20095 >   staff_staff staff_staff_profile_id_f1607ae4_fk_core_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id FOREIGN KEY (profile_id) REFERENCES public.core_profile(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id;
       public          postgres    false    3339    233    220            f           2606    20100 G   staff_staff staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id;
       public          postgres    false    3384    233    237            g           2606    20105 B   staff_staff staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id;
       public          postgres    false    233    3369    233            c           2606    20171 >   staff_staff staff_staff_updated_by_id_ae4985b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id;
       public          postgres    false    3284    233    206            �      x������ � �      �      x������ � �      �   �  x�m�[�� E�a^�(��=�)��x�#?�ջU�5�\q�B�J�����~���Y�y_�v}�k���Cn���4��[j��dv�-~��a���h�6�q��e�S��Q9�a{��X$쀊�t��;G��o����[����E�:�Ԩ g�u486���	|������W8�-= 8������cO�-�n�j�y�:���H5P�!Ɵ�W��j&��e��֛�j�a%kvߑψ�ێ�E��u��UD�?�iZ���E's��]��-�mY�{_��n�dSPJB�<If��s���9k'VJ�S����R���e��\�b�Pj����<�Ɉ�^�Jj6?Ȅ�%`l��J��,!�ߓ��Dm����qW󳐚MQ½���ȄK阆LK$������T��2�P
e.nK6u�Dhj:�#�M"Kptp����m_>�\j����
�$��c�/4 !�!�����1�Ss�F�v	�����l�� S�ؼ �P�Ȱ �N tbs�����{�UC�.a[�M.�SL��ܙ�=	vi#�H�ϛ��hY-7�P�������mB$��"ݩ�#X	���A|�TGKć��K=h�W��.��A^�Mމ�h-�Y��˱��MO����R/��b�/�"1^*Ɔ�	�J!�痔�?<��      �   ~  x���Y��:�g�S�o��	I t�T�". ����T�b�͍E�����u�鼅��8'��pk�$^���ol�pˁ��p^��9_��V�h<0�Q���fo/�cƻ�"�fs�"u*J�85ȳ���zzD�d��~i���v��y�qwY�u�ZE�,���,���� ہo�����B��G\&G~>.=*G�ND��F��z;��Jc)�p�#AT�z��{��έֺt)d����}!�`*@�ޅ�'���8ݴ�ՠ��P�ݬ)��'a�E*�l�����V��$� ������r|]�k!�JH!eY�]H���2�F�}����.�DG����PZ������qe�(�5i�C~���6�h�\
��]�;��)�߅�}��W���㡯l55����1c��?;��	��p��1-�0)a,�{�h��^�������FH�r� Ŀ	1�/���9�aM�ˍd�$�U�цӒ4IN�Lk@�լٕw�3�2�$�tUJ�>_
�!��Px��d���u�K�\��NS��C�Ǝ3n�*�	���k0a]��p�)�M��������� ��IR ��&c��P)ԅ�LvN�`��nO'�&��j7���9ٕS{f�K_x<w���%^:��Bz#�_	�!Kޅ辰�������8��(<3Q��CS'�7�acsۭ;�[|~�
U<VN�Be�&+3�q)n��WB�(���O��q?ƺ��f_��~�FX0��C�_)�\];���O���AG�:�����:A��������� y�#p,$���wP^G9��(����G�O��	�z����IL{�E�#y�(�� 8*��g{��-Օ2}4�R�$N��n�	13'�?��59" x��7��/<��fy��z�E��[o`{&�V�d��n�m>r+�p��F�2��[�����U���tM�_F��r/e��r��^m���|).�P��"O��/|<��ޞ����Z,B!����x�gL��vs�y���Z�b0��<Vi�W��n)�4K�z�r�w~ �(����k}q�W�� |D���d�\G�i�*XX_��
�e[(v�֋Z��p��4Y���E�֗�p*���'H;b)��o�k���3;B�`��������/��d      �      x������ � �      �      x������ � �             x�|��rI�-����|˶�_��@"$B$@��e��n����TU����gy	@����]�Pi;##|-�p_���bdnj��	��������d���-����zn��u���Qc�h*st��Īs�]}���w���ݻ���ʻ��~3������e��������`�W�Ox�����1����K'���S���)�';E��&�F���~�ևQ��������n������iu[�6���9?[�;�ʆ1��6['O�fLɂ�N*��m7q�>�h��&/L}^��ﶛw�?[(:���h۶��y3�Z�PF������㘴ጱ��p��e3��F���f��v��m�[u��j�j�;�Z9WQi6V�ʨi����8Ń����wS_p4W��p��ۼ����V>o��j�X�3���Uʵ�4�S~TY�T�Ԉ�YJRR$UG���^���-�x������۟�މ���cn� �y�Z��>�����0f��JčJ��C�F{���7w��{�?��g�Uu��t�tC|��{1�&��;J�F�U���Uk(I:����f�O�=�&1{&۱пm��Mh�&�����t�d��h������+]���𬖮��~]m��d)��ҵ-�e�5�c��罔9��*n���K+�s	cR��d�L���ҏ���e��zY��"�1��H�k�v�Xug�$�����d��5�ѓ��-��.$�8�������9����o�q0���;�$�$ :��J���<K�ˣ��i���y�2�:����ݯ�7������n��̦v I4 IHqr�Uy�R]�֬DBKX�d=��X��CLV:�p�{��5�����^�Ξw�I4�I(�;_qu���s�h�TI%�����\�����:���i��	�e�mbU��^���q� ��4���R�d�M�\:7�f^.:�@�h@��Vv|�>��?���
I��0�u��� ���k�ma�D��eEhy�����F��N�)����w�+fTL���(��U�T�����ϫa�\m?}�cy�?oT�c���'[���CN�w��c�����⣟�����u�_M�y!ʼ�G��G��ηwB�7�Jns��m���`��WK%o,s���W ����r|�����*�*yx����������=
_	�)���̔Xb���z��i���憊�4�4y':�;}a��9n�G�~f��N0/��5/ia����5����}�d�$3�M����߸�K̈�r���Qg.Y,��kIbi��j�����dс#ـ#9�xc���r�z��J%������G0*||����n�tܞ�e;;x$x$�b�/�Uy�x�R�Je02��h|v0P5:�,X��/���#���><�h_7g�4�P�A'�@' 9�m{a�9\�76�g1��~5�*�@r�)ĥ5/�����8	�꺽��Ё)ـ))��V��|Z�w��\ȯf��:��W7��dS�۷0<M�����y��W�i�c�c�����p�K��*S��Zp��I�Y\�������1�ȯ�����`�;q���Y��YR���9ۛ�CP��L������E8+m�bJ'8��n��N���D�d��Q�sZ��#��}v�ۇ�ʲ"�gal ѯY1��GV��n�v�N�F�FI� mK���Tp�JyJ&>%)c�
^s[��gX���������w����P��P J�tV��_�dt�E-�aB(g�Dd�86�r\�y��k���_���߿���?^o��쀕j��s�U3siV��ʍ\Vʘ <���Ŕ�DdbܒK?=��K�?�쀕j����sH�ug#�e��u��z��8�	��SJ�W%�Nݭ�6��x�'֔-�%ղX��ߴ�KoX�ZZ�gk���"�G�l`mu�Z�(Y�U�cvKh���~z���t|�j@�b�s��j셡�8BPV ���х��$�R�)��E0�t�~"XZ���tdHUH��|�h����E��"�} x�G)#�=����O^-(���i�7^Ҹ����T�u�e�ΐ��}/l4�X1�U�,;��1�E������ĥ`���� �j�K�cU�y/�b�:
�$�'��XS�Y/�|��|��y:��/;���������U3瞌���ldAk�M� 
P9&�碖��4�ķ�O�����tv�S5�SI�۴���^����;}����t*޲�"��Ϡy����]��n�h����N%\��+�z�Ł�e�z.s	BN�Ͼs�p�y�yG�y������|�z����T��ξj���ʋRN{>j��z^q���Q��Z�	e��V���-������䳫W���T�tΪ�sU�W�8����G}��P.��8k������z�D���j����|�UAuA��X�]�sB�����12�I~i,U�)���� j���rJ�x��QU'��-p2�w��x��1"��y2#�܍�F��)
D��.L�����FL��K|��բ�խֳ��Rx�r��$���˩��=b�$uY|�������0P&���y�B&w�ԶVg�&Z@����3>ye~,A&��ź,H�G|��Ġ/k���g&����F�I����9oR���p�&J��3�,�	�L�����[���U�t�4=�7��Gl����X�D��+�<o�Y�h's��e��H�J�J���}�5?g����FGӛ�(F�����R(����[��S�n3�Ћ�5���i�����&<��:&rGY�
X%��	<��Fk�L�v���y<=�\�;XdX����w��3��gmY5�R���<�<\��򱎞����)�7��t�L��d��pwf�<��0����;����!����br-ra���F�nM� �i �VLtN�b3]�^������ދӀ"Dt�FA7\��������˟?�������"߁Ӏm�쥹��A����
z�P���UJ�kq,���������˧i�����
��������-h��L����01����n��~�~�n��o�a݁!Ӏ!�z|�v��AI;\+p�X�W`�Ffq��_&�>��>��v�H�#�7݁�2�s��G^0}�R��Σvx	6 �^���z�xX�����nX=��_O����u�L����E��Χ��P�Έ�@4G-�4T=Z�}X8}��#��0��؁$Ӏ$�l'@ƪ:sd縓%��[:����W��R�>z-�2���<\s!��B��B�w8�|۫�B83V��sꈽdz�U��z�9ޯ��}���ϯt��접m�"�N��3��0�P�����{����J{����__�l-��~�>ܸ{�A$�@$#�j�'�η�(q{X ���K!�|�|�1,���^�V�~x�z���s�� �m ����C�z��cM�Q#���|�#���Ui0��<��8����{��M�頓m��Q�\gc��Ho�
�; �f��ҊQg���	\����������|�t �6 �t�#X�ߕ8��g��<��Ș�`�u�EKo����tH�۷Ӂ&ۀ&���bUή��(U�c�Հ�R�P�ؼF�	]�(�o�w:����`�m��;e�X�gKq��Տ�)ze�&�x�H�N����j�i��<߯����ݻGM�l�����oª���f�c��fQP)�@x���ʂ�D�(�~Y�7���n���GP��)�x��J�J9�ڏ6�]>o��|��6�p�<�\sE�V�⅒�����G��sؖ��T^�U�\�,Ns�,s��b?��<V1��ǘq��"*S�1K���W�������k���ƶa
�s/�Ty�rL�xX�x��Q:��f���������%#f;���)ĴTcv~��5�\�MD�yz�FV����5��>�7O���߭+�&�}�� �k ���<�L�:M��""�>\>��x���b�u���������������	�W��r��Ju*K���\P`B��̣��^���QFuz�Y�T�����    �sf|�K�K��}ձ:�Ҫl`Tr��<bR�@���`RvJ-���q�y^��>���n�M����k��ckc�����ԏAj\y%�Z`@H��R��|z�Fh���ޮ��㯛���x�W��W�iT���#N��ykp��+Kg��4%��FdQO�t6���zG����&D��rĲVv�X�kʔ����p����*�� }���\�U�||�Wӛ��t�5ʺN����֔�j�wF�B(e)�m�R- �~sDD:<P�ۥ��v�ɷ��9��~91������(�_�w)1�$���;��(�8qӋ���-����^�"�/e����wjD��4����§���7��vu8>ov7y|�*� *|��;�[��/�c�l�|c�蒑c�>�*-��[�$ܦ��a�Rׁ)߀)ǥi�)V�di�&�� �Zz���YM�ݐ�K���- ��E��`��HSAѕ��J�J9!|�C9P���Q�m��76J��.����P�	e+����aO����ux*���?�T��2�:�����pauN��hA4l,
\�O�A8E��WV��a����ɣ�\�\9%mgg��;�B���1I�]+�c�"�h��ʗ�����j���s����]�|�����Z�sF��!.E��ɧ&-Gv0rD �P�n����l^�|���M��z�O�]VI�30TX�t�..E)���,
������dH\�|�<�l�|O���S)���=b�)=�MK��>��,�m��ǟ���5l���)i~��6:q�@'O-nmS�����J��`^'`�Ad���JS�ƒI��~�+�xW�:��]�`P˘N_��Q�t<�����s�!l���8��?.N�9]>�z||X������(� �E/$Ū;_#8�R�rԁ���腯c�ʨ�Eqq����֦sԌ���P�5ʃSv���D&��b��cM&P�k��>m%+RD�쒝Pe6%�֫���
B� 'OYmC�����>�ɍG`(�c
Ɖ1eYCs*�\�;����i�"�?o��ƶa	��a��^zz�>�!Ge�\pj���O���Ɯ݂�M��[�ğ/�mT⬁J^�NY����M�-�����*�""љ��q6�������-�n}zԹ��6*�-��,5���>� ͆��IǤ�����K�����p�Dķ�	�H����{��2�|�����FE�(�>�.[���=��~�*��#�mh65Lq���N���R΅E*�T@*��#���3�u-�>��//×�����~}x�G��~s��R��(��(�;�S��'5i�\��#��i	��)u�_���>w�\��}�Z��i�-	��Er\u TET���^K�Xl��i��e;0�x��X��[�o��X���:��E�j~-�.p��(<�z�we�����bY����7h8��K->��c�� E���:�Us�R��g8�M�jJ� �w"K���f��ϛ������~8?�]˵��k�F)� nUZ��jV(Ę��^i�G]����r�)����Sx��Ԥ����V���llB�����s!nFx�kQ�4] �~��D�d�/��|�A��l�j��f*6��"#=�JE�T�0f-YJ���R�b��_�w�7�j�S7o�@���M{\�e�*�ż�`v�JA�O���L����5�e�A��W��x��}��1�m���H�1T�K*:d�E��y�;��^2j����J)_��r<���/�D�w,}��Χ�3�չgD��y�؞;7���Y� 2Q��-���v��x(����2�:�P��7�q�V���2�(�P �S�` �yBT��F��TO�D�u�?l�q�.��S)zH�Y���^�RQPU\vzT0q���# ~'j,�
�BM�7*;��;r�!gA�v� ��-nFUt�c�VЛ9u�D�^�d�yY+u��S�;ѫ���帿���M�д��J;�B�vNJg�HJ	��d�%3
�Y�� �^0�����_��#f�b��) E�ϏQ��b�M��@S��tͰ���ĥNM�C8��'%���Q�� ��v ��G	����:���1e�<��xp¥�Gz"�n�U&��i����o��:7��d�U��5x?R%.ΫD�//�X6�|y��%,�����o�Z`�u�)V�Z)�\��%\�@I~#N=����l,j�K���J�G�NA|�v}-�)�+p*c�QT3�`#��Dn�%�������c.ڼ#c�28"�]vB�f~ʷ@�,8S����12h�6J�|�q����FH�`��������!a�T)-�K�(��2�$�)���Nqւ�s	~��ZTv�D�y�� 5,`�k��b��ѳbUO��$��H0RR�!R�r���e�����e5��H�{����1���T�ц$n/� ��%�e�TƕU!��B[%t�n�79l������&��;b�!f3���%��6��@��I�&�8F_�h9e�q�ސx\o7���yu�2�ӫ�R�Z8ڶ-�U'�K"�9�a��Q&�+:���`e}�� Z���G��k����!�n�~$Ū�Q�](��=�J_�g,�2��%r^�9�?�#U�M]W;;��P���igu�����sVx�*�Pݶ��B�1�"
�*���×��j��ev�
�P��a�m�Z�+���EMC���{�|M���,�,�z}��/+�-�t~Ϲ�����h�J罙V��e�0���T;M���^����eY��ۯ����a}x���Ε6�D5�+p`�lCVg	��Y�9F�j�r���W�Q���}%�O���r�?Q��c���p�)ސ��YN��v��	���0:��::�>�hϕj�K/����'�K��ѱ��`��4����X\�I M�x�	�
��h���2�es란�yC���3�X���~4�.��Uyf��+��kOE�#B�J�H��,s{���c�z�u�j�X�g�P*��	B��x�n��jLA��U�
���TT�"mr�
�o�VxO��!�Ϡ��dX5|�d�5S�\TPS (lDEʴ�=��@��͑���g��ۋԑ���|ٮ⠘i�DQ�\�5�֊�p���Q^�r�(�8��?_~����/-���*�$��wI
1�E��D���XzyV�2}4�U����P<%KΙ��	��TC%���6=��%2g�NԤWI�U1�W>(���������'풎>o�C�
�V��U}��p;�ڒ�3E62S��<F���?���7h*+�i�}�Ї�T����X��;%�-��«{Bt2Fi�(�l�']�Y5y�u�q���)Q�"T6��k�eqI�TPGa���.p��^LR��>�>HOoNc;�Ԑ��q�=a#�ܬ�)�[�@ԓ܂C���:zM6�����ꞤJ�v$!xCg��Œi�\$i�S���DG5��G�����Ն�֛������n�F:��!	S:=%�jgEZ.R�N�J�<�J��)��v�-��@�����uʍ]#��$oHB`��RB�3_2Y�=�t)�	����cd�KD���Ex<P���󝿔B��4oh.��tj߰�搉�A?G[�֓��+�[�Ԩ!�~u�!����Ka���4j;������; �������z������a��DC��]���e�iz�Z����
y�MZS@4w��'a�)oK+��K�GD^�)/���~u
A��O�u�0�����o�0��^��Hv.4b>��F�R���U�Tl�p��e�u>��{�폏����^�n�IG��7�p�u�DI3?�(k��8��XI�R
�]񂧲l/�t>���{��Pӎ"o(2��*ٱ����l?2�z�/q�WNE�٘�*��}l)�:~�?������2��*o�2�>�N��3HI���a"���+� ���yn��Q�e27�Q����[=�>�udxC�7��������*c���]z8s"�ʲ�9x���Egu��j    �^yKG��7T`����g;�O@2zש�b=E�)�g\�R��"A��N�T,�{��=����jp"��JS�Ρ_&��HM[�Dͨ�1����$�%_fQW����a�>lI�c���6��`��D�V�:c�18�fʧ���dE0X-[��S��(������vDxC�>�S҉U='T�$�%�u�ʥ ]��82f��8/l�
N	��I�xJ�����jm�z�"����sK��4 �g�� ���06rC�.���~��9D��y�0��\��XC��Cu�5�������Qd���S��{F��H�>���D_��%�~5��_�ok����NU��tl��e���b�nmR�EV����4G�h}��H8����l7�b�"i�����y��d_A!CP���g��;�����
k���|�z�Qq�NM��ۥ�2h�\�����H"= yʭze��:���թ�����'ʎzo�7��N��sLh+K��e%�(���:���+Y��KX�0�N��,��Z.~�#������C��z�HQ�J�ʞnQ��(�s6 �8�*/K|֛�����nn}G��7Dp��nSW=W��6J18~�H��J��	)��g�.����~�+���;���� ;|[c�V�	 �D��Q�^%MBȊ�eO�\�,�r�(���wDxC��W��/�<��I��V�4��g��R����X��ᓶ���#��B�����)H!����*f��z�[rF�jW�H�lh�ꪧ=� jh3�(��2����{�JgJO`�B�
�Dg.�i*5z#y�x��l� 5T�Xǯ����<2��a��%ʘ+�[S�(yu�&�2A��nNY��䌎0o3��y0±��@�j��<,p{��K�>4G!K�K%��ax��O/d��狭u�Pg���t���<-�d��DI�P�*���4Bp[9�~ٞIA��m��Qe�U�-���ZX���#�Y�t�LĿb<��X><�T5�N��Te8��RvtxC�.�w�}X�s�DVFrܠ�������������r��fx�FP�͵��w4xC������ꥇdr�Q�ԩ(I�$e�i_#K����O��Թ��j(3��N9V�3�k�$b��0*�(��>Z	�O�(�"3���W
9(� ��*��7��FIJش�qU��+骪LGpn4����2�˴��8�f��֓v�xC�����us�a��C)��>8b��Y e@�"���~^������jg�Z4�s:���)/����Xu�dw�$Q����qy����i�=?_o|�j�6�)~��aN�U ��ˮ�6�K�؎�G�e
U,����%����o(1 d�[6�=[�m��FiH?������aJ��`���O�J��;�����]3�9ސc Vt����,�_�ϠJ����(� �p)Ě����������0�\�xxG��7`L��[~�*2G�mY�D�c��KʻXc/���+ՙ��_v�I��u�xC��&ۢQ�:���j@�齙�LU<�'��r ��Ǩ���V�����m_G��7��h��Eu��{���P�)ׂ�^FO2�5gP+��x��#	�_��/秳�K��1���q�Y���/�و�)�	��"|j6�ŗT�j��[wt
�H2��$PX��Ъ�TES�+��� p��@	L��,en�V�ÉUM���qOY���v �!Ҁ&:	H��<�������4������Hj������I�������4��N��A0�]t.�v1+ҳ%m�W$Y^�9���=ȥ����JAX�Ӭ᫃m��h�4���G�����s��M\ �zI/�dh����R�iY8��6��4^G�A4�h
�o k��j
�⑈
��cT����RnY���dnN�7漣� ���Sm�%�h�K�ECih�c��	iI�a8�1nxu���������s1��X��� �I9cq��W�d��W� ��|���J���L���C����2�h(3�1�Nau7t,H�(g%��*>�R9��YX.�1�����X��+��2��.���䨝�B3M��1�H.!������6�����_2Mܝ�ꕩt�DC�ָ��s�qU^�o�X��<V�$f%:�%�q��7���Qq�O��#� ���A(��g���X�ԥK�vr��|�E�P,��Z�(���������M����;:��� n���ƴ��.(8�R�i�֊��|/W�-F,����l?�����?=�v�DC��ƶ����,"ę��9r����4�ʌIq^�������~8k�v7'���S� TC��Fw�~�^*��I0�Q�)�N��Fx��U>.���W�*~zě �@UC���3��V��a��ewƨ�K� ����A`tƀ�,�����[��8%{O=�3��V�hi58�E�?��SY&Y[�p\2'hHY��4� ;��J�^���21�#� Z2�I���X�e
 "}����h���{%+5��e���8~�D܁��D��kҶ�_�>y���"T��]�x�VT���U��HTLI�)�؁��B��۠�9��&���;E����
v�ID}\��E^j�:�������x�i$:2�%���Wm7����G=qӄؔ�o5��*�ʥ�:-eVS%��yw����n�vdDK�\��U��a�?�F�"�xL�y��4s�%!�H�>�����1|{���_����q��R�h)5xedgg��K#��lH_Ϧ�#X�+y�S�4���}��2�k��z:@��i�ZuZ�:?<��Hஎ:S^4v՛1�`�6��ٞ������8h^��y�D�ח)�Qk-�o:�hu���b	��Y[DS��Z	*�Fhʓ/.�����~{ }ӛy��ji4x�;x�U{���r���RǙ��Q!q����"��'r|�H?ns�b��^v�DK���ک?J7K�UN�XL&�#0��L�+�K����S�w ����e��2��,�wƶ1߻������v�F�!D��)GQ���_���2��<�å)�
���h�^�6���2&�D�3eѣ"IA����hK�B�����?ٟ	ʥo_t�DC���]�J��x�R(R��*#բ�(���y*�^D���T���a�_��_��W?�A��hl��sZ����R�Tjd����ΨC���D���c�����v�DC�A��l�sӄ&��T9C���Y�E��,���|��r���F�Mt$DC�A�6����M�~f�yI4*]��[�AaJ�	YN�d%O�WNZ�bl��4��-"I�s*�f�+��1j2%���u�^z�Z>���V��չ��zF;0��o �1m,Z�����"���}4�D��Y@^x�FZ��\�_6�ܶ���l�h�6P}G����<5��
�D͕�Y���#�7&E]����㇗��&n+QDG�A4��/un��s+�t��h�GGO㓵`������Gp���0%(��?u1�S���.5�U7�~B�$��&����T]8~Z�兛==J|�<n+�DG�A4d�|�4I�Ή�R*7B���=6nԧ
���Xk���ߧ��~�6�O��pS[�W;��!� ֽ��r���`~��ZQ�
����cVR��g�u����a{ܟj����v�� �I�m*�͈
ゑj0��ы*�,�`0Q)�l����bo�|EG�A4��$��z�|��8zH)�
��&B)�*=K \���2�q^��#� ��B�D���/ا���It]XШ�1j��.,�%����S������T�w@�s�(�r�`��4U�#i�-�(���7���f�<|ܭq����W�;��j�Q�k��M��^��a�T5��$VA3�E��[��W��z:���i %�m�0Z�G��)4N�@�E#�
#�74u���jf���S{��x����[Wڑk��C��8����
���AAc��ZҤ��G�i��g�z�;�/�I���Լu�J��Pk ?��<$��A��Uf�5��Q�:��    ��S�>�̴_�ĭ~�<�p���q���OtdDC�$Ѵ��jg�����)�Q����#�2*��
a9|�����E��~{����r>WJ�o�1�����i>��Gi\�	��#�n���1ϫ��e�7��`z=��j�7�0����9�$�#1*Z�HɎ���s0%GcU	W��4��R�':
��� ( m� V/��Fl��S���P1��J¢@ߪ�ٮֳ����6ёr)����=�z�0��J�T�)i|m*`Y����lYJ��y�����z�r!֖n����"�#�F�)uNZC!��0�Bt~Y��yG������mr�#� b�ŷ{ahu���MR4�h̾R�_�pYpQ'	�J^�EuO������NEG�A4�@rl���V�yWe�&�B@��=��)F��ꪗ�#i�~�F�������h�9���vV��&���QAmhX�����8�K �.Y�÷�3y��)�~qQ5�Ps �휟��#�ϒf�s��]�c\,�s�P���Hw�I�vTDC��ux��|�Q~����R�9J��2c1������n�u��`g1���IG�A�<� S� `u����'#k���it4�6�MRJ-Ò�[\ӽ��N�	�0۞�N�s:w%�l�R�'��i�a��f���3��?:M��t��҄h(M��u<X���q��RL������PS1�(j�P<f)%����G9������^<iGtB4D'@�T���s��-�d��ᙦ�U��T�{�����e����߇����'�����It�&DCi�Kt���r΋���(��4g�!@��.�BzC��#5oo*DG\B4�%`�o?����A��TO�����R��(�_����y|ܬ������jG\B4�%@;),�Ih%%�4b*��������`Ge-Z�ˣ�����Ig���HK�����h��`U��������+}�J������&�JjK٦)������� Yt%DCQ��"�r��:O�!�A쭠�u4�<����� CZ�ӓ�p��D1	�����CZ��Dh�JIѸj��au$4�T�d�g�ʺ�C�O��y��s�|#�%:b�!&�{�����Z���H�Ri@H����]- U1.�!W����e�� !
ல]"G���٩�<��M��pH�9Rq��2���"#q������I����;��!���:�:g�aES.�szʧfCW�>�'G���_�t��!:��!��l���g�}ܛ���,]N%���!YYEY���wI�g�+��o���P���0m	AZ�����o�(����Y�p�������B��+՟��!%:��!�cf�}��:gvu��@�q�B�)	�����*8cy�q*;���G�ҩ������G��|��2m����fl�U�����=��#�7FT�-�7Fo<�T�KH���w�#DC;lF�[��^��g�d�A�H�(�R�0ލ� �]N5�e�lOo�_��6�а?M`�:����hHI��t����V�S�&�g!}V6P�b�5>q�b/�,�>PNj�H.>��%!Z����s���L���� ����\z.�܌��/E0����_�!�������6��(J���HC/2�����4��e�U���DR�g4�.�Tu4�n�gO*"76v��'���*�X�L�1%�	���	�B�y�,�
�������m����� A���m"��.!�0ʵ�Ҫ���j5�SI�]�)�A�%S���4j�����y�΄h�L���R�X���Eo����ДC��C��C@�����r8�����ˤwt��t5t&@u���8�NeQ�piH��W'�R��.A8�MMlY)}w?���_���{��:���8�#:A�&H:�X�]���+|~&I����1��S�T>^=S���m��#:!�`<�&T��y���y�ԈH���q�<�I�r D4"��Ey�����N����֎�h�NP��-��U5�^����+�"�J
R$B`Y2UV�����'���O��#<!� cٞ��Uu�B�5�s�1�Hu=����b�y�R�[\�����k��m�#�SO�g�?�zQ.t��>!� d����\Ba�Tܕ(ͯ��z�(&:G	�쓤����5DGvB4d'`��p���*��K �f��P���k*�+��1'�R$a��~�S*�be�� ��,�ՋZg��
��A/g��ӖF�:�x
<,e��S��@��HK��R;��!:!�<`��zy��"{O%rTr�j�*�*E�p�9�7�����j������h(O�4��V�E�>�K�Ě��cp4O��ŬJ��K�D��4q��[o3*�	�P��g��j��ݔŇ� 
f�gIʣG;�`�_�D������~�S_��:sM�tD(DC��f�����.Y5�.�'ٙ�F/�'q ��s�����w�~<�7?�u�(DC� ׮�Ǣ�[�u��hjjH�s�� ?%���k�$�]Q����%
�Р ��v���5Ȟ4hI�aw�i%��B*$c�%M�e2���0I2^�SGzB4�' l��{B���L���S*4(�zf��c�H�f.���%��_�[�n/SGxB4�' �=��W�FH�@Hh��wH`�X �a*���OG"{w�8&y��N�	@EG?�Vgᑜ"�a4nuH�$�(�HE���!}��Oe���AIGmB4�&��wlD`:ϱ�Y46�ђ^�����tr�e��qɠ�)�M\�[�lGkB4�&`N��a�R�i�y���%��Q.�1d���h��"�������e�������L���5f/S-P�Ը��A��8��V���/P��/�0����J���ĄhHL �T�Z5���h������c#�,�Zj,ˑ���*���j{�O5^�
�ԄlHMj�ncV�Z�P< s,���I�L��EvN&Ji/�Q��_�'i���f��;�vt'dCw��ڍ��z6�YL_R��/;J��'"�e�{j@��5�������&���OȆ�Lr={��K5�r>rj�U8�c �%�% ��[� �d��n;l>���q�	�P� ��3Vg	��<.��#)�Qq*Hf���0T���V_����|��y��NE
�С &��Vg�Uc���,�(�He*�ʓR���z������/����o��:�A@G�B6�( ˲=��jnA'u�l�uRTD[I�:j���E�+�`���q����x[��Q��
�r��zV�/1ʂ�@/-Z�ё;3�xp?-�_�߽�2��M�&*:�i�R�K����Vi�>���
�\�u�!5���qb�n���\��OmВ�	 ��L`u6�X�J�n�)B��!~���3����GmJC�~�I�	ِ��)�l
���T	`,=�ZiF���p�л|���!B��_moǰ���lHN�7��#�3���R��c�ޤ���b,���<ǰ$���v��L;��Y��tvP�!9��K�Σ|JW�m�|����,c@�*Bi"�_P-M�m��?^��5|����s��MȆ�P�v �:��'\u����*�,��jaZV���I�\�}y���	�� �jߎ�<3s��2��*7uǐ6N�#�p�8�%--��_N�;`�P�������:ן1�i.��,����$.=�r:B��]X��t��W�a��}�D�#5!R Z��ؤ51�%Ȅ��Ii@i|��SY��|�i�E(Ӽ��5����F�	��:uǞ.�\8����U�&���EKW))j:�ԓ,�������VVv'dCp.��ĉչԋUo���&o&5�0�g�(����h�������	ِ� +�ȡaU�O�ap,�L#��0
P�K�-�d�WJ�˫�<j(L���!�l�>f��J ~B�*pHI�C#�w�$GSmu]�|��v5ܭ�V/緈���RC]�N����O�T���
ҋ	>;�#���iX@I�3��O4s�޹"���,;2�!3|����E�p.4�юE�Z�z    t�����6Ǵx��G(��u��Mϙ�LȆ�@�E������)j墁g�^�����	��e��;л��JdGcB64&���V�zoY=�	f�H�qt�O��օ,��7}\�?��{G[B6�%�	��(�*��-\���	0|$�G=ˤS�M����)�s����SCW��-�F�IIU�Jv̞�-KGye2Xe�^z���)͌�'���#���oP�#+!�����9Z��2[��qFg��V��֎�JY�"5��?���������<�jW��<62�;3&�X*'�(
ٲ���b*���T߹goj�5+;����Y1myICg���@�|H�h��1D�/��,��,;>����ϧV��o�SCSB�T�����p�a� ��BA�si�`��Sz�A?^�'w4t9�'~�߯	^���Q	���iKXU����%x�zNh_IM�rcՖ���t���������,�p��!;*��2���3��jF(������Ě����20 ����T��"�a��{������r�:B�!4!'m���^��m��	������`��u6��$E�T����#/d./'�#4!B��:|�jg�Jl��UʙP�48!���@�M�:��x�=���}�ݒ��ЄlMH�zm��]q4�q��I�C�1f�+��X�jH�I��LEG��O�Y�3Ё��Ȅ$�������{��Ǟ��H����/�������z�)��%n��ʎ΄l�L��t�����yN��]�i��$��y�864��Z͖3e�p�T�Ȏބl�MH�0j3U��ج ��<���TC���qG�"��D����ϛ�z�p���	��t�Ȏ��lO�C���9�^�P�t�D*����C�n�ߦ�x�V�%��"'Y�+��j�OPGW���p*� ��o�Vkw�r��sTnY����o��2�M������9�W��]剹q��6�̹ƭ/����)pj�-E֔}�1/U��w/������S�Wv�'dC}���ڃ�hU^�Ŝ��O�S���q�4T*Y[q4䲸suO��W�_oņdGwB6t'pdD�/�V�w?H*�HT3C�S���'lm�KѪ���i�A���jw#�#;���;���:���˘@��M!���U]��WN������[X�A0��8=�R7���w�&dCo��ֻ�^�
O�G0�`��oHs&QY�*�s���*��#!�5N�f/�[��NȆ�θ�!,������L�u�AP\�z�
� ���u�����
Ժ�E���l�N��wf]��EA9�-%�l��s.I���q�B 5����|������O��'�uMu�'dC'^�g
Ҫ���Rd���h�` y�Z,�CH��m�R��q7<n_&���ʨ������l�O�����
VŜ��� �$�K�.�j�8W".'S��Yp��]Rv(dC��#9I�s��`����T���	al�L��ൕ˥8�������x�Q���	�П�%g7�Z��A�Ń��D2)��8�4_һ��������D�n���<!����g%=휭�����:K=__�>��&r�0��
���S���:��!<!i b��z��2ܖQ�<��T$�bG�w��j�KH�H×�����۲ّ���	�b���iu��`�/��(�;�Goi@\fn�YR���ǩ��:��":$;"�!B?�i��K�
�>�8�E=Ԡ�#>�y�J��S=M��P���t�z\oW?��`5d(�NuPVZ1���D`� 8���"�bU�Z� ��op:>M{z���
�����ܱ��A+u���h4i�y�)�\�Vf[�Yv"��;|�a�?%���
�P��[�Ll��9�Z� =���)Qk2�"�L3�%�ɘ"��twT�p���hOȆ��%��尪����5%����hJ��d|pc���"�2yOkP�_6�e�nz�dG|B6�'��T�iZR_�ܙ̌����>��f5҄���H��E�74|.��۰�jo�Jpn�-�K�s�TD��+n�Bj؊J�"5NqQB�������d�:�����u~�5e�Q��E
�t�Vt�����  z�dp��Y������K�}Y��"�~��x6�L�����M��1;��!O�\��P:B�� wkR�'�L�?�l����$�I���ӧ=�/sM�:���O���BT���=6$��ɡR(K�2�e|����2��q�x����ˎB�l(TeiW�c��=ŘgZ�,qC	!����c��1����B�i��~��^��@UC��ubl�΅ J�(h��f��?�V<Q�DF �,y�*�֛�y
ِ��!�=����3�%6�J���jb�ed�JE�����D�~
q��N���T����
 ���4V/Z��HF��TT����	�p���2wIb�k@�Y���Y�p���VȆl �\�V�����Tp6�:����)�1j��,"��Y�����u��^"p=�n�3;��!\�ڝj�8���P�Xk"��H�6���%�j��c~\��/�����ٮ>�~r k�V�*���VgiR�+�_���I�����q����R����Ұ��fG�B6�*�u�����/.JK�B?���o�d,�CX6(�w���R�(;���OA�U[���ٙW;j���h�����iHiЂ� ��Uk+�ZM"5�[�Ѥ�M
 �n����Y�&�`�����7�����F��<\����K��5�Z˷�׭��HRȆ$`M��'��,�f��Z(=Z9i� Km3�$.>�nI[�[���{�6^���g� �lR���!$��Y���3`!C��:�@CbE4�&��V�&N�W����??��^5�)`���`��3�D�����*)=�1� ��J���ץd���~�@���O��[��ѥ�]
*���&Ģs��p�[Oc�,���J�J�����HZo�^Y���������K�Ց��Y
��{@]D�%�4h�'9�����7�2��T��yApuWxj�S�4�\>��%	��*��ߘb��Օ)�얇�5������������'|���mֲ�P!
� ڈ������= K��&�W
RsP���YO�������6�lhS zu���V�{�5p�X,�����`�1�{/�R��i�pj�\=m���e�@�W�����
@q�A��ҬJ�U��<QA�0��Fr�sA����R�<7�]NjG�B6�) Ʋ��S�X�IC���{�Q���S4�&��/��6���a5���������RȆ* �s H�b.��A ��4$�����^��j��fu)��
��kXџ��^��2�l(S �L�(�sj���-�~4,NE��@�=�NK�¥�`+ԕv;4��,Wf�ѧ�}
ʰvR�X���BCs]<�ْ�;U��A�5~�������8���v�us��ڑ��y
��NXm����9� F���PI��jM\9��s����DM��SȆ0��W�`��E�<�$&�R�D�F1jP��_�X�������Ԟ~��|j�R��D'3/3R�{�M:�4^��N^��9��:���H���a��=��{Rҹ�%*a
�����б��
��$�$4U*	�o>N�B���M�,/�y}\=?-R�E
�P� J�I�L�d���"�#��S	+�(�<�4��.B/�>V�;�&�WǏ������,�l�R -x�e��ˀ�3�p��(�����	"���<�-��E�u���vs���4��rj;2�!S�|��V/z��*�~�MT�j�6�G���K�K��_6�wTt�]�6�/'��[�����
��m������όT޳��$�d?hRj�>�,8�V=��;��7�k�?��B�8�\���Ѯ��
�a����$�r&.4ǝU;V�i��� *b.�H�z�M-Tp�Q�WȆpp��VI��
��H���F�-$D��V��~��y������f�lhV��y��%�2��Qv(f��1e!s�e��^$�4�#X!��b����չ���+`~SM��� 
#a
X����ǧ�ˍ��^;��!Y    HmmBZ���Ƌ
�J��'ujJY��Tr�pY�W��m55�_7V���7G��[�!Z�:}��:��*"iͩ�.S�?ɕ��%퍓E��?�o����4�z��es��:��!Z6�)�b�K��p��S�i��,ƌw���/�i}R�=����ˋ��U��^0��F�Z�;FJu\Q��5O=��ьO���:�ԝ��eG;Z��U�`m�
Z���Y�<E�(!$i2E
���S-V#�]�Q	�p{�:�!P�U�yVê9s�,p�hFI���`*���$�hv��S�9R��$��M���
��	�����&�R���<��bY�jR1������t?�����w��i�TC���ڢ�z	�����<ʐi�{��ŏLp��]2���==V=OA��q��N�چ�΍��<r�D���aY�3��j)�RUf�	V��5|���~*V�hT��FU{�v������}��;5^�yL��F���p���i��~��z��O�`��_w۟�X�j�U �T���"Qms0	w� �&)]��R֚	N��U��j����T�jHUH�k�s���J[��T�dHGWI����2m�-�(�J���S��%���P�
�Y��{>�$���V�d�w�Jl����Z�NU%�8�����0� {�|�)�V�
���-��^�*g��C48�4�c�/�FO5�F.���OT�v�t���%��:Z��U���L�չ���"Я��Կ&5H�N4B':�fp�����e�bj���]�aQX�_(uV!)%��@ݫ$��@�Z���b���÷�:܇�^�ss�UG�B54+h�h'��ՙKs�IN���a�H?P�1舘J,E�Ww�\���~���Y��^;�Q�P�
����>V�b@�M��c�����
����/X��������8lw���ꟛ����dUӵʰ:7��"�ve�Ê }�c�d/�GYvl?}�G�	����A��v�qm�'Z����Ĺ�R���i`�E|��(H��<{Y��[�O��������L54,�l���s�e*:�Z�(5\� _��IK5�-����cp;YEu�+TC���#MK��h"�T�F�TA��	�
�%���������������|@�Z����j=;U��(���.ݑ�X�����v���Dу2.��X��Y��%�R�n/�_�{���{��z��	�
2��|;�i���q��:���@��Ku�:�
�W Bj�dsu��ȣE��GV����)Ay��e�v~:��p�}�U��TUb�Z�{�kX]��pɓ>U�P9��Ä��DG���x�=��	RUb�S[����ԇ���~n��S@ ο��W�N�m�L\z��O�ן���
E�y�cruyM����l�p�u��;@1��M���ƣ�?��NǨV��x���B5��nt�Ra�,U	X�Qք܉�U����,iah��j&������B]�͢������qV��m�2W�A����E�N&*��8.E�eF������	����p&�=�F��j�-H�o�W��ſ
�t �BE��R?`�����)�����?o�+˴n��XEm��i��]�rq)e;�ޥ�C�cB�=�XJ�Boe��C��3s�z�:�����Fl���ե�fq�$8<	r��2��Np�e��?����J(�����j�,�uV�������,H 3����9�RD��ʶ��#EIOo��R�V��j�,��v;V����Xi����Db�R��@M�Z��m\��p�_.�j�:ՀX�QMm�O�.�4�A�b-�j>�j*�X��Q�.�ѳ���������E����"Sy�s�w5pؕo'Y\��k�ϺV�V)��8�̚�8E���J��r���t�םv�W�d�cשRs�Z�M�="�h8k+�n-�VS��Z6�������4���ju8���@��Ϭ\]&�F*(��Or�6i�c�%ȉl�D�����������ְv@��P�r:�"]hKR�����[�!�SL�ii�������^u ��@�8v�+��
�2cK��<hB ����pf���8kS�Lנ��v�Ud�-�6���Q�vB�K
΂0ΊщAJ7Ux]�&��t|x��D��B5�p7�]���h1�,�TW��?�bF����yK,=8�!n��� T����B5 �6m�O%�eǅ��m S�//kF���`�2bZ7nw�6*�0e�=���jP,8�ֶ�y^(�jL�����,�AY�$�����}�z����N�Ε��v8���P,bw�>!{�c��f(Š�[�}�[/��\��T���������k.��X��{�H�ru-�J������X���AH!�~��
��yl�zi�Z�~�^��
d��\�յ_%#d�³��QU"zI�a�B�i�V,N� �7�����3�j�k�M5�8tf��)cܪ[Q�M�4���,b��CMSL�RV������������	C'�����L�z�"x�j��e�aVK+�6����|�k�C�PZ2۞��b�ra_� �,qD�A�)YDv۰�Jŧkm}e���B5xl5��|�r������hQA|��
$���}�e}D�����j�*�*L��:�.��!R�γdCm
7 Z�	�5���sR��J�^���M\E:vT�~)�%�O�<�92�e�M�!y�R����7�_�J�[��B5����vv�ՅGQB �]��/{�x>�N���������������%:�
�@V �Q��*�ڕ�J�odO!��"��`��1D��������}wz9~;>��}>��ێ�j0+�o����E��$L�J�������[&��P���7��߶Щ�B5@He..���pU�XGD!�`F��EE|S�0e�%̩�6����j;6�^�i����Nf�s��l�����_�r�nE�p���V2fc�jҶ���@`ݵ8�AU����m�ru����5���`N�<!����5A��mq�	���'��o�SW��
�Mvr<�.o=n�FJ�i�#��t�T�a����0��{���;�
� V(�u>邋��_�Q��v.̽�#E��P&+�O>�������-;>����n�ͪE�yV$�e�f�PH�,Ţ��U͵
=岽ADQ���t�j�(�\uHTjV��$�bJ�ĤDa呀:�M�/����v�.���y�����8+{�?uA�
��v�P�.�g�E[�GyC�4����TOI�4��m�����Sy���=��5�P(T�B��G���\]4}�wA��O�? @�r�|�v���g������ߨ��CU�C�P2 �	I�r_J�.�R!�L����FR2	�T3�`���_5� �C�P"�Aٱ�X]����T�hF*�Q@?�c�<����	?�ʟ���3��B�ܔ���8�j�)��:A��5r����#��i�%���`��F~�~}'��iw:ܟ(���=k�7�æP66�:�R�JKA*�V�c���@�Ő�T��5o�	������������UJ�P
䱶�9��+��)�@�>���/�NW�9��A3����CM�D�$
$�S�������j�J|�`	���LL��=_�N���(��B58H���\\2R[���_3���_{V�-�Y�S�Hb�۟�tv���//s��j:����\[��~�6���TƔf�4~��H)�?�`�|+ C�����\�D�j *���IQq�Q�(�C�vMV]�C�Uղ-(T���v��7d�LPV�ՁT��B���.KJ$�8d=i��&j�[8ۉ�?�vM��qۡ�vz:����:�
ՠT ��� ����,(����Iy��@�b� 8I�c�y���^�Og����m6݁T��B��}P����U7�@y_˲�De�Kg��eB>�mPx�;Oѭ�	�zP;N�A��v\����K� �s
 [�|WXTΧ	�&;��~:!�fM��E�S;�
� T�Wբ}Z��<�ymd�|C�    ";20�F0̹LoæN��rd��v�P:�j�)��j��X4�Ԍ6� �_��I�c���0Ҕ��ة������T�I�L
l�3���u|>	�b�!f���]�~�e��+�u{�����,׫��R���E���&t��^����Ȩ�V$և�s�5����?��T�E�,
���S�ǪZ
R�F� 4���BC �Ɗ<R��Oۑ�������r�'C�,�aP���ʣc�d��R�?��������q'��aTY��bS~����>�}��߿�v%���B5@L0��\]
(i�*W�`/ �&kpل�$DPHQ�ؒh�����àP����bu��6�B�����"&u�����Z�S=O�n2�zB5��c���k��4&34�9����(L(\���7�������j 't;b��B������	8�y&=K�^��m�PնG�o�3!����C�P�	���N�b�9�	F'£��\��QZ��f	�n�1�j�}���ݿ������p�n�L:�	� O� u�QX]@�ȈD���QҬHB��a�h��m����~���[��AN�r[𝲸�b3r�dY%�r��3��$T��f�B���0<������|s<;�����G�4ê_$��p�4`����GYg�\$����-�bFM]�L�?|�5�Jí�KX]Y�Yc��MQ	�Q�!�ER�4�PUV��z��\�gB58Js����$U�+��9f4͵{Y�!���9m����Pw�����ÿ���_�otE���hB5@J�tN�^�٧^�A$�g�H�AL���C�����NG��ٱw}��%T�.�n���	W�Z9("�]�D(>��ܘ)�f�/���Ӟ;v�����`vz{:�#���N����X]�%��7� �]�=9�h7W�29_�����i�px��ۿ�}�&T5���m�W� �Pr�jN��)��ΘdS��t�@���{~����ov+��:�	� N�RO� 
�K���]��Ł@�$CR�h$ng㰞w�f�7aΏ���y�C�P���k=��;
�h%<�pDX= ز�g.d������U�m�s��Z���'T�?��v�V�$͆��)(R�|T��p�eD��#��������~��ǿv������?��j ڮL7�� �h�)X���.�fJшIH2��ח��Y�ųeӃ~x!����������4�c�_���I����`̪�K�)mpi�p��p|������ݑ���#���9�Z�A�;��	eT��k��-�4r�`��?H#=�s�����W"�*G�:�	�`O k��$�����
>'lVR��1��2�	ɏz��t���z;�	��O��-;vK;���!Ȳ��!���i� :;!�5�����߮ �k'J@� 
�C:ݼX]Z�}6�@�&��rb�a���[`���u�w���;�>=f�u��(tD�`9{���E��E�&�Јf1H	����IN�`�����eѨ�o��]��o:��;,5�IN��i3�4�c<2k!,�-��m�*�N�ގ���S;
��P(;^ޝZ����㘐�ǡ��DiH�l�j�mӴU������t���� ӽS����$��y���S@�6�1���M)�����x��]�T�n@(���&������W7�z�#"�¿6��I���G���?�fZ �n (���Ny�.�Tܗ1���.WH^CTe�aD�"6Y�����`��,���i��|:|�iB��n�(�Uc۪Zu�a�b�)PB[���:�{N����E��?�+�k����:wS���n�(�����ږT|@z8U�z�Q�{!�u�fn�������s���$
�X��7��CS+\���B�MP���bԃ��Lq�pB�}���2{p�g�S5H��E�,�եgR�\"\�PwA�� E�l��n_E�m��������	/�o���6�]�^�op�y��n8��	q�f2.���e�T���ǐ��������\w�qS�c}�î�(.3��z.^���"�>x.�6Fu.�Cu���\#@��P��BY�{ۥ���E��fY��a�Δ��5#抹n�+<�//ȸw�[�����z�{|�������j )8;v�|3�?&��oH��'�ʒ84�ܖI}w��vV�E���v�U� ���G	
�e��+��\��)��ɫpd�?�3��v<��>���6]-B�}5�,�w��X]Z�r�g�B; o���"�X�Lf[(<��^�������6��D�n *�c嫽c��ņ�괒�
X2ΰ�DR�ɠV;V���������G�٦�y?�^��k*���U�.�Y�!*[�5�����%�1+�l��[��q^-:�S�����/�� )�ೌg�WT���b�f�L��|XRĺɎ�j�)��u���S{�aeݐ�^�0M�Y���ri����$ҷ#U��O����7/�C��-:�3c�*����M t	���VX�����(��L�½m_.�������YF�G���R����y!�ꢝ��&�������ip�3f�ɄT{�}>��m�ݽ=�2g[���0)t�I���bu��'*��׌����0Z���5q�t��a�����/ �\Kw���p�u
Yέ�j^ی�X��f����3z��QL>���z�|x�=�0��J�,�na)`��M��BJ5i��#B),��5�i�q��(�Rd��b�EFOw����m����U,Je�k�з�Iu���7�ֳ���,��0)t�I�ɵ?��ĸ$ �%,��9�!p D�8Z�!~0�xz�#�����ݭ��p)t�K��Al�.�BÐBB��p&(;j@�dSPB��A�����#��i��?�sc��t������t�X5�ZdK�D�`Z���%��K�Ԛ�};������?ï�o:�t�G�[<
��M��jZ�p�K��`5[kSU�O���o,��M����L~{�<Ʈ�@��Q���R󝳪�*J�����.U2I�*f0Rko��y��9K�v��F�[0
���?V��l(�X�DM*�(�A8e�lQu��
������3@��kT�aR����^���~�*�$>�:�R����2V�p`��ŵ��V��2�O{���N���M�p�t�����6�"R�.�P5�W�(��6�TR0�=�|�<��0�/բR ꔮ�i!��h��99	/?D��!�֐L'�<�χ�����e� �?�M�p��N;�w��S�`�`�X���g�|J��Z_/����{��os�m�th�E� x�����_�/B�B�Lz)>`��2`I"���5�����H&ѧ#/�O����:�R��B����bmhbG@1y���(��JԫJ�!ۏ�@�T��Y�jO;8
��Q�ۿ>W��dw�`b(�ɚp 㣰�������|�r�`�~�)��;(
�@Q�������@^h�K�q(�n_"�G�������e�~�3���?�}~��"�����Eg>���ȢNq��\�@"�!����$�X�qcK��əK| X� uF�0
=.����2�{%�4[���G�2'T�U,q���nw���fo�>���B7p؋��t���"8Me(ё��33�0 ;�$���2�z�Tv8����[t���U�4["H��35�h䥒R9�hMtYE�w7R���j��~��;,
�`Q�;i�&�
q1M�	D �����XY���hu�>V|�o����{�;��^�F�4
���f����y��͹����i��~��YԂ��zܿ}��||�z���L�?���å�.6��^���^
�m��pPc�kh�Φ(���Ĝ[��e���8��O_���kǵ��)t�NA�9�~�P�s+�j38>���?*�6����@<���\���V6��F�����:rn�J�zf��v��2��z�-F���}B:��������u��B7��O�E�t��b<Ǫ'�be�#j�2�QO�8��    f�{c8��>�=����
���W1.{-	1�u(�&���v�Y�+�t;�U�z{�{���~;�
� Th�{��L�EA��� �>�kU���Ij��Yo.�.;6������<�`:^�A�Г� ���.{�i�޹<���%T,��C������CA����D�&�m`Ɉ��+�p�?��$ʒS2'�i�I�Ѣx�AA������9_�S��
�l��Gl���dJ�#�$�}����s�Ef;����y��R�n�*�dd�	�jy�,8�F��S*Ng����P߈�9����ۧ��C��J��tl;8Ū���	�����T�Ục�'gƩV�a����R��B7 �z�=��U��r|HɌ�����9�9�q�GO��m����x�]f���v�Q�M�'�x�����$��fMd��E��A��a�\�Ť�X���=�_v�Kߴ���B7�،m�9s�E��Uf�t�L�`":A͐D)~�D��X������Q;�����6��s�.	�k���4�D��\�Շ=r��\�hz��C�9��Q��n�(��T�����as���@ѣJ�݃�&�*[�,�/Ǚ3|-�t ���B�v[W�`T?��lԺYO"-s8`|�H��_����q�y�o�f�n�(����)W��
���(�� ����ʧS8�T�拾���pc�:�����\1��e��IS��;�#���ߍ�!)��>�f��Ԝk��AO�zBe;I�`��%ur�D��="%���Gbi��K5h��7|���?o[�:�	� NP˾=��յ�1�8�2T�Eϧ<��Ȼ�%��(�-^�G6��	9�]v\Q7���܈�c��ةP��8Σj?f���g����۸�;�	�@M`'�ݺ�ե�l=g�Xx	n��5�j�uSC�5�����e:��?��A�s:�	ݠMham�����PK���"����dYv�C��
~�|���a�k�Q1��	-��N�(�eaG~3��	+�k��P��_*�ڸ����|ɋ����������^��!��4C�͍Ȁ���*��yx6�δ-��צ����9�W� Lh�ȡ�E����WĞQ���B��h�Ie�9��'&B[>�E���Mv�O1��k{܈�K94�8h@;�9�W�R�>P�����Fp�5���%t�.���ϟ\]nNtƻ��&$��m����D-rȸdn�z�4\Od��4�Z
��N�r"k�)����p���JV6t��#�5��P%t�*�ݶ�M��H��1P�1g����h-���w�Z��i�{�f�N��[��J�VB�e��9�_�LJ�b�dG�ܛ1�<䀴#�6l{:>v����a7w���w ���R��ױ��N��.�Ғ��3AJ,ESz+t���o��ZU� &t1��V�v��]�!P�8�����Q#����o�G�+���|��Y���\wX����҈N	\)�~m���#p"�z3|P�f&�t"7UĹ)cb�{�8�fB��֮~H;-{D���%p��0�0�(�pmG���/������	�C���I�X�m]�(t�~@��)iC�H�JNz&k�}�,t��f�ԀLh>M�3J�.�:Ec�
�p������3��B�[�Zۿ���̀��zq�1��	���O��bA9�5����Rp,ǉ7^�d&8��}9<��M�׾�YB7��B[��+,������0=9�BD\,�Xzm¸=��o�����n�3t{�k2��	M������#��m	nH�SM�c匣�q�۾��a��^��M�H-�h	MV}��9k2�;]�`�ag�d]q\D����M�x�YYZ�n���C����&!�]���r�*��̎[K���2 �\���b��D�'�A}������}�5�Z!HoG�j�80b*� ��hi;Cu�ddDZ�تA}�8��7~��m=�����V���[Oz���D�����O��8
�6���dV�]�*,᧿����u ���ğtv��r1����39
_	l��"Ɋ1�z���� w��s���B�� $t ���(�puif���'�Ϛ�0���Mm-��X�"�w������rM<:��@G d�臭Y�5��*V��	�r���|D��[�o=�/]+td�i #���x�d^���U�R0C��*p��*�ĩ'���gq��!�<�4�Z���cu)3�YAmR�	�M�'�L"�D��?0P�;��է�e�q=�p�i�#�n�pm��:��P�uK�J�p`� ��i�����҆o{���78��G�>]�e��>�ۂ0��=��4����Q���l�gl�3�l�"Zy��h�U�?�D��� W"�(��8)?�8�Y�)T[,�Ͻ9	��;���%7��=���v8��� O�-��Ew]�1L�����`�8
�C�\���������n�|Vۺ�ض�2v�TՉS����p�&��z�(N�ɳ��7��h��"���� _/�W{�!H��v��.|�17�ZSE0%��QY��Xs��Z���-����gځ�ֶ�2��֦bu]����a��Zu5lt�Z�Ѯ�l�M��|�`��Rz�i�#��6&�niǓ� -Ii��r�2�S)t�ZXOY��+;�w�
��C�0z��ik�qu)����>:���J��I������ܗ矮4�5���#L�_��ڊ�Ř�,e4S�aw�`Ga�-_�?|@>��⦃�0\���� �.O Ώ|��i�4a��9��$B�:"��$�s���ew:�ЗޔIM�a�m�ﶏ'V�2�(S^� ��f5���5'�O&��d�A���D�B���;�3�4�؍�tc`U.�`& �O�����*%�3�G��������}w�#���}�\g:���Fh���>V��\~��D�5�>�(��SQ18�}�[�J8�ç�Q��f�/5�09�sR�XFnk���IH�(�nɍ�b�\a��j����3����z���"L�I��|M=.C'G����;��m,)V�-��e:��������~S�7L�i`"�۩���,%H|F�wH�GW(��p�8s5��;[���M(�B�䅽,�]v\R�6ҹHƬdV=f5Q��Ձ��K�U9�1��������:~���� D�w���rɡ�T�݆��$��{���L��0����8�����/z8���4�t�mP̍��e)n���]Uب����j���M_���_����������wx����f|{О�+~��d�٘
�(��{aЙ�w2�In��V�EAm���~����0!L�	����6M��%ڋ�;/Y���L��Y6��*���@����n.����_�Y&�n��xmG��y��]�g��k��� �@aCa�̾�ʅy�̠���k�g:h�@Ch23�iVՂ.>֬ʀ�t��)4V�Pl�v����$�M��tx����>�l�#���Z0y�0��q��5q�8 2�R}f+�p��>8��4�]����l�
��4DAI�*�g'4�Iت�� ,�{�ݗ��3���������?h+e�����AFg,<Q-�{�8��Sd�ʏ~��v���/ǟ������ۗ�'�\��48ڪ��au��q2��<IfǠL�-p	�eo�r�w��/w��{$%��]}~�a$l�t,V���V��ʑ�����	�6�0�R�R��f�9������5�7�i0 �e���G-WhG�j�:�_�U	��B�*N����u���r��Ju���МW�lԬ ~�/c��E�ŷK!guk��/����Jv�J:�Ӡ?`�g?�SK��4Wǎu�RS~�H��:>��F������Y��x�1;���}���Lk��na�)e��j�f]�i�1�s� ��>�~9�?����;��`>h���q�N/�rM!g����!z��b���"Lz�96��>�Q���y�i��0OT���x��A#���Q�f�"��d@�Y��Ou�LA�g���޼Ω���4    ��,�xM.�e�2)���2Vf�?
���R�Ɨ	��V鉣^�̺Î3j���7�ao�ʕ�0QMS�٥}L�<�j2�S�|rӛ���{���ߑ��g�}���������d��	��眄��!h^xx�2�!Ml%��J[*�����L�$L�4�|0��:��X]��q>`%64R�M͠'���	����������L�>�3��|"�?��A;���[�ji-˩��4���t��3 z��y�[Mz��1k~��Ysg��yv0�i  �3�$V����U�Cu|&erl�5���/%����OoL��`Z���`�f��T���kg�b�!���M��0�����Hw��D�������%�A?���Y���Y��LLIH�\$Tx)��`��	
���� 5>=/����ݹ��ݎ�j! l|� �iA��b#:�����x�9�Cb�� nx�~�0��i�`-�z�Xuˍ��T� �5=�e��(=R)&�������В�0L�����Qأ��h
�MZr&(���q��f�>��g|����ϼP�w/��߯G�C~0-�����X�i��-��.�M����p�D�{'75����r��?�u�ԩ�0- 2��0-V��(\ $Ι�j5.�`��d�f��HI>����SMw�X�k�aZ�p���i�["�J!81��J��.�>jW�B����~:<���y�p���><�´(^�έ�b|�YJ!��ȪY��I�/��p��h�vt�����}��������~0-􃗢�W�\����T�q�Q㣎ٱ�'W^U�������:�Ӣ=x5v������q�S
>:*U��T�7*W۞��#���Q:|�};�|>���B��|0-��~�A+����#"�
���j�<����V#�����?������ώj��6���)kӘ���x��HG�[�R�&:U�����s���3̃ia�1���>�����Qq����f��`K���ls���`V�ԁ<����Zt�g���<&o��A�D=z�W�ib��S�`���an.y}���]�����މ��;� ��4Io�t����0��?z*?k��ܲ�5ohOk�߁=��׷Ӵ�ե*��d�^�!G�']�����()a�2��^w��oz�M��`Z��mφ�5��$эT����b�6"@l���#��6�h���n8O��z0փG��Ī^�f5	OT�ص��m�Eje˚�*��/�G�]�-o�KM�`�v��~���gQ$�'�)�!���Eu"U~���i0?�?v�����Eeq5M�i ��W�"Je+�s������q�E�J�?�G��)�~F����ݗ����ۜ��ƾ~0��AP�.�bU��D���`i
H=�m�����X����|:�`�����/G|�Ytu���i�̨U[���+��4�UqlaT��
�欨Ӷb�?~;����\7�~֎j��o�H�*F������A��P2�l�q�B՜�������w?�_��SS���֣v�����|[:���LR�P�G�>�,�X� �e�-��6��_X��v�k:Ӏ@�ݮ�ե��S�#5�82���d%0��9U3m��χ������Ch:���>�e��W�Z��$�O��
�vպ��Z��A����25��k���4�f��ݽ��E�E��N�a�Xۉ�r�1����X��˦�sq�����\�ؑ��x��Pu�U�a���Y�U��]�Ȋs�E�u/&8}mG*�,9ʗm9�N�f���];��@`�]�ª_�H�s5�4�N�	�ɸHV!=Lr1�:�������x+Z��a<>���|�.a~E��i��K�i���� W>Q�nsV��;���N��}��o���C�0*[�53��ii�@����D�6�"��=-�U��q�\�/���D�H(^_O:PӀB w���]��q�L�3�A�v�ɖ��5՗�d�;uz�[��;��]{�:l�`C�	�e�"`Z�옣I�B5;7���`a���2?1H�����8e��?���t���0���|R���	6]5���|5̪���|�|��n�������s(u-�v��A�0��Q�M/a*�`��-�4�bb�o� ���XL����z���%�.IԺَ�j"�\���U�tD�QZ����١m��Ra�hb�[�/�L�����n�#:�� Eq��6�B~��"�2�9ч�G��JtM��V,��ߡD�%�զՐ��@"|�o�b��@�F~H��Y#�SzJ�F��ϧ����ϳ�E�gM�;���E�m�;W]$�o��Ä����
�U_QN՗�t�����W�Eȹ�|��:���Ea��%V�j9js��Kф�[F�n(2�y��V�y���g�&ǿ=?n��)�4H؍o7su1O8+5E|V���	�)��E�R#b´�c~z|~90y��������$��P#L�A��v�1V��Z�p�g�T��Ұ�>
),qj�Ɠ޽�v�^�����������ϭY�#La�S*ܥ���I�a
�}30W0N~��	�Xo{��%�����n�kѧÏ0~�̩w�:YbK)I"�#����|��$F��Alkҏ�_�H�w����oy��Ð0��bۏQ\�'W�h$���)@�3�*<.���R�v�m|�������yMW:,	�`I9���W�'�C�,�s�|kp�QK�
����H=?��Y����qW���S�I�U��V�i���S.A'=8ע�`��Ua�o��}۽����@y7��i@%`�;�B�.���-�K��LV��
urCLQ:�b�e����[�,��I�O�H%z�S�m�TB*�'�FS,�k�借�Jl������s�nR�K�4XF�ɵo��Q8���1�bb�>��bU2��7�4M���g�Y��� ;�h�^�Ô0�������ե�Sr��a�vb ��)�{Po�<n�ܶZ9k���J�W�i�iǥE
�%\�9�S#�u^_c����V)����~7O��z�o��/����i�%��N�>Y�(���ҥ b	� 9�����A)Θ��e#���'�����m��AL�b��
w"B�����DD��R���s�35�Ʀ�6���1�,X��>__��7�i&�����zi���j�kTPP3늃20wɺ�m����?��R٧��:�	�@L5Nm
W���$�M��:Չs��@'7ԠE��Qn����Y,���vR�t ���f\{R�~qW�#�p���s�T塅�
�(�tQ�1�KǙ�<3��2�M�h¨�����eZ� ��F���AQ�(� ��Ƅ�Y��ۖ��Oo����^��m�%"VݾVX]x���SV����	��u�"�UMZ�&�>����|��v����m�%��S{���K�2U�=\�8Z�ny9�D�j5��n��`���ݢ�q�4�aK�[��({r�/�����S��g�,��c"�������Wvo'
�o�U�6�F)�n���2fl�K+�t�_T!��E8���$7��׷�'^�K�����]��������n+�c�,�2FX �04��IÊ u?��F�1�w���u�mGe���w>)[�/�
�ڊ�l�WZ!aѤB�����ʄ�t���֤W�6�F����������cJ�L���Q#%B���f g
�܊zz��b���z/ax	��w�*��V
Qhb��R�Krq�>˒�3e[Z?�j9H�O?�� Oa:�	� L`7���e�_CA��~��`S�ŷ���_`�������'j��^���j &�`�EA�.,�'��8>���"jqH[�1dZ)��<��/�����f���`;�	�`M����4W��]��d�5A�l�&G����V��W����6������&l4a�c��*�.@��
����}P� $D# $))v�Bl{��5�w�\��	抌��f;��A�0Z���
V��WG\�J���,ZP�a6K��R��&R9�|9�<wS�������ĄѲ���$/z���8!h�*����q�*|�E`    M m2a�	�U����X��U�8�f�/���͝��Y$�jې�vB��x�S����w︩g�p���M�_�(60Xh?_��J��"�����s�zi��i�΄mp&)�N�J����PW!��BQ|�n�u*N8؁��4l�۷�V+�vx��v<T�6a��\&Tn��yD&~��a>=��]�DL�Av���������|��Ԅm�&�v���9�s1Pr2�sFBN(��IYDVHP�&>}��~����/��L�~�˷j�.=4):�H\�U=E�C"���`ٴ}�C��+���̻[o|�0a�	cƩӜ@��I	���s�����g;�LtN#`���?�S��C����m�(VWdGA0WK��	�|΄�9��� ѯ�����
O�m�������1��7m�.�~�H8�qs!��Q#S*��@e����������w�_���8�� %l)a��_\,Ig�b�M�̘�"��&��lD��ZIǗ���U.錕��ώGj�%�������X��u-�E��q��An�1L�T���&����o�L̄m`&������RB��Z���"dJ#��{��L=������=���#\B�w��;�	� Lfqm�i(&x)�Մ��eȒ�SR'|�1+'��| i��gɒ���ڍf;t	۠Kxȶ\	W��"<B��0�@[��)��ǡ
C���E��3��ˁ�3�n��d	C�����s"��y�#��H��D/?r����"ڷ�\�ۑz*���۹a�j�:����0�vʻ�JBq����D��M�r �h7،���Ɣ�޳�|�_+aX	l�wz&n�J�5H�X�eǼl���N�<p0�5r;�u���\�c��%l,��tP"\]�$a�G9ș�/u�8s��`#���7�����4+=͵�g$uw��wi��Ȅm@&���i �����!g3��C� 0�%$���l���_�O���ȄAj�iCª^��;�ȗ'��cG��)�=�!���v���t�3�wHDgi��s��L�g��m&7W�F�j\����هh�@����tvʈ���Ge����x���n���	c�a
�޸t�P~s��2��*"�3����H6���Y_�����v��A�0,ߵ/����%���dԐ$<��E,��ʦ�u�`��ΊkAGt\S7A�f�puM�k��WD|��{ɛ	�z�u����V��L
��n��l3a�	��w��@?��J�3�V�����S(љ�����&�.������n&zl�/a|	C��.�au5U�GB���(N�$�����XDȼ͹����E<oK:\	��J�U',�Z/�Ƞ��C�q���F'7pHJc��m�����q�jJ;`	� KkD{t��K�A��5��\{2xq�܄��S������/`��g�᧹H���\�6�����\V�a��}�Y�H7|�`qF9f_F��MTz����vO������?g��zR;h	�@K`;��--�rp�$2Z�b;d[O�XkU1i���'5����e�Oǧ�O�������Ԅ��2�-�e
�H����:V��8��+D@0�����g����;�e�^�7����x�~���頳�~jU)	�0���
 r��Ҁp[�*����֗��^�~�n���N0nm�ruy3��U;B��f3
�A2�j�
!��������m��Û���g��������SUr�O M�H�����RF|�E@�zz�_ǹm�2a�	�����ե��O*L��l��S�9ᎇY� �o>�9���v/o������f�60��Ē�jW�(Saf�a姳XD��I22M5%3ms�=�c��}VbY?j3a�	�s���ꢌƱ�s>E=+�S��i���Qٍ������f"��9;�	� M�y$��\������ݮ�]	y�T�	G����ؗ������[�!K�Y�8=u�9���T!��~T�9$!�?O��4لnݴ�R"����u����f|[+��j���LV3h�ƬGRb)�,�I�b����x:��T�Ö���d���XUr����1��g2R�5{�}�s�1�L���˹u�ˎ�i&�j�J���$;#�<F+Yi�f�vɸ�c���l_����=!2�s�X�A���e;p	ۀK$�/��B��>�M���W� :	\�іQ$��G�ץ�w��/ԠJ���9���^��a"2έ�y����F���|�b�����fP��Sv\Q,��t�a�8�}�ޚ��z>�!Q�8�����!|VI~D���;��t�f�	����:p	?:qɓ]U5"!W��zp�^�:�Rs���[^,=:Q7����|/a[x	?]^�Z�K>RݔrTB�E�D{9p�7�?�>l�ufy���Ⱥ�OV��K�_��ۮPKBR�4&]G���ق:�?���҅�	=?.=?�1���nz�l�/a[|	/;T{�����gV!���7�Vl�n�Y'���n
����7��C��-��������UcOd�8�jٰ��
5�S.:	=Y��>?���̮��-��W��-��\�q���VN�u�!��EF���������e7+W>�ҷm�&a[4	�Ug
��$T�$�"�i�Tl�%�Ln�bv��TsG�����z�;��E���l�Ԉ�L�k�M��2)(���0�e��l�`�Z�i�5��~�2�V�Im���x�!"[c�aO�;iG|K�[��o��_�������ۭ��%l-A�Q�r���&����RKUe��.�p��Ɛ�V��-���������:���/ՂJxĎurviو��:�Po����#���Dj�-C����{ʧ�GJ�S�AK�Z��&L�h��3��B5�i-x��imŻ�$b�M����3n>v���,UwuP��m�%�T�>\]�s���Wj�hQU�����a�Ĕ��V\u�����H�&a4	�����4.��r߫��:߈�p��PG�&5�է��w_�fY��x%a(	����suy�S�F/S���b&��4 ,�T��eۡ����_��*ի���$l'uq�������!pJ�5��/�;TW�.�T���?Q����׵Ñ����mO;qu%��,2�����{J�j�!lZ��C���#U?���5|�$l�%�nzw�O���T� o���s�MG��Y�!K�O��mYtFH 4���Í���$l�$aGۡo�r\K�*6kD'2�g"F���e�>󶍟��t�N�k ��H�GnjwpU�JG\�����ܜu��0S���N:���-w!��H�n�K�X;�4�s�.�0)���-Y��Z"�ב2k����ޯ�������T� xk���M#�#�y�J�H6?�>b��m��Y���pI��K�aJ�S�n��qu)����NT>5Ź�9���X�{%�h����D����wH�A�@�qQNj�.���RI�d梙*+n�6�)���l��*Zs�2w0�����Нo)�v�dj�CNl��0��MrHU�\*�6���}�>�w�����:�\]�"s+��̋���h)��N\��%�����h�:�4�6�?��v�\3;i\*�L���$�S���:�N�-����i�Ŏ7j�"�t[n��b��5�I��uea����W���W�^ĭf��ߘ�_��D�m "��k��aU-ݣ1�<�����Q%؎�-����s�i�8������ ��Sv�P�a�c�ި��ԓ�I"��C�slL%I�cuN� ��*#�~�����q{:�����S��k�R�$3K3��}��<%|��@ד����ۢrah;�N+VWL�ao���  ��(R��L�!�(��$236�s`����,���4��M���"9F��i9[%W�H�Y��O2n�Da�O���5�p l��]xٹ9�/"
�OEOj(IkVg�b��&%���c%����{������!ۿ3V�H�л	�\~�����,d�~�FW�����6xVL��j��*K�0��6��`�P���LN~0��ۯ���;}���փm��
Kk���Ǯ ��ӛ`)�c34��:&?��>�1    �Y��Y�awz�z_t��|��d�	)��-�У*〨���+2e4SR����������e������×�����6��M&��Zj�buq
kH*F{IQl�S�P�� .Q:s!�|X�M�k ��I,����SF&!�~p���<�zlm5	�)�|�߿���/��χ��	m{!� >X������n	ى!�LU�؏��	a�+�M���|��LP���؃k�� ���G�@�\�Len��2�
[�9fT�5�p���a����0����5PV0�i�sIuƩ�Tm�H��D�M�l��D	fs��d�����M��Cyp���i����V#�_AGI�k ���&�:yi�(�������-a�_s���5 p)��U���G�|<̚�|�R�j.�Q&�*,"�mqn�ɻi����w��x���S
�\<��>6���1�Ή��K5��j�����p�=������:]#����v#�Ѷ�&I��	A(F=�H��s��l�&g鶅���^�{v�]m~���lŷ;븺ά��U��g}�t'X���-�=\��ϸ���x:<��p�}��\��DҶ�b��8*���ީ��ĉ�E9�:Sb�㸅��ǿ[Q/����������+�n��sui\�J���v~=T�}8)h*�2����/���#��y�ꇽv�T��@��N*"�:���5��몱W�}�,)IJ�n���;�73��zpԃ�j�8*6�-tzc�+ɹLӊ�ɘiH:�Bu߲�g���gs�<0���8��;q�����EWa|��m�I����'�brQ��ww(_H��ψ�~�p�g5hV.qHkuij�������ħW�Lg6*�- v�����{���5�Vթ�`uq�NTikg��Vk�*��m�B����j��M��:��@>X���s���à*YRԅ���_�	~	��S+n�3��N�?{߽�t���5�V��tN��� �^���S��'DTf�Y�i��t����e���츭�q�����*�#ܫ�s�}��d�6K���q+��~��y���W_oU�]5��jwru�c�ņ1��8�&'$*S1��͚�{q�H���u?�I�槥u�G��>XX�6 �z�/w���"T��Y�O"���)�m���/��"�������v|U�a�4�{��J�Ku?YX	��F�2qV�!���3�oG���?���v��ݿ޾���5xؖkc긺pU,S�(�,���Μ��Fr80�*�M��ol&:/�W��aB�ªދ=/��*�K��1��㞅�"!0F���(n\�����$Oϯ���B����c;���R��Y��ꐼ&�4+:&�d2.oI ��oH^��^�_�ۨ��p0�b:e+�.%J$�!`��~GET����S6�1F?���#�XY���u����BX��ޫ�Kw��I:�3�R)���:�'�8a�n�f�3HsQM]����p v��"ev��s�Y;��Os��h�q����'"��@����"���'��<�k,b�p�i5��-�MT��ұ��0�m��"Ij��ג�VDbIm��oG|�dq�:d� CXe�������qN[rd�F����y������o,�0��̵[w��[8�b;��X]z4��$�L���n����ϔ�R:w;�aH�u�����
!i;Ī_y�7D���1Q�'�88�PK�rTIe���߽"8�w���Vu(�A��(p�&�p4L�F|��UY���J�tB��=��M����Ȑ�q?O�߳1��~���� #\�]ձY��e���$�M+�Z���'r�UT^�M��y������r>k���"\�a�4����:-�j�,����R�yVa�e*Nl-�y%�������4�|}{�v�j^7��[d���j��bu%�"�傌P�
&���JD��Z�<�X^�3:=��+kp�!E�)�j9vV���Ȫ�`�&�1kxX�o���^V����������q[J�%����#wY&KF�Py^�aIB�sW��Rn'����x���ōi�P"\�a)D�٨2K��8
燩��|̠ldM�v,���� ����i�����g�`EX�͎����z�����$�t�Ȅ�0D�|�8?[gu:���:��G︩)�j�z��OS)�r���Ȁ|*�(�4� NC�VTQ��nQ�ǹ_��w�sL�k`"��S���e�!Y|J��`D
����ح�Έ"������ˁ������D��`"\a	�����/@�P��=r>��r�'E0rY��vh�}���������_�e�/�5xV;�`�-�$,"=*���&h�:0�褴+9ʤ�v���nQS[��%�5(V{3v.�7K��ILek8O����rB�?rjf#�M�����n��i��y�t@�k "�;�c\]��t}A�?/��:���:�e�)MN~�Z�p8�?O?��n�\�hk����bu9�r�����gU&J��8LT#�k>=���ЏS$���p���^�:�i�JBOQ N��i��H�MǪ��������7��{�=���y�$�:$� AX#t�OvtQx7�k/�4XKI5���f_o��Am?��/�W�NO�_n��\�@^��N��q���mq���M12�
~V$�#,���b��]:)�ܤC�p*�5��m�d�X���f���΃.1s�9�����pb+��9�޳����oG� �oT:�k�!,���
�K��(�f�4D���Zʰ����*�G2�O��/g٧50�!\��}�N!�h�t�X<Ŕa��̰Q��Ulѓ�}[���g����C�p2�5,0�7i���X�M��t�T|Rnt�cfQ�/��/����5��i~ǌ�U:a��Ri8��]�v�M��S6!�8�q�3c�L��~ˎcjp!�A�չKpʗ��Cu��y�?R7W���9����l�����ǰy����;��`DXĒ�[��[D����<da�?���<T���)�Arwy�����SZ/���	t��l̷�P\]�ԑ���2��	������e�����v����3�'��Ou�����j?R^x	S&�?�0�L����C��O�8�i�M��8�&\�i��k\�w8�X9%J��h��G��(T2�-?J�ưIK>���}w*���o��/�5x�}d�������Ʉ�^���9��9S��4����b�[1���9�hl������Mc��#\�a��x��K����8�|Us���|
�!������N� ��M;�� FX�����mG��Z�����gr]fw������*m��n��������#3"�w	�JI���~��H�s�ՠFJ�gv �m�I��*������L��<&��u�ÉN�3�c�xU/.t������(S9oNP!q.�6���"�_N/�ʺN��B�#"4�g\�1)>����O�2D�"��	0H�w��B��V��o��V�����T�����9)��x��G�BV䘄��@���
�I���m�HF0�u���ԁE�,³��] �L�������k3
<��@�������+�x��������ҎCjp"x/�S��'%�P������rȟ�h��TUm�O��$�x�-M��C�R'�����<�X�p:q`2��K�4�J6�%������m��#���ڔ|;�� FxO�S��ՙdm�{����|^�Mfe4��Zb��9#y=�ǜC��H����kԧDt}�U�i
���9�,���Ǐ���o�K�w|{�0����E�/�W�Ź�RT)vLI����g���f�S�7U$ؤ�O|ɖ���w�������V�F����P �
�ՓkS��ۚt59Ǵ�c��#6}Ѣ�R:��"G��hX�� H�j��M��D�0�n������R��3��0����_��?�o��Ǻ�aI�K�W;΋W��fu�s@����$�ә���ѻݟ�,�u�V    o~Mjt����|�-]�ՙg+���``��Ζ_�1r|�t⸚�i �����+��U~�!J�Q���m���lXM����uP�*�6)�Җx8MU�.I��|�EL5t����`�qf�:��s`�U�D$���J�ٙI�+}2_ov���X�.Zt	�5|g�����r���X�]�# �4p�*����R:����O�_>����� t�Y1������#9
�3t��S(j���47�lo��w{6�������V\���L�g�?�hg��:��%η
��C�<'/i��S�>I�����{o-Zh	��:�t�:7��D��̿��&6Y"���e�3�ĶK������]Y�j�-Zl��+X��|R��x��YP
C6�Qr �����p��yD�x>]��K��AK�Z����P��w�"���b��@�yi\V	#c�o��`�Y�z?�Dh&�t�9K�������L�%	a�2��!���^ZN7?����OvX /şZ"���?a�d���0%�S�j	��?�4p!�#I�M_N��鸻]ɼ�a"���`�*��\�%�5�{���@t@���ڪQ��  �{�x|��ۭ��AL�b���W�}�<S'�i�%��!Z��������B~R�x?B�syH�]��gj�&ȘN4ūs) �|}a4{�!z��7�)���������֝�|���!O�y�C�Ok��c!���;����P�6�1������^�4�-��Dh�'���1�F����jEF/}RW�(WI9�*"�� ��=��?��ˤ�Sw��Ş�Л���9-z���;ň�Je>u�c*������'v��svş��륭~��Eh�(��Qˋ��*�T�I�:�T���$�]k
����i> �:�(��C�-�o��y5̦�r�$j��M֨��9����r�b��I����}�t��{�x��BK�ҁR��"aڵu���cz;� M��\�?��1�*,(^*��7=�����7}���N��@E`7Ж�b&%��?T�!*N���
�!��p�M2q�]T�lw��T������㏕��*BT�[�H}s�:�ڪ��1E �c���Ә�PP�B
����z{7� T�:z���.�	��e��<�����J�.�&F���g)�~펋j�)�����<��:�1;K��C(��<E�W�W��q�g����0j�(B�E{ɦ���U�N~��H�By ��A���5�T�s�����i�F�}g�DAE����w�չ��F�4H��~�C>�XYj�ϥM��������j5��W�J�C���"'�c�X�,�S|���5Р�4ZN����bg�}�:�h���ֲ��ä����rU�l�γ� �Ě��1�ht C�@ v仞R�[-�$��zIA$zr; ����T{�'�5Y�c��R�n(��E��t>�o��KXځRPJDhӰ�8#SR�Ep�9<�����NE��P���S>_���0����T,5���vy��W�r����lG�J@���R�Q'kݶ˞1�xz�}�?��z�[R���d� Y����7�$��h���+�8rBC$��Um剾�rfrQQ���m�D�m��m�f�sn��a�����!�0�1�P�������t�:Mv<^�m�'���T� �o��RzZP}Iem�PJ���^F�aF����(_&e��^��m'EE@�F�*;�M�j��H����SK"�\- 7����v����?v_��S~Ƶ���(��R�v�V��d;�1��#�?��Ȝ8$�{Ea�D���ˣ���ˌ�-~��(�����N;����I�4&����d����1�S�tz��_v��~;N��;���<
ވoC��z�����_�|3��ű	�jɌًX7�|�8 �p�Eʀ:4
j�(��T��8W 9u�I	3��*�Oz��72�m4uw���6�qN�D`��~5�Յ�](��1҉���q���%\��_��rw�?��?�dԨÞ�{"@d�s���$U��������O(9��.[G*�6��rz���:�xY��Q?A�D��6��K��r�)�1h��T8	���h���7��W�����4ɱ4�P:A�D��N�֢1��"O�N:���fe��ĬG�m�y�?>�w���=$L���ۅ���z��Cm�@PB,�N7�wh�,�De��w�=���2e[1�D�ϧ��q�l���	ފ�v��Ă0��Q�aLS�����p����ޯnѢ��U�!u�ԠN%m'&��9v��́S���m<o�����s����Ez�gyΧi��	Nו����hf%b�5�J5$qQ��G�=i�E��C��P�{�M��5�:x	j�%�Ң�r��y���Z��9���a��EN� ���������������W@��^9��%���ང�<4V¨��
Lt�>�$'%Z�Z%�m����mh�K����5A�1��,�AΚeVDC�d�ќ��\Ґ�#)�m�����������:p	j�%��m�t^���H�-+Gsl+��2#�c9Ώ�xeC᛿�0��������-�����Z"�Uj����� �3�T�4�A�����?@���D�w/Ƿ������9]~�E��:�	j &�B�NĬ�''CT��f�sj��/�����Je��[8M>�V�X�[�l	�uʎj�:�!�5y��cT��p�Ƿ>[���Fa�2��A���[Z�&�%���ང�x&VgeJ�7""�@�>{�!E<;r^�����Od�^�`���o��K?u� LE��h��moR«2�`+�(Ñi�D'��ʑ���{��߽��_�?�A�ni��o����?j���W���J�	:b���䇠2�_ϗ1R�Ͽ���C���Jyc��5x3⼵�P=�U�I�烛8J��ZZ
zd��y��rz�JV�ퟎ�>_�@&����N[y�s�Ǩl�)A| ���@�J��q�������;&o[���d�7��J��FUGlh!h,1��|��*�zsh�1x����Y@�@&�����hW@��fe��z�$��!�F7��ն�����k������Ƶ��0&���@�t�y��GM�6�N@��
�R�i-�6�Dۖ#�P�w����aF����ȁ᭥�:�	j�&����Ω�@�$������B��ia�s�|���e\vu�:�A�cd�rp��zP C�bd�1�h�u�St���.!��T�}5hh�o�bun��9J���&-�|����6���9K�6Iq��!�������n�s�s�̉��k7 `�//�R[S�8T'36)@�T��*7q��lYO��D��>�ՀN�v��N���Д�(�Y�DG�NQ�t>KJ68O�z�z<�^�H_���%�P'�A���`'cEL5�j�!�����;��%�.�b�Ilǥ?���`���=�}E<�ǔ��J�5�u����:�9�$N�A̅8(@>��O�����QԼ-���^Ͽ�!�b���
�Oh��`u֪�h�2���Ʊ٢��2&L���Y���-l�ű
5(�r:��X��;FH�j�xG#�(�h� ]�b������ ��������.�d�58�����9�n,6�q�x2�8�=G�|��DyXn#�K������ow��(
N �o�Y^]&(��So�e���r��C�ջR#�.�}�lv��W<Q�Vl�w��`R��:�ql��Lz�#h�6ւF�9$��<��GƑ���?���a�%|�)�A���t 4��"�P�AL,
jb
/*����?~j���ٯ=�	���v<W�ILo����@8J> ^Yy!�'�/m⼡�jö����0����e�: 
j�(�q�=��ե}�I�W|T�����C;�r�
�O���w�tQ]L@�GA�Q�:&�ϣ��x<Mk��U��^�D����P���,��q]>kJA(E0A�g%�:Y�]��/\�^��Bp��PC�Ώ�#��T=��	 |  :`
j�)x3�vT,�Y�&��������0@I�����I)�{>MR��m�P)�A�V�6{�3(5��q���:<X�	��Yc�"�$meXϧ�D�\%n[�8��"Xi|��ZigK�����QZ��d��7�.��V:*�R����v(ԠP`��Su����י��Ɗyoρ `ξ�0������O^W0�u)�����PP�C��m9V�3��@T�!��S��t,��QS.�3�7�����BF����j�(x'�SÄ:�,FCB�"���ccL
��g��2���	���a7����l����"��95�s���*�o}�j�L�M���2�2��Ԧ�����.�+u� P�QF��[k�3�eu���
7I����r�U���o|�����ǟ��}��������5h 3�!�X�ϨԞl�j�c�) �f�,q��S�I�n˞���L��Uh"x.6�C���" ��|Y/g]�R}HA�~Fg�O8Ψ|J�x�>a���19�>�5p�	jKO`uޢX���!GL�"ҧb�P���J�d�'�� �?�WV�������3ߩ���\��"��B���a�+�U�$b>nC��������� Q�>��^�7�-�	 ��$b]>�bp����V��Ϝ9}�}[+o~DA�Dbj�Kt�� Ǩc�%�4N��p����y_0&��9{=�^ �;N1��w︤�"��W��\5_�03D�xީ甉�h��R��3-��/w���UBv��LT�=5p����p���SN_پ*N��N�`*����T�.����N/h�X���� ��L[�������D����C��c�Ð�5�4n2��׷��}�����Et� Pp�+;���J~HJ1�3�j0T<�	� �8UUd��/���?�쟁=�B6���
>E�5����q��:w+x/��Я��-��C�3cV�n���{4�|��}�5]��Þ�{"�������/I� S�C�.������Q%G�l�ڢ��y\^��G �.�I:A�_�^)�%3������&��@�RH��8��U��#��0��{?�(���u��	���;�y��v��'�'Q聭�ّqL���y�|m����0�i�f�}�����T�xu�Y���d�Ou�4%�t�J���i��������V���aOP�=Pm������fǥ�a�xa���%��VʔSVVlG|�N��/����������OP?����vV�ob]U5�A�-��x��Q�rɚ*�R�%����;=��u�ԉ��j�}��C	B�/�yi��y��/Y.vCU�v`�����8����%{��~�����z�����(����W�d�2�5�*��j��:r��'��ϰ/w����~Y��u���O�����:��%s�^E�c�ΰI0��5)?������kܲ�&,֫C���"�9�9�Z�<J͛L���d��s̅���c��q�m��������ls�MQREA�:�+�: 	�7��*��+~0���@gaU�#�[�}����T-&������>u��V'�����"p��F)`u����K��iQ8cH&�SoG�m�F����r�dǅ5��Pu�m@p�Ͷ�	�}��Q���Nc���gr9�=���G�2��u�� S��;�- �4V�-�����8I�R\��T��^Qa;�=�A��SPL@r�lt���2A�H�0�:<H�Q�Ѫ1o[��ֻY�v��:d
j�)~��Vtn.�r�%T�SB��C泛��*ŭx��將h��Ru��;^����Ug����Vp��܀�E|R̨�ʦ�c�:"��ΨN��;�����������������絥�>
Ul��"��	U|��R��:��	�k��X<UDAo�ڲX�KA³�4	���SU�*1x��h絛���
Y���S��m��OP?��4[����d+k �G�ul�;���#�d��y:�>	N=�J������茧�ꜿ�+�[���a���A��8��|/��3��v�;
ja(���E�:T�p�T1X�_��s�&�� C	^njB���}��Wy�ˑ]���Z(�`�����4.	'���ML"%��:mG�����ȯ����v]��(�����ӭ«�dJ�+�)y��i,*`���BeS:���}��;��Z%�,�������as��9Iq��K�ʶK���"�����@ �u�����"`⧽Ǡ�ꅶ���g���pЧ�<��ijd�Je�|?��8������Zh�@��^�� �x�"8.q��UѦ:D�����M����q�xM���z��MפD�L��t�&-Bc|2Ǣ�J2
�K#2�P4T������������X~��km��>�;�N�Υ{&�e`԰��T<SY���<
eݶ=����}�',<wj�(x��PZۋ��:	�[7�qd��J��2VK�wcG�����m��qw�����m o��Hwx�X�G�9�3�*��� ���l��E?n>��yb�n8���_�hV�m�(�o�EQ7q�ՙE���;�nJ�����aq��������}rN>y���6�B���C�N݇��]}����|�H�
�i��3]߭MS��Y-�����m6�R:g��Yk�|��^y��[���X��Td�bL~�?���������oS)x���t�Ryuާ�m�������!�4���QA��m�ç�n?�0��O4�����X
�l�A�����Z��H��N����ߘ��~�m��m��z���;����\
�����ֶ'A�:7)גb����c��h�q(��I�ęոI�ǯ��wl��K��mV���P�����P��U;�Tר�Hj�:A(�3�1��0�]	�$j-EAm���o������            x������ � �         �   x�u�;n�0��Y>E��_�D��%K�!@��M`dH�N~�H512V��F�e�W6��߱�W�G�%v�;��wXA������HP3Iߟq���5%N������W.ո��G5=�iw��.�a�cBo�g��z�q��������m�W���'��
xX�1��3h�� v�i����y~�?�eY~ ��S�            x������ � �            x�|�[n.��4��z��Ё.�(�A�#�]G��GG���e����[��L)�d-��>F立������+�?Q[����j�J���v��]u9��\=��*�/���,��o�_H��(����������Bh�n�yX0ͷ�c�2�GI)��B��DjscqS�#B�=���w�b��m�V�_�/k�T])�[���֜�U��E�e<��|�H�45�>y��|����F%V'S��Q��k��'�zοд�͗���M�!d�_�5�|�f��um���,��L���/�j�|�@Ui����}��^��zx�l7��&̩��/��έ�����@��6�=VkJ_�x�yM.�~���M�3�U����O�U[��W,�>j\�u��06^>���RcE�����x3��H9�瞫-����WwR㷏�2��-���Q;,���G-E�ͷT>O�c�5|p��|_���nw�����#��OG�$I���%��^ԋ�4���p�|tu���q��[=xp	���Q/��`�Z���_EC�xz�	;?��;���'N��u�凒��益J(l��|@w�����N��zGĵ��[���_R��?�ݼ�z�5��^��^JN�7^�F.��?#�x�1Oo�@G��׌���:F̺���C�Օ���	/fԆ��ct7o��z��l�QΞ}��ux	��C��s��n�n�b�c���y깪�/ߤ�2Rr��	w��W��؂�{?h�1��'�����Xm��w-��t_\ɂW������g�=��Bn��w�_�<V�g��=K�G����̮��]�{�;�6��}߇;�IQo�;���|�?�?ׁ�Wb^_�<�=��ȧMy`�%���Ds�4���1�g�%��B]�zsE�z��OW�#)�F����'�R6��j~�NY ��w�ŝ�*��t�����'-�dz{���*�O�������r[S|lʕ����P������g8�Sd��i6v �&؟�'�5�݆;�e���<���a�����U8=@�vu�= ���_aLz�+�K� ��s���n�S6V��g����4���� *���;�;��قQ�汪�s�@c� �L�]6"=�+I�l*9f��ο�S+�������;���"�\�Pػ�'>|;;�߁�]��;�e<|ʦy<r�<�t�>҇�~��[�2 oc��N��^ƹ�?�W����C��F��K�<�~
<^-�v��o��5Ċ�za�]L�X���_�����	;���*(�K5���_�Ӌe��z������}�]�8x�;O�p�_n|�P�,�lF�t-W�w�� h��yX�Ћmo�I��s+17��{����Ļb0�h�^K�?}Ʀ��лٔ�X��g��w:>V!τ٫y�
��zXm�qxgΝT^v$�l��\8��-K��:�ݼe@�Hm��y�~�I�J�֗�������VZ\i�qN��S�O5mc���v�gm���3�ž��A�K��O]����i-�$ZX��A��g�m#���f��H2\+��6��]��d ^��ֱX>����!��$ަ���#����<%J�w�z��� <���4����S��}�C4O������e+;@m)wW��kؐ��7����z�ŃSʁ����1�n�}�\w�:�w�K�5���jx�/���J ���o�y1!�B@���Ͱ����Kw�+�x��s�u�}�Ν@z�@�ZSpk��}��t�F^!���3�cW����0�;?��2h�t�>l��y���w�C\��y�*�;��EڞHwS=�b'��<3˂����7D�����'��xB��/0�6�>X�K�������t�v�z��/�`y���K[?iu�'��/x캢O��d�n�z%6��o�L�˳p�*��D{3�@�
�J�s�<�����A��\�О�/�go*�U�t�g�Jw�3-F�,���rG���&�s��%m?��$���H�]��ׂ�����zER��\}SZڧϳ�[���H����
x��X�Q�o���z�ԛT�����UP����T��	=��U��2t��W䯹�(�e��F=���g���̌.�:��b]g߹Lz<c���g�{�֏�<��&�6V`�F��;�<�8�E�`8b�,��-V�z]b�����T��&�~.�|!�ޢ˹'�XZͦ���{���kKx����7D�|/y�c�8����y�@Λm^SK/ǎǯ,�f����x� }_�DR|5Bk1@O5ډt���1�&lp�/����ÿ���q�~�H�?|6@���m̭ ��^�!�<
���s��+`�y�e�=}�ʔ���z ,{���L�;?A����t����w��	_���s�z-;����g��wBl���0�23��G+r2��r�7#���5�6��`�}��;�f�7�s�ؘ��}� xz1�^���z�0�*��]�^��;��U�|p-���5�u��r�|=exd�|���m�v�_{wm�D���W`���w	�%/O����I��*��2��F?��V#���hؔ��`��ݼe ����&ur�aX���Y:6]§�Eve�-<�r���y8u�^������U�I�x7����1Nv���q:Oa�������bn|�6�=�� ��n/`���-D��2��K��\��V)w�ӔԾ��j}̓!~n8m�n��8���N)�px{x�Z�zJmo|��ϷO;�g��瞩��	�[5t�ز
�g���AO��4���!�iz)A���OZ�@���K��/s7V�{�B,w�S���n������s���]�;$Pα���u�`�+��?�� ��]���7��� !v&�#�Gd=�w�=�� C����
��4�U�<=�]�:�zS�qx���2�$x)����� �� ��M4��t*��Z�qs�2%���^���4�Vq6��-,���k{#�#5�^3�{���0�eDx]� �,@a����:@��D���\}���I[�38�x}	˽� J�3?���ַ��~|+����/�����<,?�ca�M0>Q�����\'��j�"m���y��*��V�E�]�ѝ�홆���/�TO�W%';�Va}�=�H���8x��})Í9e��X#��g������s�\-/՛>��5 ۂXl#-x<��H*�,���;�Ռ@���\}��~J��L�:0M��ԺS��մE��jī�;�U�L;������R��T��"�V*"��u��OeR�~��z�h��a��+IjRz��J�^*<x�Y��P�Z�w���QaD)��+N���e+ ��A�S++W��Y�����^��Ғ��X}_���F��0���)�;+��wa>Q��5P��l�XՏ�_�l�z;�De���c��sq��a�@�&�~�X�.QDp;�۷LV����jOOCc�Ur�����y�?4�b�_�o�JCp�}��e>C�`��wN��6���c׌��z�<�8L���Z}/���-/��6�P�t��^�[{�I�,�1��0�����Z?_�ģ��� � �B�(U���1X~�a 27��@�ϻ�oN"z�U�5[���w�e3��C^�A��ٟ�oBS2�MbF���g�}�\���X�s���y0 b����Wl1uG�r'�pώ�b���hm����`e����֋l���x �D�?�
о���O�^���a G��U�>���h��y��|�gD�0���S���r��h@[��}� nKCH�q���<w�pv~��r*�9����x7���A���Y�����Tk��[�!-|$N]���w���k���y 2�~�X}����>�����v����3���3N����o�i0ku��?���+�N0��fD�96�e�"��5�Oo@���_�kUr���Ɨ�-�|�I�l:C�� x��=��j1��Ael�A|�FWx	8sYYI��'Nݬnv|���A�ϸj1`�۴��϶�2J�x�?�g1m:�X���-���]    ��������2�B�3b�pO] ��0�0�<��"X�n ^�L�Y�Mcco�yi� �5#���v�o�C�E2�����U��<���鱚�E8��X�E����5f�j�6�n�r�;˹
1h i1�=Vߨ��<g�<'.��"/q���i��F����o��6��0<)��������u�2@�O�������OWf�M���/�[����*(��̮FPޤ-ݬ�q4���.�⪯����ؾyX/ t�a#��[_"\M�p��ߓ-�Z��/����/w�+k�30��J�Λ3e��������GׄF��0` 1������c���'�h=1�p���?�J�÷��;��:3����/�0��Y��t!�m>!��{�m�~����taЀ����Z���Ķ#/-h5�+p�=������Eyq�,�w��ok�U��7�,���`6���<�D���x��1��t�i@Ū��Z}�ц����x�,�M��5�,�$j�R�tUa�� r3RYϪ���'B�������ΦwGE�Y�I4�W䦫
��Z���j��6a厍�Y������W�D��|buV�k.�U�A���ϻO;Ι���H5��z�.�j��{�F��0` �l<��W���5SI��Bx����
4]%(�&Q�{a�@3�����x,
���,�䁯,�o��ǣe�_�A�*0�?�yC� v��.��0<���L��#��o����������obǴ\-od��S�7�SG����S�ך��=���j�j0`��2�ᱚ^�N����̛T�j�)L�i�-xi�@�n��<l�?���+8:P������Bh`P�[�FL������v�ռ*^��F]��`F��]~��yxu��8���b]<��?<g��'�2'`��Ig���q*xf� �߅��*���f;����"�Q�py��ڼ�$3��a��>�:�e���U�A鏘���̼��tfqZ�mw?�-]��5����M������X�����^x��A52�+��k��~`�pٓA����7o��<��\��� �
��)@H�bx@��z���:���;�EP�b�S�Z^�[>t�C z��f����P/J!B�M�O3��z���<����>X�C��B��j��t6�`CL�W!R����^�D��cU߻�����F���i�4.P���<$����t�`��7i���j~��l�0�	-�g��T��ޤ�ԡ�{2)]%0@���c|����{C,I��
.kvZ}0���T�*����폇G(��X��w��q�Zaa�.�V��[d.)߽�U�A8�<|��YL�9½��R��o��'�:�[�����Y�*�$VQ�Xû�3Eb0O�cҚ�
?�xs����* ���m�o�5�:�!@5Z�,щ���6G���-'����*��ǩ��k>m�Qa�����Q}��;�����$�*���~z��ȼO�=�eg��񸑙dе�}Ǐw���taЀ�`{��%:@B�v�����Fp	:�<�B��b}{�
�g5��֌X6�:��c!�3'WZE{:��7���y�K6i&W�k+���=���ߡ�)�a �����K�ַ���*��V_�g��A ʕ	�1�.�5{>5vF������߫rVG!nF$��F�/|=���\��u��8�j�{�`�*��Z}�֑6� �"������kaN��<7D7�W���a�=wa���g�*!�L&*�_>�Ո��dY�}�_50PC�ZK|�~�)ٴ�y�`��v����a�ɫ�`P���J���_�oF�Ĝ֡�q�%��q9ē~�q�WcZ��7�U�AM�c�E���e�Z�nTv����Gn���.<KW	��X��շ.0���<�CE_p�ׯu�@�'ZW	S����*}��S�k8�)�bm"|B�-��9�<�O�OǼ�]��şdb��dS6�'��%��@�qx��|��ꭟ��}}���&�dN7%�,��Ɣ��˟�*+d(�y�mW�w�K����W�J�3����Y�v�V���]��)k�gO���\�y��*�O� �q!�K��!��M[�<�wG���tU`�@�j���ս�F,�[�g���ٺY��Y(P��A�*�����
�ַ(����]b�4<1�z�.p�k��~��϶�=P�lS�g���n���Rm��}�Gr�U�A��W\}+�j*��L&��D'��XOd4��J����w��,V�����݌@֩{�y�އ-U@�������\6P�o�� �j��\m�Dg����|r�$U�A������s����*���f�į�w�e���BPņ2�|�Dx�П�P��½�R�
0h 7�cs�M�k�3_��)��	�f�L\H=��Y���x���`	���Ⱥ�큺�9� _���K�Ŷ~k��2�N�Ȣ���9�"󚴷ڋ[���/��}����Qw�u`�@�VE�������#�[&p�m���Q2NZO����*����e?}�����Kd��E�l��+>î�d��`|c\\^4 g�[���/�6L�NR��Y� F:~֓���7�|G�� 4���V�;��@����V"P�'�>��F�$�kw�{�
0h�d;�������x0���8,<��Ɔ���7^�z
m�c}��V��,SX	�a�g�?!�����~��i�f8����r������۫0�1%v���e��D�������]�����Ɇ�Z%�iJ�'�6` �Bd��c����R$��k���w��7�Ȉe�J\����� ��:s)�^ض��!]�4��<��t5A ���C�˄��	���:�	=}c��d$U���&�W�����)�2�M�y��c�]J�M���r�t�_�@vd��7�h���Qk�Ҷ���p�J��e���*]�4 bj�Wߪ�r��]��M�6!��`3��S9���*�R�U~l�k�|��7���TB\���?D�#�_3���uļ�ֻ�/h�T�������~�L#���Y+,w�,���2����j��y}��a���;L���< O;�5l7-��B�{Yd��/h�x;��j���+[�"��l��2��r��?���Һ�/` !�M��*o*���T�t����v�pL� �g�k���*�����J����v��r�ŝH��-B@�%��ᴧ��^	���hv50�[$�`..��ݑ]J)�`7)��R���>M��o�/�U~����w��p{" �a�`�vʜ���:��u�y������1��[���	��c`�N�'����p"Jb��r���3�`��j�����s�f4�F��D���|��m����o&�э�o�^��`Q��� ���}iL�T8�*g9-KpvT�wb�ֆ���5Z�^ym�}[�Ǯ�G�Lk�����y�D���4�B�����F���$6�a�ւ���a������x����l�U��șY9�cI:���O��>��""ͯfB��3(ؑ��4~7����,bS�N�XY+��ۤ�A�`������|����֭��=��Z9�m�}�3������%C�!
�i{}�pp��T0=��Lv�t�Q4M�\�������P`�7�]�#�������(Fd)A�n[R��f�݄���P`H-�3�������uY�@�vb8�>���ZO��
@�_�w��~(����ǩa}�,>$,8�I�{g�dh0�6�攉��u��+�j���:8^Q�7J|���;��` ӫ]����񎽯�]b���F�&���S ˔'�aT�*��-:��R[)�*���/C����;{��KYl�W��`C��4`��|�����h�Q��n>T�sql5����R���j$C��}5��p���Dn�'P��L��#hN����&5Qإ�p��F�U�ھ�3ٹ$b�G6�'W'~�%[=�:OQr1��F�벚|��y�yK;�k�c?������<���    D��Z��a�(پ���{��O>7C*��c��ķg���!`�FvIz��C�c6�yV�ݱ�@4��=��Jd��5��==����!��)��S�����FG	zA��4��#��2��^�LV��/�bP�����6��ޮ�)�e ���8���`�C�%�FNb1X�bgs���N���|��
�dz�\ׇ2SXɏw��B�̱ ����;���������T�@�3��&V-TX�P�s1�a�5��k��=M|g�Dva��D��N������)O?�v/Y�@)�5W�{���O{6Nd_��Y8_�{JO�~u,�#s։i��{|��A���j�8v����K����H��ke�b�;��U}1oj�}�{�%��VF�}�K̯̩�{VI!FV�����{����o��9r�R��������]5�=�-����l�V��g��0��q��<�\�����`�~�%�[7�i��ѷ�y�|�n��5;�\[�~lm����%ow�-�4���X�V�e�	Ѝ��߱+~��֨��~6�
�`���(ቹ�*os��?\���s8����4����)]�9�w�C�Qb���)W��F��yG���WHi��%Vl��WI@}^!���O%>���V_o�<�޳B��9�f�@�`��^D�|��"��$o6G�Z}�U�d���S��E_��'3�'�O����
���,p���J�
�y-�K½_7ώ'�=�~���}
�B��$�m�sx��Ro�]l��6�d�\r���&���8u�����[�~w�����(�Ҟ���`�T��T���}��B�"-[-+��u |�s��,�| "4�tt�n��.�C�Q���c�՗h)�\1�Z_~`��4�P���<�wz�BC�Q^٘��7�$���T;����x=x�_�WHƷ70��+�hq�}z������<6��a���~��3�b���o{�����a��n�>
�;�W�FYk��Sx�,!�DꏾX-��u�ձv�WH��� z8��*���so�,��u�vl��7��9��Ҹ>�����XGp�ҢZ��C�Q��݆���z9έ��]��Y��=Cw��Ń�!�%���UĐb�����gk��]2�UX���;0�i8$;3��d��:�g=�!�(L���)�����	�~��};<b�Nw~-�*"������b�G�դ�k��bo���D�`y��+���v�ع�M����1���m�X{;)�1�T�����{Qc��j��mi �ƻD-�zvӴ�c5}Ƕ9#Ǐ�F��'�6Qlw�������Z�%j��X}1�_;�"��{�_Wn'���&Ĺ����1����NJ\}�&���X��塍RN ���DkS���O==�����
��k
r�8�h�
����j���Um���!�Pr|���&�mm2f��K��I0�@���;���-�pcc��AO�����rL/�.����n��Ŀ�Y�,N�k����R}�zm멽��	}�ʵ�Vn�J����������bH1�e[|����c��?w@H3�]�'']upD �Wc��b��)�>jJ�<3joN��ߨ�m�B$D�tu6�d"�^2!�X����o�h�{�U���-�ෂ���j�����{��JG����^]����,ƖO���>�|��0Jg>���Z!��ؚO��z[6�f�˅�]��݅Sg�v{��{[!�w��ÃԼ�g[����)�������R�)l��I�!��g���W_1@�3؏<����u�����Q}bKú��5�=������Nfn�N;�����z���&oDֆ�g�.��J��Cg%8z�W��(�����|��]�#�C������>�PN�T{1���nx���QG��M�W�!Ā���!W��/�y6�;��Q�;A����S'�����Pb��?�)q�M�p���b�h�}f��8�ʡ�1�X_g(1���u��uo>m�ب���H�ν#�;���ϖ����Pb�1�]*�-҇��<~2��X��'!�(�' !y�F^�Pbp���!�Y���M��;6�y�^�:�4՝�|�g��r�x��C����[�U�V�s7g�g�ӧ�OG�7| �:��~=}����R%���zx�@��ίr:� ���Z=�	�A�Â��+SZ�z�w�r�iWߺ��b APs2�{%�\�[C[QW�U���*[r�Ζ�o:1�2z8����뵀��id7�;#T��֐bTv'4�=W_��8�<�4��U0�+�GOX�#��n�����Ĩ�������p�^%}%v�,���s������roo!���L���ކ�	�3<�nf��s���S##
d���EM%�po�S��[*��I��Vc3)vњ �y,���3o���b���A��{�+�<]�7lrЙRb,�3����6�T��D��/��`;V<3�u�ڸ���^
^F�OBC�a(1j�f��p�}�ӌ�ڎN��GŹ���E<�=���R��K���t��f��W?���;0)�����h<���s�i&V�;
�}_(�\���;;��M�;Ûp��C�Q��1V�w�F9����V�E��m�gq����|�_zW��!Ũ9g��W�[�}d a�+�\2=�1����`��cԪR����O��`��by��Ù�Z�WW��<N�ZtS�x���!ŨE��;s������$�Ru�#7��j��C����="��y��_eR������׉LaEr�,�g��{<+�F)F���!Ũ�m�JT�����~�)6��}��6�F��;����&ĐbT��o��$��������W`F#`����{�`>��xz�*������	�Q9 �$����5ߢ+ D1u?�`[k��W�����V��(�(?I��J����b�y� �a�A�)G,ؗXMߝĂ��RX�z�����@���۳w�/��z�S��o��v���ni`Po�"!b0�n�ʪ��Ι�x�;�qІMv��ޡ��f�8���d8���>�����K�;�Z��Ըy�*�V��b��)�[�	�� ,�W����2�e�5�bh1�m�i-����<����i_���B�])�wC����
���_��dC�����Fp��|K�"�>UZ��gH1*�f�����oUr��r�:/���w��1�=D�{��x}��5�bh1��̮��j���0Gb�Z=�ۆ����6��OC��*"8{�c���ޠ=;u%��>`��Ǒ�fܫ������@�Z���A��o����U�(p�<�d�8[�6J����8�q�qyx�b�@-O����Oն�ؾ�/>=/J�ԟ�#v�scn`�U��V^�Y�oR--PIv�*l.ʚ쐶��,�����h�S�R��Y٪�zV?��"�"0~6�|�x Ζ�[`��`�B�B�x�z���Y}���
,eV����{#�豒 �H��W~>;&���~��#b��#��0
6)���+J�~��=������#����T@S~���_�����>�ο���J�� g��[a>Q 6�|��,�$�,��m����>�9��WR��~����-P-$֤�i��9��Ql�r����<W(7���Bj�Y~O�j�����d �OK�%��^f�6x&w������?���n?��;��c_��}�uƐ��#����=_�}����s��_��S�����_���s����\63+�[����gc1�}R�7�������W���=p�TW��PH43G<�X؆�#<M&�a���#�������|���A��P�O�7��}��OR�W��j��f؇'���,|�/D����%`0�Ct���^��g����u��m�E���o��1����L�B�dWI58p%�v����}S����eƏ�K��c>~Z��~��%ٞ7wҁB�7��O-�w!T|&�E�|��gF����>y��7[�p�>�K��]�u���Y�����}�L��t����P�~8x�y��t\ț�ց����گG���7���F��    ���K��Ïm��@����:�1��.)�2 �O����ăSɥ����D��O�ϙ>�W��!a���Zlzx�������h?������>B������^F�{�X����9b�1>��7��{���^���!��:��8"�'�"�'�{m3�0�3%[�A?�G��{(Ώ������|2������mױL-X¿��c	�ٿ���������;U�!q�~�O�_g�4�3����;�����5��r����Ġ�YT?��Ry}���P��pm��ײA?�
���O����f�0�\��Gu�����29E�����~�5����>��{��5�u��R�l���Wi+���f5����c?��ڌo����������j�?��g�l/��ӏ���dٿ��~����`�����~y�_�O�n����X�rPD0�G1����������O�\�uʛ-t�pLA{�Mx��[O��4�+��X�)�P���?[Ğg�z�8}�m�� �i�@�(ʲo���K��c�|�$��c��/���\/��We[�-���f9�b��9��V��y�d-���d�6����άk�.ጧ��A��~��.S�1�>Ŭ�_q<�)ۗKb/W/�vO�:|�(�z�� �Fōi����S�T� �z���.��5m0xV�{c�~��oUڏ�����ׁ�o�ja�O�3XQP�ŷ�E�W����~����#p����U�4������U� ıV
cN����Xz�['�c?}���m@OQN<f�4gS��&�D<�Ǘg%K2/��vw�����/��+�҉�-�q8��\�v�N������Ǵ?���ת?�sL��_��Kn���ùh���sA>��>�q��~��{�������~���lDw�_$|, ƥ�ٰ'��x��W�w�cK�ߕD?�k���Wx�8p��L�!�p��J'$�!�`Q?��[����m?�|�Wމ)6����x�!�q��DY���w�c��o���y0���o=�= 7qDT�t~�����*�l�����w�c:�wُ}����V�Ɨ/�y5�!�ߥ@��
��Wi���;���]�9~�g���+nV��3�ˉ�����#k�e��AE��W�S+������Ϝx�`�����E����Ǝ��_��W���҅�Ǿ�7�О�R�`wO����|[�Ҏ���R�_����y�c�~g���p�q����3��c;�� nqpT�34�j�@?���#��қ�k��W).mf���%N'm�c�kp\P����\�Z��������C���d��c'��`�R�y����W�w�1A��L���9w�C��Ѵy�2���W5���w���ٟ_b~?>��D��I�K��:�"�2pH�ײַjm�;�Ev���?{~"/}(gv�3��?I����U�B�7�fA�����8���Ͳ����q�)��Kd9{`Q&*��O�f%�Xܷ���~_���5�/��q"����b��vs=Ys܋��q����D����^:�QV�4nM��>j����V$�|�;��|�}��c���~+�*��` l�<�O�?{�
ż�����~����>�w�����-N��m0R�KgrrP[���Y�����S�$�r��u����w*Gi<�Ωm�gڲ�b�i#������~t�؏��?�ށ0�L�_d�����g�r8�g��;�Ei�b�OY�M�(Y&�>"UM�)��e#�,��{�~p���x��g�����^Y��3�|���77�����f���o�!"��������}�H��Y<|usnS��h�WD��S,���~��a�w�Ǐ��F������q�)Ro��vi�����7�}�o�_A���������Hn���gQ[��@\9L�Fl�'�n=�~���M���7�{ݞ��Ğ�XI�m��3�9ӡ�3|O������4��ou^?�ou��*/�bu��o=�5������Էx��co��?2&�{m���b����C<ԟڞ*�f��ا�t���2����sh�����]ݳ��ns��WoU�?�A�޼���聵�ʵ���I���9�x&��_�m�c_/s2��e�y�^�$ �&}f��0*�׎y�ɢZ˾�~��M۾���~��k�v�a��>������^����>���L9��|���(�����#�-�w.�o��TDEB�S�s�x��%�яC���|5�7�srX�����ؼ��z�T'ƙ��x�����R�����>P���wYZ� ��xd�o�g>��`22%��/0���)�}�_�RA?�/ae��IT���^��F�Y��R����K�}�?�EB�8��ԛ<�����o���Ɲg	w�K�����ᷟ>Xԧ��wN��f.
2Xs��˨x(�)�b��M?�V���7K�_���O�e���zy���;��zc�>l�z߸4`�9srL�c�7�>$��z����/!��+^�е�yW|���$z�9��:=��?�ߟ�O�|�pǿz�������&��	��ݑ#:����A��U)�����4_���F��ǿ<}�j�}�pxl��
O��(�)р�,��J?�9H����ӕ��r�)����BtaĈ�����<���р�B��m?}���N=��fa��}��yM�w8��`_.~�%��Ij?����5=��L����+�K���T�z?F޽D��5����/�
��O�MTe�)�o]����ݞF��s�ٲo���K?��՗7� �_p�n�����l�;b �X����G�T�w���-���#�s��5�� ��5�HY}t8g��v�J4��FδO���_��fVN��!@0�\�l�09بX�7�W���G�N<�vXJ���C�|�p��v�����5�ӛ�߀�Z/��~��ҟ܋p���#�⮲o�s�Lv�r������������=x���Nv�E�Gn,��ᴉ0�g�Q�Q����?2/ �7�:��
�'[�>Sk�L�}��F�G���;����%o��|�O@���J��44�t�����9�T�������a'�9�-8�|x���2��i�X��$����q�]��������7��_��g/l�_b�=i�G�^��[������?�O��B�<A��6���/�qq~�:�zB����/��K�+��
����ڦQ�~9Sg2��"�7�襤;�IzS�w��^�C�g~	��&��^�(n��^=��h~�;��x��'r�����>�a�O���[6!��s������:�fT\�t�?8�h��g�����T�}�O�N�8�>{����	��׿�(U�=J�Ǽ�[n=8����Â��3v�>�K�_�E��b������j��"��?��7.���Y��bڧ��d��Y���K����@�̸ɶ�鐇�b��	|/�P���
9s�ъ;��ղ��� ?��4�O����ǟ�a���I>�#�}2�g·�g�\I���
[����������h��<������.g���;�X�o�;�ا���+b�% ?��j�l�w<�����SR2b��㱟�·�B>�'��N�ψ1}p�HG���u����4f�޿�~�.��g�7��?"�#���O�.qm�P���Z� �l��������c�Ӟ������¾� ���s�Ϭ�T*/]-��U��&�������+���[�>�@���Vx@��gƕ�n�����fc/����9�_8��k��+6�cƻ��[g����&�x�}������ x �𦍝,vz<s'G����oZ�g+	;�CL���o%���GoD{�ܯ{ɹF������/�N|p:�O޵��#����ȝ�[���sZ��ؗ=Ž�yD�?��]�Y�S`�8N�J'��y
���1y��փ�yI���ϟ&���@��p�g?�q� L�); ?��ć��Ƞ�v�A�x�g���ty�#KY��8_!�u�C:����z��]�ݧ��<�Y���|�{V^@��&    [� �a�E2���pv�_���[`<�9�9#�ه�9�Ź�Ȯ]��e��~�%u6�qW��gF6��ǯ3�ǾԠ�e��>WV�oh=2��~?���z����Ķ=��^<~��2�"h�=4���zp��}������k�6���ϊD�q���i�-F�o1�Y�R7bx�>|�HG��'��!�e<Ug�v�Eq�q��E�vޕH^�!!̠�F��P��Y�^��^C������bh=r~C��}���q�P�Y`��G(w�a\g�>��7{}�G~F��k��|v���Ǆ�;��!�𹋥�^�1�9�3����ﭗ���
g�G�5"b�� @f�3>����g�_��ַ}������ť�5�D�׺"�ثs�%|/�������@�ߍ�~̇�&]ϖ�wG�S콨���&%��.j|J����}���x��m�:C�
o�6�}�� ���F�x|�g��o�z|�q�>����!�W�̛qGpU�M ��m�"����u1��o��E����c�6�{V>�K�� Ο���ɿG�}�o�s(�����/���b��T�V[r�+<?�S�Q����ǐz����V�+�4�`GW�g��G�����A�z��zXw>��qM�E�[_�qGh_7+�����b��!��hks��E����n��c?�Y��M�3��3W�w��{�q���$��>C����~7�AO��gm7F��W�x�]�V�w��kIh��߱��Nю�	͟��9�r��ɖB`>+?��sH���ƕ������W|�D��f�'���3k��z�ڰ�W�qp����l����;�ν6��A_���]���}x%V|t�r�k4&<��u2�����O>���o!��t	�7���a�a�u#���2h4�����.;� ���s�c�r�s�j�����~T��l���;����9�J�J}�*�恣��q���}��"�g^�����z�X�:���X�<Co��fΙ�
N����KR���������c��V�$D%?��-�w�r��&66��C�Q�&;�<�������H67�~8A��:�� L:�sI,�kh=����.�?�ۧW<���W2�����������Nvl�ÿd௡� sL��3Q��]�*tsr6"!�ݦ��	x����7����.3~�'������v���L�x�mtg8���B�b�=J�hMR���ߓ�d5�'����in�\|^�w������ o����7��*Q('{9r6�<E��X�K��3�����%q�����-_x�8"#���O'�Ũ�;�lT��b�D�RW�����#�m��؋js��D�Ww	;�;�ˆUqf�=����/������-S\6�[�8�zH&��~����hi�o=R�o�s�u8�Bol���~{I��Ǽ�E?���v�Ab�����F`u��"dS�
Zz�T@0��Y�π�J��m_$|�H+��{��=G�ޭ5s^��
�=���}�����]��+����Y{�V��ʰ��R�b�= K�.�KL����8��G��L���V@x�@RBg��ZW����N�#�Mo�	�|'�͂���p�ocz���B�b�=�ky;����J�bF��p��䍻`8�$��h�?=�_��z
1l�M_�^: vv�]A�kl��e�va?v%1����M������m&�R�¦NO��k���~uC���W��5��6R��K����d�����N�8�8��`�����U��H��r�����w�3q�TV8r����N��ʌijoO�����!�P��r��[i�/��.x�Q9+���p��%9*��!�7r?j�=g������?X��bx�u�1�n+eo�C���gA��Ƭ���}���f��ɠ� Q��Wl���o]�Z���B��#���G���,��	�Y��p�y=~�����Ր{���z��SK������D6��l0�L�-��|�vF�'5����N�&�/��A����]8-���Q�����lN���7�J)���?���B��q-�i��%W+���B3�=Ր{���G�ה��[��y/���.G�< lc�#Pg��;�ɗr���+6Gy��big/�n�=0�>z/.�y���S稆�]������~D�K~e�"�����Ώ����@p�Y�H�8\ʰo�_����(�y�t�㕥����ʏ��̚���ـC���l�?�鱖cl����z���������{���F3��j�=~Ɓ��V��σ�W�l��}ݜjk^��gj�=8���}|[��1l9�T#�߸����"����f�C�����c?���.e��=Nv�8��]�ɆB��ɐ[���Pm���˩���܁�)2� �	4o�è�Cy7�5������>�N�?�i0O)�JD��� ��L>���|1���{hm����,��zjd#Q�e�G�|��K��"��#����C���(��}|�Mr���Q�:��px�K8 h�ɕbK5��@m�Ǧ�o��QO�����3��P���@p0����{�������L�����>W��l0�S�ǁ�% 0`I��zW5��C���_BxS?nf��Hڜ���>W#X��)�5J��P{T��������;�����;����zd�mbkš��h��~��������)����9*o7!/��t�石�oj��=������W��57�d��jj��k��3o>pI�O@�cnݭ�?X�[{�y|F�P�+>Z���J\,w��&�k�<��_�{?5�5f�k���.3ϓ<�~I�V�_�"���$�O�����7��Ֆz'��%��Px����sDׅy�3��/��YniT������z��5|w7E�~�{6VP��<�-�ymKFсJ���k��7�WN�g`�~n}����G(N��LB���J�����S\�>�Hk%"^c��������:1@"=�q鯆���{"/y�'0?q62[���G^;R�' ��S�%V�mH=�����+5�̺�1u� � � x֍�9)4iO5��yſ̷���Q�o��d�y�J�/?,�kN�Ro�~�����B��?��~�Ncw�Ϊ�"="��ǂ���~��X~OS��_�;�-��b�9n�ڷH��m�kX��W�=sK���GE�iW[s��[u��/i"�C�Ŋ3�:0����؃}ǧ.ʰo�_iv�C������f��Ē#��.ӑ�V��:K~��ߐz j�v�����n<%L	�=�]�i\�����bq�.��5��]N�x�ضo����c�[����S�9�`���ߐz�*�֙%<�w{[�L�ܚ����nխH��%VN0kF�5��������W����v�'l�"�������|�y���7Я��v��;����ƭE�\�� �l�_x3�� �e��!��B���O��`�+���U֜�#O��M�1����z4έ��oK�5`\8�A�<�,�������N�]>��z4�G�R�^�I��bϭA�+����y����Y&s��ho��ңq֣}�Uh���� ׾ ��_���-���pn��]Րz4ކ�a�|�����78;n�:��BH.�xg��&��F��Rpy�[�s��{�ڱ�K^�37{[#�cw��2q��aL�w5��Em�&�*��9��W�_�:+�u��@���.�r=�ԣ٤[|��3	
�=���:9�ƻ�O�0��dPfc�܆Σ���!'�(��-�����N�3+��}&��M�Ō�+���/����&���qo�wDĝ�@��9�0�/�^ܱ��q4$�j�<8��>{⁪/�O�͍bΌ��8�2lJ>=;�����Ͻ�ݾ�|"�����_�SDZye68a�'��8#ځ��P^�	W��A�GCPi'܄�T�Ct<sWN��,5���p '��5���d�7�!�h���}��j�}�EW��C�L������X+�t�=Y�oT��!�hY�M�   �����0^a�N�f���J��Ԡ�p0xr2�x<��
\�[�Ҙ.�U:��.���3gZ����`��6����Q(~7�>Z���t�ޜ(8�6zO����:~�Уi��u/~ڷ��3��@�7zڋ����iQZe��,�m=(�����p���tjs�%���r��v[����Ô���.C��8���:���������b���5��a��Le��v6����� h��YU@�ެ��ȵ~{���o�%����|R�͐�!�h���_C�&_���NF��*7Ae��0�!�9g"�~T�٘)�����e??��[l�C�͝���O����Be�$�v�d�?C���^v֋�����'��a0v��� Բ�h�#26f��U����_��8E�{���+�tp��7M��x��lڜ�P��w�z�~���	���}��'�r������8p���pΝj(Cc�W�G�D�`g=���p9�s27ܝ�t�Z�:H�3�e��/�ߣf�ۿ���?_Now���И�ۜ�.4Y�V]yFʝ<d��u�t�z�>_��Œ���������<Y��r�m��ns����j���#<���^���؀�_fciV�>㜽��A!�Bcؿ���`�w��FJ��D~}��|�tz�Z�7�����B�Z�������w\��,·��y�d����W�8���П�c�v֫փ��_��r}�_Xs�������X��_�"H�������Gҟ���~��ޚ+����a�G��ۉǃ�`��͈��Z�gѾ���w�3Z�-Fui��ln�Gq9WO`W�E�>�@K�J=h���_�Jv6�]w�S�9�Q����f�n6����U��9�]l(8_ow)���ۂ�6z��0�Qm���u%Iv�8p]����>Ko����љ�_����ð+K� H ��,*݊��3�R�ɶՃ�!��|R� <��,�0T��K�w�@��N]C�
�&q����ķ{����ו��Y��;X(�9o�`QϹ�N��ضz�����}��?W^0�a��?���W�Ԛc����K��m���e�P<���6Z1����������G TX�b��/�_�MN؁�Q��tE*�n>?�^�b����� �j�m���/��ԭ|��bI��9SB��bc�r�~��i�,tS�l[=45�~	���O�Sq���ˡ��l6N�x�#D�:�K�]���N§(��QU�ɽ�U���$��^:\�.% E��z�������T�u��= �~.�Ct��:�힜��:;�@?�1/�����C�~�N�3���sz���6�����b�Sc�Թ��
���r��V���&jT���m������y�������ِ|p��$e�\S�Z�/)����q�Fw���Շ�d�T�=��m	?�/�%��>W)����n�����ۚ�b�b�>"�,"��e��@kN��9i�g�2_�% ��jZ���OdC�����j��O�D��m��7SV)����n d�¹ߴ�	�����7F^���Sm��|����Q���d��1���Sɼ���<�aU[\���>-�A[����;}�x̟���V}���ғ�%RLLq���ץ�!ݤ�s�k�^�>z��� 9
��z_~~�ApU��U�ÆG>��tt���)�G�����Ez7�1�M�m��??i�����É��RRLGm�'��[���E��/λ8�t�\V�f.����?��*�N� �ޙ�	R��H_	O��<QY�1��N=[� �-��v\B�g���"h���J�/�{��i����&;>�pV�$����9]-��C�f�g�M�[�|A�3^^[���5͝�̿Ŀ�2�j3gJ�w��׀X�5�������0)'eV�Ud���H������j�g3����=��RB_�m�~n��S���y��d�Q��,��=��x��V/_��Ka�3�:gn�鵯�)�^t(^��qI�8@vc\v{��Ǝ�?Q~�YM}M���S1��T�t7�W��<��~ �T�_��@zȳ�W�L�N4>�U��˥�@;�̳vD�ƌ���t�����W)�n��o�����	N�:$v�a�T��׆�4D`y@Y���� ��0�嶺'�*����k5G���2g�!�`W���ݷp���< pP�>̿�SB���cqg-��O���(f���
VB�EXu����R=Q���c�r��b���߄u(T�K�#�p5��V��~Gz�^��nk�[��Wt���p����G�0D��₷n�/  B�b�����������W��;E�� �bYC��w?�pF���V7_��!�9OX(Zȁ�G�-g�<�q�?}�sL �"y���d2��iXԊ��>�Zr�_�)��V��7�w7���v����Yrȝ-�L��!��B����ˋ���[�|�ߑ�0D�6�	�N�5H �8BI��e'{d�O9;�Xޒ��@za�jI�<ӛ���s�#v�d�L��DU,�=����I绕c$I�����ݕ�T;A:`o=����n�P�Q�[��x��&w���8��-G��6^�y���j"̏�\�/p^�b�y[�H�*�/�5�Srn;�m
�u�ikh����z˕/��Ồb����;gmma�1�i�5��!�?e$82�{��.�ҏwQ�_5�s�O�NR1!]�l�A�6�����t�U�|A/�$��Lk��N7|W�mlǾkW)��x��V���1�x+�/��e%/��<�����Fef�Ԗ3#kJ��~�p��*T���n� ��(�SJs>�ե�s\�؜�0�q�����v�u��=�Q[SP븭��o8����K&;i�"��2�[N;�U�|��3�M�Z�i}�Z+����u�)�p�ћ��T5���*�������^���݃|�U3�U�;��w�7v]�N���/�{�c6(��L�s���܉ϭg�Z��	���p5ñV%��J�)��@�&\��V�$����F�i)����h9<&P�ľJ�/�{��A�����'�g��X�L� C��8Fd�f�1J�y�p��ݾ1r���9�pn=�Á�H�R�\oəm�֞�bG\^�~�z�U��n�i��xN������״����zx��z��V��~�zH��/��8��m]�QqF!3Z�'�o)o-��Jx듿�{7&@��-�a&��l7���v.��!���+����_���@z�C�Ex�SO�	'��QG�teYB���:3V���x����3z[�}N���Z8b�V��QX��[֚C�3>Wm�^ =�LB��a�cR.���+h�x�W
�9��U���������� W�d�         +  x�}��n�6 ���S̽�A�%�ǽ�=�u�@��M�&Yd�>��$kg��9�	���D�y=�Q�c��A���K���{RL���;G��H�������s��g{=�����p������_�������GO�����ȝ�!�JKէ����ZmA]"��S!WJɮ�^�/��iV}{˽����{<��_�^���4��q�$Ӆ��<x�d[w�*ЬK��깻�}w�9��V�P���RGk�:���I'���`�vsTҬM�H�>Bˎ�4�c���L� i����:�u|�K�n;�&U�=�*@�Y���XFp�!;�Z���4�+C�m�k]�u�V��.m���u�v�h"�u�K.��FS�m��E\�1 ʨ����Z'�Nnt�_ǉ���	�n��u+�[J]zE�,��~L�l��9ø�ŵ.κx��3�V�@�A�t���m�d���*L��T]NH���Z�@,ui�K�.��p���������MQ�׹ˌػw%�����c����*v�t������[M�ō�8�z;��D�_kW�J�!��U�Ylg[@gW�H�X	�;;]��/�����_���������~��ӧ%�	�UJ<
qkQ~/��@�Spvh�5�m�a�@#���g�,����K�'�6���KT��c�mOL�����%��X*��%/�����3�ߞ��D�ֆ�A0aܙ�K����˒B�j��d������	V�B, ���|my<��O����|Zh���؇�'����Zx?�d�p�jA���:��luu�C�������<0�$i��c`��|�f
pa�>��� /X�      
      x������ � �         �   x�eO��0}n?�8��/&�@���.���EQ�ҞKN/
�v��d��0�:��Q�h��.J�9:��<�аs,L�dK� �OZ~ K��~F�!CM�/�^灞�y�!Tg�Pw�RQ�-�=ȠJv�%���J�1z>��Pe{��f�6���Gg�V��JU�;Goi��	_�}y0         i  x���ے�6E����{�P�n]��T���=$�"\N��}��Bdp��`����ڽ�2dg���0|�U�1��֏z��&C�����'07�3Ä�����q�<��� ����{�8 Q$aR�U��q7_g�e���~V�/�ly��@h#qb��A+��lyj��צ����ހ]��(B=�[��f��N��Gy��QF�	��}h�f�:�Vݽ����Io��/�T����J0�<tBG-�����^��[
��� )<�L�P�k�}{HŃ=�"C��������ll�{.�R��"���u���ɴ��	�5�j)�g�ԗrp]�_u���������5�4�4�k�;�I�
�I�E�P�	�	�lA�:7�1Fs02b���w��m�~}%�|a�྘��iLwu����F�y[���z?%��N��ɮ�i�?c�^&p�GȲ�Z�w@f��d�P^�4�h�p2�sS� �!L�s�>+AC�:OW�˳-�	�T�,��|gfO�yfN
��X0�ىa�� ʍ�!(�"��o�!����92�1�+���ڈ�+T1qJv�Z7Ւԋ��k�a��>�ބ�Va� 6WaV�1�ʙ����Xb�7�o�F>�\�XH7A�v~o��O��_�z�!Nj�ЧUqH�/���rX�(�de��- 3��N���3���D󅟆O=+�ϟ�e�-�o���AɂC!x�G
9&���7���O R�C�d�%WS��4��6 TR�Yj�Ӎ�
X�2�`A��k���z��i����֌��R�1	6m!
a_�I��%O	�_�f��7D�P�'����:��u�^�����2Wʈy��dߘ��g/�a�����H��1'�����ǿ ���         S  x�m�ٮ�X E��~�}�`8�7P@E@@I'9��<}{oWR��������ȧb�(&����I3���z�󠧦��<��̊xn�B��[rd��ݒy�ph��U�Z/�]�c�A�����8�C�'��� N��3l�M���-M���\�mM��K��^>�_����X/�)rn:w�$Z�
�)^8�Ǩ!v��O(�bÐE�_���^q�c��iD�c�7UE�\ͭ]T��"���m/��Tbe��጖���,oWҹ]|$7��*�Pd����zzf���!ǡ!�'z�8ʈv��oYK1�%�e�v��\׽��mٚ��z��1����,O�EB�~g]�,�lB�i�4(�_xL�!��H�؄��d�N�R�0#L�-�t�Y$�Y���lg�Q��G=^9���[���B�j0{�j��;ǌS�\�ςx��+�R�Q��/^P���q���@/;w�}�y���@Y���<�:�U�c����#
xx3�{��;,�Ϗӷ"g�ϓ���;0.`��hoF�#=ik[]Z��4@K�n:���<No(��UD�c�dȀ�ji��9!�.��/=�Y�EJ�~4��zr�Z�Fߎ�NC�����4,��+�6"���E��8�SO��iH�/j�IG&�lH�x 2"4ນ��g1�w1�`��#U�r>�ĩ��,q��s%��}�F<�Qr�g f�H�˽Ym�]�r���$b��8� lP���@�������{l��~��l{>ᢘx�ӳH�>��%蒪7$4i�?�ҡl�U���i��������&#�+sȨh�l������񤻺�tJm{�45�U��g�Ērx�B<
32�e
.�]��4O<�m Y��Z� ����P��A�d�V�8�À����_s���!��q��������C�̝lIu{g�;��K�U�i7����α9��v.㲦��4���� ZY�P�i����5ޱCt�[}��clb�t�{^=o)ewN���ە2��|Ne߰���5����(BEkKs�m�+�M�e�|��)�4�M��y�"c˘���I�1լ�B��=��s<������᷵���y����H�f�/�o>>>���ު         S  x�u�M��0���Wp�by����!��vUu���"g�����C�}��$d�
āW��x^�9��-�x�XH�he�n�S5�I�/a�_g��?d��.R����tyQ�3���al��'B���w���YU�����C�E�̅u%X�
S����]�����?�c������RTLK��L�/�A{��	���� �u�����FQ����|����\Jd��O��F5R���Ϳ�SW�O�/���:��GaT��J��~
���Sտ��}��U�7]��I-������4�g%�*n���3��R�a��zAO�[&�H@T���������If�o�e�� ����K���oOӗߌ����U8e�P����̪uk�/}�W���-'�"��J)4B��]E'n�2��P��Є��WA�tw0Ky�TP���yz�]Om��S�wĻ��
�,g� ���=����܄��ch�)�v�t/���6��H1�-�wl�*�\�7�X�	�9�d�8��i~?<��A��S���j���1�1�-�[���9���	�Y�2�����5B��S����\��f���Hi%            x������ � �         I  x�u�I��@D�U��}#�R)�!�������<��`�)0a�J!���E����O��,��7�'��n��k`Ǧ�@$)H���P�ޜ�g�B�~�m�|#�´`rq����AU���&��2{�fN@�%���nT�WУ������s~�n����չkg0�3��`��
��^��\�r�*�"V��=wS-��]����5��;&���7��sڹ�
>ɗk��ټ<q%�>Z��PS�+�1]��J���R�;W�\��,K����P�>�a�#�Z:Hǉ;U�u�Zu��7L���B(������̙��J�u�Ť��	<�L���ܹ�s󗋷��U�a������Z�P�A]+B_mRJc-�wl�b�p^���C�U�v�g)��f�	�1b���_�*���ڕ{w4���5=��P�����[���6�M82\�G�}��Xg߹���m��Їc���S�	'aDg���ӴU`���F��/��+��V�ŲE���9�w��(��!��n�`����W޹x��]����u�����'煶���k-�8�7�K��5�U|��c�.��Xm{<�?������A9            x������ � �         �   x�uͻn�0���<}4��c϶+�Ҥ�6��B�� 6���!��/��jD�е&\�^4u��#���_%o�j"#H��3���8$��vY�2�Ji羽�X�}�����>��N�"�f6)�\Ak�;\	b�P؇�sH�)T��W]��u^�7Y>�6LO?���lp�өT6���J���8����go�1�䪲�6L2�A��:O�c�dڞ�{�4��vX�     