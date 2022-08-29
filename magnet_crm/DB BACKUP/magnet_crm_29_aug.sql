PGDMP                         z         
   magnet_crm    13.7    13.1 1   W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Z           1262    16385 
   magnet_crm    DATABASE     U   CREATE DATABASE magnet_crm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE magnet_crm;
                postgres    false            �            1259    21686 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    21689    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    200            [           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    201            �            1259    21691    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    21694    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    202            \           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    203            �            1259    21696    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    21699    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    204            ]           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    205            �            1259    21701 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    21707    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    21710    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    207            ^           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    21712    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    206            _           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    209            �            1259    21714    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    21717 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    210            `           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    211            �            1259    21719    client_client    TABLE     (  CREATE TABLE public.client_client (
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
    phone_no character varying(255) NOT NULL,
    source_detail_1 character varying(255) NOT NULL,
    source_detail_2 character varying(255),
    birthday date
);
 !   DROP TABLE public.client_client;
       public         heap    postgres    false            �            1259    21725    client_client_followup    TABLE     �  CREATE TABLE public.client_client_followup (
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
       public         heap    postgres    false            �            1259    21728    client_client_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_followup_id_seq;
       public          postgres    false    213            a           0    0    client_client_followup_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_followup_id_seq OWNED BY public.client_client_followup.id;
          public          postgres    false    214            �            1259    21730    client_client_id_seq    SEQUENCE     }   CREATE SEQUENCE public.client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          postgres    false    212            b           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client_client.id;
          public          postgres    false    215            �            1259    21732    client_client_journey    TABLE     �  CREATE TABLE public.client_client_journey (
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
       public         heap    postgres    false            �            1259    21735    client_client_journey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_journey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.client_client_journey_id_seq;
       public          postgres    false    216            c           0    0    client_client_journey_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.client_client_journey_id_seq OWNED BY public.client_client_journey.id;
          public          postgres    false    217            �            1259    21737    client_client_schedule    TABLE     .  CREATE TABLE public.client_client_schedule (
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
       public         heap    postgres    false            �            1259    21743    client_client_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_schedule_id_seq;
       public          postgres    false    218            d           0    0    client_client_schedule_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_schedule_id_seq OWNED BY public.client_client_schedule.id;
          public          postgres    false    219            �            1259    21745    client_client_staff    TABLE     �  CREATE TABLE public.client_client_staff (
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
       public         heap    postgres    false            �            1259    21748    client_client_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.client_client_staff_id_seq;
       public          postgres    false    220            e           0    0    client_client_staff_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.client_client_staff_id_seq OWNED BY public.client_client_staff.id;
          public          postgres    false    221            �            1259    21750    core_profile    TABLE     �  CREATE TABLE public.core_profile (
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
       public         heap    postgres    false            �            1259    21756    core_profile_id_seq    SEQUENCE     |   CREATE SEQUENCE public.core_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_profile_id_seq;
       public          postgres    false    222            f           0    0    core_profile_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_profile_id_seq OWNED BY public.core_profile.id;
          public          postgres    false    223            �            1259    21758    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    21765    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    224            g           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    21767    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    21770    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    226            h           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    227            �            1259    21772    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    21778    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    228            i           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    229            �            1259    21780    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    21786    followup_followup    TABLE       CREATE TABLE public.followup_followup (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_choices character varying(255) NOT NULL,
    followup_choice_code text NOT NULL,
    followup_choice_head text NOT NULL,
    followup_textfield boolean NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer,
    color character varying(255) NOT NULL,
    font_color character varying(255) NOT NULL
);
 %   DROP TABLE public.followup_followup;
       public         heap    postgres    false            �            1259    21792    followup_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.followup_followup_id_seq;
       public          postgres    false    231            j           0    0    followup_followup_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.followup_followup_id_seq OWNED BY public.followup_followup.id;
          public          postgres    false    232            �            1259    21794    followup_followupselected    TABLE     7  CREATE TABLE public.followup_followupselected (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_selected_code text NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.followup_followupselected;
       public         heap    postgres    false            �            1259    21800     followup_followupselected_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followupselected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.followup_followupselected_id_seq;
       public          postgres    false    233            k           0    0     followup_followupselected_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.followup_followupselected_id_seq OWNED BY public.followup_followupselected.id;
          public          postgres    false    234            �            1259    22240    notification_notification    TABLE     �  CREATE TABLE public.notification_notification (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    notification_type character varying(255) NOT NULL,
    notes text NOT NULL,
    is_opened boolean NOT NULL,
    client_schedule_id bigint,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.notification_notification;
       public         heap    postgres    false            �            1259    22238     notification_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.notification_notification_id_seq;
       public          postgres    false    242            l           0    0     notification_notification_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.notification_notification_id_seq OWNED BY public.notification_notification.id;
          public          postgres    false    241            �            1259    21802    staff_staff    TABLE     �  CREATE TABLE public.staff_staff (
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
       public         heap    postgres    false            �            1259    21805    staff_staff_history    TABLE     k  CREATE TABLE public.staff_staff_history (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    child_staff_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    parent_staff_id bigint NOT NULL,
    updated_by_id integer,
    staff_level_id bigint
);
 '   DROP TABLE public.staff_staff_history;
       public         heap    postgres    false            �            1259    21808    staff_staff_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.staff_staff_history_id_seq;
       public          postgres    false    236            m           0    0    staff_staff_history_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.staff_staff_history_id_seq OWNED BY public.staff_staff_history.id;
          public          postgres    false    237            �            1259    21810    staff_staff_id_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_staff_id_seq;
       public          postgres    false    235            n           0    0    staff_staff_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff_staff.id;
          public          postgres    false    238            �            1259    21812    staff_staff_level    TABLE     h  CREATE TABLE public.staff_staff_level (
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
       public         heap    postgres    false            �            1259    21815    staff_staff_level_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.staff_staff_level_id_seq;
       public          postgres    false    239            o           0    0    staff_staff_level_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.staff_staff_level_id_seq OWNED BY public.staff_staff_level.id;
          public          postgres    false    240            �            1259    22283    staff_staff_salary    TABLE     `  CREATE TABLE public.staff_staff_salary (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    salary_amount numeric(20,2) NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint,
    staff_level_id bigint,
    updated_by_id integer
);
 &   DROP TABLE public.staff_staff_salary;
       public         heap    postgres    false            �            1259    22281    staff_staff_salary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.staff_staff_salary_id_seq;
       public          postgres    false    246            p           0    0    staff_staff_salary_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_staff_salary_id_seq OWNED BY public.staff_staff_salary.id;
          public          postgres    false    245            �            1259    22275    staff_staff_salary_montly    TABLE     v  CREATE TABLE public.staff_staff_salary_montly (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    salary_date date,
    salary_amount numeric(20,2) NOT NULL,
    bonus_amount numeric(20,2) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.staff_staff_salary_montly;
       public         heap    postgres    false            �            1259    22273     staff_staff_salary_montly_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_montly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.staff_staff_salary_montly_id_seq;
       public          postgres    false    244            q           0    0     staff_staff_salary_montly_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.staff_staff_salary_montly_id_seq OWNED BY public.staff_staff_salary_montly.id;
          public          postgres    false    243            �           2604    21817    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            �           2604    21818    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    21819    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    21820    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    206            �           2604    21821    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    21822    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    21823    client_client id    DEFAULT     t   ALTER TABLE ONLY public.client_client ALTER COLUMN id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client_client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    212            �           2604    21824    client_client_followup id    DEFAULT     �   ALTER TABLE ONLY public.client_client_followup ALTER COLUMN id SET DEFAULT nextval('public.client_client_followup_id_seq'::regclass);
 H   ALTER TABLE public.client_client_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    21825    client_client_journey id    DEFAULT     �   ALTER TABLE ONLY public.client_client_journey ALTER COLUMN id SET DEFAULT nextval('public.client_client_journey_id_seq'::regclass);
 G   ALTER TABLE public.client_client_journey ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    21826    client_client_schedule id    DEFAULT     �   ALTER TABLE ONLY public.client_client_schedule ALTER COLUMN id SET DEFAULT nextval('public.client_client_schedule_id_seq'::regclass);
 H   ALTER TABLE public.client_client_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    21827    client_client_staff id    DEFAULT     �   ALTER TABLE ONLY public.client_client_staff ALTER COLUMN id SET DEFAULT nextval('public.client_client_staff_id_seq'::regclass);
 E   ALTER TABLE public.client_client_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    21828    core_profile id    DEFAULT     r   ALTER TABLE ONLY public.core_profile ALTER COLUMN id SET DEFAULT nextval('public.core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    21829    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    21830    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    21831    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    21832    followup_followup id    DEFAULT     |   ALTER TABLE ONLY public.followup_followup ALTER COLUMN id SET DEFAULT nextval('public.followup_followup_id_seq'::regclass);
 C   ALTER TABLE public.followup_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    21833    followup_followupselected id    DEFAULT     �   ALTER TABLE ONLY public.followup_followupselected ALTER COLUMN id SET DEFAULT nextval('public.followup_followupselected_id_seq'::regclass);
 K   ALTER TABLE public.followup_followupselected ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    22243    notification_notification id    DEFAULT     �   ALTER TABLE ONLY public.notification_notification ALTER COLUMN id SET DEFAULT nextval('public.notification_notification_id_seq'::regclass);
 K   ALTER TABLE public.notification_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    21834    staff_staff id    DEFAULT     p   ALTER TABLE ONLY public.staff_staff ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);
 =   ALTER TABLE public.staff_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    235            �           2604    21835    staff_staff_history id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_history ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_history_id_seq'::regclass);
 E   ALTER TABLE public.staff_staff_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    21836    staff_staff_level id    DEFAULT     |   ALTER TABLE ONLY public.staff_staff_level ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_level_id_seq'::regclass);
 C   ALTER TABLE public.staff_staff_level ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    22286    staff_staff_salary id    DEFAULT     ~   ALTER TABLE ONLY public.staff_staff_salary ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_id_seq'::regclass);
 D   ALTER TABLE public.staff_staff_salary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            �           2604    22278    staff_staff_salary_montly id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_salary_montly ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_montly_id_seq'::regclass);
 K   ALTER TABLE public.staff_staff_salary_montly ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            &          0    21686 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    200   ��      (          0    21691    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    202   ��      *          0    21696    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    204   ��      ,          0    21701 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    206   >�      -          0    21707    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    207   ��      0          0    21714    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    210   ��      2          0    21719    client_client 
   TABLE DATA           �   COPY public.client_client (id, created_at, updated_at, is_active, uid, is_registred, source, created_by_id, updated_by_id, domisili, gender, nama, pekerjaan, umur, is_locked, email, phone_no, source_detail_1, source_detail_2, birthday) FROM stdin;
    public          postgres    false    212   �      3          0    21725    client_client_followup 
   TABLE DATA           �   COPY public.client_client_followup (id, created_at, updated_at, is_active, uid, answer, client_id, created_by_id, followup_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    213   h�      6          0    21732    client_client_journey 
   TABLE DATA           �   COPY public.client_client_journey (id, created_at, updated_at, is_active, uid, journal_type, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    216   ��      8          0    21737    client_client_schedule 
   TABLE DATA           �   COPY public.client_client_schedule (id, created_at, updated_at, is_active, uid, schedule_date, status, answer, client_id, created_by_id, staff_id, updated_by_id, schedule_type, notes) FROM stdin;
    public          postgres    false    218   V�      :          0    21745    client_client_staff 
   TABLE DATA           �   COPY public.client_client_staff (id, created_at, updated_at, is_active, uid, client_id, created_by_id, staff_id, updated_by_id, color) FROM stdin;
    public          postgres    false    220   s�      <          0    21750    core_profile 
   TABLE DATA           �   COPY public.core_profile (id, created_at, updated_at, is_active, uid, is_supervisor, reset_token, is_ib, full_name, no_ktp, phone_no, email, is_verified, verify_uid, created_by_id, updated_by_id, user_id, last_login_ip) FROM stdin;
    public          postgres    false    222   �      >          0    21758    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    224   �      @          0    21767    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    226   �      B          0    21772    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    228   �      D          0    21780    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    230   �      E          0    21786    followup_followup 
   TABLE DATA           �   COPY public.followup_followup (id, created_at, updated_at, is_active, followup_choices, followup_choice_code, followup_choice_head, followup_textfield, created_by_id, updated_by_id, color, font_color) FROM stdin;
    public          postgres    false    231   ^      G          0    21794    followup_followupselected 
   TABLE DATA           �   COPY public.followup_followupselected (id, created_at, updated_at, is_active, followup_selected_code, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    233   �      P          0    22240    notification_notification 
   TABLE DATA           �   COPY public.notification_notification (id, created_at, updated_at, is_active, notification_type, notes, is_opened, client_schedule_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    242         I          0    21802    staff_staff 
   TABLE DATA           �   COPY public.staff_staff (id, created_at, updated_at, is_active, uid, created_by_id, profile_id, staff_level_id, staff_parent_id, updated_by_id, is_locked) FROM stdin;
    public          postgres    false    235   �      J          0    21805    staff_staff_history 
   TABLE DATA           �   COPY public.staff_staff_history (id, created_at, updated_at, is_active, child_staff_id, created_by_id, parent_staff_id, updated_by_id, staff_level_id) FROM stdin;
    public          postgres    false    236   
      M          0    21812    staff_staff_level 
   TABLE DATA           �   COPY public.staff_staff_level (id, created_at, updated_at, is_active, uid, level, level_name, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   '      T          0    22283    staff_staff_salary 
   TABLE DATA           �   COPY public.staff_staff_salary (id, created_at, updated_at, is_active, salary_amount, created_by_id, staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          postgres    false    246         R          0    22275    staff_staff_salary_montly 
   TABLE DATA           �   COPY public.staff_staff_salary_montly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    244   2      r           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    201            s           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    203            t           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    205            u           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            v           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 143, true);
          public          postgres    false    209            w           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    211            x           0    0    client_client_followup_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_followup_id_seq', 6, true);
          public          postgres    false    214            y           0    0    client_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.client_client_id_seq', 2010, true);
          public          postgres    false    215            z           0    0    client_client_journey_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_journey_id_seq', 20, true);
          public          postgres    false    217            {           0    0    client_client_schedule_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_schedule_id_seq', 19, true);
          public          postgres    false    219            |           0    0    client_client_staff_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_staff_id_seq', 1894, true);
          public          postgres    false    221            }           0    0    core_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_profile_id_seq', 141, true);
          public          postgres    false    223            ~           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    225                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);
          public          postgres    false    227            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);
          public          postgres    false    229            �           0    0    followup_followup_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followup_followup_id_seq', 26, true);
          public          postgres    false    232            �           0    0     followup_followupselected_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.followup_followupselected_id_seq', 1, false);
          public          postgres    false    234            �           0    0     notification_notification_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.notification_notification_id_seq', 1, true);
          public          postgres    false    241            �           0    0    staff_staff_history_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.staff_staff_history_id_seq', 1, false);
          public          postgres    false    237            �           0    0    staff_staff_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.staff_staff_id_seq', 135, true);
          public          postgres    false    238            �           0    0    staff_staff_level_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.staff_staff_level_id_seq', 8, true);
          public          postgres    false    240            �           0    0    staff_staff_salary_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.staff_staff_salary_id_seq', 1, false);
          public          postgres    false    245            �           0    0     staff_staff_salary_montly_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.staff_staff_salary_montly_id_seq', 1, false);
          public          postgres    false    243            �           2606    21838    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    200            �           2606    21840 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    202    202            �           2606    21842 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    202            �           2606    21844    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    200            �           2606    21846 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    204    204            �           2606    21848 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    204            �           2606    21850 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    207            �           2606    21852 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    207    207            �           2606    21854    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    206            �           2606    21856 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    210            �           2606    21858 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    210    210            �           2606    21860     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    206                       2606    21862 2   client_client_followup client_client_followup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_pkey;
       public            postgres    false    213                       2606    21864 5   client_client_followup client_client_followup_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_uid_key;
       public            postgres    false    213                       2606    21866 0   client_client_journey client_client_journey_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_pkey;
       public            postgres    false    216                       2606    21868 3   client_client_journey client_client_journey_uid_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_uid_key UNIQUE (uid);
 ]   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_uid_key;
       public            postgres    false    216            �           2606    21870     client_client client_client_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_pkey;
       public            postgres    false    212                       2606    21872 2   client_client_schedule client_client_schedule_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_pkey;
       public            postgres    false    218                       2606    21874 5   client_client_schedule client_client_schedule_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_uid_key;
       public            postgres    false    218                       2606    21876 ,   client_client_staff client_client_staff_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_pkey;
       public            postgres    false    220                       2606    21878 /   client_client_staff client_client_staff_uid_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_uid_key UNIQUE (uid);
 Y   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_uid_key;
       public            postgres    false    220            �           2606    21880 #   client_client client_client_uid_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_uid_key UNIQUE (uid);
 M   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_uid_key;
       public            postgres    false    212            $           2606    21882 #   core_profile core_profile_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_email_key;
       public            postgres    false    222            '           2606    21884 &   core_profile core_profile_phone_no_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_phone_no_key UNIQUE (phone_no);
 P   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_phone_no_key;
       public            postgres    false    222            )           2606    21886    core_profile core_profile_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_pkey;
       public            postgres    false    222            +           2606    21888 !   core_profile core_profile_uid_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_uid_key UNIQUE (uid);
 K   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_uid_key;
       public            postgres    false    222            .           2606    21890 %   core_profile core_profile_user_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_key;
       public            postgres    false    222            1           2606    21892 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    224            4           2606    21894 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    226    226            6           2606    21896 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    226            8           2606    21898 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    228            ;           2606    21900 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    230            ?           2606    21902 (   followup_followup followup_followup_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_pkey;
       public            postgres    false    231            C           2606    21904 8   followup_followupselected followup_followupselected_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupselected_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupselected_pkey;
       public            postgres    false    233            ^           2606    22248 8   notification_notification notification_notification_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_pkey;
       public            postgres    false    242            R           2606    21906 ,   staff_staff_history staff_staff_history_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_pkey;
       public            postgres    false    236            W           2606    21908 (   staff_staff_level staff_staff_level_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_pkey;
       public            postgres    false    239            Y           2606    21910 +   staff_staff_level staff_staff_level_uid_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_uid_key UNIQUE (uid);
 U   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_uid_key;
       public            postgres    false    239            G           2606    21912    staff_staff staff_staff_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_pkey;
       public            postgres    false    235            c           2606    22280 8   staff_staff_salary_montly staff_staff_salary_montly_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_montly_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_montly_pkey;
       public            postgres    false    244            g           2606    22288 *   staff_staff_salary staff_staff_salary_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_pkey;
       public            postgres    false    246            L           2606    21914    staff_staff staff_staff_uid_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_uid_key UNIQUE (uid);
 I   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_uid_key;
       public            postgres    false    235            �           1259    21915    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    200            �           1259    21916 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    202            �           1259    21917 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    202            �           1259    21918 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    204            �           1259    21919 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    207            �           1259    21920 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    207            �           1259    21921 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    210            �           1259    21922 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    210            �           1259    21923     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    206            �           1259    21924 $   client_client_created_by_id_a8280477    INDEX     g   CREATE INDEX client_client_created_by_id_a8280477 ON public.client_client USING btree (created_by_id);
 8   DROP INDEX public.client_client_created_by_id_a8280477;
       public            postgres    false    212                        1259    21925 )   client_client_followup_client_id_45370856    INDEX     q   CREATE INDEX client_client_followup_client_id_45370856 ON public.client_client_followup USING btree (client_id);
 =   DROP INDEX public.client_client_followup_client_id_45370856;
       public            postgres    false    213                       1259    21926 -   client_client_followup_created_by_id_57569ec6    INDEX     y   CREATE INDEX client_client_followup_created_by_id_57569ec6 ON public.client_client_followup USING btree (created_by_id);
 A   DROP INDEX public.client_client_followup_created_by_id_57569ec6;
       public            postgres    false    213                       1259    21927 +   client_client_followup_followup_id_fc5601fd    INDEX     u   CREATE INDEX client_client_followup_followup_id_fc5601fd ON public.client_client_followup USING btree (followup_id);
 ?   DROP INDEX public.client_client_followup_followup_id_fc5601fd;
       public            postgres    false    213                       1259    21928 (   client_client_followup_staff_id_04b7a4de    INDEX     o   CREATE INDEX client_client_followup_staff_id_04b7a4de ON public.client_client_followup USING btree (staff_id);
 <   DROP INDEX public.client_client_followup_staff_id_04b7a4de;
       public            postgres    false    213                       1259    21929 -   client_client_followup_updated_by_id_20a2ab61    INDEX     y   CREATE INDEX client_client_followup_updated_by_id_20a2ab61 ON public.client_client_followup USING btree (updated_by_id);
 A   DROP INDEX public.client_client_followup_updated_by_id_20a2ab61;
       public            postgres    false    213            	           1259    21930 (   client_client_journey_client_id_2e449a98    INDEX     o   CREATE INDEX client_client_journey_client_id_2e449a98 ON public.client_client_journey USING btree (client_id);
 <   DROP INDEX public.client_client_journey_client_id_2e449a98;
       public            postgres    false    216            
           1259    21931 ,   client_client_journey_created_by_id_88c21422    INDEX     w   CREATE INDEX client_client_journey_created_by_id_88c21422 ON public.client_client_journey USING btree (created_by_id);
 @   DROP INDEX public.client_client_journey_created_by_id_88c21422;
       public            postgres    false    216                       1259    21932 '   client_client_journey_staff_id_6ff5bed2    INDEX     m   CREATE INDEX client_client_journey_staff_id_6ff5bed2 ON public.client_client_journey USING btree (staff_id);
 ;   DROP INDEX public.client_client_journey_staff_id_6ff5bed2;
       public            postgres    false    216                       1259    21933 ,   client_client_journey_updated_by_id_1f07dea5    INDEX     w   CREATE INDEX client_client_journey_updated_by_id_1f07dea5 ON public.client_client_journey USING btree (updated_by_id);
 @   DROP INDEX public.client_client_journey_updated_by_id_1f07dea5;
       public            postgres    false    216                       1259    21934 )   client_client_schedule_client_id_e3ee1cbc    INDEX     q   CREATE INDEX client_client_schedule_client_id_e3ee1cbc ON public.client_client_schedule USING btree (client_id);
 =   DROP INDEX public.client_client_schedule_client_id_e3ee1cbc;
       public            postgres    false    218                       1259    21935 -   client_client_schedule_created_by_id_9b078863    INDEX     y   CREATE INDEX client_client_schedule_created_by_id_9b078863 ON public.client_client_schedule USING btree (created_by_id);
 A   DROP INDEX public.client_client_schedule_created_by_id_9b078863;
       public            postgres    false    218                       1259    21936 (   client_client_schedule_staff_id_92fd05bd    INDEX     o   CREATE INDEX client_client_schedule_staff_id_92fd05bd ON public.client_client_schedule USING btree (staff_id);
 <   DROP INDEX public.client_client_schedule_staff_id_92fd05bd;
       public            postgres    false    218                       1259    21937 -   client_client_schedule_updated_by_id_89e26ce0    INDEX     y   CREATE INDEX client_client_schedule_updated_by_id_89e26ce0 ON public.client_client_schedule USING btree (updated_by_id);
 A   DROP INDEX public.client_client_schedule_updated_by_id_89e26ce0;
       public            postgres    false    218                       1259    21938 &   client_client_staff_client_id_196dca78    INDEX     k   CREATE INDEX client_client_staff_client_id_196dca78 ON public.client_client_staff USING btree (client_id);
 :   DROP INDEX public.client_client_staff_client_id_196dca78;
       public            postgres    false    220                       1259    21939 *   client_client_staff_created_by_id_ef63d6bf    INDEX     s   CREATE INDEX client_client_staff_created_by_id_ef63d6bf ON public.client_client_staff USING btree (created_by_id);
 >   DROP INDEX public.client_client_staff_created_by_id_ef63d6bf;
       public            postgres    false    220                       1259    21940 %   client_client_staff_staff_id_2a3b6b6e    INDEX     i   CREATE INDEX client_client_staff_staff_id_2a3b6b6e ON public.client_client_staff USING btree (staff_id);
 9   DROP INDEX public.client_client_staff_staff_id_2a3b6b6e;
       public            postgres    false    220                        1259    21941 *   client_client_staff_updated_by_id_35a02e55    INDEX     s   CREATE INDEX client_client_staff_updated_by_id_35a02e55 ON public.client_client_staff USING btree (updated_by_id);
 >   DROP INDEX public.client_client_staff_updated_by_id_35a02e55;
       public            postgres    false    220            �           1259    21942 $   client_client_updated_by_id_12f0c54f    INDEX     g   CREATE INDEX client_client_updated_by_id_12f0c54f ON public.client_client USING btree (updated_by_id);
 8   DROP INDEX public.client_client_updated_by_id_12f0c54f;
       public            postgres    false    212            !           1259    21943 #   core_profile_created_by_id_d0c22ea6    INDEX     e   CREATE INDEX core_profile_created_by_id_d0c22ea6 ON public.core_profile USING btree (created_by_id);
 7   DROP INDEX public.core_profile_created_by_id_d0c22ea6;
       public            postgres    false    222            "           1259    21944     core_profile_email_858298b3_like    INDEX     n   CREATE INDEX core_profile_email_858298b3_like ON public.core_profile USING btree (email varchar_pattern_ops);
 4   DROP INDEX public.core_profile_email_858298b3_like;
       public            postgres    false    222            %           1259    21945 #   core_profile_phone_no_312b2c31_like    INDEX     t   CREATE INDEX core_profile_phone_no_312b2c31_like ON public.core_profile USING btree (phone_no varchar_pattern_ops);
 7   DROP INDEX public.core_profile_phone_no_312b2c31_like;
       public            postgres    false    222            ,           1259    21946 #   core_profile_updated_by_id_f1bd9ad3    INDEX     e   CREATE INDEX core_profile_updated_by_id_f1bd9ad3 ON public.core_profile USING btree (updated_by_id);
 7   DROP INDEX public.core_profile_updated_by_id_f1bd9ad3;
       public            postgres    false    222            /           1259    21947 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    224            2           1259    21948 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    224            9           1259    21949 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    230            <           1259    21950 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    230            =           1259    21951 (   followup_followup_created_by_id_bd33bd23    INDEX     o   CREATE INDEX followup_followup_created_by_id_bd33bd23 ON public.followup_followup USING btree (created_by_id);
 <   DROP INDEX public.followup_followup_created_by_id_bd33bd23;
       public            postgres    false    231            @           1259    21952 (   followup_followup_updated_by_id_aeb66564    INDEX     o   CREATE INDEX followup_followup_updated_by_id_aeb66564 ON public.followup_followup USING btree (updated_by_id);
 <   DROP INDEX public.followup_followup_updated_by_id_aeb66564;
       public            postgres    false    231            A           1259    21953 0   followup_followupselected_created_by_id_d6e0a19e    INDEX        CREATE INDEX followup_followupselected_created_by_id_d6e0a19e ON public.followup_followupselected USING btree (created_by_id);
 D   DROP INDEX public.followup_followupselected_created_by_id_d6e0a19e;
       public            postgres    false    233            D           1259    21954 0   followup_followupselected_updated_by_id_f571c189    INDEX        CREATE INDEX followup_followupselected_updated_by_id_f571c189 ON public.followup_followupselected USING btree (updated_by_id);
 D   DROP INDEX public.followup_followupselected_updated_by_id_f571c189;
       public            postgres    false    233            [           1259    22269 5   notification_notification_client_schedule_id_cba97593    INDEX     �   CREATE INDEX notification_notification_client_schedule_id_cba97593 ON public.notification_notification USING btree (client_schedule_id);
 I   DROP INDEX public.notification_notification_client_schedule_id_cba97593;
       public            postgres    false    242            \           1259    22270 0   notification_notification_created_by_id_66da0796    INDEX        CREATE INDEX notification_notification_created_by_id_66da0796 ON public.notification_notification USING btree (created_by_id);
 D   DROP INDEX public.notification_notification_created_by_id_66da0796;
       public            postgres    false    242            _           1259    22271 +   notification_notification_staff_id_8c97b845    INDEX     u   CREATE INDEX notification_notification_staff_id_8c97b845 ON public.notification_notification USING btree (staff_id);
 ?   DROP INDEX public.notification_notification_staff_id_8c97b845;
       public            postgres    false    242            `           1259    22272 0   notification_notification_updated_by_id_08647d1b    INDEX        CREATE INDEX notification_notification_updated_by_id_08647d1b ON public.notification_notification USING btree (updated_by_id);
 D   DROP INDEX public.notification_notification_updated_by_id_08647d1b;
       public            postgres    false    242            E           1259    21955 "   staff_staff_created_by_id_750bb59d    INDEX     c   CREATE INDEX staff_staff_created_by_id_750bb59d ON public.staff_staff USING btree (created_by_id);
 6   DROP INDEX public.staff_staff_created_by_id_750bb59d;
       public            postgres    false    235            N           1259    21956 +   staff_staff_history_child_staff_id_339b898a    INDEX     u   CREATE INDEX staff_staff_history_child_staff_id_339b898a ON public.staff_staff_history USING btree (child_staff_id);
 ?   DROP INDEX public.staff_staff_history_child_staff_id_339b898a;
       public            postgres    false    236            O           1259    21957 *   staff_staff_history_created_by_id_d7ef2079    INDEX     s   CREATE INDEX staff_staff_history_created_by_id_d7ef2079 ON public.staff_staff_history USING btree (created_by_id);
 >   DROP INDEX public.staff_staff_history_created_by_id_d7ef2079;
       public            postgres    false    236            P           1259    21958 ,   staff_staff_history_parent_staff_id_a548da9e    INDEX     w   CREATE INDEX staff_staff_history_parent_staff_id_a548da9e ON public.staff_staff_history USING btree (parent_staff_id);
 @   DROP INDEX public.staff_staff_history_parent_staff_id_a548da9e;
       public            postgres    false    236            S           1259    22233 +   staff_staff_history_staff_level_id_01fbd862    INDEX     u   CREATE INDEX staff_staff_history_staff_level_id_01fbd862 ON public.staff_staff_history USING btree (staff_level_id);
 ?   DROP INDEX public.staff_staff_history_staff_level_id_01fbd862;
       public            postgres    false    236            T           1259    21959 *   staff_staff_history_updated_by_id_0a1a85b8    INDEX     s   CREATE INDEX staff_staff_history_updated_by_id_0a1a85b8 ON public.staff_staff_history USING btree (updated_by_id);
 >   DROP INDEX public.staff_staff_history_updated_by_id_0a1a85b8;
       public            postgres    false    236            U           1259    21960 (   staff_staff_level_created_by_id_591009cc    INDEX     o   CREATE INDEX staff_staff_level_created_by_id_591009cc ON public.staff_staff_level USING btree (created_by_id);
 <   DROP INDEX public.staff_staff_level_created_by_id_591009cc;
       public            postgres    false    239            Z           1259    21961 (   staff_staff_level_updated_by_id_27db31c0    INDEX     o   CREATE INDEX staff_staff_level_updated_by_id_27db31c0 ON public.staff_staff_level USING btree (updated_by_id);
 <   DROP INDEX public.staff_staff_level_updated_by_id_27db31c0;
       public            postgres    false    239            H           1259    21962    staff_staff_profile_id_f1607ae4    INDEX     ]   CREATE INDEX staff_staff_profile_id_f1607ae4 ON public.staff_staff USING btree (profile_id);
 3   DROP INDEX public.staff_staff_profile_id_f1607ae4;
       public            postgres    false    235            e           1259    22321 )   staff_staff_salary_created_by_id_79ac0491    INDEX     q   CREATE INDEX staff_staff_salary_created_by_id_79ac0491 ON public.staff_staff_salary USING btree (created_by_id);
 =   DROP INDEX public.staff_staff_salary_created_by_id_79ac0491;
       public            postgres    false    246            a           1259    22299 0   staff_staff_salary_montly_created_by_id_f9fa18f6    INDEX        CREATE INDEX staff_staff_salary_montly_created_by_id_f9fa18f6 ON public.staff_staff_salary_montly USING btree (created_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_created_by_id_f9fa18f6;
       public            postgres    false    244            d           1259    22300 0   staff_staff_salary_montly_updated_by_id_c063865d    INDEX        CREATE INDEX staff_staff_salary_montly_updated_by_id_c063865d ON public.staff_staff_salary_montly USING btree (updated_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_updated_by_id_c063865d;
       public            postgres    false    244            h           1259    22322 $   staff_staff_salary_staff_id_ff8bde85    INDEX     g   CREATE INDEX staff_staff_salary_staff_id_ff8bde85 ON public.staff_staff_salary USING btree (staff_id);
 8   DROP INDEX public.staff_staff_salary_staff_id_ff8bde85;
       public            postgres    false    246            i           1259    22323 *   staff_staff_salary_staff_level_id_1864b0fd    INDEX     s   CREATE INDEX staff_staff_salary_staff_level_id_1864b0fd ON public.staff_staff_salary USING btree (staff_level_id);
 >   DROP INDEX public.staff_staff_salary_staff_level_id_1864b0fd;
       public            postgres    false    246            j           1259    22324 )   staff_staff_salary_updated_by_id_35738d50    INDEX     q   CREATE INDEX staff_staff_salary_updated_by_id_35738d50 ON public.staff_staff_salary USING btree (updated_by_id);
 =   DROP INDEX public.staff_staff_salary_updated_by_id_35738d50;
       public            postgres    false    246            I           1259    21963 #   staff_staff_staff_level_id_02e5808b    INDEX     e   CREATE INDEX staff_staff_staff_level_id_02e5808b ON public.staff_staff USING btree (staff_level_id);
 7   DROP INDEX public.staff_staff_staff_level_id_02e5808b;
       public            postgres    false    235            J           1259    21964 $   staff_staff_staff_parent_id_3a0ea1e3    INDEX     g   CREATE INDEX staff_staff_staff_parent_id_3a0ea1e3 ON public.staff_staff USING btree (staff_parent_id);
 8   DROP INDEX public.staff_staff_staff_parent_id_3a0ea1e3;
       public            postgres    false    235            M           1259    21965 "   staff_staff_updated_by_id_ae4985b6    INDEX     c   CREATE INDEX staff_staff_updated_by_id_ae4985b6 ON public.staff_staff USING btree (updated_by_id);
 6   DROP INDEX public.staff_staff_updated_by_id_ae4985b6;
       public            postgres    false    235            k           2606    21966 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3304    204    202            l           2606    21971 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    200    3293    202            m           2606    21976 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3382    226    204            n           2606    21981 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    200    3293            o           2606    21986 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3306    206    207            p           2606    21991 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    204    210    3304            q           2606    21996 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    210    3306    206            r           2606    22001 B   client_client client_client_created_by_id_a8280477_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id;
       public          postgres    false    3306    212    206            t           2606    22006 M   client_client_followup client_client_follow_followup_id_fc5601fd_fk_followup_    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_ FOREIGN KEY (followup_id) REFERENCES public.followup_followup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_;
       public          postgres    false    213    231    3391            u           2606    22011 T   client_client_followup client_client_followup_client_id_45370856_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id;
       public          postgres    false    3324    212    213            v           2606    22016 T   client_client_followup client_client_followup_created_by_id_57569ec6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id;
       public          postgres    false    213    206    3306            w           2606    22021 Q   client_client_followup client_client_followup_staff_id_04b7a4de_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id;
       public          postgres    false    235    3399    213            x           2606    22026 T   client_client_followup client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id;
       public          postgres    false    3306    213    206            y           2606    22031 R   client_client_journey client_client_journey_client_id_2e449a98_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id;
       public          postgres    false    216    3324    212            z           2606    22036 R   client_client_journey client_client_journey_created_by_id_88c21422_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id;
       public          postgres    false    3306    216    206            {           2606    22041 O   client_client_journey client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id;
       public          postgres    false    3399    216    235            |           2606    22046 R   client_client_journey client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id;
       public          postgres    false    216    206    3306            }           2606    22051 T   client_client_schedule client_client_schedule_client_id_e3ee1cbc_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id;
       public          postgres    false    3324    218    212            ~           2606    22056 T   client_client_schedule client_client_schedule_created_by_id_9b078863_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id;
       public          postgres    false    218    206    3306                       2606    22061 Q   client_client_schedule client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id;
       public          postgres    false    218    3399    235            �           2606    22066 T   client_client_schedule client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id;
       public          postgres    false    3306    218    206            �           2606    22071 N   client_client_staff client_client_staff_client_id_196dca78_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id;
       public          postgres    false    3324    220    212            �           2606    22076 N   client_client_staff client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id;
       public          postgres    false    220    3306    206            �           2606    22081 K   client_client_staff client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id;
       public          postgres    false    220    3399    235            �           2606    22086 N   client_client_staff client_client_staff_updated_by_id_35a02e55_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id;
       public          postgres    false    220    3306    206            s           2606    22091 B   client_client client_client_updated_by_id_12f0c54f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id;
       public          postgres    false    212    3306    206            �           2606    22096 @   core_profile core_profile_created_by_id_d0c22ea6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id;
       public          postgres    false    222    3306    206            �           2606    22101 @   core_profile core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id;
       public          postgres    false    206    3306    222            �           2606    22106 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public          postgres    false    206    222    3306            �           2606    22111 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    224    3382            �           2606    22116 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    206    224    3306            �           2606    22121 J   followup_followup followup_followup_created_by_id_bd33bd23_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id;
       public          postgres    false    231    206    3306            �           2606    22126 J   followup_followup followup_followup_updated_by_id_aeb66564_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id;
       public          postgres    false    231    206    3306            �           2606    22131 R   followup_followupselected followup_followupsel_created_by_id_d6e0a19e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user;
       public          postgres    false    233    206    3306            �           2606    22136 R   followup_followupselected followup_followupsel_updated_by_id_f571c189_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user;
       public          postgres    false    233    206    3306            �           2606    22249 W   notification_notification notification_notific_client_schedule_id_cba97593_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl FOREIGN KEY (client_schedule_id) REFERENCES public.client_client_schedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl;
       public          postgres    false    3348    218    242            �           2606    22254 R   notification_notification notification_notific_created_by_id_66da0796_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user;
       public          postgres    false    242    206    3306            �           2606    22264 R   notification_notification notification_notific_updated_by_id_08647d1b_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user;
       public          postgres    false    3306    206    242            �           2606    22259 W   notification_notification notification_notification_staff_id_8c97b845_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id;
       public          postgres    false    242    3399    235            �           2606    22141 >   staff_staff staff_staff_created_by_id_750bb59d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id;
       public          postgres    false    235    3306    206            �           2606    22146 Q   staff_staff_history staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id FOREIGN KEY (child_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id;
       public          postgres    false    235    236    3399            �           2606    22151 N   staff_staff_history staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id;
       public          postgres    false    236    3306    206            �           2606    22156 R   staff_staff_history staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id FOREIGN KEY (parent_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id;
       public          postgres    false    3399    235    236            �           2606    22228 L   staff_staff_history staff_staff_history_staff_level_id_01fbd862_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta;
       public          postgres    false    236    3415    239            �           2606    22161 N   staff_staff_history staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id;
       public          postgres    false    236    3306    206            �           2606    22166 J   staff_staff_level staff_staff_level_created_by_id_591009cc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id;
       public          postgres    false    239    3306    206            �           2606    22171 J   staff_staff_level staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id;
       public          postgres    false    3306    239    206            �           2606    22176 >   staff_staff staff_staff_profile_id_f1607ae4_fk_core_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id FOREIGN KEY (profile_id) REFERENCES public.core_profile(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id;
       public          postgres    false    3369    222    235            �           2606    22301 L   staff_staff_salary staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id;
       public          postgres    false    246    206    3306            �           2606    22289 R   staff_staff_salary_montly staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user;
       public          postgres    false    3306    244    206            �           2606    22294 R   staff_staff_salary_montly staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user;
       public          postgres    false    244    206    3306            �           2606    22306 I   staff_staff_salary staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id;
       public          postgres    false    246    235    3399            �           2606    22311 J   staff_staff_salary staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta;
       public          postgres    false    3415    239    246            �           2606    22316 L   staff_staff_salary staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id;
       public          postgres    false    3306    246    206            �           2606    22181 G   staff_staff staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id;
       public          postgres    false    235    3415    239            �           2606    22186 B   staff_staff staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id;
       public          postgres    false    3399    235    235            �           2606    22191 >   staff_staff staff_staff_updated_by_id_ae4985b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id;
       public          postgres    false    3306    206    235            &      x������ � �      (      x������ � �      *   D  x�m�M�� ���)|�Q��s��,+!����v��ۏU�|/�'SZ���x���Y�����V�x8�v�E._����MXY�jf�K�MX[�g2�{O�g�~O�6-wUZk4-7'@t�؎�,dlOi=2�\~���*k��}���:�BDsOA;��d��.W��s3�����O�5�Wq{4|wps��7.ۭ�bv�,���j��z�X8���s#���"�q�<�͈�v���͸��Z�8�R�wb�g��i'���u�����I�-��>:��n��������R�����JQ9%&H��&r:*U��t���:��T�*��~��e����	�PQ�<��6�F�]{q#�D��;��D曊�X-���G���}����A��|�U .#*'0�PZ�f�w"ݺ�.�b6?fVZ���NA]&�͝yA��cn���,�ɳ����״���r)�w���͸g
�?��L&��OR0	�T5�y:z���fq#hD��)R�^��-)V,ĸƉD����e������44ujP��U&lR�R(�3aǐ2���4�+�FĲ����L��9�9��K�(VҞ29�@�p�N���["4�����*��U.�@$��L\�c��I��[���E��`8m���42V�u�TL&CY�fb")H�q�/�t�.��~�5)��)өb�hWR�3=+���%�eҽb1kaRJ�CJ�M+Y�2b�I���Ik1o3H����6������E9�T�����t�m�����Cz���A|7�}|�����E����U�����^�gbB�{�$���5@�$|�����"<      ,   }  x���ǎ�Z �5y�,�C�9�)Ҁ1�Ʀ�0(ҕ;n4���NB��f��~o�����I� ��omDY���1��,������p<Ѹd����)��i�L��W�:�r��E��e==�Y�$�ZߵV��;�s�u�}�j��A�h!��?�������Q�|m�}��},�Jq�Ur�����թ(1�蝂Rog��i,%ɗa$�*P�q]�Q<߻�F�n��9po���B�!� !�
�w���Eqzi��AQ���YS2�%GÚ�|p�D4�EM홽���mI4A*�*����m�
�gB��W!�X��W(����L�A1,�#C�Ci�p1>dcǕ%k��ִ]��y8N�����VH��c!�@���
��B��zu�OF����4�sp"�����n�dV�in'|�i�c��OE����6o�L��3!K(��O!���4q��jX��j+cI%x�0A�e�$M�37�k52{�^qF�AG��О�Bɰ[!{'d?
��E&�1p0YYG�4�U�4D96	e�8cH)M@6�~�X�Y�r����c�D��x�o����H;������B]�.�v`�-����}�2���3���~�.�t_��1>�|�I��%�Ѣw�8��
�;!��S"z���Bj�2�{;�H���x�D=;2�:Q�m�����Ѣؑ��L��r�*�4Y�q��[�p'>R��_s�N�����.��U��
��&�e;(v�7�Z��pw�4Y��E�Η�p&�������.�]J;���"�m������'~l��%��Nv��aBt'�������8��`$��� R���qܽ5�	ׇ�Ju0?{U5s� �5�/<�E�u6��o��������?�u�1}�R�ΐ�Knq�b��,~5��RzK@���|�7��J]+�'�TObe���`�P3sr1��S܅Bb}���]?��!A��ߙ��0�'k��H���⹞1Q3�/��uq�6R���/b����z1ݯ�fI3o\��GxL:�E����6��̳�_��1�_� Ww���Lj�e�&C�9.�:=�\��� �,F�V�2��;����V�����t1���cя��
�˃z��,����})n�P�
@���뼮<N���������k��      -      x������ � �      0      x������ � �      2      x���ےG�-���
��e[�/�i@��
��Jv^���>jj��N����,$ *��{�Z�Aq;�<|-�p_��ob`nj����(���_����橷t��빵��A&We���|������7�{����ݛ7�	��7���vu<=n��ۗ��7��W�?~���?�?��/�H���s�x˸tR����������\�WH/^����t�jPN�!Z���j+���O�w���l��������b�a�l���m��)��YS�`��
&k��M�O)ڢ��3���o�����ϖ�KU�m�m[����q�Z�P�I��3��㐴ጱ��t��i�z��:n�����u��f�a�nXe�Rm��s�&W�UT�U�2('����x�Q��j�\w�ۮ��wۗ����O�Yu�lFY�d���+�k	\i>X������ܩ�[JRR$Uf.�Ƿ�_V��k��%����=���_�x�F���f�s���vZ�W�u��y��sT��yI���h�W�j�W�׻����������֚k]� �(��n�����U���*pI��5�$��I��Ws�����n��"�������Ӿu8}�s��F�l�@�M�M��!���+]�����!�5����>��b>}[��ֲ��`���o+sp�UD�m�TC�%IyΓ�2��W��o���������c'�����Swj���~Mv��&9x�q�������X~�߸g�?~��˯p��x�	����J�W�y�.
��5 �:|炋���ꤳ5��~�ޯ࿏��g8��L�8р8!�+44N����f%
�b'���_1Y��,  ��=b1|BN��;�N4�N(��Bqu�����a�ƪ�h�FX��D.ŊY~	_����S���&�&�����S����G0�p ��8D��*J�)6�0yH�^��x���	m�B,������W!�!Ft��!a��Zp[�,��|Y
_�l���5F��/{�B��QVH��u���A1	SkT���VeR���l��y~^�6�����r��=� 5� 5�V�������"%�w���|�~���:��9�+��[=�^�#_;��7��7���O8!��Jns����a&��Gx\A������a��>������O��}l7�݁r��r�ж�3u�y`s�ܷ (�@|s)����L�%�8���D`x���>lo(�:ق:��rx�/�c�[�a)���{�Ű\��%�,>����vΣ�L��d�$3�M�p�΁¸�K��6s����\�$X��ג������y�����d��D��O|'p��Ճ��U*!݈��AH��g���="�د>�v����y;�M6�M
�ڞ�Sy��b�Je06��h���clS�gq��	Am��9>�uW��g�6y��@;�@;0��v��s:����<�Af/���5�KN!��y����?m��}�����}q�ؓؓ��oVLL�\�쀨�Bq9#��Q��1��p�셯_��iL������7X":�O6�r�-��.iGu�%L��)ds-�`�a�yg���~��u�>|�_~?�����o������,P����I8$����14\D�Ӧ(�tB ������ �7O,St �l �4J-x�QS�����0�sYV�2-�H<jV����n��۷[�g|�SL�*сy��y��N�b+&�\��(����I� ����,If�}��z^����['�@<�@<���%N�9��dt�ȝ-�eD<g�bJI~��{�ח��?W�߾��5�7���ƅe���9��<qj&Nϊ�\���J ��Gv7����Ș��s���"�'���Z��^pbo���lYf�C�	Hp4�Y�7%��raF��6w���tD$^m��sK��� r��ť7�i5�ʳ�\�le�H�����K$Kpmy�n�6�o�\3��P�V�,\9�{aB�*�����R��BHC��f�,y~:�>̭�ojU��U��}�u�����EP�MK�k����Iց�#I^ͨ���i��^�ٲ��6`Y	����t���=�Ca����+��>��e��:F5����?лq7�+'s;Y5Zz(��2ӷM�ā(4��H�״B�dmLQf=7��~Z�Vϣ�^فŪ��J
َ85Sm͘
�����r$y��!��<��<��`w�p���o���U��t�M�qj����@��%�����з<�ь� �<=�^߮�8v1��u�.N��(5��*�r^�6dX�(h��2� �}{�w���ȧ�ۻ�돷%W�˺�J3��5���̋RN{>hΐ:{^/��Q��Z��i�:�R�O��˷��o�T�d�T�TV�,���S�W�W�8����}��x.�8k����K�� �F���z����/T2�2�u��;N��
~?�+�Cd�C+��X�R�e�ӏ������9Y�KDVy�n���|�W|za�!�~)3�S��������H:���O��kF�:p����X���ټ9'Q#	���r��M6#�MR��7<n�V�O+�h_��{H�n!�;W�[��&ZP
�3�5p���P�L&��2#i��
�wș_6�r�>�FO�w`�n��^gp:Ձ�4<�FeMUt�G"�Eց2���%�?�}��O��t�45C4���b��1I�	
��/��W�������<w�9E��p��t�]};,h~�j�2^��7QQ'/J�"�P|a��{��Y�����!!.׭�L�4������s��D�赠�6���$�g�5s&D;{�y�>�>]�;��4�M��8�g,�+��4�j,=q�����Y������?�In�@�a,^N�@�k�kZ�Ǝ4}b�<��t��һ�B܅s�A�`e1�9��e�c׷�v �i �VL,x�b=÷��%3Dm+��Ӏ6d��F���������O|�o����p�KGD���i#�·5�re5H��W�Ã� ��1� ��͛�m�����/�㗯7/˺�LԴ%?��=!�$%�AK|���� N��Z�0�4���כ����[���,^w��i��vK�N�@��v�\Vறt�4�*�"\8?/�}��������LLoF��L�$��B���'��<hǀ�`@�
���׊��O_���}�7�G����L���L�_���ԝ���P���9At-��T=X�Y�����-�b�����L���=Nՙ�;ǝ,�ܒ'_�rH5����a�p���T�T3|���POѡ�(�3CՎ"����L����a\Ϲ������; �����e;��6����׎h8�x$�Ɇ:�EJ�K����=���1������X������l����3��vX��%�����$�,$�pN!Vk��;?�K��zuX�]?�K����t �m ��~�������Z��e9`�n(�V��y�g�>���W�݃��n�|L���u��6N��$�V�p&���rj��8�(����~:>n�)�0�g�g�=8���8��g��<��Ș�`�t�EK=����ī۷"�u�u�،S9����TI5WL]_5d$��.4rd����esS~ �|���M��B+N��b��C��c���΁�$�6R�ڼ\��>|X��������f�g�r�r�Zծ���^�ų�1�XԺ*���0�w�!UR|r�6+؍���q���#3�y��^>x���9�ڏ]Tm?p%xOŭ�!��yN��:����%g/���B��jW�7Rfy�r���g��m ���sΌ�"/y�b����q�"*S�1��c�;�7u)�{�{�ۆ=�N��R��!��a)�|x1�2O�4�_O������R�������Ѐk�g��&�k���!� �f"S�\��p!kf3�~X?n����a�9��l��x�xV.ԧp�'"��n���Ҡ�����x���bV=��V���~����M�w�7<XLQ�v@�k@�U    j�����
bod��R=53��d�2���R�6�y'�i;`�5`��j��N��*�`;F���!�y�6���R3�}9����3~lw�����.��\�,�b�SXp�) K�JP�!H��B� �)B�\�<�6 eZ��֫���ۇ��t���\Ӹ��[�N�_UF歁oP�,����%��FdQgO�������pG���MJm;�5�Z�P����#�\�HD�`������)A�R�?�J3J����]�_�o���@<�@<���p8Ճ4p��ćP+��rp"B=KUxmk�jx��2���4^�Em���9���RL=���:6�D�SD"��#�B�u�;����:r����[���B̸6vxQ����*� ?�ޠO�U�v�q�������n}<=o�7���|����Q�e�)�#U/���ՃKF!�X����=�����=��2�'v����4�o�өX\��."�����	_;��xit3��g����zχ55�]Y��@=�@='�oG6�T�#x��k#L���"<�:0������s����@D�����|n�A�U�������U@���!!F��akQ�����[�Sԡ"��4j�����:�ߞ7�B��NI�𥕚&g�B&���6I�]?�c�&�h�G֕�������.ϳ�~���-�p�,ւ�+D�ey4R�L19i98���#K!Ɇ*�3�1Vb'3;`�7`΁9�	=N��N d��J����R'<�}q)J���f��A�g�=�[�D�u��o����m��4z{�Z�%/1ȉ@��X6.i(`���*4K�v�o��K��j�ǷL�	���h�Y�<�^�M������f��Ӌ�\��2���W�������?S�{�~���؄�{��a-���p�&�\���|�������@�8���3��������M�6 ��<����R
�Sw�nX��8����I��_�T�Q�����It�F��MlB��G<����i�B^2&UT1��&�ӹ  Ӝ���)"�{΂���
o���c��NQ� ;O�um������X��I0�#��Đ�,��9����sB&�4N���?nO�F�=��5��#Þ: �4�Q��N��T��t��ژ��Q͑V�������ߣg���-��y�/�8ۢq������+2%�i\�gS�a�U�y|�������ǰK���{��M��Y��Xv�t?x�n��fv��~�2�iF#���L�<��@��a�]x��VO�H:D*>Ҙ%5{$�:�&��	��	���f�?R�������:`]�$'����`)��"5�gj �Ȓ����к��<����է�����~s|F恬���x�ž�x�<_��tzh�I;�� �42�%XE��H�Ґ�5�i��t�� ������4�5	uL�Er� ^E�o"�F�������c����Nww[�����p;-�:�!��i2��xt��.��w)�S�B�:���Q(뽘��>n�� B��2���a��d>d�DH�朒���5�H)�X2nD�.%_��#?o��7+�����C�������MƷ]�N'W�
%�2IM(m����h+7HҬ�r<}"c��C� �����f���)�s1����D���x���N�Z�� �g}�><�{���2��:Ю!��Ǚ����M9��HO�R�3�4�aYK�r:7�w]�����v����:�B��M�\{��:�����(�T��$Y6��^F����?�R�*^�_�KA:�1�Q/�[0X�Ki>d�E���T�p`C�g�\��R̼b y9����R�0tX�c裾���$�N3I��s]��8���&��D:T6�����h
��D�@����\��`l%?�,���'�=��́'d�� ��?h����țׇ���q��א|��%����W*
�v�N
��mz ��ȉ�,$��ō�Յ��ސ}��}{��N��K���֡h+�W�&��A�d�y��v��Wu�s�����p���;�_xC��*E�hعH�m�"	\<I$��2�� �Z/��z�@�ʷo�F���}�l�M=){a|z�C
jlR���L��O�8�����8�_~|U(�d!�C��7�_�$�~��qL�a��h���<Ģ���4I.:7�D�	㭻�eth������/�N��"�d"D��y��H�����0ا��oa���f��w�����B8���릔+�O	�,�#���(� B�l,3
��vx�����v����}Lt8��<���Udy	(���
�E�T�,=nw�k�c�t���ސ{��v[�����͜��h�j��q@>�4�Wg���q*��=���r�!��B/p"�,ӡ�8�Q��#���T�* �Z�t.���Yӎ�?��d%�߸�B/0ʵیqꧬ_���

�Z�$1�Y�S9P;���c�����e�ZS3���k�w������6�6�q{�Ɉ5�(ᷙS;^�1�LOm�б�y�=��O7uL�!���/0ǹ�;g���u��!s��J<ї8XNU}ܾ�c<nv�������e�㫤Y�54_pl[��NLA"D�}�L��L�8`$VKM���փ,J��+_����|�-��Gh���ЖyЅj�>�#��f� 3xf�!������au�.�q��jo�5�^�Q��6=?cg�G�"~��{��(T�)� O�B�0������mne��o(���l[~�N��~��6�ո�Cx;}L�4�/�,�y��Ok�E�p~��܁sq����>�N�x�|a�{j��1zL���vU3S˼��q؀��֫����JVW�&: �����y8���f���kHl�<�3�`�J��z>���p:��@*�oT�|�{��N���ސ|�yN/�.� ���0>��{>>��ԕj�Pϫ+����(�x�Rt������b�8��i,�(��@�F�*5Χ�J��ep�!����-y�6�!��B/���v��s����;
��pZ9 �����|��ʼ���E��n����Um��j/���6Dy�Q�8^���czz�F�$5e7+]$3VϷ�E�G�!���n�7���)��Q�L�	���a+r<R�F̪���=lO�Bq\?Cn/\��
oH���#��5��M�6#jՂ+�w�,2�yt�%(�R3���m��ۗWY�˨
�PQ�N�l�;'����\V"rk,��+E�M:Ī��?Pw}-��+�W�@���
~4��iN/U��9�H�u�!�J�Ϻ�����A1>{������i�t���~
�qm�:����pein��)����}��A�����я�{ܴ�}�F�w���~
�F�6V�t�C�ȶ$�A�lY��M$���U
�x溓���,:�SxC<^�*SȨ�T��\�쨚M�Ă&_k���HCי������#��
	������kH����p��r�T�u@��I��!�Ȧ=;'�\��i}OҮߕ�;$SxC2���"�tj.R��I��5��0#QЈA&�z)u�a�o��vE��m��OI�)�!��f���NJ�\�@��@q�Jyp��R�S<Y풛��X>�H��X�fH�)�!��_�0�D�?3Y��x@)�����Cd�KdԊ�Yy�t�����qiM��)��E�Z�iĩ�R:fD�EZI�H[O�kb���A� ����ݖ?�/`��OѮ�@��	�/ ��bf���:��җ����� =�5��/������h��PJ��i���פUT��z@fȜ��zv��ׯ)3�Wo^���o0�C��7�I`�R�B�Z�� �|����$M;�h��G�
��L���y��?�W�kz-��A%�!Q�+���4�S���h	���J��z4�Y�w���|�q���x�m_��Ņw(���R	(���&�9��Y����8��S�y6f��4-�&����O�W�����oQ�Z	o������J7N'�����v�Dd3��Ͱ, b    ��v��FSL�`)(l�������c�|	oȗ�F3��hL� �*c��'tz�t"�:��9x���%l}��j_�Q�z	o���"�h���->�=�&�I��.�qUJ�s��q��B:*PS���w��P1A�1%Ce픢fR��4<It�& ���EDf&1/����>n>����tm���!�2�TcY����Dɘj\��LuCX�,�H +�e�%$T�#�q��{��b&�!f�س�ʋS=����5����� ���80f���#6�6@���Q�|,���u�ju66tL}oj�N#��ʚ�n�iB�(�Ӛ���EA�:#�w��#zG���Q��bt(6Mv����P���P3�LԣR�P��Ϩ�i�l^i�X�%��W�;�!nBK:ڻ(�tz竈^:6pA}�NEbK�6)�"+v�l��'�U���!m��&���=4�Ӌt�Ƃ>�A#Z$��k��z�����7ϸ��!Ղ��]�&��n�I��}�Y���;	xF����Ù�ڲWVʪc	lV[�
�:{}��P5�U\[�P��锻��R.`u�3ʮ*���: ?KV!��+Uv�K|�ţ��%.wH����	_TĢ�I�O��s%]vO�-KG�Z9~������a�z��7Q�C̄7�Lp]�nSg=u=�7J1 w��Z���r�`��|aK�h���uK/:MxC����6;�N��h�,��<�����˞��ۑ
������!f�b&,K� �"~�mќ��j��K��|j�BXn��]�lwK~:LxC��d�g�{SRH�d03-Ȩz���xծh�f�M���u���e;���YB�Q�����A*���b��
)652�\��E����W�pݭ�h����$�s�Wfu!���D/	J�vU1H^]��I=/�<�w�ת�u�O�`	o����Nc�c��Ł��"�����5hf4��~�,�w>̕�7����a|i|}��ܡZ��%}SKt:m�L$�#L���V�S�K�!��L�Ǌ�h�r��u����Z	X�6���X���_��(���L�?b<�#��?辪�>�&�c7�Hr.ܡW�z%�|���S;u�de$�M+^�
��3ڐ!�O�����ﶫg��^g_y�v	oh��*�zqz����h�/Mʍ'�&�����Ĝ�oh����u[���Xk(� z��6G�N��0�$r��0j�)�>Z	��QZEffu�ϔ
QR����v�y�֐*�BT�qxYV"S�x0���2u�!(����+�\����ӨA�r�O�!P�%��-����l�[�L���Jf��ųL���ysX�?l>��xW{;��QB���y~.�"]N�5Фy�`��>*9z<�o�a�z������сr�R�^h���i*
V ��ࠨW_�8�4�������_ߗ��
%��P���`٤oY�%�JC�;��:D0�$Mɕl��$��������y���x߮���ސ)�,���i�H>��!���NJ��/B�KA 7f\�w%��Z���t3.BW�C��7�J`Ԃ[X~�+2G�mX��t�G��w�Ƅ�,�m?S����e����[�L	oȔ (e[��N��ZRz�')c�����B�$xV�}��w��8��S��p����(�� %[xΣ������1C(4dn�i^O��5gP9�ypAgEWZ���t:~:?A^Cr�J	o���*��AK��"B���j;��EELΆ�4����9WM\\�;�JxC�(���S��_�择ٕa�W�8�s�&fm��Qw���ōN��t��j��{w@`C�7Q,^���*�Sl�"ZЊ;ڒ�PuFҸ���<>�R]�z������/�3�� ������.fE:פe8�$��5��n�9��8�\4��i������^�\{�(�NK���y|fr��eH� �O\�RL�F�=��ݖ-;TKDC��W�6���L�� A��Q���C�*"`Г|U��g?|��;�͂ޡY"�%�'r�s޺K��F�* ��m���L�, ���]qH��z����v�y؏x/���������\��P��ᤩ�����C_�0�A��*�DU�yyx}�u(���b	�	_�=�Nb��i�iDI/��TN�XE��������v=�5w蕈�^	���ј�9�g�ԗ3r<�I�\B���/�qm2e h~ilb�;�+#�P-�X�m�Zѫ�
����όEA2``��\�g��}w�\���������%�i�����ɇ���EOS�$I)G�ˇZ�	ł��n���\����~��:�����/�rm%t:���LK)�4NFJ�H~~�:[��3n�v�{�>J�=}�lޡ`"
&`R��e�N'�.�d6���<U��5}fH���7�̵a������U���;��]"��8�t�!��<��6��V"L����8���_�N�У�F� I�5�K���ѩ8:�x���U��X���3C��1 B�4�������ۼ�ޯ������0qƋ��a�4�Le������-q���L�V���*����e̱/��;�KDK��3)�~��I�� `$��!Z�'��^Q��p��O��������ג.�t�����;�QcFm�;Ҋ��Cq�J_g���2f�WS;`��\����T��&���PE�1��
�2��N�ࣳ���-vO����̈́��/-�/�j�7�N�"�'���L^�q�q�V.E�i.д;W��{�������ђ/w[�D����$��"��M����4s4u#P�~���_W���/���/�	_o�kD���h)�xe�VfjU���. �|���`��l��Si�E����ǟ��!�)���|-��Ղ�N�]��	��Ag�"��W�f�.����|��a����� �[�~^?����eOt������7b�tz��0\����\�4�T�'_\�s�����H���2:0��]�_�i��s�6F$H�-M@J�����!k-�txN��#�=n���q���%�%[B��R������4�Ic#(�D�"x��v� �ݬ� v���K�!W"Zr%����]���j8��ҪT������ �w^#O�u6�HU���nuʻ҉��.�^�6����ƆD�3e ���XA+��Z�hK�B�4�:�:���E�Bt����	HT���TU.�A��yF��fHc
T���<��*�׭�w����٬~޼�_gx
6�L`�o+,Щ?�|Y�[�,�Xp�PG6��g5�#�̭�OO/4�t	�:&��c"��-|d)�!M)�C����CY.:>d��*��~ #���=����7��C�D4�Lk�7:���o&Q���$H��V���	�T2<g���R�}�"��m#.Fw@_CԄ�4�Eb�t*%�lxE�4�@C�$��5�N�Co��v������\�;��\}���&�S�-DG���H4�Hg#�&-h���, I�J#�������?ݎ8�9ѐ3���6��i{	�x���+I�UC
��7&E]����ӻ��#���v
���1�{�p㬜FLY��#��80�<xZ{�+ �c�����^֫�0;�������P3}���A:u�HH����|n(&���v����t{�Ǜw���m��39j�2M�F�Sa��ʍP�3k���0�SRHLR�5�Y���~��y����M�����;DMDC��o1Z�K��N�q�2hEe8 RTo���tt���`_�+V�����_]���&����&�����E.����)�Xå�B��JYf������}�.:TMDC�D��l�P��T�'����j��k���"ճ������[�O���,:�LDC�DP Y0��-0�Ki\� ,h[֎�=Js��+ϧ������p	Z+�@"p:M��-�`jH�m�vp�Hal�E��$�q{Z��n�W��\�k_����k��8�h��L��^��3�nB��ȪE�f,[�+�(2�kY�%��_Jjۊ~t:��U!$Sh{���;T�G^�����(+gm    ��ϛ�mO���~�|�;dLDC����6>�trd���3(p,��Q5��`4m��,���j��Ŵ�㉆�ѬC�D4TL�Om��J�S�u�����T�ɶ� �]��i?��\��}~����T���N�!g"r& ��=�S;ə�d����G}8���P�8[�%R����˟�*�/�[��Q-�J�:DMDC�D��m��C�EA<����4��1�l
7���������^E�� }u��kȚ��.�M8�j�I$Gbppj멹��)�s0%Gc�!�ׇ��K���):�MDC�DP����^*2�B�AC���DM��������Q��n�Tm�o7U��ѐ8�Y���E���6��Ȝb��^Ik�S�󾈔\f�V����j�y��'�!pb�ڒit:92�O�ga���H�+dp!F��H2��g >����~���ۢl�ȉh���&ߞ���Ib
7N�¶!�JM��"�!tD�$�0y�fI�=��8��}/u,:4NDC��ʶ'��T�����TJhռ��� � ����t�sG~O��Ǖ�7sm�C�D4dN@�t��M��v&�h3\XЦ.Z~�)C-N� �se���u�����a��:TNDC�lJ�k��2B�ϲ�S4� i�<. �@:d��{)I㼡�R��P7u�)��w�'q)�G��1�)18Gū"Yf,F���+y�o>o��<�$�}}n��8�w$��&8���-=��Ȇ\�#�����G��IJ�y����k�[u�]C����v`��4��]�yl�7��j�R��iKl0P���!��4/Sn�C�E4�X��
W8��<r��RL����P�0� j��|i.!����I5����ݫ/_"q�(�h�������N��[����C?mӬ����$�]I�I�ݿ]���?au_�����%�Pb�|�S\s΋���<��b�!q�=�B����{���t����_�1��TJ�S�	���
���/����,��󵟟���������~�A�kB�!�"�+��% NEy%/5r$j��������h%f쒖������M�'��ѐ^5m�&��ID�R����%w��m�,U�l��$p8�K����>~���4����P\!=ض\,�N��Dȹf$Vж�H� ���m7���=������ClE4�V;m{�N�%6Z��RR�����̎��*������3o�>��ف�*wjo��D�؊h���L�P���d�`�Ga,B�4 ��K�9\- q1��wׇ��ݎ�CaE4V��e���N'C�SUyz#�;�IH�=R���2��쬲r�����/�4�+:�UDCZ왷�`�tz�(�M�KΩ���b]�~X���+����%��W����5�CTE4DU���m� ´���Fg�wD,��S�.%GdVVQ�e������Q�j5u�]{):TUDCU�V\��@�T_x��EУ���H�BT�gY#t K�7Jߏ[`��������Va��i����T�֑~*��((E��88v '����S�k[И�=�����jw���hȫ�:)�f8����͊70Z������+��g�|����V���MVH��Z���Vm�'��':7C�-=#���Z:��̀W��j��:�z>���H����@:�VDCjdjaJ�|�:�j�!�#�ifcC)�Z�ǟD��䅔c7G���i��%�th����
�Vxۯq:�M�UT�}U|lz���NG�E�s��_�����1�������mzڡ�"�+ 'K�4�b�D�8�'BRNic�=��������8����sck6�V�NX{�N/[�Lɸ��D��	�+�x�5Dt�N�8�z��o���uu�5~�z�7�^}�}`�P_������TM�L[��豤C��Ӡ�Y������zT����n����w谈�8�ғN�-��۪*UU4ՄS�3��}�$29_C����2�]�p6tX@�ڂt8��eQ�piH��"'�z��B�pF��ؼ����m}���Y?�}��:YDC�K,-4A�٣�v�R(���}U��i紛+���i�{G��z�!�"�,`XC�8�JB'��ҩ� )��z��t�@�hD�AU����<�Q�[�;DYDC��
�m!��	H��ʄ�^�G�VRp#1˒��"�͘ݧI�4�,�!����-�8U�nS[� �G��u��;��j�,P~�-	_�j~�D���ߏ�N�ѡ�"�, |��穥�0�I/�3�br�٣E��*j>�Ksd/�k��Yѐe�9~��t�sQ^������<^SCd��Ɯ�sѐ����zuK�k;����b���z8���F��i=l���ZoiŸ3����\6}7��>��?�&�5$w����(�0������ᆋ�=�>R+��p�|�5# �(�w����֣X���u(���2�	[x1��N�B��Y$�4���M�/a1�����=� ��ݨ��;=�V�:�YDC�aB��n
o`�L�!�����F�|��~�n���g�k��C�E4DZ ��=�N��R=�@p7��q*i��f$����9�<>X{G����f���[�V�hh� 8�38ԓ���A�����=r�c��:��- �5��~Xߊӡ�"- M��ө7ݓ&5)Z����ZR�A�--i��>�������uH���4 ��g��������tvCJ�k�lV4u(<SR�qg4h��}���5���C�E4�Y ;�������F
�@|h]���]p�� ��j�站�ND2�5t�jq�5TY =:�t:	��A&��㆒ m�R��m�(�0���v���d�C�E4�X�9�/؊Dz�/_56��������{��3��8gl�V���f�ז�-��b�Y,��f^�=�Z�l��E7�,|VF��g���"��s���!:��!������3-)(H�-Xëp������fXu�?pz��޽����zw+Y(:$XDC� ��<ت�EZGEk��`]ͯNN060�r���2_����q�B�LT�[�N��W�ڙ�!�"R,���X��)�)(J&�f��G�����J��g��ͧ�q�������+Fw�Ȇ.������l6�H�
�<RI}Ȗ�� i������|]�� �~�_}<O�oJ�,�!��ܒ�NM-����98�y+x�������*�GYvw��q�[m����C�,����7�|8��8�����H�� q\��*'���y�8�?�ۓ��(��|���":tZdC�����p:�#~Gf��qdPc\��-7�#|�_'�|������o��?�I�kR�!�"B-�}�^��S5I.��t��:)j��$�&��"��1O�zݓ��tۉӡ�"*-@���H��I���(���Li�GaД��9��~f�a�����u�m��C�E6MRj�!��p�U��Q�G�2��:�ҭlr�����>O�\��߃�lh� ���N'S�ծD�ږ�4$��B�!Ap�t{>+�H��i	��w2C�C�E6�Y`�Bu�S�f�E�(1���4�O�Uy�
H����Q�?�w��E�$�lH�����GUg.��I����j�*v𾊡Pm%�Üt������3}�����w�ہzIP��B���7�jo���B�P���
`"�_��M�eLE�}���/����<�5�Pc�ۅU�N�	�A�+�O)�F�B-L�*��o���/�z�C�E6�X �ڷsR����o�nH���Hs*Ձg_xvIsK��׉�����Pa�ݵ��8��	b n`�FBHAA�Zx��삝Y��p�����e�R,�!� �N@Z,S�Lȋ�A5)n('<ŁZoj��/y4�4�i_y����c�]n��Ӆ��@ox�}����á�ta�P�h�ʬ�F�n�@�*s��q�	�w�3-;YdC�а4|�өe�Uo�ŧNތ�&j�� ��(�����������2,�!��� W�S5U�<-���"UW�'Ni���g-U(7�~
߾����ځo�    ��ĚMR�!@	�wȬ��tn�ȃ��M�6����ֻ��n��~9��\=���+0�,��q:aFR���^���w:8D��%%�|��?�h':��s��U�]vȰȆ�f��tj�GP�]�v(�T�mЃ�%�Q��9���ЧR���۟of e�
�l�� t�:�&�#�>�@#��2 %���RU�I;���Ow���?-���`�,,������L0/Fڱǅ�$ a]���y�����R�y��^��|�~@�)�,D/\���	�| �=ˤ+U�C����k��:a#�_���+��mQE:�Hƪ
��C�� ��/�0?��d��T=�h�JǴӆ�j�oO4��a�+�!�Bߺ�I��Q����|��L�
��ځ[)KU��=�8�+X��/:𭡺�����t:��M��3&�P*'�hٲ���b*�����y�tE7k;0�!�_2m9I��'b���<"$��j�qc���,�4oG?V�����ט�v�Iی�&_�i2�H�I�Ц#*B8��
��8U���!|����
��էo_����k�[v��Ȇ�
��[�p��x� �K��Nl��P�$E֪-:;�gh�~�������Y$�fDHv��Ȇ
�Բ���jB<���P�L"i���t
��?[�|�B�q�y���aK)��v�Ȇ�5�&{1	,f�+)4W��&ý�~��D���ϞB>��{Y�uyi�B,�!Ă?�)��IK?���Cb�j@�Z.��"��A����qm⁖p�}�ߒ�!�b������NӚ�P���I�F�!f�#L��X����F�陚AN`E����I���_h'�-���cI�i&��tDi�Έ�d��Gx����vy���a������8�|.g�]�i�%͚z��7���Z��;�6/�t���2١�"z,�&��L���>+ȴ4�t�%� Ou�����}2Q�8���v�Y���nVO��f�Iv�Ȇ0~@�ݫ@�-�(�(��-���
r��Sp<f���eLO6�㺂+�P�Pg���%�P��H&T���E��|#)Ň�$K��p�q�ï����k���/��篿�s��+؁�e�i��u6=%p�(QL��H{�4�^��)��c���^Hsj����z��Pg�uR�k/��Sy�s"+?��-Yb��R�dm���yS����ޯO?ߊz�]��e�K��|��cE��f����߄�C$|ꄐ�U��ٓ�q���i��(���ƒ�,���gbx��˺U����r�.��-5� ���Qnf��X}�i��*:�XdC��v:,Z|aE<1�|h#,B�!�D�d��m�^κ�Hs�o�4�G��#v��n��C�E6DYp�rS��܏\�
d2�Dep�� �C*�����ߍ}����E�U�Pe�uPm�P:�ȅ(g��b�����%	$�q8�X��9�޴&��f�?�__�_�ݵ�ա�"�,�����N��$��+�BG�Y�$�bMB���7�<�W��Ǘ��o�6�k]�C�E6�Yp9x�
�b�~J��L#H:�T�]0T���	p%�|3=u�ܼ����Ph�}X����i�g0e�ga*ͣꄴ;PE�E����|��������t�Q���,�����a�uz����{��d�h@����^�BR"�T�ׯ���;�YdC�WW-YKObgk���,����졇7� Q��D��g�U����q,�`�0�l�HZ(�@�^�� �n� cW"+���!���Z��{������q��m���f�i�dm��t��b�/k�(��oiQ \fn��S����qH�*1gq��+T�H�l�� �,���e��Y�(�-$� P�?@F��*����-k��������f���?: �!�Bwo��SY<H$L@���9 �b��C'�����4~�KϬ�h��I*���)ɦ�H��&�HO�������lk1�	8�y�X����z�J�l�� ,.l¥ө�\� =���)��=ɜ��ixgL�&�;j����th�Ȇ6ɇ��8q��V��OmJ2cӛ�pc���"��OP埶�-U�nf�d�8�l�� ,�v+����i�������O�j��YYv�\�"�4�.��r����k(� 8ʶ�7�N3{Q���`�B���Z"#�qQB������g�>�۷���^�k�C�E6[hCh[Im�z�c�`:����dy6�7�/]�e�dH�-����q��i|/9wY?���|�!�"�-0�-�YĀ�/ Q����:.��tAh��VS̊�݇$*���+�t�Ȇ~b�n�ѩ���!�)M�zYRT�E�哈$��5�������e`Dv(�Ȇ�Q��TN/�{�y�5+C5T�R)��<䈛��ШL��p���U�jm�5�[��Bm �S���`
�Z�@4H198�~<�$NF�=o�y;F�ן��-�!��l{�%N�%�f<Klȕ��Ք���q�9���l�I��1eť�����f�e���l�� ��n��pz�V/F�N���)NE3 )$��-(���-�}o -�� ��75�Yِu@-%����Ee.�u�S;Wb�"���y/����^O�i�+���晸C�E6�]`Y{r��>�\Y *kN$��+��N	�dN��������eu��~u����߅�`lȺ�꛶�N'Ib��_���I��ڃ���?h����͎��^ߊ;�\dC�j�ܛ�JiɘC��|�(r��C�E�u�������]�Qe�~�l�P�ז�écv���F}iy$U@-�E"�̇4��� ��.�5	­Gѧ�m��l�� �n����I�)�`�Gx�'LZs��5��$�N�g�ߧ�˗���Z��?o#[�d�lH� .k�N'QC�B���Q�<XlÐAb(xvs����RVo-_W�/�������l�M��'Jv���	�g��0��%�>��!1�,�����q��~��~o�q��7:�!���BKN��[Md�&0��J����DJ�|�K�Oo7$��a�~����-���B�1��ԣ!\D8��ZNKr�n���}��$�Ĝ��6�����z����%�m������,�L�d�4O��f#L/Ԛ�L�S�
���c7���i�5�u�]C��d	:@>.EO-g�Pc_xb�)�(\q�R�n�_��]��������o�+|���m��C�E6\$=Դ�Z=)� �{@����Jϔ��4���\rN랶��w]�-���h��qp:�b����b�{|mZ�6d�E�g!�\�i��:��~�VǗ��/_�s���l� ��p�/�ִ�P��5(2JK�`$��������ɋ'w�Ȇ~�^.��a�C�FiH�E�?dϐ��
�F���������n�Z���vw+l';T[dC����$�2��� ��rZ�C��т�@��QC�:��߿�k���z.:�[dC��i��q:=9�����c30m6�7�NK�?�KqƊhJ�u���lter�-���B�3N/���j�~*O�ִ<�:�i����?bݬ-jM��~�ۭ?oo߲;�[dC���z�`����9� �I�t��ty��D��c)̷��v�'~��^�p�l� 1��G�q�RĐ��]��X �<FP� FT�u�p�_���rWg����h)�,�>a�e���3A��0��k��k8�2����͒�?�����j����o	Q�p�l�H�9Y��O�"��$�8Uj����a|M����|�����ӬTۡ�"�-@�@�,SY���H�� h���L�"2���E�6���nO���������=�C�E6d[�>|���ˢ*�3�ȃ(�Ȟ�."��<�-��YJ�y��B�n{^��a=j�^��C�E6d\`�o��E�ØZ�C�Z�iF���{�<�y�|.6�����)w���v��몑���!�"�.�Oۖà��P%�m�Ȇ�)q�ɡMՕ�X�T��3���o�������]����_��1%���m��v��㗷�'ѡ3A�	�R�P -H����	�"��    e�MQO�m��C�E6�]��j�t:}eA��!Q�����������L��j�z{�����t�MX�^Wqz)1�����F�����eHY�\ �Y��I�+M�t�A@�nϲ��!A�� D?���S� ����Ј�,s%������FQ���.�!��m�Q:��/�4aUQ��IݞJ��0���"�B���=M������w�����5�UC��-̭��T�^Uͩ�2�����9퍓E>KJ�?�ow���`Vׇ������C�E5D]�Z����2��x�(Q����[0�2f��O��">m^�����yF�6:�\TC��t~�i�N�H�:���Qh�$��˄��S�{��,8����{x��Z.���bm-:�t�Y�<E��%isN
ɉBP.V#����Q+���v����~[x�ĩ9s�:p�hI��^
�+����x��D�|ߓ����n����U�N�5)����$���\䉂�2T���79�ޞH���}���7�{�S� k����%������#����Q��g�Z�93o	>�c��X��w����An!B��N#���bkR)�̫#[JU�٪Y��v�>��t�5�vh����u�v�����}��;5^i�L�����p����i��~�~�p���7?�wߥ'b.�!��T��|��Ľ��$�9��$�"8FHYk&����=�v����Z�:�\TC�E��f�DUؙ��F3C��Jz���FTQ�n�<Buezrxy����;;�\TC�(���O�Z���di&�Z��?3r-R�������v�W3><�4��q�M{�TN�����hQ�:�	�X=��9o6�<Q����i�Ɨ����rQ-@��Z:���A k(���<�� C:�j��C����s~:��ȋ�x��t��ֆ���Wg�RrHU��&�����,fL�m������/_�s!T���jh���煢!N'Nϑ�9I�M��!�u@C�#r>1_���۬(�����>pw;�:T]TC� /xN�fO�Mш�CD|��!��젭���񘿰���������L�Z7݁}I�l+�tB�kg�\�"H�G<���g�ݺ�8�lݿR��<d�̸�cI �"@����Wou��3dk����ϜY�UE'"m�-9(:�\�X�uBD����4��/� AN����nt��k�]�)׆�quQ݊i��$堧4[����'����~����)��}�5��g�y��n��xAtb7�X]�jS�!�)8 l&X�H�#���T��*@~~����VJu�]T���dU��E�M%�gɭ*j�'�.��I��^�l��i�y�{������Z`�Q	g��^����� �9�@B\����B��x��ݝ����'�vQ-�"2�vԄu�u-+��8r����H�	�2-��k��i����/=�7��ꀼ�����aJ�.�0
��CH�\i�نaq"��v�q��=~�	�U�E5 /L���/Wi"[-�9���2���k����Y?�*:�d�Z�ע��5�.��
�����Z��J�ِ�H茰^ Q���T*l�<���#�$���*�?�ɪ�pDS���a�,�x�Qք܎5U^x�Y�8�Pk�֠�i��'~�d7��RQ\�s��k�^(}І�suܙ|�\d-h�2x����P4vf􈘋^�ſ��=���'����m���~Q��C�n�b�ۂ/B���P���B��/S��b����ʈo������*5]�����E��[��^�Irq)e�����K�cB�?�XJ�B���N������%v����m�W�zV�Eg����$ȕ�v��=���50w�x�K��/d⫹��������e�.�������	p/ڍ��*"Mp�k���b���e{�ޫЋj�^�v[V�8��Xi���Nb�Y��@��Z��u��x�^Ͼ�vv@^T��7������mM���,�[S���<�rtQ��/N�ڝ�;�2�׽w������$��vy��Y׊X.Er��R��Y�ht�k��7R������g� ��ZnT��z-�'��s4��	��Aˬ�"��U{�6�}Q������༨�!�n?csu�|))�L,(����8xm� �ˑ5*W�	����������������̀E�H����ŕ�a�*�_b�C��\vZ��@�����p���P�� � n7�9�^��e��i�y`Մ@f5����W��a��91ϮA��w8��[3m�W����!��1b\���n��0��U\�����Φ:�.��v����W��D�)g��Pu��T(�ۋ�r*B�5����t����w���'B��`�ꀼ��EQ��_PIj�y�-bƔq#d�H�,|_FL�����.B�0�ط�����T��1G�J�S,$����f��ѐ���y���罷�������Yt9�΋jp^����p��5�T��bЉ��ú9��/�B��G�����v3 ����^up^T��=mHEs�R^��8�v��Q����|��@���4��{;7�]lE�E5�.�fT�=���~��н
�^ZFq��3��Qx�"�d]y9���(��>��0�˞;�^�Ki��f����l�FH�n3ũ�X*~�i�)[�ȵ��>�\t��:|^�Df#��%P֙bi�� ժ��!+.���vZ��*��~��}�V�:h.�AsA&c�s�\]�[.�sd
&�)��#@>%�(îߨtw}s���U�E5x.l۰�»��ff*"f<
�d!qP*��U���/�慫���z�R���1��e|$D*t�)�l���DEb0ar�&�b}���R�/���u�E�6��R�L�!��ypsd�nZg".q�c�"�$V�n>�+��u ]T袈elg�X]��q%�JH��foQ�_��Wzu^_~�}���\�+H�@� �R��>��m��X�݅8��,&��*�M6f\g��oo�w��÷��������]w���LE0�Ʈ���A�$LƗ�fes#��2 2�L:�`U��o�3ܶF���j�\�j�C����%c팃��q�pa�RK�c�n̂{�Uhvl�>�����5�.�׹���j/�~؊���3w-�FP1�Q+c6v�&���_�	���;P.��rA^h��\]b	_��H�t0�H��c�v�%]ԺXς�חg�L�ص��j�\�'���buy#s�6*PS^Y=�Ie�:�c��������3������@E�ˍ#^��H�>
����C=���d��ɧ�VG|�_��g��� ����7W�J����|
���Z4�Us�BO���4��nb�^�j�Z�n��Ԭ�s.H�)�R�G��X7־ �L�+k��]�?��ݷ_������
t ZTт=ٍ��K�jі�y�PT��L#1�S�>MA�i�����x��=aF��?��K�AiQJb-�V�ꢹ�R&1~@@F%�."����/=�Q�c��Z���ՠ� CS���.������p���Ec��,M1܌�X��d"�_4h/�e�E5�-H_���Eɮ�:M�P[k��$��Qdxbܓ��z�o�H�X��BD��Lv��;�-�oQ�.ܸ r\�ƨ��'��I%O�/�>�T4��w�Z�w���#�����g��Ɠt�[T�݂͹�g=�Ʋ��Eu�ɱR��@�Ő����5�P"�4���������_�E5�-ȿm���W��S��rl	{�dd�µ�Q����~�Z�:H-�AjA2;����ϛM�&AdD0px��|�%D7oT21�_��|}<�}� ��ന��l�m��Km��cP�9S�G�i���U�9ŏ�i�A��I$l�����:W����!6�-؜k�,c�/� �lMN�aLi���YgGZ~O�o
k!+j
�?�aѵ�܁pQ�5g6Rj|�B"�<Ő�ݓ-��Xl�C�l�
��6����5���뀸��E�z�.�J��C�!�Ikr����O,c�6    oҵ������w�_$'T�E5(.H��F����U7WCʤ%� N�y���1Ƽ�������_�/�U���j@\_h��ˎ]u�
�_�,�M���:�f*^&�{�F����t�AD]/r�l\�-�n���R+,HH���Ȗh�
����!���d'ׂwG$���^�/�yu�E5 .��֢}���<Czmd�|���a20�G��9boê���z`��~�Q�ՠ�����h��,m�I?ב��#l���jӔ[ٷ�����6T��`�`;#�\�`#���pbV
��\�F��]���X�_�8�O�\���ux��E���"}\]
,:e� 3��wdd|^+*d��s�5�����?��T�E5X-
����V�Rp�5�(�	sŧ6����#�������w_d�ޖW:-��h���qs���R��A{QJ���Q,��a�Y�[c�~����>�����?���JT�� �0�i��pu)�ɫ\=�̀h�x��e���!u2bMv�?�O�?#T�E5-
��FL��e� ;
^;\Z��1�ؽLfCԺ�"{����ЁfQ4��q��
��~�iLf" �s��#�Q�8X%�h�A\E�
'��5�@���E! hG�X\(2Z��aS9�ɒ+�g)���-�[�������p�s.��ȢDO7BI=��L0VC,��8���j��1f���P������O�����nۀ:�,�Af�!�(�au�@�&2ܯu��fe�ʄ�6��"��>�~���ޚ�$�j Y���\�Ÿ�� G1��I�d�iRC��A�m$����s^�q~ѿ����b���k>b�/���|�4`���cYgB�$�Y����K�Qo�6���pm&��ڥ�^X�Yc�����pC����i���V�|����A��(�ʹ7�.�4�_��������mCfpŤlsN��{�g����
��?���������tm�V��j�X���ظ��!2�}�ED�|��&�zJ:DN�������٫;2����ՠ��+�=��եFE���p�&Z���3�1����[�������+����S�s=�o� � �Q^�K��בᮂ����Kb�#��"�b��<�����������q�x��3�]	(�@�(�e�����o-�H;I�Ǽg���B����������D����V�Zu YT�#0mmX]���H�++\7.
��X%2��k#1V+���4K����VwTu�YT�̂}m��`�������w<"��Y�G�Z�s��E^��sS�����gQ>�B���]bu}�ll���"��G58	g^F��9"��N��o����_���n�W�����v\ʿw��AgQ�P;ª?'�p�6SZKLBR[�}���H�ZXJ[V3��D"]7�｡n�X`=��pV��ʹ�d<���n3k��AJ\-��ʀ^������}w��������)��\�.�npY�Q�9X��,�\����F��l���i��u���i\᪀q��Ql�`� �ۄ2���R�
��.)��Ԙp%�C�a4!�Q��������k���Ϣ|��冽��,b��l(~Ȃ��y/��OHU������_�N�N�@�n ZH������2Z�)p(
�8�JȉM��Ozgl��[Ӈ/c��<���a���~�v�)�P�n�Z,���r�ZvQ�	�?�&GRWG��jl�$�|0���~$��t��g��}�nnț��_�JKy�S����L��(�%/�*� G$Ww�0�O��ӏ�����(;���Z���㘂Lq�"2��O	�.SM���4��R���qM�:�,��g�v�F��ˆs��?������d�C��>0�[�2���Og��
�i�H��Bm��bu�&�{DѸ�_*�:������FNد���/����m&�h�@��rk��������@��9$�!*��2�0"L�,�mD����������r��tӄ�;P-��jQV�m�l�9F���ŧ`�aԬ|G䱎jD�ԋ�����������~��7R"o�ߺբ��ɵ�̸zi'+> ����k=��H�n��:�qW~�ӌ�do��Y}����5H-
��F�,V�S�p�b�k&FD)�ȋQ���8���dg�2�r�o��k�Z����V�Y�s�-�BH�
����+3�
�����;�y��y�����݀�`S�m|���/o�0@p1�3$��DF�PԳl���qx�x������r�c��;�^�т}Y�qЗW�W�SC=�Df�W�q<�S+�<����;��,_"O��i�N��Nomۙe`�E��i�v�fx�)��kF�s]�gD����v��s�������z9�j�:�`��	�qc�7��1�n�8xC2g��PN����[qk����j\w�� ���ic��r�k�4'�ψ�W�q�
�R4q���J~~`Vr��pW>�r�Z�w���id����e��(W�qv(��*n@`PR��5�dօ�{��;��s�rx�-���n \�ce��s~ˋ�s�i%���t�a����J�v4������_��~>���������,/�p���rb�c�K'p�r���$k�a~����V�5��w8���)���U蜍��x�e�mp��EN�!VoF��L�/�����l����-NouyRxa��"�J�!�3a��c#��=�Қ��k�	�o�;��9n^�t�E��-Ό�.�.O�!R��@T�*t䤖$PČf��r�"|��_��2���h�:�-��mq�m��buъÞ�C��}R���4��y8��i2I��=a ��{�e�/n��٢[�g�F�5V~���>g�R$��q�w�7Ƈ�C^�|/�����~��h�nA[�s�:�.��^ی}Y\	3�w�_=H�FD�n��>�?�_�r���l�na[�.ڬ\�^��jҜ�@"(�Z�k�G��C�g��:K4���/�ڢ[�?*�v#�R��Eɠl��K�e���d���A�~Ul>Y������f�n1[�4���I��A{����	K���8X�u-��?�=>�������VtYwp[t����Em�.�BҐBB�	�r"�#��l
J(?u8���6�{���1�u [t��٨�b�\�&#G1$�� Ӭ&v��`�\��֜��[������g��כNI��k�-^_��&�K5-���Lr��-֩��'�i�h�7Y�* �vb�����/�O݁k�-\�Wbܸ�J\D�A�#_�٥LqP�Fj�M45����^��ǇÏ�֢[��!�V�Q#l,�X�DM>�(ND�l�lQv�H�
:�_����3��s��(��٢[����5��˖���I����|������7>�)���(W��g���x����p{-\�7�|TJ�4�#B��F��9UG9��z�Q�j�"��M��������_?���ע� ��(�-�i|�/:���s�Q�������$I���}���|�_�fOr{-:�^���hC��"oW'�4����9�4� a��R���������{���s-�R�蠵��� ���*V�	��!t�61�z��%KH䟯��~w ��Ӂ�O�כ�O�l�`���5/2Vť���A$�O��>*5P�/IX�l?n��?��Հ�=�����Wbl�
�.m�p�3�4QL���@&Na}��		��n��ˁ�}�/3����:P-��jacb3���K�=/�ǡh����Į���)�����5���������ڸ�;0-��iѣؘ���e�V�8�j.r���F�,W��ݸ�ŧ���/?�\�Tu�E7`-z\�٭�e�vN�i���@V2'��)/q?�z>�nw�N�f/}y������`O~sǗ�`Q+��T��C>�rd�b��T>ЛY����N�npZ���V��]�k$۹- �<�hI	�	[�&��"�ܫ���|ؽ��ۿ}������`��;j�:�
q6i�	D:5��Y�	�,�|�\u�:�u��.<�<����k��Ak�Z��}3��|>�s*da�r�!�jpF�A��E    -8�����������?�7Fw��?��������sm���E��9��o�s�0��B�W�0CA̻��^w?�r���C�����ex�v��z�n�[�/c6�_*-<~���MbR��9�#�V��Wg~�~:���;�_�ݢ�Q��ƹ�l���Ƿ�2ʙ8�
d���I�a\c�����w����~�3��?��.����n \��n#��Q���L�E��+G&BQ����ϑ���=�~엻��=w���EO�=���e�%!&֡�ф�T	l`�9�H��k���ǻ��x�E7 .�x��H��<
�@�ԃ�*�K�El����K�$6����^~0^�Asѓܐ�;�]��z�� _�Җ3�������u����@�h������sX�
�)�NՀ;<M�1i2Z�>xh��B�mn��q���f���+�z>T5��ȆII���9�)���hGQ�YO=�|}�{���q�E7H.z2��ԎU����r#�f�s*�pAFB�aD���W������Mp�Aq�����w;8ƪ:��	9�G�0DK	0��^�BVθ�S%���~�+U���; .�p�Ք�yj�ʅC�CJf�����qp�ȡ�#���z��?~;w��Yy=���`�艵��~���7�쮆YÞ}��",Fp?xX4Wb1)�����Aٿ�X��i���݀�`S�o1>��`��$9����C�4$Q�'�:��p�O�b�r�ok@[4�W�m��KaE�-²!M:7#�`*`�\r2��.?���~��n\u�E7P-ZL��!��Š�9�IR(�����C�C����`˚���0�ȯ%�@�n Z���N��%���%#{�nV����o1����>3�=�� ���`�E7X-Zȍ�1W�q���(�t!��B�ƽʧi86W������Nsc�:|[�т����V���:%=�����!���5$C��`����Ꚍv�Yt͢��ɨ`�9�s�D���{DfJ�R&$�j���w��������Ȣ@d`�=\��K�7b�q�e��c��O�јw�KƧQ�[��l�:�����pm�Fl\#���hop	R�F$�7�8O�<Ř��&̤�ח3��Rg�@���;���.x�9s���H k���f�15[�Z݃���������̣��"U�E7h,ZX�Q���6��PI�J.Y�,�աz_Nm>����G���-��2�nQ\�<C�9��+��-ǡ	?W��q�G�-58ٳ��������-�l7�puiN1أ���1Ɠ5s!r,m
��i�X�[@I��I���v���EKD(���҅P�F��$���	7�	�T�������ga��6���֞�cn\]��1m������9�ʖxU>x���'���v�Wt�������\]���w�($u,ո���D-r���Z�ki���G�@�h)Ć��7�ր�8�'��MaJ�Da�hE9:?�_���nPW4�춴4Wii�6�2���P��C��;þ��n]���`s��k݁]��fg���J��Д4�d�Бbs��(�ҡhTt�4������~�8ω=���.� �n X�<���89o2�AZ�Mt�FH奨b
A��c���TĹT�;,��`�R�v[V/ݢ!P�>�����F�3�yO5��p-f.����ۍn��`���EK#6���b��W7���4�����s����f]UO�f�s�k�Sk`X4��j��ӲW$�IP١�sWBC&�Eu4��X������O�� ������K{A�W9
]��9xJuQ�������E�u( �!s���ր�h��3`�.S?:Ec�
�`�?\�r�9����<{69Π���y�E7,�ϛW����lk`;�L��ڎ-���L��E��x���7w�Wt���)<خB�3,A�8����&�!D�炉��&��k��_��m��:A�/{��ESh�mv���\�,�U7$	�&ˇ��r&WZ��\�u��_��sO��������M���c��B
6���&�$��4�ǈ��t	�
������j~���n�W4I��r/V���W��fv`[l%J�5'��*�8R����lr���]�
IC;�UK�Z���0F+H�A��C0)##��Z�3EJ������؊n�V�B�ж��-mi�����D��+�,����If%S浲��y�Q^�[dE7 +�����"�]D�*.�Ύ�W��`'�HC�b����W���!��~�Ay@w Vt����P���잽�!)�B7�De��� \G�k�����a�1�&Dh�@� D�^Y9��p%�*V���r����|���k����]+�H�@�h��F�B�{��ܔ���T�̄�U�dS�8��z8ۊ/���/�R�W1��֣��屺�K̬49���)8���"T�>Q������������y2�r�;�*�VѺ=@ŵ�Z�_�����
����0�SV�V�uL�e����8�#v���s�g�x����0ȶW/-� "J�EϤ4���0GT�$�D� ��L�񯈊o7��]�i�UHBk��puQ~%Ր'�O�#�U�*�%[��W7�����x��1s����ΊipV�%j��rU�?F��0yb�r&���L0&ur�N:'�3v�2��I}�z���4�
�d�'cu������"W�&�]$I_Z�Y�#�4E �|�ep���ܖ&�|ABN��T�I>U�W$����z�rM,!1����!����{A� �hm�BO�.@��c�;��p������4ڕ�ʹ
=�^n��.�^]�4�*�P3�E��[Jm�.�4ؒ� ef9R�`���2��QmNB���M#]]�4�*��-����`�����N����H���͚MP����~}��Jſ�x����6l�8cu1�|NL��EGE1e�a��N��77�t�TL�B(q{(��˓��#_��i=�'g��:�P��!�s-��uw<��Gߔ�MQ�4�*��m__��e"ME���A�MkJ��t'��O&�������E�DA���3L�`�`Wn�K�rK4�F0`�I�\��m�Qz��p������_w�?���?n�?MW�4�*�cemǁ��qd����(0����l�TT�h��Z�����*�l���5�*0Ub�&+����*9_"�+�Sݜ|��Es�%_���w�_'?����LL�4`*�Ļ����2SqSq�q��y��hpֱ�X]�HPW����w/���͋�����F[�5,x���cEX�dt�R�	�g��4zg��Ӹ
�_	�=3��e�.�N����������D�W�nTAӃ/�cA��� �F�z�o�+�j":|\��,�.��K�o(jM�?,/��Ä�iU�ˈE���N7�������t`SL��@�^�	#8�[����3�
��̂���)�mڗ�����!��������`S�����Zc2��L�Y�T���0���J�$ׅX�]��
�ۼ�o��G�(��L1f
~���<Y��(3F�d��p��s�8�V�l����ws�����:�ҩ˖;�^���h6z��h�8��k�Bgl�̰�0efbW���6����5�4��@�h2f�iVՂ�>֬ʀ,z�L�
>+\(6�u[����d�M��t�RL����xٮ�bU/|�`��ow�����q1d���,�Z ��z}�3��@�h��n��cu��R�񝆈0��E�+���$lU��@�������3�����`#:]�����X]U2�Mc��j�ܳ��5�t�"�r~��V��<�~~��?��޿�<s�� upRL����7bL�^ � ^ǷAҠ��(�a�
\Kp���Y��}ۿ����,�Cy�):H)�AJ��̆E����
WS������8ᨓ�(u1)e������?w��y-I�F�i0R�e姽W-/�0�$�4������C��U�V�Ϲ�m����    ���H1F��<�Ɔ�E D�y��j��'��`q�c)�.�M��u���_��O�4�(؎۲�Ʃ�����$EY�19k��8"^w����Nʈw����pl,�����͵f)p���"X
��Gl�e������������������bLmqHN��%˯)䌰w	�@/���1ar��N��������_v����39��/� �h��=�nA�(�3��:��B+�Y����)s]�Ҽ���/�P���bDd�m�.�2���Բ��V*��P���˄dn�t��C����� ���l��*/T����zp�.�*��T��N#֔�������������.�ӝ��c��l�vr�q���NBԀ_t��[��&����5�����{{R�[�kz�D1 
J6��zѽ��E@���JmL5��B!�N�_�խ8�P�|�=�H��y���f:�(�Fю���k��
�TB����HYO�83 J�n�b͈{����_~�5�f�ϛ�ӁH1D�vf���E�1��F��P��G�۶�:�K���L���A��E1-.����`���T�ߘkg�y�G��q��Fd �3>0�x{&��������@���Y�۞�Y�ԀLIH�\$dx=�1a��C�����C>�/�����$�u���Hq��MJ)�k Q� Ǆ�8NF�ͱ��$q-0���0�頣�ֶ���U�|y��J@`1��&]Ϻ g��J�T���@�=tw34g:�(��Dq^m�gرŗ�h
7NZr-���q����>�ձ���[�[^h��?���_��b���bZd?N�͏b9��k�]����2"�iR��6�<�~__�'��%�� �� ���p8V��6|hH�3�'k\��u��"��ŰT;�̟\�v#Ŵ)a�ƞ�e�V�4*� Ȅ���7���]�Fݚ�}|����Ū�����/���Ý頤�%����yq��9J!��Rx�UF1�V�	_�m\������;~�z=���&B�@���K��o�\�ܕ�T�r�����؂�+.���~�������:h(�EC�j�����"���!SP�QQ?xR:lt�d^�uO�������?��^?���/Sj���bZLʲ��fع*�GDr�	>�I�.K]YT�VO�kq��J��u����C��l�}�p�6�Y�<�ny�ud5�)o�Su]	���҉7#���bZo�F��sH���A��8��W�V[��Z��5������Jg�A1-��糱O����1y��8�$|j���i�Xr�VE��@�87���\e?��SŴ(މB�wrڕi��J1�J�AUa�+<H�9$��ʵ� ������%�耡���F�V��
��z����t���o�'㧄q�.{����r��o:X(��B��n�`�Sx$G���m��<�u��d�pnZ}l���f:X(��B1�ڝ�X�K��&���*��2=;�������*�mJ�'��x���Ŧ�b8vU�E͸���gQ$Ur�)«!�au"������^�wO�#���Y��b�:�(��D1 7NY��8��T7'�ɓ��F+}�*�o��cU���<�����/�ׯ��9s�8�0�i�Q��v��Z.�5*�'%�HAJ���iH1O�:S?��t��=��v�pҳ�%��`��ŌZɍ]ku�I���&��*��E��� �ϊz��!��ӷKC�Ou��1w���:m1VŨ��;�<H7~Ƒ-W0�S����N�^_~��������j���z�F�i0R�7?5��\])e�"�2��HH�2�c��H�a���Z��a���M3�逤�$�O��vL�.b���9ʑ�̼I [���>ȩ�i�-}�??�o�����b\��ޮWqu�m�0MB�3��T!���.[���UKQ>��9���/m����bl3z���sӢ[%��S~�&֬b��nL0�u4��	eU�:����ݩ��#�������~N��ƍ�s����EV��-���1!��v������������i�0^ι��b�lƵ�lX��tr�f���։	�Z�EH�^��Q�(��������pg������A��vpuI;�(b����g�^L#_H����D1��]��|\�}w����׿�~k�;�)�AMa�k�6�U=-���K5Ԙ��fh�����up0Ϋ�K�ۯlMX�i��M�Ӏ� ��b��S̙g��d7�����5՗�d�+�v|�[�}w%��:v�SL��b&d����Xj�MB֬ٱKm0=�<�1��A��b�C������o��b�CY��#F�()a�U��Y�g�l�8)8;�2�t�[���)����]���� �	6�0���0w4Y��I:11�z�Mf,&�i�}|�����'��I�e���APAtƲ6V��[Gi5w��g'���c�I��e�Y�5Y3~
�?~�{�mV� ��Hň3չ�(�l)�!ͅ
��4�c)��� ']�Ľ��>vtPTL��b�jS�ȬZ *>����8T[8�)��Y�F����֍��_��_v?���g�K�߁S1��A������P���0!�8�S��P���e=�|���'���<�p��:p*��S1�Lm�_�^^`�Ә���x�ed�"���U9s����@���<��fK$� �`W��t��Ŭ��q����Z��FĢiM�����z��n��?�=ܿ�L����iPU(���<��iK^���*�|~���!�Å&�pZy���������{������ߚ���i�U�pj�Ow.(�b��nRq�g2���rqBd����������[�Z��૘_Y�uA�erɖR�DbJ85�r$F��w#�� �5���_H�w���o�ɦ��b��ɶ����4�H|�����0�����JU��u�aVy;�G�k��Z1֊��j+�q��4VbH���������B�~�I~~XLO�^�����5x+FN�XK�/����P<e\t҃#1�	��Y��	o������������b�8��(WG������)��	�:�!�(�V1粎�/0�[�@��[1ފ�Jl����S�p��Mq�Iv��D�.�"�cm�WΛ?ߤz��`��'��ꐀ,����1��o5g?�4Z�����Q���i�>�?�A������h�śt0WL��b$�\�������d'�&�� #R�X�	��"��	ĵ��Z�upWL���]�v�,���
Ia��k>�j��n��k�2��Y+Ľ�|�����Y��m���}���b�lmc��l�eDH��Rf��o��Z���c]�i6���<�^���&��@�|���\�uȥ""hY)ph�ib���YKTZ�REYg�f������n��iX��[� ���?$�.;P�E��9d�L&뢛���������??v XL�b�8�9B\]�u��Nz�T'��X��P�Q���\����'�8�["�逰���rm"V���,Qp̓�s�[奆7�(�tQ�2��33~�����m�X���M8\\h1�6:����hD�)a6&�̂�^�hQ����v�O�Zx���� b�����^G(�Va�3IF¬a��wY�*�
����<|'�}���� �%���W��h�^{��q��Sr ����j�]�q���?�w�����E{�6�+�Ԇ�2W��21Z_|JØ����|L� �����q�S@���{|?Rp�p��tPWl��b�2���.��5 �^�Y������7���y���V|}}��w��&ݾCu�Wl�b�|;�5[/d����hn;��P�-�%�mme��>�?��������6��m1[��q���QZ!�Ҥ�������f"u�Z�kKYw�6�+F����������kLib��KT#�]B�D�]g$'��܊||��l�.O����`g~�	X�qiyҡU(�n8U�I%��,�9S�O��R���O�?���mX�+�n�3�_BP    ܂��b~��#a��YWUğȈ����/��w�������� �v�v��|��p%���j�����q��`�i=WH6�������f����a;X,��b1pYm  W�]���!�EA�g=��*[1�^�~:�Iz�����b ���au�U`�T�.��� a�(�2��X�X�Z�tv��wG�9�y����}��´���j=��di��e1�a���!;�"���/����K��@����h��
�ŋ� ����:��Do�����&�C�.�q�|�/Z$�D�v@Xl�b��*i%�y��b'���������}Z��Z7���^?ݳ5��z{:�^��b8�q��/N$|�8���J��"���:�9B>�u�4���mpX����������B�L�R��n�u*N8������x����*�/�����Ac1��l|t��R;�����u��d�
�'b2HW��@��i�=�w�^n����b(���,8Ev6lr2A|F�Wn0���[DVH��*>~��~�5�'���\��ٵV�^��u$�����jʢ�!�S`�lZ��"�����p�T^,D��6,ƌ�F��i�)%�5�5�{�R0�����Hֺ��5�a*�vWl��B(I���� ��%���@oB�綜ZDg�੤�|��m;P+��Z1f:�Y�V���H ��{!��Q�XҔ��e�����o��^�����n��lr�6�+��uĒqf3�`9��L߈!R�s�oDe#ʴֈ;��>�_e�N������p�
��};�1rK7����g}07���*jY�\��=�^,Z��60,�W�H`myZ��Z���
"uJ��ex��=���\�u>��> <C�qwEtXl��b�m����8빤Y��ː%�ߤ.0j8�1+'�:} G��bgɥ�tӥ��v�Wl��b�y�rK\]��p��
�aJ�>�]4�I�:Ra�F?f��{	�e�.�A^1��۽zd$�9Oq�ωy�E��(,���>�:w�v�.��p�vj��ڷO��c7���Jr^��٪�ۍ�`w�n��1��+S���r�u�����`+~�G���кLV�9i���*>;dD�����!<յO��K��� ��x�@�p�����1�A�j"Q�y
6�弪_��Y�n��� ���|��.v��bc�څ�.e� G����$�,�H	�%�Gk��H�\�k��bcж�V��:��f�|���g$du"��/~��n:�S�Sr�����,�r�T���`s�����ҀS�ˣ�u�3�MM�����N1����*dBw�;�g6����x$������tQW�x���0�."�4����Vi��9'���ql;�,�Af1,W�?DK�saBƒUPC��|J0G���B*�b��~�{?)�\
U���5p,t�m�W/e������xi�f@�i�Ie]&�j��v"��w�Co��b��oԵ�.��J�3�������SNљ��V��f����+j�o�7d���b�C��.bu�V�{B�	��]�/l�季2���s��x�r��?�����FXl�^d֑���Z�6���V&7pHOc�ŭ�����1�j�;�+�^1ֈ��1W��49kT��4���7�&���-��.�Pb�ܽ����b�e�v�Wl��?�qc�
�D־�,#Fc`�Mb{F9f_F���**>�O�[����_����ft��&w�Wl��m�-���l���{&�}�z##���˨��I�Ux1��O>�?Yf�tx���v�v�Xl�b,�V{�n�f)һD������d�k��4���.B��ﳣ���;��7 ��}���<��q�3�.:�U�$D��4N�j�ȡ�J�~m�d�R�_v���~y���p�,����7W�^�ɹP�#�Kh6!%��J��[X�g�|9<��>"t�Xl�ǂ ^o�~cuq*���*9�'��p�E���Tt)#eA*�Wl��������x���R�Q�
�1 �#�(^��a�E�9I�C=�(vw�����o�V\K�����%r�U{��3�Z~~:���4%#�TS2�ZќZ񸶟�ϊR�C�������޶ŀ�z6qc�ʉ��m�
l��SRGeW���߽{z�I��� ���Ÿ�G%��e:ɕ��Q���H�K�K�Mи�%����J\�?�yk�;�+�A^1NOCBX]\��V?����ا�@^�l��uӚLɫ
��x��b�lʷ59U[�f6�Ɵ=바(-��dR�)X����T��^��
�{�Q`Uɥf%s�'�b�H���i+\�U�
0�����
��n;�Y��� \�vP��E��1�1:X�JS6��K�U��u6f�R����3"��
�c���l|�6�+ƹ��c�6.M�>���F�ϫC �>�іQ$��GP����y=��֠���-3槥- V�i�[_�8xC��)����|\c�#�y�?�`���v��x�h���x�����K��	����o`H|�>�$?"=�e�y�|�n�é��+��6�+~t�߻�jD�D��I8x�`J���7���hFDH��_t��¯�����Z]�ꦔ�:+RXdw��������d�_5���Od�t�����x���-Ԓ(;�Iבd�r�����8�(�t!�B�O��^����_�W7�l���b[�/7�4�z�;7>���T4�n�~�uc�:���zU�/��zC����"�x�7ڔ�z�(Y;�p[6�+��Q��.�����uu�_�Wu�k�\�-��W[Ӄ^Yy�=N���\I�`#��Cd���>" V�;����>��ݬ�|K��ۢ�x�6&�L�H�1�H�描�ЄT�ɍ^q��W��!x|��L�Z�Wע�xN�wl�R&�5�[�A�¨����`pZ��2հV�J�{z�.q��kaW�R-i�.D��bȇ���i�<a�1H1�բ��Q~C$��������o�szŶ�+��m\c�ܝ#�<C ��ԴV��>H+|r�,cHv�����Y�t���ew��t��kAW<�Usvi����:�s�A
z��!Q�F"eZ�_���������id�r�;�+��^�[�X4Kon�ao����� ��H*��7�$b�U�����3,v���$�yux�� ��i�}7�����1�Sj�H[U�vN�qS
��k�������:h+�A[�O���N�"�c*q^6(/�7|w?�)S¬u=g9����Y��ډЁZ�Ԋ�׾\]^GU���T��(��X��fK*��������Y���S�/��b���s��Z]��-���X����lE�(Y�JH����5����<wpVl��bGm��v\]F�#��Œ�v�Y��������UM0�X�9Pmyn������`��3��o���X� /���sSG�0^�!K�?��0���3b!guo�`li�6H+v�4>R�ʅM4щ�8�H�Q���,�G��q<�Ξ�ؙr�:8+��Y���ڝ\���#V|��P�×κa�E���Q�'��<��Yp�$�z�_w�Wl���mp�.]K)���-&�׍Z"ёr���h���z�������ۺ�ڥe0b�8���(�b7R��B׽']���s����u0Wl���tM��E�����g'*������t0vB�1��Fk�<S���8:H+�AZAXsV�k�.}��R�d�ΙjQn�6�C8h[��/�*�u��w`Vl�bl���.�`&S�rb�~�Qn�C�R�Rq���W���Q��bXle�A���bd���<6Z�E�9{$r	lT�7��'�U������"&y�@�q��rՒߚ����8��3�^#�a�����[��n����n�qU,�@�s��p�@x
|T�|�9�abX�E�g�Ze�@��B���h%V��=�˓�i�lV�m�ڊ�֘��ݴ
>�<�pT��Lף�pk~��>W{�F.Rw�&��'U�1:��$u���9��s�h8���_�O���ß    5�)vj�OqmQ���`&lA$"�_�.��!�/����)�|����ށN�t���F�V/2����1�<��R��=٥|�Ы��Խ�%�l�m`S�䧩�bU]`E�c[|f��3~rpU�T���q�$�p��®�Z'�68)؍�_������SѓJҚĹ,��(�I�������e|{�n�����
İ�?�.��Ի	��ske�I��^��?����؀�m�P������E���IW�`����:��v�N49��x�������׿�0���B���@�j�,�q�L'XUʀٌD�y��ɏ.$�^7�1[8���o_o� �m Q�@�۶\B��� ���8 Zd'>�R�C͔��E����?����Y�y}��r�<ԁD�$��a�I\]B[�]�.NCa�L�h`o�
�S�bk�r������2_�:�(��D���F�$UN9ed8�&��;���VVQ�Ы�ӷ����Y�����������{��@+p~m?,�}.)e8�� .g�ECX�J-AD����|��"�ZC�5`(V
�ޫY��br�FS�9��s*Ѩ�'j��!���ݗ��sF�@��
�
�`��^F��q*#�|(�5��\Ӡ�&Q�Y��=���w��uS�������h����6g�?m7%����xbLLu�ҔQ�������'��qV�Sv@P\���/�X5�|�h�����'B��N�/�DB��E��.F�2�7m����k P,o6�1���k���M`=�a�DDx���ඵ]��p�x�{��m���gw�|:H(��+9����qZ��"	%¨���	&|_`�����,ݺ �Q������W�сAq
��۝�\��F��U�q$gأt�X�~��-�}*���0�#~<�?��x�:�ABq
_�~��[�싦j��� '�< �L�1����KqwA'��>��~�~��B�R���W�Fժ�O�*O����'G�]�{�@_����ہ�|���a�n�AD�j�F�$�e�ĳ�!+j����Uc�|C�S.(�V�'O�gv�n�\
�5P(V�q��qQ�06����4�H팙��C.Ta/k�K�{6[�3&�e���AB���h;>��Ea[��6�y�`�X��j�8̻x�L�9F$���;|`��b��V�f��	>���ٯL|*re���f��\�gn��r�7Q�뀢��J�6jTX]\
��Fb7���.����MQ�P��kq���s���&�rH�@�X��n��C�|fV�R�AxʯI�lO�R��4p�q؟��Wu%�����Mǥ�`���Jܭ�ہ_��!��Ev�-(���'"*3�,ôּ;m���c/��p�2
6�6*X]&�YOᶕ�6B<��A�,���ǵ8��{؋ח���s|��:�_��ɴvw(W�>w[l3�3���rB53غ��{(n�����g����4w�o��kpQ,�r��U}a�o��b|��YU"���)�u����/�["�������;|_��b�4�{P�z��2�*������?�J�Y,�� B���˿����?�?��� +���@p���`{������'�L����J�:sz�0�C�qTQ��pa��p~ �ڻf�k0S��꘠���Z�s)�j4�/�CJ�P%�}HHhW�������>�/o����Mqn���r;���R��Zh�:$��(NA��I:&���k����7$U�o�����������l�尺�f���q,��ߪ������&9�(�;>>�����=M����6�)V�B����ҭ�r�N�L�j��"��-��o+Ly����]ԫ/h�Lq`
v��"�v�J���Y;�oLsm ц�<���3�Eb�����`L�9{:Ռ�e�N��N�W�ۤT�.V����ז�Β�FJxA�mE��*:�v�A_�/7^������̴�2��_��j�ө�Q����`sA>����~��3T��p�w��<{���X]zs��$�L~�� O7D�{R�P�o�n)����0��:�)��M�
!q;�Ī_��#TØ(ps��y�%Q9���fa�H��bv��s����uPT\�����Z���]p�q@�Zee�-+�&��r@����Fo�FO��<��F�����7z5���H�Ψ[猽 ��Җ�����Z��_RE����t�T}�:<�_O����:H*�AR�z�M�X��=L�J�Jx=�<�0�37���i�0�pxy�UT���~;qt���������k˲c�B�%�)����;����\�WȤ^�;>�F�`����$��a8���oEF�W;y�Y�sK���zYe\��|�?|?���~�;�`��b��ܸȩ�Iܒ��4T�gd������RF)������?sc�;(*�AQ���ذ2K%7a���T�7(�YS�AӸn[�������?�|olE��k�T,�����.{���Oy�J�C�Br��N>fܫ��;�w�����2t��I�j����NME���H*#�8�s� �:�ZQEA��F��~�S����u`T\�b��6��X]6���Z����JND`�B;#������w��d��}�A���k`T,a��������GnJp'[���H
G�m]��N��_�o����?aw��o���2FO�5x*V;�e`�-ĳ$,"L*��&y�z8��+9ʤ�z0��nQ��D�נ�X�͸a �Y��Lb�]�ib? ?�	���)1���W5�//��ӧ������u T\�b͸1���e�Q�������#��Y�����3�XW��p���x38�:�)��N�f�6rj�.��Zg*�!�5^���E6�֮|��>�����֏SJ����K1��gg���	=E���S38�2)�Ǫ�����F��3��׼{�����M�� ��)��7��a��Es${�E�k)=iSU�Kب|P�����፡��˗�iF�Lq`
?����|¹ma���22�~V��#_-��Ns�>�;[.9S5�5�)���o{:��ejap�Y�<P3����d2�1'ւ������ ��v��@���m�����K��vեmd�U38"Sie-f�I	 Qs�r�<��u�_N�w� �������m���K����a��̆R��UlՓݶ~�&�����.v�����kXpoo֘�G>رd�*�g螩x�,��8�:\^M�~L�;�)�AO�,Sl�a{�tk��$��g���}����7vn;r��{��>E�@.x&㲤����Bu���O镽�? ����;��ʬ�f3E�b�f�b3�Ĉ�W�ȡ��Ѯ�ļ{S��m��kpS��Po�c���J�����/�&��*%�t�fC �>q�~n �����BC%4*�c٭����p'E�rM9ȐrF�ۂ�^}'	=?�A�vw�i�Ӟ��S��U	�
o��|6�ν�*9[D�D��������J	]�X��~�n�ʷ��5Y��Jh U<��ڏ9����!�uq��f��RPC�l��*ob�/7/݁S	���b�;�Z�b�i���T�IC�莄Y�U�t��m�\����u](�੄O�s3�������IzU�$�3�a����mR¯E��|��<!�y�����߯ B[%4�*�k���%g._�X"G��e�N�	Z<�SL*���s�ϓ@�r�D�� �xo�F�:���9R�8������8�3Y
����6G���u-����oцi�U���Qz�~
�L�|?AEɹ<�Ğf��<>�b:�L���>��`���r�(Q���.�7g���= �^��/������D���?��Wԡ�(ρ�F'��f㋟D$(F�}�D$-�v�И�y=�$	s��ߢ��C뀩�Lų�����E�����:�
��(\l�#1j��,/O[�ܾ~�����%�pp�
��mT0�婆D	.�!+�%p�9Ie4b~/������q�̽�;����AR	�
'�z� �y.��t    � h곐�8�חl`3L��;������g ��Y�r3:�]���=�����4.kK��ceg���l2�(�1���:��Y��������N�7�����9�T"����*�4���������ź�y�������j�_�mKP��S	��[�̋s�,$�R��@^�Q�6�q�ն��t���I>�c\�͗3�@��ZŃ6�6wA9ː���hY@�!�uu��IW�sL�oq�����4�.���Jh�U��mT4Vg�+�$5Luc��N���n��;@�je������}���������~�.bt�VB��¿j��YܷΡz�2Z.��!e>s�w	�fky�3?�o���:�耮�t�󱶔
Vgε������1;qr�i���|�����M	�x ���^�:�+�E\���T�:��5�j3��hC-�`��褤Kk���q����OǟD�C~%��+lB7�#�ΝŹk(s�!���ev�R�J����;�k\�毃�Z��)��C��\�˅s��(؝kW��Cg5��uw�iw��p�����k�r:^_���B��=o+�`u�JINY��]�&$$�(kH&�f��۳�9�@*��?<tpXB���?�δyuVjK���ZyN�*�+A�2�S�}�X��Jh�W8��h��չIR&R5d��gd�ԉ��c����n������h�r�;�+��^	[�^�o�o�/Ja�K�!J�09��AV���г�~��:�+��^�licؓWg[A�seAX@�S�� �*ad��;XY�@Mo�*W���`	- (�Ξ�a9#}�tӨIBH��6bH캳��S�Օ������Ձ^	-�
�]z��y���=Q�3|���!�A����[�U����x�}~�_Y�KhX��ֶ5�չ�K0.k�@)���8��= d��=B o��z����+C�%�,��Fq�؇ͳ��}�@٢J���ɡ�L�(�;��������y��t-����\���A1f���|��	���F��zN��O�HOn0�y��z�fJ�2Kh�Y ��q�V.�a,��8���2d��V�1f�~��r�r���o��{u�%��,�����F��B�jE�FRg�%(�I9,"�5@��/����ۄ��w�YB��Bak2�W��5�#���/��|_�0��*����͇{(^�쏏����8�r���Т��Vg5/ζ��R&����R8z�f��k
��^��"l;^T>B�%�h-D�M��0���љ�Q�g]�m�w�Q�D���'��O���/���������Z�hKh@[�����0��c
О,P7��+�4�����_{����1&��-�w��; .�p	�Nڲ�A�d�?���2DUՐU L�E�f�d�5UW���;����cw���� �� ��(4= ��3Q�*�Y�Q�0jW�;�(9���5��߮���� �Ȇ~1��KTL,S�(�	��[@���X��ά��yu:\^�'��W���]��Y������1����UXqb+|s����`��޷�.�:k9r1���oz�<�q� ��ٚS����g��8aa�}r������w���s߱����$Y�e�h���̑�K�T����y���{ f�^�ʅZ5h-A8��G`U/���z��s�(��h9%UV����a�t�A��$�y-�:�-�`���jʭՙ� 0V�)�F0�G�)���.~D�zj�@�Pق퍋���_p\��փ���,'1@��}4T��_�R�v<��/z�KX�m��%�Ц�aqF����xxX7�!�}�ڏ�X/�Q�=<^^8Q:b`�������P�8�i�3��{V.g8��vDq�tfq�!�v��u��	���ݗ���O��%e� �P�� �>jy�q"�v�Ai���#'�1�A�pa�:��ۇ'Θ��y}-~�訽�[������z!:i���S�l��GG�{|�?~�&������'�j5�-AJ߾RzZP�Iem�PJ�-˂��%�b�c\O8}8`*د��,ů�5X-�4G�����B�#5@Gkq,u��r�T8�\����?v�����������:�耵P����=�Ή?���N����?D���qH���q�m�����_^��8��B\����?V�T�1I8`ĉ?>�&N)�Xh`%Oe�����~��05��n�:x-����|���s��m弨>UN8�v�@�'3f/b]������O�*�Ak��%ȍJ&��+��2)a���C�����F�F&���>�k@��v8��%��m�>���_�`�.�)0���D�`5�s&�׷����0)-�������65�,��_��3��j5��3pz�}�&�g�b�EpD4���Ǐ{��Ӈ�ǫWR���P�6X�X��8J��r�,��4h6T8i���h���7үg�����4!�4Q��P� �ѭEcf3�E"�D������q(^�����a��z�}���!�4=�\D��k�Yx_�Fp%�B�u#{;��ނNd6jl���q�Q+S�cdJ����yLH/��v4o�S;�Wb�n�Pܨ�0���T�Hd���޴��¿�!K�)uPY�Ae	Jڍ؇W�~� �h�r.���+x�ȏ�/��u=���8YK;u�X�Ab	J)�q�q���컜�jH�M���_qv���z���W���m�]3N��B�JPZ�_ȱ:��X�֜��4q�1$4��	(Ct�F�v|�t�{��?����I�j�WxO�=�Յ2�b�j�(� �ɒ�&�FKy�p�����·��:z� �P���qFX���پ̊h� )��h�%�p��"QY��~�?����xy��
5�+AY�a����Y9�d[���$�yG4�+
[�u�X�������|t�j�Wr�P^]+t��j�A��vH^�a�F �~�&���xx�ݾ��k�i��Omԁ`���-�܈���d����u�[h}��QY��[��'�|)�,�Z{���m�[�LS��k�C��P���D�֧���:�;MB�onnIꨃ�B�
�)�Ŋ�:+ �X���?�K)�9���uM5�#w�x�l�O����2BjX�"�n���,�aR«2�`+�6ÑqΜ_'�YuO<��|DP�{~�?~�{��ϥ��:x,���a�_�xu	9�d�#6���T&����F*��XE�s�
\�R��U:x,���
����[���M�<_���P����R�#{��K؇��Y�y����5 ,k+�au���M��%�HAx#��?&P�R1u\���������(/[���o*�px��^�����PCT�X8b�3�ȑ��R�.�gB�P�Wd�I^�: ,Ԁ��/j��^.VZX���7��b���l���Y�Q�>������G�3^�5,h�o]`u>�-��L{��n%e�#�hcJ�nI��n�y�?!�~x���҂E0j�X��
MX�S?��TI�a����B��	bVy���6x�����G��4��1���1Gg��HT�Gp��F�u���SAU��v������۷Piq���6h,�h��bu��9J��"'-��V֤`|	�s��nr㐙C��������י:�,�`��]��~y��ښ��j�*��Y"����T��Gg�|ܿM���oq��k@Y�F{w{���o��p4e��n��`�(�:�%%���e��t8�n�H����%�蠲P�ʂ׍1�^�*����Gΰ��z5J0qT1�$�8����h��>�}F��ǧ��Llj�Y8��}ڼ:?�p�Kc) iC��,����r��(j^����N?��\b�H5 -����ª>[��&7���n��:P�@h&m|�����%<����jPZ؅m��bu�!�9������Q֒���A/oX���·����v�%���P���,��Z��:��b����3�   ���sTͦ@I���:�xyޟy��[�p�T'$ҷ�7�.9I�Wap���ⱑC�ջR#�H��e�����#Zvg�wU7�`�P���;���d�(fJA��a��r�!Gp`i�f�J���P����p��\¤b5�-������ϔ�FP��ʢ�Te8�AM��zq��ˤWve�;<a�����/Vg���f�|1���M� �lk�1�Uֵ�ߏ7[�̘]木�BPK0δ竱��Q;�����28���s�`U�	C!��l�$ �o�x�^LF���v�Jm�?�,���
��l����7 ��e���.��z�s��Ж`�h��`u�$�h�'<{�-�B���PC뎜����>B6�:G� �P�j�#c���Z	Pd�Pt&��.>'�U�wJ����q��_��j5�-�
�fbu%GÇ�
\�Ã����!%�h-�}:�L��e����� �+�o�`+�l��� ��	w�AF	}i�r19��y��î���g]b�J5(-�oܨ:�����L�P���s 
�/4���l� ���(��~z���P����mm��w8�A�$����?)o6s��\�{Z����7���Jt����w6j�P��ŵH�QD���}��Aav�s�,�X�kQ*:�����:�� �P���=6~���ڀE��(P=�	,�:�,s.c�N�
��O��gEw�B5-�r4�'��� �β�T�`����`�G9�uR��W��㿾��'����߯,E���W�pV��wXjO�X5���T�x�l�8��)�$ڹfE��l�^�6{��Am��% �8i/g�Ϊ}HAݜFg��8��|J�x��a?�A����j�Zx3Ԗ���U���C��PG�A������ɪw,��D��pe�;p-���pX�7�Y�:W��Hl��k�h�u.�|е��D��u370\�m��k�Z��F'���і�-0ڝU������{�E����9�����<_�P5@-�}o��=�Y��9���:	$��!ɑ��c&�ȧ��`���\�C��k`Z�ۂ�󪜟�������w�9�c�c�ezO����㧻��,�}]L[��k�Zxwa���IZ&�9�f��8�z`�T2�#Ri�F]ށ�=�޲��j�Z�3m�l^T3�^�ʶI�B�q,_���ͮI�qU��}z>|��q�NO�5�B5-��ˍ�^%?>�˙r5���lԪ*2���*���? 1||z|�}x�x�65�,���L���5��"'�p�,��C۬3cV����{4<�>�Q?�/���f��%�Źq���/9I� S�C�.������y%G���Z��o��y{��_����APj@Y���*%cxiF;��5�;�NH{
�~�'�C�S	k�@<�a^�����v���K@�Ae����͝Ӽs����i���Ҧ(���Y��9]���{8������ff=�\5�v�Y�Ag	.��*'�.��V=_�������C����	�V_��g�,@j�[3�W3���f��%�"�>yu!s
͎P��X�mE�K|�VʔSVV�G�?Nr��7������š<5�,|�F���+�UUC�R&�����rɚ*�Rץ���_>�vн
�:�,Ԡ���7��<���#D>IΣ������M�1�b�1TEѬ|�?����O�1ޞKZK�ԁf��������Q���_L�6١�h�
P���#�Q|�i|w��i��\�ǫW�>5�,��m�r`uNUK�P=���:�&�@*:Ԥ��jçW�C���Fd�z�jPZء7Z��7�y��9���x(hHQ8f�__׷��B��9Q��6����/u�Z��j�]��c��gB��f��Q�� O�YX�������i���Dü;�_���������P�8�h�E�:�{l%���$�|)��$�������[7䣈֨�l��%6�-��m��� ��`�}�\2�r%��W�0�^��{2`�=.���;�L��u�[�An	����Ic5>�2X٩���9���X +K5�>ě�'TO�����Q� �P�@t�ذ��v� &�K=��z� �Pj�r�V�y�Ry;�T���N���BrK��zk�R;�B�rd�U-�[�!���EU��Z���x������w�^�l���~y՝����E���8b�X��&�c�:"�]�XO��������[j������&�זь(T�����@x��+>���ש�w`{Wh���u�Z�j��P[n�s�Kx��&�T?y����"ϙKM�<|��=?q�yx�<�O��xj�YBP������(�s������ۀ�{'�}�qu{���'����)-�Ai��%#6ƫyuηɕ譍	<4�CFA��!dqj�0ۆ�>{1�jaZ�Kj�tbu��@�b��O��ɭl�F�$98���ux8�y��p�S~�����B-TK��_osi8N�����_J�q;�\����ܺ�_3D��u���B-XKpn���Wgɧ2W,,Z�3�4T�D��U��f��������U�ځm��%x�A��wc�#'ON;��j���J���Q�i� ��<�m��%`¬�נ�*��������p���<��iud�Le�}9��0���/��j�[m4���\� ����s�T1D��u&�:XoW%�/������"S��r��tuJ��-�/��ݥE��o�XT�CIFabn�q�� �U���<������o�|�.#��ׂy��7��n�ˉ�w�rʆso�=�G.�|c�&�BY�n7�?��a"�n����m�:��ޙW�PMؔ�b�AH���ևT�Δ�ZJ�+;���?�w���N����w�_[x�wGz���yԞ�I�� ގ����W�f��ꀏ{Dv��ӑ��s��վ��x��G����l'�F�+��4�� � g��oO.�er�z&g7�֯1{�kt�-t���,B�y�-
_^��7F��WP�Iè%����\e�p˛�b,~�l��6ƞ6�ӳ�7�0m}c[#-2:��2��X���������(�%��5�������S5���ռݚ��� �<$�&�H9*(ܹ5��x���"'���!��;寱-����`�E�W�W`5&�s�<^� ���YQ
�]���w�O��O�k�į�-���=��nO0cun^�%������>��ȡ�;g~�*��9|���cC�_�|/�P�ƶ(����]�ƪ�[�k�v$5d� � ��c@3DWB;ɻ�ʡ_�Z����������b�      3      x������ � �      6   �   x�u�;n�0��Y>E��_�D��%K�!@��M`dH�N~�H512V��F�e�W6��߱�W�G�%v�;��wXA������HP3Iߟq���5%N������W.ո��G5=�iw��.�a�cBo�g��z�q��������m�W���'��
xX�1��3h�� v�i����y~�?�eY~ ��S�      8      x������ � �      :      x�|�[n.��4��z��Ё.�(�A�#�]G��GG���e����[��L)�d-��>F立������+�?Q[����j�J���v��]u9��\=��*�/���,��o�_H��(����������Bh�n�yX0ͷ�c�2�GI)��B��DjscqS�#B�=���w�b��m�V�_�/k�T])�[���֜�U��E�e<��|�H�45�>y��|����F%V'S��Q��k��'�zοд�͗���M�!d�_�5�|�f��um���,��L���/�j�|�@Ui����}��^��zx�l7��&̩��/��έ�����@��6�=VkJ_�x�yM.�~���M�3�U����O�U[��W,�>j\�u��06^>���RcE�����x3��H9�瞫-����WwR㷏�2��-���Q;,���G-E�ͷT>O�c�5|p��|_���nw�����#��OG�$I���%��^ԋ�4���p�|tu���q��[=xp	���Q/��`�Z���_EC�xz�	;?��;���'N��u�凒��益J(l��|@w�����N��zGĵ��[���_R��?�ݼ�z�5��^��^JN�7^�F.��?#�x�1Oo�@G��׌���:F̺���C�Օ���	/fԆ��ct7o��z��l�QΞ}��ux	��C��s��n�n�b�c���y깪�/ߤ�2Rr��	w��W��؂�{?h�1��'�����Xm��w-��t_\ɂW������g�=��Bn��w�_�<V�g��=K�G����̮��]�{�;�6��}߇;�IQo�;���|�?�?ׁ�Wb^_�<�=��ȧMy`�%���Ds�4���1�g�%��B]�zsE�z��OW�#)�F����'�R6��j~�NY ��w�ŝ�*��t�����'-�dz{���*�O�������r[S|lʕ����P������g8�Sd��i6v �&؟�'�5�݆;�e���<���a�����U8=@�vu�= ���_aLz�+�K� ��s���n�S6V��g����4���� *���;�;��قQ�汪�s�@c� �L�]6"=�+I�l*9f��ο�S+�������;���"�\�Pػ�'>|;;�߁�]��;�e<|ʦy<r�<�t�>҇�~��[�2 oc��N��^ƹ�?�W����C��F��K�<�~
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
�=���:9�ƻ�O�0��dPfc�܆Σ���!'�(��-�����N�3+��}&��M�Ō�+���/����&���qo�wDĝ�@��9�0�/�^ܱ��q4$�j�<8��>{⁪/�O�͍bΌ��8�2lJ>=;�����Ͻ�ݾ�|"�����_�SDZye68a�'��8#ځ��P^�	W��A�GCPi'܄�T�Ct<sWN��,5���p '��5���d�7�!�h���}��j�}�EW��C�L������X+�t�=Y�oT��!�hY�M�    �����0^a�N�f���J��Ԡ�p0xr2�x<��
\�[�Ҙ.�U:��.���3gZ����`��6����Q(~7�>Z���t�ޜ(8�6zO����:~�Уi��u/~ڷ��3��@�7zڋ����iQZe��,�m=(�����p���tjs�%���r��v[����Ô���.C��8���:���������b���5��a��Le��v6����� h��YU@�ެ��ȵ~{���o�%����|R�͐�!�h���_C�&_���NF��*7Ae��0�!�9g"�~T�٘)�����e??��[l�C�͝���O����Be�$�v�d�?C���^v֋�����'��a0v��� Բ�h�#26f��U����_��8E�{���+�tp��7M��x��lڜ�P��w�z�~���	���}��'�r������8p���pΝj(Cc�W�G�D�`g=���p9�s27ܝ�t�Z�:H�3�e��/�ߣf�ۿ���?_Now���И�ۜ�.4Y�V]yFʝ<d��u�t�z�>_��Œ���������<Y��r�m��ns����j���#<���^���؀�_fciV�>㜽��A!�Bcؿ���`�w��FJ��D~}��|�tz�Z�7�����B�Z�������w\��,·��y�d����W�8���П�c�v֫փ��_��r}�_Xs�������X��_�"H�������Gҟ���~��ޚ+����a�G��ۉǃ�`��͈��Z�gѾ���w�3Z�-Fui��ln�Gq9WO`W�E�>�@K�J=h���_�Jv6�]w�S�9�Q����f�n6����U��9�]l(8_ow)���ۂ�6z��0�Qm���u-ٲ�6l�^Eo���O魥'��	|Kue�U'�d�\�-�I 5�(݊K�3�ݴ���C�R|ҳ �n���;��~��D U|��!a7�&���0��g�$��q��9`߅�^�����y�g�Եw�i��U�tؿT_��*��\��C�U���Y>��v���|Q_��(@1���m�b��!�k�ȋ�ZTD	Pᴋݾ���7;a���jA�R ����{Q�u:T�323@��W=���̺ӷrN[I���)�B޽���2��{�j�tS;�y\������|;'sө8_@��P��'���@.^�H����o�D��M�G����Ud��ު`�d]e
���K	(�F������{���t�u_��Rφwg�ԁj7S�Yun��~�c]Xkwg�c��=nz���?�9lXu�	��$='�O���S��?��->W=�_'"=���_�Wǿ����Y|:ϛ ��Щ�lrC�A}/�=(�z9Uv^�����!]�������TI]��-�i��Ia�)�|�2_�?��?���ϊPV���>�VB;;g��A�Svxj���ff��?���c���y}���jϻO�Z,�6���)w7����~�Q-���.��~��}��쫷pP���	wmM�n�+����I�q�G|���X��/y8��UG[%Dä�EVh�u�ۙ����]�~P��g�G���Q�"tSԖ7��4���y!|�������]�~������6s�<�Y�[5wmx���GG!��z�z�3_�?��ߘ{��o��>�(Q�@������T1�y^>&oy�w�3_�?���ڤv���g1�����CE	JG �>3KA9z^���?�2���s&�� �-\���|\D"�����"���x�3_���w�����S\Ԅ\J��{7��֚ ���ȹ��s�3_��/����y�To�>|5H�e(r3%��G�A�5 5t�M�g��*��?o��OW��ɸ�j7�S��9r����-�7���v�+�3�Ḫ��?�Y�]��c=��}c���gm���F�l�\��W����Ö~<�/���ׄZ�[��6N��(�7��j�����������/:Mk	� cP�P~4��(F��~� U��7;��������$�oE'w�r��3��x��J������ڙ��O��(Ł�=~zj�f�C�Ƕ+����_iH�
Ҥr�3_���H�n2/+��oK�b�{_M]W7Z��r�j���������O�x���=<�}޼Kq�d�Yq��6Z�(���B�_��f��?��-M��2G�褆؎�)��C����Q{�zjw;������>���]�<�S���k�����g�v�+��y�>�����{v��$�.�W��O[:�����C����E��3j���9��u�z{G�ë�Ri��i��%��[�����E�>�����!�v�d8 ��p���Q�.)XSLR���|��\��������w.��G��@9(�C��5�BM��'�����|�"?�Ǹ?������DR���E��/�r�]�Tr����|�ߐ_x-r=��[b+p�=9dp�&��Kt6���B���͆|>=^���g��#�L�-U��A>�q���v>�uC3_����f��o�O�]�����\��uչ��o 5vd�H���f��o�O���Ӈ��mUN|k���;Bo��l�54�XN\]��W��!(}I=||��r���0��X�4ñoq��3Ҏ�;I�~����~Y؟~
�̉+ݲϴU����6��!�4�����W���x����=��NXǯnl���΁��D[�龱������K�qv��Z��}n4p6�|)-9z�F�̆Xw?��s��O��=�y�j�K)y��T�ϼtb�e�A1�Nyϫ�����~4�L��d
�S�����N;j�!���8��������
��~\K5�׏���o�܂��2c$���7�6V�9������L��m��h����=�ϺS�[�����U����3_�鏥��~8oma|vg�'�^�-
�%��8�8s�7������jN�����v�;0��W %w�b�3
Ǳ���W�g��$a����W�0W���O�0�UЍ�##4�o�TB��>w=^�I�=�t\�ƅBUG}��N�޾%%�[�M�Gq�}a����GF�g	vj�xjZ
����+������䞻ۙ����Z>~�����N�(J����PX�k���k�.�W�jg���z����+ }_�W�r/TJ��N8������%r�4}������T���'5�=BF��utJ�+˙;�Ϗ���������|�߰���2]���Sc��D��C"��$�p֟}ي�9���W���)����ޞF��T�	�D���=Z���������Z�����_ey)g��+���]�z��i�RC�T�٥�������G�Oz�<Q��t���窅�>�P�Ƴ��siz,��=��J_����)�[@��5+ڹR^H��-���|�屠?�[�%��]V�d�N�.䊯���&z9--,J.�+U@���X��3:�ԛ��=��v�4Q��(�v@��a���tk�׽�vǂ�6�ѻgp�i�{��;Ŭ1��n�!�Nfx�+"g�a����_7<Vp��i��݇(��KKǩ+|^5MS�\C6�9fw�t,�z����_��-j����@��Eo1�V-�U5�-$��m��9t�n�]���,��(���._��25�ڊ�"�#�.ǂn7��n�+:�(&٤���(��\kF�Qj��[G������R���Lu��{���s�m&�Y����V�?�T�����N�Haw��^:�3��|Awvw<�4�R���7��j���q�+��|ip,��sօ����~W,^6Ι*�YVV��#�V0}��諒��o��{����귁
|�`J��}�^��u�.;?}kn,���y��g��6�dq�#�{���y�1�u�4"��c_Z���X�~A7�+�yx=�-��H _�=
�C8��}�Kc�=l�N�}���NS�׳㠡���N�,ҋ�8a�2rk��[[cA�pj��Lˊ��8k�ԫ��0��r��Xa��qp">;�՗�Ƃ��h�ڟ8g��:^��=��+T}#:ox1��� �  �4��ŏ[�:"�m��S�Z��8�K��M�_Vpa��4��qtށ�u�Y^UmEYs�[�r�i[P��A�QB;v�/�}�u��(yEH��p��l�;��[�)�1�@}��o��}�u)ɗ_�˜dI�5d��Ѝi]�;H��9���=+�K7cA�:�&�?p!�)ۂܹ��Z�j�Y�hΛ5Argo�����D�v~�.�v�UZ�<
���&��D�չ��D!��~kd,��T'���'Vb�ǽ�6,N5*N�/H�P�#���8�tkc���3�	bR��in�G_�i�X9�ܨ��P؀�l@�U��M�����B�+:g�g��U�uµ]�V!h����F��p�a,��T���ܞ�bP����U��ι�q����F�`���XП�N���S&���QA���(VҘ�t|tIeժ�?�ֿX���N���ѝ�s{��d1��9u����d������{��?3�x�����������W��:>?�U[_�΀��z�3ӉǗ�E��T��3*��Z���,/o���F����2�ҹX�7Lw�3��_-e6�ʨ9&�G�'��)�͈�vP��ֶX�7L��d��y1m�z��g|e�P.j�ѹ#�F��e(�{iZ,��Ѻ�'�y>/�RÁ�MCB��'$��MnX��G�Ҳ�E���9�ݚ=�����r@9��`�,��!IB&�OI�K�bA�0�Ļ&��n��k:a�W�ܓP�#���2��au�W,���4���7N�P��k���Bry��J�����[��o�."�|yvy/t�4�j�R8'�R�ZS;���[�bA�P]2^��7�s=�{|�>�a��)i��Ï:�H��*��![�_�0Ux�'�l���h�tN'�Z�0��w
b�[�bA�:�ߨ��ւD�2h�7N' �a�I��$��֦XП�.�����[���t�Y��9�8&YbE�O�E�Fy�oM����@Y�}yv*����Ke[��D
R�v ���$��їł��u���+:�b�^�w�%{bN��g�H�Fɔ��<xiP���g��Ʀ�U!o��R�nYF@�1zx�ez.%�C�#*sl+���3�Ek̶�����JM�ߠ�K�@f��4#A��rΎ�����Lu�
.��NO�W_����k��?�)��CLiÀj�*�����tљ/%���_��N���� �Ti��suԪn}�������Ns�}j�Ի�4{� Sh\�j��e�&��4�������?����Y�0      <   5  x�}��r�6 г���P ��^�=�ug2$E6�6�N���YN֊��|�!ހ $O<  :P�|�zr�iT�@��^T��ѷ�'h��䔤:�B���]��/��t�}���ޏ8?^�����}��8���k�c}y���Ï�O2<���<z���;GТ�\[��]�;��.#��j�Bs���ZG��nuq��f~!ة�]t�	��)��Jsi�Ց�����Z�k/:����Ο4%�=]J �]���2���qNեֳ���seh�]��Z]�եY����ĴS�sT	]�K�{���qh�e(�:MQ��:Y�d�ɍ��u��[�)� ���\�"������'��%q�O�!!&�ӵ.�uq��[�7���"iOgQz��VK������x��"�Sk��u����[�:��_9&�{�9*��w�{��dL�w2�1xG!�*�8�g6�uiѥ[�'��q��1��9J�R�Z���E���b3�:�D�L���d���^�}<����׿����sz��`NO����[m�GAŸ�=G�/#��T[�X5:��u	m���t��Z������w;������>�>�`�2�]�0۪��@!�U֢�~�iJ^���h؉mf�i����i�=��Tו�x��T�Vj�|�q�kgK��r�s��nCmR��&N�zc�X�R�|ݫ~ W���{�(�J�5�~T������]�����u�C�ƭ���Y��YT��~y�t]��Mu������pG�e$kOX���QJ�w�ƶ�Q]�߭-4N����j[X�4��yzz|����:_���p�� �      >      x������ � �      @   �   x�mQ[n� ��S���]*E(1*�V�}٦]��?�����!0��<H���i�L�DN�Su��ae�)����'�ϵ-/�u�����[�l	�%>e�!�׿�ꃉ!�`�0�+h6֮'ma/����5��4�:`W��\Hǖ�u�x,��^Y��;���.;�=�乚^�,>dg�`�ct�-n v͠�1i��\��C������_c���      B   �  x��Vے�6|f����qiF���%U*0���m6���X2���yaa�ۣ�V��fל�����K�m��s�WE�A��C��[p9�lF�	���7ŵ�|��CrS�O������us�:ۛo�S�Uz~|���	�u5sș�q���Us���8��gS�X�U.K�B=�A-�W3~�o��8��T΀����C_�}��Kٞ��J��T��uy>�֨�@K�v��#յ��TT�K �CAnb��ex	�4�~]�P��ġR����A��Ov��{��1�&���s��Iޠ�D{B"�8�d��K�*�j_�Mۅ�m۴�Tv]q|�x�"����8�T�M����$z��P�p�@ݩ@�TǶ�^ޤq�\����*��m~�C>�G8&7��:T���R��x,˗�-_����D�.�͡������5L`�#�����Y�6]_o`�j�p37��b?!���2 �J���9wU�?��K���ۢ�Q�@I�L$���3s@΃0�Ql�r���
1��\�|�GHQa�<}G�DL� r�tf�u*�
��)%��P���Խ�y[�p�ρ�.́�V��p���dB��.E"��[��{ �&�������}�q���.��8�A��VC*4P�\���K0�()�'�E�����r4t_�LZ-e���̽�n�Y����͐�*��2�e�T	�}�:7}��)�V1ĥ��$'%����X�QLR�k������2�0�.W�YA�"���)���w)FʆZǃ��m��:�JKAKJ	�o�\�;)����ԋ`�]S7�W[�a(rҙ1Nń�$�b�d���1L�9A�O��c�Ģ����BAbq=xB�pE�;n����E/����KId����=�IE|9�r��ĥ0ݔ�U���:��Xf���OߵL�F�qJ�)|o�Z�*,�bN+=���vu�vŰ����N%�٬���k.�9M��Ȁ��G�Ϫ���6~�˯�^g!r.��Lp��J����H[�h����<�:�*�p]%��(��K��J�6CI|��3��}Y������B� �*�f���%(�J�$���T � ��	�c,l^�=<��J��zB�-�2��o��mc����z�(g�w<|;ό�ԋϟ���=�E]L�?��!ur�]��CmX���3����=�Bp      D   �  x�ݓۮ�H E����O4T��MTDP2�A�;r���>�Iwf��V��{� �>�l��	�m��<��g2����[�(�Zj�?� �=>q�m��� �U����
�o��Cw�)W���E	�h��1����Ká��O�\GT�ji*�Ћ����m�{��{��C5���?���ҒhV�	��̛�
������r�k����~P+�}G�_%�$!憊�˒���_��/QEA��a�6�, hK#�t{0啘��v����3A|�����5f�e�&�1�F��x��I42}��0�͈�߲aë�[��������M�Y�9�S��W�����5�	�֘F���:���9��I7�$��T� �50�ց2����d��J�L�|ޙ4�8�i�d�����y U�=�Ő����Z�?��&P���O)��L{Z��Q��i�ܱ�?W�/�p����E���O;ú�,He��y�lG:K�;{����,;�̊*���#V��*�/��"{.����Я`��`��-��Ic�m����#S�j~<�S�Yc�b�V����':`A^�=��<y����txQs~s�V�����/>P���Ya��C��h_桺���ȋE��2Q���h�F���y����&���A
�W� ��`��?��}�nt1x&���.ˑ��":o�|S���TJ����f_� 9������K�,f��En�hÕ<�Cŵ�I���`����j
��vc�t{9S����+O������o��%2����ұh�m_��];��26j*�<-�1���Z+:�����N���!�]��k�z�V����}$�O����D�y��o�e> #�P��5��~Y+c@��O3-i��ʯ�4��F�著�T�ǜ-#�gqئ�1��2q��X�S+�R�<�	y�"��0Z��q���N������}��%i����>�ާ���Ls�������	�3v@.U���U�9?��[M[��]����v�F�].�����6c��y�W��8l��FdCq�!۲���O�_x�Qґ��eX��,Y+Ũ�|3Hk<�k�`����5����} �S� �5O���0ؕ��"�k�����ԫ�=\�S5D!��Ovg��� ��N�v�z�|t^�@�6	��s '������� � ��iQka~Y�s����� ��D�      E   �  x�}�Ko�@���WXʲb4��ۻ�Q�hUM���&��#;62����30@��G:�q�&C���z�4Z Bd��D�-�1�!�w�c�Ɍ�3�^�;��Y��ݷ�Y \��4%R��*́���s=��Zy3u�S+Dr)5O��B} ��6�q��΀�Ԋ1ZhLr�(e�����r��O�8F��,��j�<������ۮΟz[:?&���&Q$<51�i�^�'��J[�۪��}WW}�t�mY̐��[0"�H�$9�"�=p��S���&gh)?M*�FU��Z�������xh����k;^PA40*;���~����m���5cfV��v������S�<�Ĺ���y_��][�L��&%aL�Ԓ�D�δ��vS�����m�$v�`��A�$�"Ʊ=t��{m��:��@o�>������D#���.U�W�mH`5������{�#x)�M��3<�<����9D�ϸq���PG���N��)����d,,��p�޻�k+� ��^��?�;�Lք���+�B��8�W����6�e&��Qz��ӆ�����<�)�{U���9ȏK�	߯\Ъ����L�<r��Q�Ra4Y$��<����U퐿�֗W��y5��
�P��,��h4��      G      x������ � �      P   }   x�Eɱ� ���x
vSrwT{�ig}�&�hI������N]���;��/��۳G1���	�C�&��Gֹ]��RL��R-�Xs��m�ky}��]B���ǜ���-�D�@���߯&����{"�      I   Q  x�u�I��@D�U���&MjJIu�>����<Aߟ��Zl0&�^)� �0#�l	���`)���'듊R6��k@�V�%�\W��������_���w{�Pn
������j�J`y�R�$�]S3Ǆ&,�L+����h�Ė����"O�M=������K�d>gp���6ST�M�N۹x��MeZ�\﹛���������K..3�D+�*X��s�|�/�o*��Y����W�Me�TV퉕19LH1[e/��Zv�\��o+F`x↊��V����Z�~[8�J���9��9wnٹ���me��nO�P��T�(�$5�Ġ��Z!��&�<Veٱz��MaY@���6*���OU����F�J�u&Js����]���+�.��P|��|������[O�Z��Sc�,��h�����;�|�|[YH�<�]���0 ِ����J���&�ƾ̜�Ի�!��E���*�Ӎ{�p(m��}G�ap����Vbڹp��]����u���a��,Ȧ�����c�D��J!�x�sem����<�o����U��6��G�#��gz��R�	J���:fꑥެ�N�x�L��]����I@�      J      x������ � �      M   �   x�uͻn�0���<}4��c϶+�Ҥ�6��B�� 6���!��/��jD�е&\�^4u��#���_%o�j"#H��3���8$��vY�2�Ji羽�X�}�����>��N�"�f6)�\Ak�;\	b�P؇�sH�)T��W]��u^�7Y>�6LO?���lp�өT6���J���8����go�1�䪲�6L2�A��:O�c�dڞ�{�4��vX�      T      x������ � �      R      x������ � �     