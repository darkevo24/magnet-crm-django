PGDMP     /                    z         
   magnet_crm    13.7    13.1 3   Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            \           1262    16385 
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
       public          postgres    false    200            ]           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public          postgres    false    202            ^           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public          postgres    false    204            _           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public          postgres    false    207            `           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    21712    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    206            a           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
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
       public          postgres    false    210            b           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
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
       public          postgres    false    213            c           0    0    client_client_followup_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_followup_id_seq OWNED BY public.client_client_followup.id;
          public          postgres    false    214            �            1259    21730    client_client_id_seq    SEQUENCE     }   CREATE SEQUENCE public.client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          postgres    false    212            d           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client_client.id;
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
       public          postgres    false    216            e           0    0    client_client_journey_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.client_client_journey_id_seq OWNED BY public.client_client_journey.id;
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
       public          postgres    false    218            f           0    0    client_client_schedule_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_schedule_id_seq OWNED BY public.client_client_schedule.id;
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
       public          postgres    false    220            g           0    0    client_client_staff_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.client_client_staff_id_seq OWNED BY public.client_client_staff.id;
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
       public          postgres    false    222            h           0    0    core_profile_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_profile_id_seq OWNED BY public.core_profile.id;
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
       public          postgres    false    224            i           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public          postgres    false    226            j           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
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
       public          postgres    false    228            k           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
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
       public          postgres    false    231            l           0    0    followup_followup_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.followup_followup_id_seq OWNED BY public.followup_followup.id;
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
       public          postgres    false    233            m           0    0     followup_followupselected_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.followup_followupselected_id_seq OWNED BY public.followup_followupselected.id;
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
    updated_by_id integer,
    client_id bigint
);
 -   DROP TABLE public.notification_notification;
       public         heap    postgres    false            �            1259    22238     notification_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.notification_notification_id_seq;
       public          postgres    false    242            n           0    0     notification_notification_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.notification_notification_id_seq OWNED BY public.notification_notification.id;
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
       public          postgres    false    236            o           0    0    staff_staff_history_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.staff_staff_history_id_seq OWNED BY public.staff_staff_history.id;
          public          postgres    false    237            �            1259    21810    staff_staff_id_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_staff_id_seq;
       public          postgres    false    235            p           0    0    staff_staff_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff_staff.id;
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
       public          postgres    false    239            q           0    0    staff_staff_level_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.staff_staff_level_id_seq OWNED BY public.staff_staff_level.id;
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
       public          postgres    false    246            r           0    0    staff_staff_salary_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_staff_salary_id_seq OWNED BY public.staff_staff_salary.id;
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
       public          postgres    false    244            s           0    0     staff_staff_salary_montly_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.staff_staff_salary_montly_id_seq OWNED BY public.staff_staff_salary_montly.id;
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
       public          postgres    false    246    245    246            �           2604    22278    staff_staff_salary_montly id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_salary_montly ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_montly_id_seq'::regclass);
 K   ALTER TABLE public.staff_staff_salary_montly ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            (          0    21686 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    200   m�      *          0    21691    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    202   ��      ,          0    21696    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    204   ��      .          0    21701 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    206   ��      /          0    21707    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    207   ��      2          0    21714    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    210   ��      4          0    21719    client_client 
   TABLE DATA           �   COPY public.client_client (id, created_at, updated_at, is_active, uid, is_registred, source, created_by_id, updated_by_id, domisili, gender, nama, pekerjaan, umur, is_locked, email, phone_no, source_detail_1, source_detail_2, birthday) FROM stdin;
    public          postgres    false    212   ��      5          0    21725    client_client_followup 
   TABLE DATA           �   COPY public.client_client_followup (id, created_at, updated_at, is_active, uid, answer, client_id, created_by_id, followup_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    213   Ģ      8          0    21732    client_client_journey 
   TABLE DATA           �   COPY public.client_client_journey (id, created_at, updated_at, is_active, uid, journal_type, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    216   ��      :          0    21737    client_client_schedule 
   TABLE DATA           �   COPY public.client_client_schedule (id, created_at, updated_at, is_active, uid, schedule_date, status, answer, client_id, created_by_id, staff_id, updated_by_id, schedule_type, notes) FROM stdin;
    public          postgres    false    218   4�      <          0    21745    client_client_staff 
   TABLE DATA           �   COPY public.client_client_staff (id, created_at, updated_at, is_active, uid, client_id, created_by_id, staff_id, updated_by_id, color) FROM stdin;
    public          postgres    false    220   Ȥ      >          0    21750    core_profile 
   TABLE DATA           �   COPY public.core_profile (id, created_at, updated_at, is_active, uid, is_supervisor, reset_token, is_ib, full_name, no_ktp, phone_no, email, is_verified, verify_uid, created_by_id, updated_by_id, user_id, last_login_ip) FROM stdin;
    public          postgres    false    222   w�      @          0    21758    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    224   ��      B          0    21767    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    226   ��      D          0    21772    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    228   ��      F          0    21780    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    230   ��      G          0    21786    followup_followup 
   TABLE DATA           �   COPY public.followup_followup (id, created_at, updated_at, is_active, followup_choices, followup_choice_code, followup_choice_head, followup_textfield, created_by_id, updated_by_id, color, font_color) FROM stdin;
    public          postgres    false    231   L�      I          0    21794    followup_followupselected 
   TABLE DATA           �   COPY public.followup_followupselected (id, created_at, updated_at, is_active, followup_selected_code, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    233   ��      R          0    22240    notification_notification 
   TABLE DATA           �   COPY public.notification_notification (id, created_at, updated_at, is_active, notification_type, notes, is_opened, client_schedule_id, created_by_id, staff_id, updated_by_id, client_id) FROM stdin;
    public          postgres    false    242   
�      K          0    21802    staff_staff 
   TABLE DATA           �   COPY public.staff_staff (id, created_at, updated_at, is_active, uid, created_by_id, profile_id, staff_level_id, staff_parent_id, updated_by_id, is_locked) FROM stdin;
    public          postgres    false    235   ��      L          0    21805    staff_staff_history 
   TABLE DATA           �   COPY public.staff_staff_history (id, created_at, updated_at, is_active, child_staff_id, created_by_id, parent_staff_id, updated_by_id, staff_level_id) FROM stdin;
    public          postgres    false    236   	�      O          0    21812    staff_staff_level 
   TABLE DATA           �   COPY public.staff_staff_level (id, created_at, updated_at, is_active, uid, level, level_name, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   &�      V          0    22283    staff_staff_salary 
   TABLE DATA           �   COPY public.staff_staff_salary (id, created_at, updated_at, is_active, salary_amount, created_by_id, staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          postgres    false    246   �      T          0    22275    staff_staff_salary_montly 
   TABLE DATA           �   COPY public.staff_staff_salary_montly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    244   1�      t           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    201            u           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    203            v           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    205            w           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            x           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 143, true);
          public          postgres    false    209            y           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    211            z           0    0    client_client_followup_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_followup_id_seq', 16, true);
          public          postgres    false    214            {           0    0    client_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.client_client_id_seq', 2010, true);
          public          postgres    false    215            |           0    0    client_client_journey_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_journey_id_seq', 22, true);
          public          postgres    false    217            }           0    0    client_client_schedule_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_schedule_id_seq', 20, true);
          public          postgres    false    219            ~           0    0    client_client_staff_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_staff_id_seq', 4094, true);
          public          postgres    false    221                       0    0    core_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_profile_id_seq', 141, true);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);
          public          postgres    false    227            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 64, true);
          public          postgres    false    229            �           0    0    followup_followup_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followup_followup_id_seq', 26, true);
          public          postgres    false    232            �           0    0     followup_followupselected_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.followup_followupselected_id_seq', 1, false);
          public          postgres    false    234            �           0    0     notification_notification_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.notification_notification_id_seq', 7, true);
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
       public            postgres    false    233            _           2606    22248 8   notification_notification notification_notification_pkey 
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
       public            postgres    false    235            d           2606    22280 8   staff_staff_salary_montly staff_staff_salary_montly_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_montly_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_montly_pkey;
       public            postgres    false    244            h           2606    22288 *   staff_staff_salary staff_staff_salary_pkey 
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
       public            postgres    false    233            [           1259    22335 ,   notification_notification_client_id_56858ebd    INDEX     w   CREATE INDEX notification_notification_client_id_56858ebd ON public.notification_notification USING btree (client_id);
 @   DROP INDEX public.notification_notification_client_id_56858ebd;
       public            postgres    false    242            \           1259    22269 5   notification_notification_client_schedule_id_cba97593    INDEX     �   CREATE INDEX notification_notification_client_schedule_id_cba97593 ON public.notification_notification USING btree (client_schedule_id);
 I   DROP INDEX public.notification_notification_client_schedule_id_cba97593;
       public            postgres    false    242            ]           1259    22270 0   notification_notification_created_by_id_66da0796    INDEX        CREATE INDEX notification_notification_created_by_id_66da0796 ON public.notification_notification USING btree (created_by_id);
 D   DROP INDEX public.notification_notification_created_by_id_66da0796;
       public            postgres    false    242            `           1259    22271 +   notification_notification_staff_id_8c97b845    INDEX     u   CREATE INDEX notification_notification_staff_id_8c97b845 ON public.notification_notification USING btree (staff_id);
 ?   DROP INDEX public.notification_notification_staff_id_8c97b845;
       public            postgres    false    242            a           1259    22272 0   notification_notification_updated_by_id_08647d1b    INDEX        CREATE INDEX notification_notification_updated_by_id_08647d1b ON public.notification_notification USING btree (updated_by_id);
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
       public            postgres    false    235            f           1259    22321 )   staff_staff_salary_created_by_id_79ac0491    INDEX     q   CREATE INDEX staff_staff_salary_created_by_id_79ac0491 ON public.staff_staff_salary USING btree (created_by_id);
 =   DROP INDEX public.staff_staff_salary_created_by_id_79ac0491;
       public            postgres    false    246            b           1259    22299 0   staff_staff_salary_montly_created_by_id_f9fa18f6    INDEX        CREATE INDEX staff_staff_salary_montly_created_by_id_f9fa18f6 ON public.staff_staff_salary_montly USING btree (created_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_created_by_id_f9fa18f6;
       public            postgres    false    244            e           1259    22300 0   staff_staff_salary_montly_updated_by_id_c063865d    INDEX        CREATE INDEX staff_staff_salary_montly_updated_by_id_c063865d ON public.staff_staff_salary_montly USING btree (updated_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_updated_by_id_c063865d;
       public            postgres    false    244            i           1259    22322 $   staff_staff_salary_staff_id_ff8bde85    INDEX     g   CREATE INDEX staff_staff_salary_staff_id_ff8bde85 ON public.staff_staff_salary USING btree (staff_id);
 8   DROP INDEX public.staff_staff_salary_staff_id_ff8bde85;
       public            postgres    false    246            j           1259    22323 *   staff_staff_salary_staff_level_id_1864b0fd    INDEX     s   CREATE INDEX staff_staff_salary_staff_level_id_1864b0fd ON public.staff_staff_salary USING btree (staff_level_id);
 >   DROP INDEX public.staff_staff_salary_staff_level_id_1864b0fd;
       public            postgres    false    246            k           1259    22324 )   staff_staff_salary_updated_by_id_35738d50    INDEX     q   CREATE INDEX staff_staff_salary_updated_by_id_35738d50 ON public.staff_staff_salary USING btree (updated_by_id);
 =   DROP INDEX public.staff_staff_salary_updated_by_id_35738d50;
       public            postgres    false    246            I           1259    21963 #   staff_staff_staff_level_id_02e5808b    INDEX     e   CREATE INDEX staff_staff_staff_level_id_02e5808b ON public.staff_staff USING btree (staff_level_id);
 7   DROP INDEX public.staff_staff_staff_level_id_02e5808b;
       public            postgres    false    235            J           1259    21964 $   staff_staff_staff_parent_id_3a0ea1e3    INDEX     g   CREATE INDEX staff_staff_staff_parent_id_3a0ea1e3 ON public.staff_staff USING btree (staff_parent_id);
 8   DROP INDEX public.staff_staff_staff_parent_id_3a0ea1e3;
       public            postgres    false    235            M           1259    21965 "   staff_staff_updated_by_id_ae4985b6    INDEX     c   CREATE INDEX staff_staff_updated_by_id_ae4985b6 ON public.staff_staff USING btree (updated_by_id);
 6   DROP INDEX public.staff_staff_updated_by_id_ae4985b6;
       public            postgres    false    235            l           2606    21966 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    202    3304    204            m           2606    21971 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3293    202    200            n           2606    21976 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3382    226    204            o           2606    21981 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3293    207    200            p           2606    21986 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    206    207    3306            q           2606    21991 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    204    210    3304            r           2606    21996 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    206    210    3306            s           2606    22001 B   client_client client_client_created_by_id_a8280477_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id;
       public          postgres    false    3306    212    206            u           2606    22006 M   client_client_followup client_client_follow_followup_id_fc5601fd_fk_followup_    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_ FOREIGN KEY (followup_id) REFERENCES public.followup_followup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_;
       public          postgres    false    213    231    3391            v           2606    22011 T   client_client_followup client_client_followup_client_id_45370856_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id;
       public          postgres    false    212    3324    213            w           2606    22016 T   client_client_followup client_client_followup_created_by_id_57569ec6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id;
       public          postgres    false    206    213    3306            x           2606    22021 Q   client_client_followup client_client_followup_staff_id_04b7a4de_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id;
       public          postgres    false    213    235    3399            y           2606    22026 T   client_client_followup client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id;
       public          postgres    false    213    206    3306            z           2606    22031 R   client_client_journey client_client_journey_client_id_2e449a98_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id;
       public          postgres    false    212    216    3324            {           2606    22036 R   client_client_journey client_client_journey_created_by_id_88c21422_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id;
       public          postgres    false    206    216    3306            |           2606    22041 O   client_client_journey client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id;
       public          postgres    false    235    3399    216            }           2606    22046 R   client_client_journey client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id;
       public          postgres    false    216    206    3306            ~           2606    22051 T   client_client_schedule client_client_schedule_client_id_e3ee1cbc_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id;
       public          postgres    false    212    3324    218                       2606    22056 T   client_client_schedule client_client_schedule_created_by_id_9b078863_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id;
       public          postgres    false    218    206    3306            �           2606    22061 Q   client_client_schedule client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id;
       public          postgres    false    3399    235    218            �           2606    22066 T   client_client_schedule client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id;
       public          postgres    false    3306    218    206            �           2606    22071 N   client_client_staff client_client_staff_client_id_196dca78_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id;
       public          postgres    false    3324    220    212            �           2606    22076 N   client_client_staff client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id;
       public          postgres    false    220    206    3306            �           2606    22081 K   client_client_staff client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id;
       public          postgres    false    3399    220    235            �           2606    22086 N   client_client_staff client_client_staff_updated_by_id_35a02e55_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id;
       public          postgres    false    206    3306    220            t           2606    22091 B   client_client client_client_updated_by_id_12f0c54f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id;
       public          postgres    false    3306    206    212            �           2606    22096 @   core_profile core_profile_created_by_id_d0c22ea6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id;
       public          postgres    false    222    206    3306            �           2606    22101 @   core_profile core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id;
       public          postgres    false    222    206    3306            �           2606    22106 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public          postgres    false    222    206    3306            �           2606    22111 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    224    226    3382            �           2606    22116 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    206    3306    224            �           2606    22121 J   followup_followup followup_followup_created_by_id_bd33bd23_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id;
       public          postgres    false    206    231    3306            �           2606    22126 J   followup_followup followup_followup_updated_by_id_aeb66564_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id;
       public          postgres    false    3306    206    231            �           2606    22131 R   followup_followupselected followup_followupsel_created_by_id_d6e0a19e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user;
       public          postgres    false    233    206    3306            �           2606    22136 R   followup_followupselected followup_followupsel_updated_by_id_f571c189_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user;
       public          postgres    false    3306    233    206            �           2606    22330 N   notification_notification notification_notific_client_id_56858ebd_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl;
       public          postgres    false    212    3324    242            �           2606    22249 W   notification_notification notification_notific_client_schedule_id_cba97593_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl FOREIGN KEY (client_schedule_id) REFERENCES public.client_client_schedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl;
       public          postgres    false    242    218    3348            �           2606    22254 R   notification_notification notification_notific_created_by_id_66da0796_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user;
       public          postgres    false    242    206    3306            �           2606    22264 R   notification_notification notification_notific_updated_by_id_08647d1b_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user;
       public          postgres    false    206    242    3306            �           2606    22259 W   notification_notification notification_notification_staff_id_8c97b845_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id;
       public          postgres    false    3399    242    235            �           2606    22141 >   staff_staff staff_staff_created_by_id_750bb59d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id;
       public          postgres    false    3306    235    206            �           2606    22146 Q   staff_staff_history staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id FOREIGN KEY (child_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id;
       public          postgres    false    3399    235    236            �           2606    22151 N   staff_staff_history staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id;
       public          postgres    false    206    236    3306            �           2606    22156 R   staff_staff_history staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id FOREIGN KEY (parent_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id;
       public          postgres    false    235    236    3399            �           2606    22228 L   staff_staff_history staff_staff_history_staff_level_id_01fbd862_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta;
       public          postgres    false    236    239    3415            �           2606    22161 N   staff_staff_history staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id;
       public          postgres    false    236    206    3306            �           2606    22166 J   staff_staff_level staff_staff_level_created_by_id_591009cc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id;
       public          postgres    false    3306    239    206            �           2606    22171 J   staff_staff_level staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id;
       public          postgres    false    3306    206    239            �           2606    22176 >   staff_staff staff_staff_profile_id_f1607ae4_fk_core_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id FOREIGN KEY (profile_id) REFERENCES public.core_profile(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id;
       public          postgres    false    3369    222    235            �           2606    22301 L   staff_staff_salary staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id;
       public          postgres    false    206    246    3306            �           2606    22289 R   staff_staff_salary_montly staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user;
       public          postgres    false    244    3306    206            �           2606    22294 R   staff_staff_salary_montly staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user;
       public          postgres    false    244    3306    206            �           2606    22306 I   staff_staff_salary staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id;
       public          postgres    false    246    3399    235            �           2606    22311 J   staff_staff_salary staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta;
       public          postgres    false    239    246    3415            �           2606    22316 L   staff_staff_salary staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id;
       public          postgres    false    3306    206    246            �           2606    22181 G   staff_staff staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id;
       public          postgres    false    3415    239    235            �           2606    22186 B   staff_staff staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id;
       public          postgres    false    3399    235    235            �           2606    22191 >   staff_staff staff_staff_updated_by_id_ae4985b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id;
       public          postgres    false    206    3306    235            (      x������ � �      *      x������ � �      ,   D  x�m�M�� ���)|�Q��s��,+!����v��ۏU�|/�'SZ���x���Y�����V�x8�v�E._����MXY�jf�K�MX[�g2�{O�g�~O�6-wUZk4-7'@t�؎�,dlOi=2�\~���*k��}���:�BDsOA;��d��.W��s3�����O�5�Wq{4|wps��7.ۭ�bv�,���j��z�X8���s#���"�q�<�͈�v���͸��Z�8�R�wb�g��i'���u�����I�-��>:��n��������R�����JQ9%&H��&r:*U��t���:��T�*��~��e����	�PQ�<��6�F�]{q#�D��;��D曊�X-���G���}����A��|�U .#*'0�PZ�f�w"ݺ�.�b6?fVZ���NA]&�͝yA��cn���,�ɳ����״���r)�w���͸g
�?��L&��OR0	�T5�y:z���fq#hD��)R�^��-)V,ĸƉD����e������44ujP��U&lR�R(�3aǐ2���4�+�FĲ����L��9�9��K�(VҞ29�@�p�N���["4�����*��U.�@$��L\�c��I��[���E��`8m���42V�u�TL&CY�fb")H�q�/�t�.��~�5)��)өb�hWR�3=+���%�eҽb1kaRJ�CJ�M+Y�2b�I���Ik1o3H����6������E9�T�����t�m�����Cz���A|7�}|�����E����U�����^�gbB�{�$���5@�$|�����"<      .   �  x���ɒ�J���`g��	�$���N��7�erby�k���j[U�K�q�? �;;v}��lmј�h�ź��k�=��+�����{2�;	R��x4���W� �Dǯ�v+iɁ��s���Sm��,�|����-g�6w{��7h@�� ��Fϐk������<A�<
��I�;I�)~^���9i]P�9�A��ߗ�߄u���:�KMQ0@"J������V�;����c!�� G��E�=�2�kM�L�s����R,�B]�q	�p6ܥCۑD�/[�Y�4�3uhrQ|-DwB��� M8�.B��P�)nUs��'oT%ɢ���+�7=�1�p�WD;~���H<u��zݚY�+�Z���+!�0Ð_B�ql�3E7'��Zԇ���eM��U�$��d�� R+��H[��:���;�E�^��읐�J��2�������{�n,P%	@�1eE);��� hUmg�ٟ�*���?��u���>���5����@܂����X�	����z���fNW�����l�>�^ܓ1�k����]g;8�D"�k!w'�2�@_��ca.�qi���G�a�?����)�K�0[7��n6�`�o��e�H>z2�e/�(`�k!'�b���}��<�FH�#�\�H�#ArJ$;/�{��Δ��l��D�I�Z V��������S����?CܦI�-��,�� ���ݠ�?��Ž�K=���k�g���[��ͥ$Z�O��ܩ�þIB{�D;�m��2%���Eг�M����ǿt<Cxv���� D���FV���M��o�ݕ���g �n#�u�.�ߧ(���'�l��@f��夐հ RH��Bk�ѩf�H�U�̓����B��p�uʕ&��������<Ϡ���Ɔ���8B�b���x�9\����3�?7s�K<	2��(�V��W�J���p�UI$ǵ����`�;�ŧۀ��:�< ��Xg��?��r�0 #���`n츙1?��y��@T�lM��
��vf�类X�i�7�.J��x����)N�a����\�-����oC�
=��o�����K��V���9
IW5��P�Rr��
����Zu�e)O^t�P\��L��Q���΄�R�XL.������<6t�&owx��zzz�uj��      /      x������ � �      2      x������ � �      4      x���Y���%�\�+�}�ew_�i�� 3�-"�h���]%�K��ZZ���s��,Ox��]��(�&� 8�B꟔PjaPf#��P��7!�S���=u��?U�\�JA3���˃��d�LvU��R?ɟ���O?�;��~zܾ;<���IG�?�C�?����/+���'��������_���)�Y���J=t���6��`�sCL1�:)�hII�WC�~�o�=]�7���~�e�q2Y�n�e�r��d³�]J��CW�Ƅ>$���[02�\,�����~{��\o��_����d9]�y�b���������3����r����T�e0�׽�b�*����?��ms۾�߾�������˟?�=[m_���+X����V۪��>U�<��㐋!���hj���Voﯾnv>���cs2ֽnl`�J;�ڨ��V��ڛ!����O�=��C�E��Wk�Ow�}pʟ��_6E�c�?8�>�1��I���r(t���0d����5V�d5gx���m�6����`9�lx�`%8���+�x�Y]Sȡ#.�������4�,N���_��;�n>m�ngZ|�V�X#���.N�)�iizt�55$\n/z��z�됊\���������/��i'_��u{c��q�n�Q��^Yu�*��Y�q����������_�=l�כ����j���&���3���zF�T�.��h�hy�)����GH�x�"�������1�'����b�M)W<�Hs2�5���i���bʀ�x&��ښW���5}����N�V��j��e�^�����S�9�T�P���}����w'����E\�� g�fS_���A��?�t�o:���`���=�AU�q�#f/�as�{|�nv����Ǐ�g�}�
�h�p����5b���	?���[�C�m>�T����=�GԽ��=�}{؎�&ϱ�u�PPW"(u�殥��,��ᯮ��#ڔ��Xv�|>l�@���#����の:Lf�����8˛���f�!�<$���(ĊP���µ�r�滽A0�'_o���~F�똡9̈A���왪�GH��Vaz4�nٜ��Z������~s�߁9؉����A-��9N�)D��m���D�����%�������^o���9�U��fpBOX˜:9��$E��Z�W���s����Vv����6�����
���� ����`mZ���:X�H�B��*������vw|��n��O�g�^�:lh&��ț�O�~��˪]�BdïF0F�(��$�������� ��^.���'D�;�c\�d#���-��Nm�+�c��{Sc�Y�]��=m��|�ݯ��1��:�i֨ ����{@$he�l\#�{��$���!��H����o�7�o��/���_��'u6�u���i�VhN���R7� L��Y!#�Y׌0� t,�z�����'��^�;���vƬx�3S��b� �4�2�ɢbj6'0�^���<c{�����<BN��t�A:M�7ث�����F*�dcdl�J'@����*Đ�8���|�<n���:��@���7�=�^�-�����8\�H���"A�s����~�忛�߾��=�'��m��u�3䅰B5q�Nl���҄A�N��HDr4�\j��8\X����JD�B���u�3�EoW8�p��zQB��}l�IA���f�[1!-���j�9<�7;*�̹�~���h���	�h:�'����#�G��`t8�ڠE��h/sK�������Og�f^���n�ké�g�S���7E�h-!�2�P]./2ϻ���n��Y�G��ʆAe��Ȼ-x�<}k,LR�3�)Dݢ@ݑq�h��f{7�&�`���e��(��!�t�T#"C������bn��!$m�fQ�x}����`���}��gF+�d8uS�ǹ�(���H�G�����T�պ@��T}����p�0w��A�0�ft�<�ĩ���3@��P`n,C
�с���0�Y��#����v�g{_�4�`���t��)y3Ef��5�N�[ax�ʔ�Q�ڒ�c�c��\}z��@���e�i�i^�ӯC�e��X�Wnيx�eٌ	6��J��3ʎϪ�;�E;9�/������9���S��)�ב�2�f�[�c����hJ	�"����:�D��V�� ;T>9lw�T��><�:�Y�@[���ө����.�%��4���R�5��R~����zJ4��������E��.9=mŔe?�i��a��֜.Y!ُ}a�gĵ��%2����x�V\�[;���UD���iB6=�Z����#,ڶ�+���6�n6TR�#L־���p*�r�'�=PY�s��~�EZ��\�m��~��d�������d���aY���� N��I�NV'At�h�m���@��6�OfY���o�ӥ�n^O�,pVH��/N��5ra�^$.�A�!+�р�E�l�:f�����@���ס�2І���`���	r�財�GQ�>��T)��&A�jҰkRW�;r]u��^G7Ǡ�w]�[	�=�x\��*�Ta0�ꆬycu֊�R��ǀ��������uDs�Y�W���D �	-x_ѝ�� \nN�\$�\�~��F�A��c�o*�����1`f�X�Ho'�+��H��P=��[x�TJ^7W{�s�>�������a�10f�P+^k�D�ps5��l=��, 9�MP������������'}��W����us�Y���ͺs}�;$	�+�;��7H}bB!���A�.������������=Ӿe��2��J��'7H�&M�Y��[���
D�rV�ꐖ9����vw����0�~�3���M��N��~���!,�8d=n����/0��Yh{�(v�?������]'�J��Ss��!Ƞ[���t��C�*5��c�V�e=䰿�$���8�8��
���N>�CV*���@���_�T�Z'�]B���ҝ��+İӳ�t���x�x�^�3�t"5;j'
�V�2��."�Ucch�*���n�e�?"����,���c�g|�ii�o��f>5ܪm	�փ-$$�C� ~X���o�-�f�9l�mo���~�^w^��^��
����\�� ���Z��0�ػ���u������톈�5p�~���^�����Μ�v�i���Y��@6+`4�Ʋ�p�"��؈������	m��LL׽�=��J�g�ӊ�Q�Z�Pǆ�ː���͹���{��������3���
X�TO��׬M�C�݁�Q�KOyx�E��X��w����|����5)����ԟF(H6�8a�P��p��t�gj�YV������z;V��?�4�ƻ׳	�d�{��sp�ϯ�5�\�"+j�S�-k@�����F.r��ϻ��G���᰿�7Bx2U|/~�z��9�V��Le��u��L�^�TD�*��ڢ2z�tu��h��m���F����u��yx:{^yb�]���]����+�����u�ܒo�YaĽv�;��;�N�,J��롘a(�Mx��:�,�0��S����#�ƹ��_ǹ��H�J�!N��C!{��!���Z�f-Y
ݫX`���v���v�-u�L��_������+�)�D�a����.ĀCx@I45��	��oi���/��?~��S����US4��]`���Ұ`�ӓ�K1�:KziˑZ'��c�\��;�܉Z���-0��A�����)w㓠�� (�������+�+5��ݯO����	6�o�<���|���]�,sk�W8��-��"z��%�n<]��E'�T�;UU_�����w����p?l�f�=����$N��(����4PL��N:��&MYp�OO��͇��>x����"0h��J�����z)rH��+�� ��TEE�_�Y����	Y����=r�u��R�xT�RSSj���O��P����c���S*ʾP:�    ���
g#�<��:`D0�_��.�Q��t ���ݚ!%$���b���m���>�w6������a�&��A#2�gX�b�F9Q�R{Ι*Pv0��!��Tcn]{���\?�c�w;&����!#2��v��t*���j�ȓ��g�jpý�S������8z�ށ�#9B�L-0n^G�� FP*�!-������I�O���T�t�X�	A��%��cs ~v���ms׾�����s�gxD""�E+ �ө��D[����#*�C�*ڴ�<�ﮞn7���'�5u��ס#2yR0گܳ1S�}5H�$=�^I_^��R�Yv��.�O����vC�Z�i�	6��yR�L·�b�U�TM��w"����C ni��:��%FӃ�����-2��X������Y���pWm+ Yyj�'n�d�j��-^�7l��S�Ô[���-2�a+���N����<����CԭDM��S����>��۟��������J������qR0iV����O�k��sh#D�IF�1K�K|����?��;�0v�O"��r���ie�ab�M��,�_�!$>3\��������=���^�7����A./��U�������RN��ӗ�H��H"'�6QGx��}(�8��j!/_3@!��8Ω{g���*�I��\�]q
}N2L3�%g�^\��Ά�K��kѴ� �%�ne*Q������w�	�Q����tz (@ \�Y�^�H�\PC��!U���|������u�y�����*��b��+�^mO�G�3�)��AH�����3��}�5,��H%���h�y^�Ul����h�J�N����o���RSjGZd+��E|�9-{hw���p����sԹ�+��m�5ɹ5���(�'�SW���v�0�b�`*�*dYP�=�w
O'�
oH�S���@�VL�|����i��^����PH��9�d�ۛkz��D�������(��{z����D���J�)�f�ޣP��V�����������zw|D���}z�?^xp|�$�tQ��Xq:=��b��Apd���L"Y鴶IǂI�����ȹ<�0�.�r8��c��f��Wڦ%���#a�U'0���|�%X�),�� mOWW{B����a>'X���2�I�b��N���\C���AE*E�q=��v��cT�F���Ѓ��ܶ��{_FH坂N'�H�+��*w��rH���w���ˢq|�L���23[�p��ec�N�P����$�z�C�@��<4�fdoH�@����޶��jύ������/c���ys���e��ӑ:�]�nO��J�jQ
򡰔S��o�+�>�7�1P�k�o���+�#O�@��K'�1Q�|�b �,���E�p�x���+���`�� �V��\NUVU;���"�DV�dr�Z��W���>��������o��e����Y�N�
-J��2�����țPM��Ų���~�1��e?R:.&3�
��V��T���_��Ѐ}� \gdA���B���EyG޼=��p�Kp{�02��fu��KW��dE�^5������@j����-��F�g�1g~!y�������O���4��L���>4�=��LFv���CA�^��e�{n�!Zt�=~}{&.v��$T�x�k
h��
c�:<Ț�.Rq����o3RH���J-���:��E�����I�b�'��'��z%4�O,����7�rCn��hI�� I"Do3�G'����7�#�@�$�NG��d�*�x���j����=4�$��j9I���opX|�0.�����^&K��u��T�����6t�@�@:�E��f[ii�x���[�s���f�2�X�7JЩ��=n4�Q���D4nAib�yA�~ghX��~>)yт�Ōj~0��ҡ>���|c-)Ki(�%�C.�DM����I���0�/w�������W���TJݎ�2 ��Q4H��05�3�}������v�����q��/y	���L��>
K���=���UR{RM�CZo��F���2�?�67���Y4�����ؗ�U0'��o�Ǔ�-�"��J:)29�<xIu[|}/�|����������я/Z7l�jf0�u��yu�5��k�N+=,
EC:�������/ 3R�)���[��v����h5��qꦒJ��6*��Dϋ:6�,*���BŧZ��/��'�Z[�/��8�x_��a��J�M�h2~��G���4$�T��J-p�i�y�y{���^�`f+g���P=�N�?�f������X�*ͫ*�ۢ#��g������C���7��b\i��N����	J����&:�TXa
�
�۲��᰻��o7���5�'��)� y�zJi�p:�"+��9���5y�b��)�l��+�~|:n�@��/T�zV1����$/dp1�Q2�y����
���0��h���n�Sh�7 �] ��S�z^�D��1�� �
j���i\��W�PGE�:���� 'u
������=y����e O�Son�� O�c�k�U���NY�	ͧЖ���=��c`Ǻ.:do@=F� 6�C��皼�-�����]�$ӣ�=Ǩ4�k�E�q�<�e8$/a03�A==�s0�N��f���J�c�A�̰Ո�L��lq�z7�'?n�!����Y̩. ����!�r:ջUҀ������,�`�lɄ�Y�����m>���yT�ܷ/y��������i����P���;O���P�M���+B�����S����o@=����iNυ�T���Yhȫ��mj �'ib2B.�r�1������o�;F� �^)�N�)> \yd�lp�X�:g#g�b����5���)p6�,yA����Q	�8��P��o��{[C�4d�����'^��$����/gp��Q�OF�ɛ8��Q$KMd��A#��$v�i����XN��m�I��b �03��
�%?�F���l_;"f)h��<�����>-��a����n���^`f0�گDЩ��@�*�
'9�-S�:���`d�6���G�y"��/�r�%��5f&sXV"�t�:�j ��F�!��;5dQ�FrjDZd�OG*�}9}n��|ɋ�fB�+�_85Sv$��`�Ȑ3IrXI�G&Y0P��m{�'!�O�{����E��A���c��3H>N7-l��V;�P�iEZ"%�g)�ӣ2�������Vw��!����Ds���
��WCp���qv@�%��xv��]o��OP�go޼{1g��΄c��2~C"�SG���71�b�l�ಧ��UhB-��h��7�����ݖ��挂�Ŀ�͌�㓰+OF����x笆[K�5�Mm�,.��,m9K5�z��?���3��'�g3Pb��+�v��4*@صDj$�ϒzt�sC7���A��R<`��e���aw?�9����g63�b�Z)�t�RlBΟIK$S'&|� ��H��_6Ѩ�4�F]�������q�����lg��8�W����!E{s�6�`J�MAU�쵱��C�����E��B5�A��������'{[,@F��J���>L��Zּ��9<�R�8�L� _xV�'�gf3������~��*I�f�O�$�E3VH��"�
WD�rY��w�77��=)8�Ed~jf3������t�'�:�sp�+��`}�� `��^,eީ�E�c��x���x�8��J�#N�T���0��VFj��� ���Ï�R��jpף&�XQ�R����7`#�����$�8���-Uݲ�Q�`���Y���j}��]6$�@�M������7�"����cV�z�<���̀�AU��zE�TGA5�L�7ˊ�H�Ʋ'y����<d$H��W(���ɬ#jD� u���-!\�b�Ȣ����
�g��ye�L����F��b�Y��(�A��`	=�@�<����X�Of׻G|�ಣ��O�^4af6��4�����ą�P	xF��BoP�ʴ�x���-�E�v���B���WK��    � �uj�r��)w�]�����]uIcW} ~�jR�--u��G���G��s\�f3�*�B��v�*��N½����Qj5��@��¦.pv����qx�E	^&af-�|t���v�q!�� H:������j��/|aO"@��7�sN/x�����=1�T2�$�f%I��N!��Ŋ�[+�%�rV˪7����O��3;�pb�>�."�%��*���J����"�FT�݆fUY��������+��_	�~�S�M��J��3�Z�K �	�_���{�}����7`#0�OS��\R�8/�m�:KP�Bun��]Z��c�.k7���B�e��10�អ���i `��y��p1�CB���ԛW{1Rd��@�&�o�q��/�,��e�3j�ݥk%��Co4�B
�\�?�"8�N^-���s���m��3P��3Ù�v`4+���ԧP���ۢ5�vI�]Gzl�6��j�5��oi�H����I~�f3|� �pzjD�u5��M%��E�N	�({jI,w�����yg���7D��dι�f1�N��O/h�D��N�zb�@W�3�d��/�؉��{��_�C��HP��g�8<^"e����H��T�B��5^MvQ�^V��O�D��y�#/40��C������M���`*�KG@�hU$`F�-�ϻ��a���8v_]�}j0j�dp�{C��ڦl:�����4T�0%�;��y��������K�xr0�$	���w�jWh(8�N�m���J]RWˉ��3��Ŝ��d^�_�b������q�ڑ9�m@�~�RBK���]�?� ���>=���܍�ۥ@�K��fR/WV���$��T��;���^ƈ���2BI
)��z�0�o���o�i�,�"yف���y��^�ա���X��T�&����c(&��s��`��_�Sl����0
�^r^t`f2v^i^��N���ޝ6�^tI^�Ԥ�(�peeQ�� 2�|s��~��y_�703�A;0��W'�?��/"J����{W��T�z�Uҟ�6HJԛ�O�ϧ��KH�Uf63���+�8�#���$Ba�'���HM������a��,$�=03�3�X^��N�O��^CF�W# *I"|� ��r�n)s���Y��$��T���� ��|��r�N��<��!#y��o�C���a%��������'�"�x��^��렢�	��udt:-�L���q!$R��L'Y�j��\�� 4j3/V��3S9H�6�x����"�)2� @Ӝ��C�&�����nLX6�_�Gm��׽�����gs`�J���ϡt�	��5z�Z��q|����۫��fw�0�|=����~P3��_)��p>�'f�;)�o 	�R�U�&ڂ�,
n#�<�~�f(#A��餁D�^P%;kz75r��K�ei����*m����ƴKd���g&3 D\y@�~�TY��<+R&\/� e���$�ʾ��4 2�.\�x�`���3�	�0k6O���D���&�ǥf�� �x���"�?��_)5��.���%?�?3�3J� �����t!2-C'ÍgҽzS.5~a����ws�������Zp)j��3���)PG+o�q���zZ롌�L������_��7��;�����oz�~x,��g3`��n��g#����:H�/�tcz���G%�lK���4�v|���~��7 3�^bW� 8=�;!�� �c�PjY.������^�xn����1+������%Y��B���t���@C6��A0R��W��/�b^f%��v����݇�.�<�9A��'���p��j%t�8�y'�E%U��c
��w�x%1��������:���e�����T��Њ������?H��d�F�#D�ft��4����q�M^ɲ�7����H�o�</� 3&������.[C휩��u���X����,��Le`/�,@�é�]-G�^�~�!4ܲ�H��M࣋2��#tMo�7���lDH�3�؋*>��t
َܸ 5���&@��D���K��-K5���O���p������C�3�9��_�D��܈$�Z_2-�+����,�4��_�"?��ۯ����ͻ?��ﳮ
ū�lf�/�Wnڸ�A�k*b�lv�}��ձ�Av0NcI�����۟���#ީ/����^n�?��~:�j��9A�^C�IS�`D*Y0�z[(q)��p}$�ٶi:f�2�]\�;�N[ӕ����I,���HZY���*� Y���?����H/�g��'�g�2��_�)�`d��U�Y�#�U�P'�\cS�u��|z��6W�����w�����l�yh��%���[�Ej�L��)�A��E����G����t�9]PY�8�g������$�l�kxu*���e�RV*����_����'��ˊޛY�2�����t8��m��(�=/S�7ɱ�q��E�^�EB�{^[v�;���������0B�-��t��ӭ����#DӤ,r����腞&n�@Kp73��5
f�rƀ�\�V��%&�;G+�i8$� ����$������xM=y�3�.@��}<��9�M$,�Z�.[��ӊ��}��h���?���{<�V���oA��S'���k��T���Ɏ�c���5I-&�[lT�^��r������T�:uY\|�͜.F3�
�%��l�өj�]l:�<�x8�u�\Cv���/�Q�y��|>D�
3C_�<����N��2v�1�hi4���4�7�\ɶ-���O�nn�ea��x=���/c�"���/��i�M�N�;a�F���C�}�V�  5�E��v$���9��o�=FUA� ��+:�(Ȋ�W��|n�(&�&�9�Ѓ�?Г��q�b�#�xY���/�5�8����T_i�K��6��c�M�����K_?>lnv7�O�h�-(ї�֐��ŋ+�L�P/�F�x�6h0��k���@��P�֡�n�e���������$/.��c�9�&�dք��E�I�����¥�B���x�Z���Y:{�U����Rɬ&�H=x�U:�S���Q�7�5	�O����D��R}��_q��W�\�@���� �cy�)L4�[�e�W���@�^&ceHK�ǧ����y��?�$��j9MĪ���`j��@�/\6���|3�����v��y��=n><���]��/���!WM���Y�&�r���zn�6�h��*�"�{~���˩�r�o@:FG���j]t:m�3)�h����T�F^�����n�֋�����@3oǧ�����<�r
3����I�q:9�B̪8�Q}��
�qp�6�E�A��6�b����&�.ьWS�̠�t�/c��DG�u��P$�A�� �5�k�A�z6.ݶ?�����8�p���P�
3�ԓ��8����-�F����i;fr�mp�FΖ�rKɗo���_Ze��7ZB��?�$t�p����n������-VՄ*v��Vi�цL9�T]��9�ܖ�}|��ǅ��H_�����+����M8�J�E�@�Tpj�����\�kr�f瘞���ø���[�x���ŌM�0�x�S{�C���?h��p�uO�kj 12��/u���nv� ��|���fF3 ��k���y,H� 2�ܩ�T��bi`u16U �b٠��i������+/�0���Ae/�D��##�$~�o�2O�B��	ZPB�uq����ڑ�ۻ���0�m�b�����$��d�N���(,�Re�ν�ՠ@���m�K��@����]���-��e�Dy�� ��o���%wP�\��D���[в%��R�1}�|���m�u��/�0���_/T�Y^��U�6p)��kڪg&a���4��A�� N���1/�03���
�WQN�1F�qd��65�@���E"g��+z�}��<����F���[���@��`��i���:���S�KD��9�.�Kv��L=~\�p)!�7 �*�5$p:����r�]#Yt��Ζv�e�T    ���a|r�i�ֳ�l��%!f�r�ȕ"��\�Va��C��vnS���z�4�c)���+X���쯞}��xu���jh� �z�w#�h��Hoϴ���6sUI&+�V�#m���us�����!}�6kmR�$��`8�V+،�)��UJ��Di�IZ-��PϘ(�� ��aZe~q�7 �c"�zG�S�d^S�<���'*S �\������v�����4�vINy���Ɓ��q�S��dM�@�|�:@b�Z<~}r�aݛ5j��h�����, sy>�5 f3(���dp��A,�ZG�Goѝܡ�^%2>��K��h���3���=~�_�Z�/�03�:m#/I��Z#�j���+��FK��@���;i*� z�����03�:�<?>H���kc1��>@�Ap�@�B�4@V��-WwW��IP�����>m/}��W}��� ��Y	����5�+���"kr)�&�z��y9��=��Vr)^�af(pA��xt:Z��&�{㸕NB�̙�Ƭ�U��U�㟿��|���X�k<̬�쉒������9�,��JI�6T�Z4�{R�j� i�bҳ�	�Ww���`����� ��ez|G�F[i%u�R��@�uWm��{x��:��l��K_/�0��8�{^ޏN�G(�hk�	���G�1�i�j:��-{w���}�����8��x���Ռ�����t:���L?j�S�"���;�������SeTҸ)�a��|�1:�N��l��б��tĸA�@�cA�k�pN�X=�6T�mn��fyI^���"3��3�CyZ:7���V�=#���\��"W�Zz�˚ہ�����aHB��<�|	 ����r���$NOf'�vW魐���CH]ѻX$�$j'_Irw������c/�03�A@+�����}��d#�xЭ��i�K7x8j\
X�������?�/��?���S^�af3V�e����i���I58Q&zA[ܒ/�vE��q��Ydf��3h�xD�����V�1*R���h���P9D�:����ݯ�������������h���X�� ��f���R:5ӎ'���%z�i��f�,�g��U!�K��y��#)K��k޼z��b�^{^��f,G�M�����bʐr���/�d��� ��>|��.7�(d$!@V�J�o	-N�!m�`b��ܰФg����i�fX
	�&�#u+���S�3{4�ne��jZ*�Q3 �"!axt���v����J/X?�`��ǔ�8�ٿM�W^�����qj���T4.�2�NȽ�*)xQ\�!cA�>HV���Bſ�άe�	��é97A�^�u(1S{��C��exv�݅�7w����-}O���G�����~�d9#7/e1���#��rP&�!Q�X��z��"��l�p|���Z��G��kX̌eP�ɸB3p:Q���l���I+�h��h�O�ex�A˥������vs�ogk߀#��0��X8=+n推[i�_S�0V���i�jpA�$�R
�~��������D7^�bf2gԴz�9����5F�ȣi�+���4t�zu�Ԭ_ؾK/ W�Q��~ƅx���|8#V�p:e&���xB<ˤ�MR��B�%"W�J^||w4mLK�i�������KY�lf�)��JHv>L���| Ɓ	�T�J��9�&uvY,'M??ܿ،�����ͥ��+Z\�f-��:~��Nù��A jҼie��&�@���� � >X{E��O�����&^�bf3~.��8�Ӏ�M94�2����(=j�c�ɖ/��[j�����C����� ��ңөe:��,r��w�7��{#�d�ړ^��^�e{����c1�������H��ErW�#h9���G@�Ѐw
	��E��{���^��ң����!f3��͊T�Nb!�d`3S8<�K�
Ŭ�@��HQiZ}������4�W���� �L�؊oZ����5�tҌJ}� 8�s��%��<nh	�_cy��ѬY+���M��L�z�]rRUHX��.�����愋C�:"��[q�&������\#i
�^��!v�O!����_I]�v{?o)��`7<���{3���lh�|���)$(!E-��ܖ� ޽;n�R�
����O��#����V�׌n���l:p:e����lC�D�\�t�׭j�P�y� ��|=�������B/b1���?eJ�'��G~�@���5y{j�򃦭y*�������
S��������,��,f�s8Ú��L���&`�$��x��@�-bKȳ�).h����~��e�Ţx���L�[y���[PLć�@�nԂ
N$���p�nE_F���3�2����=���"ŋZ��f`0H��X��)����;
O,H"![��(�����{�n����/mn�����cs��9>�j1�� 4�Z�f�O'A��ul1�2�Ia:)��=dp#� r4���i�#�KZ�f�0�	8��I��F����L�C�0�Z��pVǸ0��������ʈy����̙d��%N� o,X�����dB�}��4��.��5�f{���|w���fd! �+�N-o-6m
"���*�br�&"�u ������އ��~��T�rk9��[y=�<�YA��4rȒ�L�C�]�2�*kNK����?�>~�܂d�>��o FU �W^�p:�Ox�1))��c���C�MXݵ���S���)D�
�b)��g��>�pSY�����C�@H;��AV�xI+KK���#gSٸ;3��� 	��a8�����	�� <����b�Tp5$�����-n��_3�ռ���^&�F%W��4�Gu]@�q��&獅$Y� �y������V�Ocu6�ά���k3�8���D��z\�G�̀���׳�:?]�L���3LӼ(��R��G�"ޅS3e���}��.<n�-�x<�f�gm]��lռK�}�����ʲ���LčV�������d<R'W ��d4�-/�}�f���!ls������F���b4#� ��J��fZ�jH�
)8U����6��T%��Ve�����H<N�M	aͫ)̌~��#1��4�N����iu��!	a��t��#au�e�,�� �����Q&͋)��}(�W�;:�K��D�A�+!�����t�I|*�ާ+��K�R�Y�2X z�,:���V��.0/g���~B���!U������i��=���`$p)�/��T���6�[+v�gF*9��C�ȜIe�/g�v����E}N]n����' �ctxP4X�i��GZ�Av��7��eD{�Ѥ%T�޿{�Q���y����/�u�k�%�N'�[*̈́ؐP8[I�� Vx?H�u놤d���:}����,�lA�_�`�Մ?!tZ�Dx m�z1�B.Mȸ�;��Q�۹�y턙�/c|����UN�L�Gxryܫ��攑�t�ٔe'�I��v}z�,�Ĵ7��B�vegN���!�Ŗ"��$\�$��I�[/��A�n|��O	����45?��׼,��r<dXY�S3a�G" S&D�A*қX���mb�[�yd����p��fO��ٝye������\��QM�]H�EPV��PM^��hrlu9ڢU�����U�λ@�Ey�+�LfPD���+:���q)�؆":���V6�}�49��I�0H+���Ü���3�,�F�/p:�\���u1����C��Gh�F칩�x����#=C?�_|$4�����Q%Ф۸r��L� h�m$}4Rr���"��d�N���z ��Ӓ��*V�̬f�D���R=�*?���kT�� Mc�FK-��ފ���c\��G��,�l�?�sN�N͢!g�2:��9���˃Y�ⲍya���n�������+ ��`2�+
Axţ�Y*�fT���Zh*$�cIA��]��Tݾe�/�H�T^Πh<h�+�yw�Ka���@�--A��L:-�����>���/߾Wj�������8Lx�ߐC1R�w6U]�E�h�    ��n�7��)�M���ls]�x��������A����e��'ز+��
VP�ı�~lQ�w-��.���y�kz���}��\�F�B3{�S����EL���B]�r���Br��d��c�=m?�~E�{��)�h^�`f0~�zx���yy���ԏ�%��6j���F^�E��Ny��5�*x�������j��"d��r�DM
5�����G��O �#����iŎ���i�ܼJ��x�[Cn�`�:!;\�L�g1\�G8H��f������C����	/S03��?-V6 ��y~�_=��|��i�I1�#� R"y��}�������@��|�v��/X0���Nj~-��)�ij�5�
��K�қG4I����[*��>ln��_Gʿp.uZ^�`f4��`B�N�TG��C�N�$+���䨎h��F��[j`8	dϞ�4/Y0+&2/������tR�6�'ˡ%
с�8U|�M���Iz�^���R��y��߾��Ƿ���_g�D�����̈��0j�1����(�6�VOc9wL=��[�%�[f�_�wǱ�1�^�`f.+�8��
N�R� A_t��ECj~�]�HSRor��h@d�y{}��y�'�yՂ���h���t:��;��`p2��˓C��%I(��t�-�������}�z|֐Ѽ~��hZ�[����ԓ��^�/���gA`� �5�-B��n��gJ����������Xa���e�ګ�l�4���Ѵ'���j�� ����֞���ύ���.��������pJ]ihȅ gI�,���r�����r8v^�'6��s�,x��ɜUae �NeЖH�Y.��QIM�V�˫�"�5��Һ���H��R��ef�r�5?�S3=N\�k�B�]7���\΍^��^����@@��T�h^�`f1�H!��|5�>Nè�)��{��X�3�7��]��64U_��9���I���7dR�����ud�t�������H��POV�A�Zj݆X뒆�R���a�����R���f�3�g��7L���N�ж@*�)�����Cq�.�nu��-��H���t�����6�/�Eye���$%k����H%��G�w�$6
���R@_�
��?@�?OM|`�f63hH�my4��;ݹ#MK��E1TE��ʤ蛖�����,ѹ\��3c����6�i!����N;*����MjƗZ_�7��h����7@�i��.V2n�NmƂa�E�y�8dT�Pg}E�lø�Ȯ�9ռ���\� g-_���Y�9-h}�ٲ�n�����<h���j"���OR���7��-�0������P�i���P�ZO�U��J��=W����Έp�Tק�KdUH���S �0���O���]V�H@b��T��R$��A��8aYY��;�n��\o����������Q���x��N��~�J��{��L���F�8@B���F����~�����$�5�nz;1�Z�~�@�a��F���$��6�����ݘC�{�4/03���P��N��G4�F벨6�i����#�,����7�5E�_/	0��A+-�;�N'M�"�wѤ��H��AZZ�E*a�H.���oi��}����?� 3�ذJ	�p:if��U�^��%�b��
"�@!kXRϛ���y�k��9~��]�E4�0����"/WGI�Z�K:V@1� $�^�i΀�[�]}��5�:<n�š����7`� ��J�N}��j��M�C��(�h���ؗj�ǧw��Fu�����i'/0���ˬ(R�����BF8��"2O#ʠ?���p��R\[�\v����q�����s.ū�f Ϛ�0�Y�]�@5�ҲHR3�0�Q��D�\[N�#�ڏ;��&��K�{�y�]��1����莚���`g.���ץ����-����տ~�g���������~���@�Q5���#�uvR	@��@5 ��D�ؗ2��aBOz�{v�?�������,eP�ˏH��TϹ')s��;��mڕ3T�M�g��R�����y�p{�?l�_�7Ԣza�����p����Ԟ'&in�>�5jBD��ഔ��y�¤�i���ɼ���X�;�N�s�#9E�P� ��􍖡�R�l����n�ӽqO�Y7I�J3�tr�1H�`j��I!���w���]�]T��<��}��������͖���<\�j3�,q�x!wzn�v�K��rD�O%�lꤥ%p�Z��m�8����\���_��K^`f1g��+驻<b#����%A*��:ԡ{�%A��V�����Z����LeĹ�&�¤��}5��P��넔I�؅oɦ��=<��q^?�'_�����Є�J-�N�t�m�,IE�2r{eO������r���v��������t�پ#��9���.�3� ���W,��̺�hj�,���?2��;$]n]��.�:}�>�-J��"��X>��+��3OZm���	I-��B���di�pSv���=� 9�������f�;T� 3���R����t������6�FO�uԭWu�W+���#A]��/�-�����������	�Y���������� �s�k��I��RO{���L�{e�r���������o�������9kx�0
�"�χ��� e�������5�dh�e�1�������;�b�pes�~�w�H��^��I^�`f<�^yp��I��D6h۷�~���9Iu�W.$UB��,�L��}^m�f�2�͊p �N��H	5e JR�jbr�%P����r������_ax�����Eq���g��V!j$dک��نR��@Zղ�x�l�PN^�`f,��		���t��gI b���gi`�Ҿ"h�>��-�����v_g�g��5f&30�'A2�t�_�lh":�)��������0%���"Խ�^�t�8�����y��=s��q�0*0.��2�t*ud�VR�\�Yp��J��ltA7���?~���o�vϋ������9��Ufvs��W�?�u�<%�xFk����Dm\�E_�.�D�\ ���Yl���{<M&��/p0��A� Oo��4��z��
�k�r��L�H�$eT�/��Zv��7̋̬eP0(����$�,j��ڋCE#MKR2�A�y�\v��C����+�le`/h��\��i�:b�fv��$��D�W��f�g�/�?Q�֏�3�=a35X�<��s��&bH�h�-�O��ԧC*FU�0w����z^=�o�Ԙ�(��/�Mo5f_b00���wP�[�1�7'M�������כۛ���������xs|=.F' 1���8�g�\_�+p���d:q�~�Tk� I�{�y���>��3«\leT4)��8��#j6��6�AY��qEQ% "�hS�(��+;�������\��5f3!8�d�8��j/�C�4\K=# �f�7mK7�.�����f\����i�l�>{���1��|8�S@� 6�Q���l���sA��Ύ��N/�rvwԥu}�4��s����3����N8:�z�L:2�>DO�\��m��"9���7�Ȯ��i�[�g��@<3�	�Q�:���y�V��e4�j�h���#�*O:�U- �]�^�m��/��=���8��ˤQ�jN'�)�`M�
N$�'���jm3����^�64��y}��
�����Efv3H�j�p:u��E�2�մ�����۬[�y��3�߾l��>m�~�Mm-3�f��ٜa ��"�i���4��.�"��}PJe���?Ҳ����G�d��`�O?x4���Lf�/BV>B���H�փ�e\�v��TPN@D������?�S�_�D�.N����d���+�8��K�����h>�ID�H�#B�ܺ�a�����=��%/�p1��i@����I��SL�vtUh>�8�e<�@5M��._�o�_7�;�뇘����^��J��:���m��'�s�np�h.�J������~�^��0    3��=02�5ɪ���
�O���4�g�J�o�V;$�S��v��	��znޛ)�^�af9�qm�����Bq*&R�%�r�i�p���6,c�C<���цWk���2���H~I �N�|����h�"`�\4���^��[���N�����x�1B���˥��I�֘�-c C���i#�RR��:m�\ �ׇ#��/�ʻ�I6�J���al��Nݔ�1��%�Iۧ��.�!��]�{��{G��$'���.%uq�7�#�@�Ϟ��t�p�1ː�H!iSg�bI
vND0�f��[G~�%	��gڧ�9��Ef����$���6NՄۊ�*���##1�x�87MOqQ�z<�;R���y6���^�?C�LW�W=��k�T��A�ENs�.�V���:ϳ��gQ�˗��cD@�V:<�t�)א�U�j�"T� h ��"3�y�Þ�3���ʩDkx͆��/C
�����p���b�W���<�u�$����{ �[r����f8�ș��z3s_����7�鴅X:�%�SjM���6�x�:�E�ZD*7������i�ȗ�i-���7�
�� �"�Pѩ�J������J�@oz�T*t	��Mq�������^,~�0�p˕�,�^���8�}fG㟺ඓ���Ȕ��,ްa��i���	�ћ�l����J�|A�N�v�f���BUCj.ZѺ2h����q�n��������߼��9^�af2c�Z-�fZ����h�aw��G=�9���NV�e���vM���FO�k5�Le�CJ�pz�4�+Lj�qJΥ�gi� TS@��F�Q��Y�B@gw� a4-#gK�t:�r���V4�@)����RI�˂#}��|�)^��b(�� ��2�N�*Y�Bb�-_�9 ��
�Y��u)�����໓������A/.���k�Y΀m�ౚ�QL�7�"zk��{Ebe���}�4����@�F(]�;3/�03��>�W�1�Ob�F��H��&�i*�fEE[C��|�y<�k�<�����3����J� Ÿ�[�Ҧ�`�YѾ��Gh�ѧ�j_��<�7w�d��W}���d��b����F:=�j5�����$�<HI��L�</h�?=�?mO�P�X�5�Lf`T���s�H��{�-7�,K�����>x-��G�*��؁��b�٘�*u���^꯿g;`P3�*[�,��C�ϸ7��Ux"�K`-zb�S(Rɕ���y����O/3/�b�߀�S=J�����	�l���#E
k�T�KM<�l�E�뢾}B�������3PR0���p	�uEu���`��-��������iU��qd!C<W����������[v�9�\0� @���������S�e�����r���� S���w:�����N�{��Εl@��&
4�dwL@�Z�-�fꙣx��o�G���(�&�oո$��>On6g%]�]�̪�$�����~�[R�>1Å�� iY�؉��3�(!��B�͗�!�xor���g{}�i��v�r���}j��;�! �۷Y,��vV+��)DVNrU���d!�l['���������������nƐ��C:�
�e���P����)�O�x�'�A�"�0�p��*����Y_���>!Å���{��_���(�`�aH���t���RK�pn=�B�Ҁ�SO5��k� ��f �N���S��B����O9�j�5�4����XVMZ�Ѿ�@�v�%�).,�٢m_c��}!� _�s
<�+��vҚ|t��u-5��/��(�/�Z�����rJ<~����q\(�+Z���9�(dVd`1��^|#y=��]����6w�%h����B�,�(�8��S�\=n��ɧ�VW��"���R���������,�Da+�/~0MȬj�Uh���KQ��Ex��]�0�n����Ԭmp��OLC���&�25i_(�K̕���]��oy���o�y�IZ�@�j�lqG�D:���G,4[�C�0��W&C�����)����ެ��^7�׷y��,З<Y&Xt��N���2ڐn�\ G�eN�!1�,8&NL%_���53�+�{���//���ڒ#�o��/v��k�����ڶ0DW�C_�G�4���E����rj��=�E`�� �[�t���݉z���!o�e>���QM�ݳ����CIɸ����?�+������G��t�f1��X���SRѼo�!9ϧ�+�k�/%\E��k8����y���q�-�v�������$�}�u�6-��]�2�E�_�B�xAApI���2Wz,�Qڹ���J}֐�֋��Ԭ�垡�]�'�Jvh�2P�s2:� _wþ���pG�ί���7�gf�0�VJ����P��E
,(�K��64��\P�4�z�/���_ɥ��'<���ZJ!��.JT�W�k��"��(�� ӕ3B���)�F�gJ��Qi{o�<b�d�}��;��c�w-Y똂0	,:90��'_��|6�h�^�P�|��v�(�>��E��"��#��ж�qn��7l��h��2qhIAL#)a�::]�.����3��i��C���k�0�sJ��~�!/���A�5`P�Ltʈ�V��N*^������듴\�	6����������$�ři4#чިdbZ�[lѓ>�>����S�)Z�w(Z���a�Z�-ҳ�����@XM��U����*؜�5�yov{TRڼ�o�^���ف��8���Bƹ�H*���`��ɩ:��fy8�5�wYy�3	t��:E �؟��sK���rat^0�>x͔�5s�y�Nd=�3ᡭz��}���6<�9ܿo��W,����raoý�%ѩn�L��Z�%I{Kx�Q���|׵��\����8���'p�0�,h����6�mWSj��XN�G�:|�/�wkUD��n�2�����o`J���r�iC��"r	�8E��-H*98lWO��M����;�S���������6�T�
���YB����֟���b1� ��d@�J1�Dl{VUÇ�=���K���A���$����Jn�n�6�)����|F �daP��[Z���ǯ!�S}��[;8B0�Ӆ�!	�q�)f�&v�~8
�\�/eV׾����SE`)��)O��v(O�O_���L�S����:��)�
*��l��*�$9�\_��zral7(����T��q�QF9	jQ�Ԧ �$+2�`���Eλ��@Y��̭�E�>�Ʌ�� |g�����hx�`8Lڋ
d֓C�4��s�=�	|~���f��m>���~=�T�����j�W�+�ക5�*WO1[��Do��&L%Q D��k����<[�#_�곝\��I����t��-%�kG��𘞵��	�^�JnCԺ�=����c�IN.��!�c��<:]��9K��J�c��Q�8Y%X4��A\�1y�#��9���:�,J�>��.�V�f���D�o֣��H�Ț����uf�?���X.�ؤ�=F��BrR89�HC,H�Ȑ��j�>Xc̺gw_~�s���~�������>/˅�D#G6(�ia@10�Z��4�`�P8]�aV� �ԯ�~����K��'d�0�g�M/-X�R�dQ����s���1Oփl�z���0�z\<߿�h"�7��v)��&����lE�#P<�5��,J�g-����L�v��>?��mF�)l�W&�tae͚̦�.*Ao�@c
���51��ju�'�%�賰\ځ4c����yL��-$�C���,H��I��.q�u����{�-�6|O�����}��;ئ�i^��-#�`��"N"A�:��&�14O:D�l���nw�c�m�Q݅�F��W.�퀛���)��V�����&����vr���(��D���ꪏ�w���Qg;�?��E���Й(�e_�����^lrz_$d��L�m���4]��?>R�ݲy<�R(W�IM.���e�>t�B��H��* ]7�>�J��H�S1PA�`�e�q�������K�F�g7����$��    �t4���o	��]���K�$O"YB�Zer��"�M�y�I��'�w��R���Ӷ��17�)3

�Y>��I���(9͑��D�~�ׯ߿���f�O��}����ϟ�m���e(��g!t�O�(��!\H�`,6S�� �I�Ɩ�����BgCoc��P�(#e_����?�&O?(��4(��*�IJ\b��i�����'?������]����v������6�0��3Fzt���}���p6�Bf{�$���#C���}�9�,I��7���/�~��F���%�B�K�.)l	՘�I�_29F�gz��w�V��U�>�Ʌ�x1�Ɂ���4YI
�l(~��꙳�P�'J��3!���x}?�"����$'�vr(c�`x�N��Ϧ�(zĉ�������w��vk6�e�~^�y��o>��fow^b�*�dP�yG��ʦJ�J�2h�=�C(tயƆғ+���k.�w}u� oMI��Z%�K�,hZ-���=�:<��BXʩ�͹z� $����<�����QPw(e�e�fR�awd,Q��*"���!�х�D_?K|�+��s�ҧ������� ���$���Q G�]��l�,�ꃍN�
�������3�\���ɜ���(+ԠI�M����k0 �ťRPG�U�\|td +wAQ���y{�̧�\2�v���`,�N�P��'�R� �,���q9E�Cd��y;�m���-��m��6KQ�`>Ĉ6�|.��c* �T��N0���L���_�.|zGw�m:��K'�'iw6�)����iy�"X,�]ɛ!=	s�P��d
�W��m�CWW���+;��)՗�S�18�S�R��g�HQ��^��&VN��k��b1���m�;=����6SAyi.��Oi|��x��$!�riM���?nN|�C w���aQ ������9�A<�����_�Dv3����(`k�v].�x���V�gu��ˤI�7���f�A1�N� Y��6Y	�,'��)����(�Yɾ�>�d������t������/6w �Y3�ȢӶq�<pAfB��:rg�o���C^Ϟ-߿;�^����/�v��97�<�[��Bw���c0�?���̃�"
�)�X��7�'��V��2�̕hs���Cq��Ԥ1b�w葕���S��Q�d���nV@zCp��,ͻ���I�<S��V�K���AYz���b*�� �00x�ʜ��b��;E��4M��߿��I�<�����d�7aA�C��嵎�*���5���<X�y~���������y~z������)P�L����:��P2^��|=�ǟ7��m�>�C�W��;`��stj�E���LI1D W�8Z�����H�֜ٺ0��/�~�ן�����	���_���J�}�)j@�!J�r��K��H�в��o�aUC�r$[}=ս�N�W��;@��VbѭH�e(c�̏AC����DS�v<�8�6��ᢿο��3H�\�i��%�b�L(A�F9(��z�8��F����h�AKaK����_����ף��׾��D�L��^a~&VCaǳ������}����s���q�z���Tn ;��WQ
�ߩjJW&�c�lԩO�|��Q�>�!�p�7���4u�[dW*'�@^`2�<�؂F)�HP����y�������/�����t)~��� �V�f����/B��< �=�i�&���{�f1,V>��ھ^���V�b�u�Ќq�}t*���dXʓH�EA}Tj��L��1f{}�f�|����s��߈_���X�=഍��U.���m��IH	�t� ��S��Wcߟ��7�΢��츿�{,���1�a�>NE�%���%�V� )3��b�o_	/��O����s�K���k�#�fb�i��e�J�8�7.bƜ z
��
��[��cvq$Z=Q�/[��	��ܳ��{�N�49�ٙ��ϐ�i��
�^�]O��m�)��oK�Z�7�{��Y��.��V�%S�Jt�s��}�(��^�������R~1�:J���'5�S�FS(��s;�"��n�ِ��D�Ug�*�L~�y��m����GN��m}�ȞnI�B���u��J��3�9e��<E䪣�q�������a�6O{������b�uX�df_�]�&|z�X�!{%�y��D	|���Y�Bw���ܾ�|��e��w��|y������G��>�ᴩ$P"MI1��s"����хBĴV{���=�;��l7���v�x�d�������Q�3xϾ�!p�JQ&����A���,j��)�~u�˶a���U�-��t��}͙�OZᴙ\6٬��_F]
��,��Qb�<ePqM@��~�|��h����#�Y�j�����ލt�ph��/�cݎT-����O�⍚����#���;�����˥�71����)�X,X��$o�u*næ��;�]�+�^v����p�usY��/vvM}v��j*]��2(J�;�
|עL�ݹ^wڔ���)G�g���0n"^g_C~�A3�d�L�z��D����3X��(I0G	h�Z�燊{i1��w V�;dpk���T� ��d$�!�=�1�-�wW*��s&l�L��{����־Fj׷�=]�⦄�0!���4��T�c���z"�������<��������q#�K�t��V��mD��VJE~�+�`"QZaD���O������E����_l���#��/���qʖ<�	S�������
:���Hg���ӭ�뷋�<㔍u�P8��oć��3&z�qr�ȩ0F?�d�^�|m_���i�D�o�&�uo5��v`-}3��aB��1��,���"�)�R<�"�u����o����	�u[M��u�P8mU�k��L��Ea1�D_9��̥�K��[����0�_�]���U� ��#�#�����\T	��v��9)زf�|�ό���H�v1�B�>� N[�(�g%S�i�,U%)v,s��	�������q�}8�nK��߰]�� ����$N�~����(�S<AO�N0�]��v�vw��_x����٪%K\���N���!��{��f
Ħ(���5$E~��B� "��i�[�v1�B�A�&�k���yH���{
f�.���=�$\�A�+������qI)�_�]� �к����e �BD�}���d�G��R �w����z��q��}���p��&*tVg�0b��h��,��Џ?�<q
#X��ΕȲZ��y����DY��k���Ho�ȫ����"j�R���Yo�B�l��(����J�����������Xz½&+�nH:m3#F���c��uFL��e�Q���qu����?�#����?J>�b�y:��7���oH���u�t���B�)�;0���UfR5W�e�������͇=����i;�����7_qGVKe��(:mԋF�Z��S�(���M�PY2����ܬWJv��S�xsؾb�䇩�۞�����q�j�1m(h0���Ŕ�h�O^\]�������}�s4�_�mvvVg����i���PFNI��Pz�H��̧��!k���z���K�{�����BMzO��@I��|  S,��LA�i{�j]�OM��O��0�X��h
,��Q,(i������A&�CP>�h�������a�y��|�w����A������)1I�W��FY�(�&\���t;"b�DM�*xz�PF��?�����k�����AR�<x�z�r��Lf��2M�8���j����,(d�7�/�/��Ja��F]L�d҈A�W);�r�(�"`���\����D>#��jU�'�/T�uu��g�e}��S�,�Z&����S�2�M�RPi%��k����f���?6��������� ��v!���	]��(��\��؛ᓓ�E�P~\������Kof��S�n?%��6ƫ),��@�r
tخ��jBQYך��^X�)6.����fng�T�-5x^7��Z�0y�u�R�2� d2��Y��v�c4v    ��o�.�v@�6�z�b�=�вY]LJFhyS:&��ym[?����7�_摖#�bq�t���@@u��f鴉>�,�[
nJ�����|V�A!��j����Aƞ����DK�t1��e��c���CP���0�d�4��x�G��7"�V��Y:�M8�\�����bp����/��i�*�P�R"�1XjA�%	|�AB�	�=��0 ��a
8���X�;X��t�UK��[(�X���%��(��d�b-
�	��O���e�����J�V#�=�*]0T�"���{�qL�8�p��� ,��U�1���e�U��֞5z ^�S�4L)�t��*�bś|CiJV��(u�~��݃��4o?0���boΔHh���forH
;wGAi	��&��X��sw�����L���˯��TSN�WQ�ŗǐU�j���s%�H(<�O7���a�� P�c�sI���z2�t^��v0�DIo�
OO�LYjHFeUTI����H�m��B����/,L�����7��:m:�fY�j2)ҫ�ՃmEM"���������o�x���T������bv2��}�s�.�_[(|����$1i¨&&��J%Q�
v��O}�LQ����J�t1�V���q�XbEI5䀲�a�����W���l�������]��p�>�9��b���.Vw���۾vN�бJ,p*��A���8}���Z��������H���(]s~�p�t�F)�T���N/=`N��� �@o��Y�[� 8�Ѭw�l>�JS���{E�|}�����QZ�]�B�s��R�#Q鯼`p�R�����]������q�Q��-�0��Q��(L�Ӷ�r̺��q���j0�U)��F���k����%�o�.�vpC�>�#�6L&���"���ˌ�XJ����zh;�+���<6z��a���h3��1�)���|�1#2��A(;��<5��tv=e���ә~r	��+����0�u]c�9_�RFja�@/Cى�.���@2�Zou�jo��I��i�v�GR��в�8gb�(3���2��W��\{���������I~n:�������l�T���ߚ'!4L�!��娰s�]\O��dr�(����gd37��Mgy�lr�� :�M�
Ǔ ����d�CKػ+:JO�N�/���ss�#��3��cen.����vI&��Dv:T4&8(2!���Uˋ���S\���>����71���@�I^�mg�V�yA���K �96��Hq[���"a���D��/(sS�t�4x;7�Y��B�)�u����FC�K��e{E��u���+]-���E	��F0��gF�A]����!�J)p�D��i�D�Xb�٢4g���TQ'�F��z�:�KmȜ�gf��ԦYV�$�h���ɗ�͟ rt,��c��!�=ڲ��-����t0	}���Z��b�C�y��Ŋ��0�S����������-|z!�.F.̠o���A��}V��p+���z�v��\O,�A��i�Ş��O�B� ����)��fpۜ�o��t���1�y���T�?a�sc2$.�EI�)A��\z����H�n��fz��.�S�w^���u0�ɣ��8��d�W����������V��}�kw0�23�̶(��n��d�E9U`۵̌xU���SW('��1��"43;��~�F����kVe��x�$'� Y�p��╖�i���nfd�֞5B�Ŋpږ.y*���4������"R��VUM�BY���es_~����¿�������+堃M���8Snf,�C-{z��xD��3���:����i��~�{ܼ�?�<c��>���ذ��3:]��e�(�^.}o�qr���`^�tpٯ��ww_��w��{J/�Fs������� �d��N[d+9�}�J�W1Nל|���Ť���k����f�������i���	kUu:m��R� ��H(�$�=�:U��}Wt���K{N��������R�G#�����������]�+G�F	[	R�DO��U�3��8��繆��͂z��^K��H:m������2�5�0�K�=���Zw.��aX�b��fi�#���}n�6n���1*�T�C�.� �@��ki�z{�}=@��y;���ͽ�v��5�i��R׈%��-�N1��F�Oz^YF�V��v�l`����,�}i*��W��� TgU�Y�,�a�����S��[hvf��&"t����b{�{���`n���m�I�<�j2}���լ���o����Q���yYjy��7M������!:lWK�`�[N�������S☿����o���/��DD�$Α�`�d�� ��zY�he�Pz��cf�����L�c(r �uBE��=�&��<).��*�%�!�M�;)�C��o�VmB+��
eJ�䞁�Ԙ���l	)y]�9cB	���?τ��'�0F�fw'�pfTݣ�&!urLeB2�^�����
��/%�+"-�Q\����@3��G����$(�t*(F1���B'�恲��*�QP����=VoϠFy{�|��bL��NᠭٷتVp0%Q��$)�$�� 	Y
��Xp��ɴ�ym+�o_7�	��7��� !�`$�9��;��N�,Q�'7�氌rP�q�5����Ï��f@&��ᛳ}�,:u�{㎗`)���'l���(�@����n����X�1
�fi��FHL��!G�EC)�k���X'������>�Օ���=���&������v��1"�fu�<��h�["�*Kј �yz�SJp�D;�*A=�3ү���Q�u�}|���Q�5د��6UD�Ŋ*'5����c�&��#�7@�n�}xP
�,�Q
x
n�~-DbJQ�cB$�H�З �]AdW�H����u�O��������	2R�fq�P�o΋E8��P*�)S��}F�K�U(Nߞe6����o��������o/z&�fmټ��^/e+�V�T���A3B	\0�0�ңVu=r��k��3������ ]?�$�H�2����O0����oAz�m9;%�|u��y �I/ő�~���^�ѧ��!k���	E�� ��V�)x���2Ç��5..V��`��Y�	o̠�tAE=��(
�
Y����� �-�r{�m�����"@v=;��������E�q%A{�u���L��K&�������CDgm�s~1ؼov� ��w�q%Υ�RL�B�BUr^��n�;�ֹ*��U��/�|�}����a�g�	:m�
x�*O9#t����7�u��D	lM�������r1�l+�'K{+��ۑ��K��AIƠ�
�<��c���pͳ�Ї�>�������1��f�uH0�������*.<�A% �@��0�����5�*�S"�G�r�^/"�`��{0��g��i�͢H�O<PRj�kA�����o�_v���i��$,�8��&~��z�c(�ܰX��m��8C<8X1���������U��Ə��m������sV�@�`��|�,��:ղ��@x0)1ل}��`NY}����L����q9������=��,���p_�{��:���ج�BOV��r��
��DB��P"��Q�ˌ��/{�K>� �|�7��C! v�>1$�
�[�^��>O�̈́�aޅ�1Uck8��ח�~���i��v���o��<�hvw-�}�R�6.�¥��L!2�(����I$��XZ�V��'��\���@��:���ן�i�͡��Z�,1fd��	r��ɫ�|���p��^Pԙ@3�:����
N[�O΅��+@F�L�~غ��Z�r%�y�c\�̀C�dk�C�0/��t*yS�_������M���Wf,�˪�s
v�ͱҰ�����v�:|���P/NM#
�"+�H��br�2ri�s���qx?|����;�	4C;Ǚ�ם�Է�er�f��d+G2�L��EHO.��$~�vw���~��?��,aĀW����8�m?��iK)"1[�~�G�Zp�&    Pw]�[HЂY��?������ï��o��z�����q���2:ռ��U����T0�i�1����;�#g����/���n�F�N���o�&�l�/h��6��L	ˢAb�����Nܚ�KR2֕G;�!��us�j;����d�N'�p�nϘ����aY�&Q&�1	VGy*�<G|eHg��g���?]��Z��ޮE�O��Ӷ�����	�,4 ��)rE��SFG#����*���\<4�����D��9Umv�2iu��X��Ա��C����e�Y��P�|��~�=\�	�N�v��8�kve���f�r�Ҝ�S2�)��2�
�mk��������L������/ Fi\>8�Mb�������"�?�fM��<�G�>�v��7fa���ʒX�������?1:m�#�P�$''Nq��X�(���
�b���T��O[z�����K��W�^���0���D�KQ��Yb9`ɣh�u[��n*2a��bǵ2�l��
��xy�]&�fq%ų���N�W��SS�+ƂZ?�b��)tKkv�/�;d@����v�{�ج16�fs(�5�IY:m&[p����I�v��C�_���6_�o���������ϥO"4�;x!���p��st}���3���O�8!2b��<�q�b��~^m���xZ{�S��fD�k�"u-�FJ��r�(',+�}Q�� ��u��;b�+󻓝ޫ%2�5���z��"2��#��}��'ݬ����z��q#��n~s	m�_;�t�m��r"O��b�*fʙX�'��ԙ��(�ؿ�|}�|�><�<���7�oG�D[K��o5���С謦R��g�2������kB������������������2	���=2"^�fON�T�-2_Y[9�����"�p4S;�!5w�.&��F77�"�(�sLzC<��B��u��A��H8�O�O������������nH>n����;�d��`o GЁA��J����Z�j-�����@���r��i�em>C
�%��14S�������TRf-��a���;�|��oۧ�&�}�Y�Ai��؏o� �`C�BqD@R���������T�o�:/3/�O/_^.��A3�g�Ӄ�M�Z��)Ҕ�E&g���e*��)���k�H�n>��_.���NM�Q�I���$gCY\M��W3��.�ɺ�������#q$B��kM
�fq'7R��'}q�ZI@ �.�W��WC�B'7U��Q��G�B����L����˭b3 !8l;$d��oөo55�UmY�d�<gT�y�c2H�Q+W�/m��������e�A3��-)ޟ}�a�57�i��d1만�h�Pʔ�	)���31`n>����>����fm�(�����N�x(FUa�3�%olE��l=\r��������z�F\�{�×`������^���kO0ǘ5�,��J�L50m׳r��v��M�$�0�	���Q�җE�iS�����S�XF_.K
�b��I��1���o�����ǁ�%vp%4{;`����8mk�ٱ¨�,��6��VD���>ɵF���3>�����ˆƀ0��܁:���_�$���b#y	T(4��.PX���DV"Z4+W|�i�x"r>�z�l�{����2Κ�J�J�)~�����A��uUP�����~b'��&�?�|�RP4�{�a���k�&:[�I�)��'�\��ϲ$�LY׃w����~�����|3`!8Y�a! �|���(��l�T��'�i9J��ઊ��`������W���χ��{/:$s�������7�J��H�f�"
<y�\T�)�����^w����+}xo��v�G�L�9��R,Nk�g.YY'З�� ����{��`���OG.��._��4s;��L���i[�/��sP�d�V�o���
��X�X����o���m�&�Lq6�&jt�����@����O��7CkhC�!2Z�9�b�*�ؽ>�?��˰��4S;���9@��^%lѓۍ
�y.�RvĽ1;h��F��B��$sv@D���`�V�+:m�~�Fb�Q>nv2쥯�R"��Ӵ�J@w���_/_�M��pT���|��Pl@�8��}tQ�<Y�E���Z���i��b�����|��kO����)��UH�'h4請d�+/N8�k]B��/�'z�����~x�7ѭ�H`�>1��(�9��Fx�<�oy2Ur%�1
쳻�����o���ǗJA{���v��vz@`����$7��21��)z���,��_YQ�W���v�a&�>��MT���#8�[����l��w-PDEO	��\�M�>��>쏜��W��B`;,ƌ��q�v�jJ������bFi}��-�D�4k5���P��7Yl�u ��}VI:](
���D9��Ԙ(΍�LD-��W��u����)Z{�n�v��᧟r��7z��-�')J��	��I�AY�&�}���������[��f�7il�v�!Fo@�$�c1��od�FL�[��*Q�Z�f����;k��I�ﶏf�ds��'�~hc$mPY�B8Fwg���cqB
���� ���kM�Ň�>�5��V���;g�J�� ��!CK �'8��ޅ�r�����zO!ew��-��ځ3�L��m�I�D��e�GRrct�,+9�L�P͋y���q�b���fq�c���8mS�EY�OAi[4�
�u��&�=�g̧H��bl�N�vXps`�{)�̙GF�&���#Z`Xm*�ޔY�u>�e��������~;{�>�5{{0a�`���k]XQ%d��b0\	L�TzƔE�SP����бzz�ZZ��v��l����((p��=>��er�3{�H�5��[��F�e9�je���a����{/���}:����9��=� ��/8�i+BB�:�M%���#w\Br�r�5�5J���c�fi3(��Щ^X})<�!�S�]t�)M5�/��ݯ�6�t�d�,�~��4s���X����l3�0���q�F!�q��Y�5cdΔ	���v�Y�)>�+���q�g��G&Lq6�&nt���H�Mo@4�0m�D��"R�f�º v(V�ũ�B���x��i�
��t�����,��N)��%���$	?�@^a��l�Yg{�h���_�s�M��p) ���y�.	|��JQ���[�f�D�x�u��j-sd��n.wr�C�dk�C���})bӶ���Z^j��p�C�P'V1�39Q�צb �"HVS��~��b�	��N_�/�ѩo��7� �$�:M��z��)c)"�®3�������>H����ZJ�u����q�5�B�l���	D�@/n�O�����&��TT���	�OEy۲�|u)v�(��L�F����J��zMu���i������I���I���[��e-�R�T� �y�i4K� 3��Þ������;�0�xs>�#b�(8ⴍ~��l�_R���F$�+����t�`�\փՋ��etfj!�؎w�|T�#7�4�3��S�7�S آ�.[gUXs5�ox߼���?ϊ<K�u �r�7;<�%�;�8m�b�\�ځ�Fhh��M-ޕ���^�xy�?�]��'tޭcz0�J����yU�M�'
�L������RXU�p�������ml�';;��AׇN�G�k���D9(�@tH 81���_]�1���6��_ߐ�˥ށfr��r#]W��E��T�������?@"�xM��'R7���_g�����8�{����i�M�Ú��6J��M.e�t�G!uTv��S�^3+�r��fl'�q���ɶ�F����O��J�"*Q�.3A�.iգz�N��y"���N�t�8��*�8m���R�h����*ytP+��6nR�������2�p4C;9�C�7���J2�/��Ve` ����˹jC��^����ra��d��<@��}��Ss��;#Xfё���3�p��a�*ȹQ��������K�s�X�Q�����4�    ;x@���v�l�)�g\!�l9ku)&A/���D��\c~k5������ 8C?�y�i��(V��͓z�������5���ǯ�7�б�֛��! sӛ��%���4��y���ң%�:��Y%y�l��̫��l�M<�x6P{��E��UU#���.���W�N��\<�14_� � K�<����e���$xn���8mm��x�Q��-%l�X�L�&��j�e֔���[ƒFx��h�b ���ƨT,gIWF���AA��;͘�BHª2�qG���Q�3��H�x�͝���bo�.ñ�g�𜢔AA�$@��:�N.Qڶ�����.6��i�Y��2/�`2�N1���B���2�v���墓�<�ZW���a{]F5�h�Y�4�F�@^Y�0�qJu�*6�139�1"��/�+A���a�B���f��{��B���ft�,�{Wt�DKJ�%�]"͟&6A_FY:����^g9�:��tڌ?{����c�M;�w�*��&���SA�֌��RpZ��2$8V"����{�zt�{�t��r�m@BK	���;y��[�H?b^�T|��|��������_/ax@9p��G9 &���E�{*($
�E"�*{�	�ʉ>4��]� ;�`�f���9��]\�M��xr�?�l�`���ʊ� ����z
��R*�}I�ź�wؾ}�n>�n�[��P4s{�6Zr�C�Fc��(8@(z�X'V�����rU ����Dށl�i{T;�ۀp�Y|�Б�
���g�8��f��TE�!B�90.x
R�9�ۇ�?t ,���F��񁝜5�C6RF�&;�'S�F_���TF�P¬%�fU����Yo��P4k����[�!�5�T���T�������{�'
{%d�tY��=���I��(�� ŀf��|�ș����ik�Z�zc	����:N�@�B��uV�|/��~�fh�m��?8m�шe�J��u��VzBe�H�UMW�GP�>�fܖ }�1�콎��!2kmW�>�\0
��z��٫e�>��k�B����s�3`8�a�����N�B�@~ʁ��ѷ���u�E^*�����6�����Q��\�P4����5�Ʃms)�L)�-���}���]G�GI�����|���@3�:N�=	omu�d:�h x�
X�?(��'A�D�l�k?�5�N��l��Fp�����L�}v���NqڍS�t2�>5%X4iͼ��f��p4;;���K�M�)�5�%=�P��0W(��K�ŭ�����z�`�܁	���
�Z�7��)'g�i�q9�*u.��:"�L�^�����2p1h��	E�H�"�%34Tؠ��4�o4%|�	4s{I����咦I�R�E$%�0�n��c�Wg�hz�uJN��i{i�M`�$-W����S�~��>��%��1�,<x�+�z�l�ctw�Y��$��E�ه��>$8���Rt�ڤcL.s��T1������BE+=|���^^��x���ZoBX��g���7��&P�k��"��9���,HH(�s
�򲵶�~�?�<�?m��_�M���L-�O���Hr)�,�I�7��E�V�N'J|�꼢t�����z�]���@w�:]X�f�T-Xd��("�fA�A�MzU��i��Qv@t���a��ҩZ��k$�5H�m#9��t:EƟ��	���9�04K{h�|W�76|�S�\M%i��x[��F�MJ�0w=y	�G�I��B�fh�Ũ��<��芮�;N�	�W\iE5FO	k^u^��L-������ف)�� ��t��+��y{�ΐ�B�Pk�n39yeU����������������������w/�h_�B3U�D��n�dVd�
3<)�Z���������y@��������0 h6w�@(��U�i�v��ȧ�2��ѐ��h��)&�'F;�z��A,$�v@�&:Ep
�H��w�f�+�bS4����A;ML��馥^�c��]~�a�����2K��'n~k�2ʎ&D),j�̉�VS�5�pdǹ��8ŴQD��vn>���;��>�7?�]֙2$��� 
�W�X���$DД6r�2�d���!gm��ĕ��iJ�gz?L���:�)(�&��	�J��.A����9\��:�AvD��)ּ �����y���;�6����Z��@H�h��,ݓ3������5�,e�aV�FwG)�O�:��Ja)�XW�f���a���`�Y���^br���o��g�1QPEP��r�ɋp�m��w��ˇ��?���y�y�,��$��8BB��U˅��PFIOQS@.����,ݺ�v�ټ�6�x�g��o=h�!
 �|:�MYԕ�U����}F�to�=��-�p�~���i�y�诇��������+��݁�m�M�S�"���^zj'&�V�L�13����p��sl�>m?�9E�-�ds�-�J���8m�x��$ѷxl�Q L����Jo<�k��Oۯo{��qs��o��� ��A�.�2[�ѣ�
Ba�n�d1�?���
�8+|�>cD`яp��fk'͐��G�p��x��D�G�¦�1|J:�B�'1�d�w[��y-���6\�+��q��lҩn{��D��d����1��-]/O��jִjwX��6�����G?�}+�p� ���p�fȂ�&�h'#f���2e�Sg��\�q��o��/��n@�,�@�4jP+�� �Ǡ��&kgz�&�����(
2�\�y_�:��Ep�����I�6�����J��CFү��	�`Ё�.��#��Y�������b����=��M���M�7'aP�E�8y�"*�t���x�����v1�&�u��7ȟ�m.������c�&O�Ȥm�J{��ZU��|�����/���P�!�.J`�mv�X3C�
�䚂�b&Cލ;��[e|/�oۙ��yn-���s�%/�_�S�l
K_|t�T��DHD�2������sw�"
B������o�\g-�*
4�	�B�t�^y��bs(�F�B5%z���TT���?0�r؟�g71X�o�v�C�z�P_;a%���.�b5=�R_��>��]������/o�ٿ��7k;��o? ��VW�Zh�x��� �L��1&�tL2����/�sܿ�m?ﶗ��`?���A%�<iZ}M)���2	��=���1[�l�t��W�=�cW�#�[|sz��&lt���C�[�d�=U9IG�=�!#F�p w<I�C��Tae��\�T�Mws/�u���ߗc�M���v�@�A`b���k^F�T���+4�o �C�� ��9�X�0��}�YѧoI�	�p��H�#0D�͖�Nb�FJ��m�)�U �eO���
\8�����o��v�j�"L��l#G��f?�\�l.�n���� ß�,�k�n��&ptv��";���i�7t&���O�T`sS��BJ��M٭"��/?째���bw�����ѩo�m)MRK.�9NN�<Ւ��SRYS��1P�������N��ū���Q�R ��ҏ�'�6�5��r�*+�OY���'�(A��۪��v�G�ױ�1G�i��pA����dy�(tx7g��=����z�`ګ�N>��%r�UT|�������������<�R��
4�;��9���)o���TJV�$I!����k��+��������1����ˑz�lr���#�֗O�Ӆ��|�OQ6~% a0��Dtt�e=C��+i�G����G�fo�dgA��Mx+2�Du��:˚0Z�=ka��U�� ������O����!���5�~��\׸eɔ�4U�cJ�$8�W��R�7���oX����W<�h�v�B}s�i�	z�	�'^ц.6(�'YS��9��-�Ƚ}z��q���t������N[8��w���)Hh��`	�Հ�}����@wؿo�A�r~}�;Yڡ��~���RC�������@�P���D�O�ZQE��sͶ��G�3g�On�)���@��k}�Es�3�\�	�    0a��+гR�g]��	߻o����o��;l�~��=\�ʃe�fr+������F������
�b|֠�Jo�C<G��X��ߝ�%y%:=F��a��̛6�a����b���r���aW�>ՠWi����f��q{����Eu��b���V�p�:��2_(D���`�g���/�e!W�������(V~�>�.V�ܠ��L�`��|�w�i{����OII�	s(+�8q�*rW�Ϟ_��G���}7h�5k���
7��GA�f��~˼�@�˪�����B�_�7�Ϸ�y��������r�.h3�F��*���[m��^$>Y)�(}S��ٝ��냇���7�7�/O��Ln�,���@}�#{�:8�n.A[�n@`ȅ��uS����ˌ������]�N�vv�-�����6M1&�FT0E�lʀxQ��E�U�k������G*�{����D���}�F�"x��N�zK=9�������bU��� �6��o�v�
�fL����lS�=�6���9\�2�U��
.������`W�����EY��XV�Z�=�Q��l*E���±�y�ȁ~�כ�С��U�8؂����P�7������-"�%�&\�}��L��+vs���tY�P���gXA���D�r��KЫ�� �̓2�X�$YD�z�u~s��ܟ���u�3��XT�RӜAI.�@��h�l�xy���>7z���~�y�}� ����@6���;�V�N�����.۩���g"��-�D��4�9���%f��GL���`1�f����Aq6x��3N�H������Z/���z�(�K�x���r����������}k�hU�r���^������F�ЇH���ƾf��������YԷV���'z)�+�ȽK� 9��
W<
*�%����=.��^�����fj�o� -���*���sT�
�c�Ƥ�#��5������4M��|�7A���O��^+�G����h��h%^�-�!��*{[�Z	
�����o/F(�`C�ہ��}w����?�࡛(2P��2��R���ȘK�Z��ت�?F2K�3��o�v�k���g�4��_S�$AuB=A�hB`V�M������>��ow������:��r���˞��er_yJ��o�bۘ'�+�]+b]�x��"q���e����ŝ��R.�o[bǼ��ǌ�̝a.�r}sQ�(���^�z��?���7�����ʹ���o	�:m�.Z�aamC�wuT�U)�Ka�C�������r[���O�v��ɜ�P��	������Ւ���4�'�..=��_�A���v��Y���~���jnt�t��� �#P��P�!�r�2*K�
��~ھ���$�\��>�es����~��t�y�;8�o�"F&x�4��dT
���eQ)���g�8�~T�9W����9!M�6F��^����Jd�"	�A3լ��O��ȿ�����oas�����?����O�׷ˌx���,� ���ѩZ�Z&W,�XB�pʈݷ���M(���uN;��wh^�d@���`���݁@�O��8mK�� E����YC��G�WN�� �X3w/Ȏ.2��"�����ﳤϢ�m��ˢt�,���N�B�ۣ�&�	�������c*�}�� ��[���������A��huL9:4se�������bM$2��4����d���P��������oBKo��b�z����k� �@�Y�˔D'	6d�Z'��-�����3��~��p���Ž��~"J��2Lj/����a)�(�D����]!T9���{����fhR({�!��a.�(.�P���b2)$^�U��t��>_l9, 8X�o����Wwp�^����0��ʐv
��3��������?Z�CP4��o�v`��e��Ҕ ek���	,�"*҂)
ٿrk;�h4-�e��6�����c��L�F�xQ������=_I
�=��)�%�5e~�ǰ}��;�HZ���`���ځO?�~͏Nۖ%F�H��J��0��81���U��:���n����˅���7c;X�)���/:mu���2I�(p�`/�W(A�%��k�Y��I���p�NԹP=��o�v-2�*���Ek�s2��@Ѐ�$h
���L`~��_�K���#���.�f��[��JB:m�~�E�ǅ��a1L�*�i����X�ʟ	�_���aak����V���X��p��I��:���s�'�6'0��a
�|�!�u��������lt;[������Ž�o��aX%e{Ȫh�0X�I>b6\J�2b���uKx����q�e	�K����y7*�i��W����	5�K)S��c>u�»G
�Z�DW���8c�\��Y�9?�����ݲʅaͥ���"�0����&'"ׂ}����$�n@����[#��"0V��,�Dg��8r�XM����������q�t�3��� ����1���;8m������O����2��4(�D�k<~�� �����.ay�Ќ��u��(�k�6��_"p��I��8��Eɳ��,ք��_b��_��y�~�@�C@3�:ڑAeb
�WdW�iJ��U�X����H�5�3�y������.��	q�k�@�T�K�Cy|��(3|%[�E��fW"��z�e�^��o�[���1J�I�.J����������2��@1�H2+��k��W�w������:88
U�c�8mc����9��=# hز�$
�L\�<���xav����노
a�M����c����q*v\�f;ѫeЦ��2h�܄�� �X��^�w3�E�.�����8ɢ�_�� ��$�'��1%��2�+}`1��V�{F��*cZ���� �q��� ����R )����H4��
$
ޠ �z�����n{Vg[��AװY�s�~P�©;=aRҎBޤ+j:�a���^.<��KY��bk�|�>~y9�B-��`��q��x�_~��,Ʉ�IH4�j��-87q$ʊ^�X+����G�����r��o��#S}��4�T�_9U���ft��N�bl0~�v���d�Ñ5��',�7�;��s��/rFYG��S΅�0�+=g�b�����O��(Y^~��n;������$��;m����
�.���1����HE�L���z���o~���������%���OFw����?i�Ӗjҏ]WL�%�l0�K0	�d��yWW�����Ϡ[�}~;�I�������\&!p�� ��Ė̈́E ��fe�o}�h}^M��m�7��w�\�7?X�o#G��"?*��i#R����
y1�(Oi���;���])E~�a����/�?�nxn4s{�Of94OA7x�a*Y&�KXD�҃��f ���)���� :Ou�6Z���Ar�\���˭�z<��P*�*��x�fו���K���7��[�g��a��,��������-����+Yr丒w}~ e�/Gt�B�m�*��l.��8��(頿��	DTV�$�ME7�:�vw�<�P���t��S6LQ�w���Um��������Ͽ]��B!����y)�w�Tsi�EO�+�� �[L@�L�d��-������qs�y�B�`n�_�͘�A̓U�O��c���5v�2��EH�GY+��B�u�o֣=>ϫ�r1�f�� �� ����`�[Q�l*=��G��ń�,<��ʚq�$�{��� ,6��w�.n?��iK&+a%)�I)cE]��%)�����Me���=���d��@��	B��>N]�`4Sd'��B?�C2��¼��
'����Y�o�>� {��NE!$�o�ഭ��Z��r�3�(�+�`&��FF������������+�&��.?@�7{;M�L�ՏN�MD*�x�O�W%��)�))��c�>�W��oG�g�\�~ �o�v*
����t�[#=�s�r�UXHUA��ߠ��ezm�!1P�[*��
]���㛽�b�.nD��~�L>ǒ�d     C:��>n�@����El{���P�4������ �fu�.�9�X��c���O�pm2x�JZ�d��Ԟ�W.U1[�!:�x���O���е���RP}b�Z2�,8�Z%�m���e�qޯ;�����t|��"�w�4�L(VQZ@Y9RH�oSbQ��,��/7^v���_w��4s�$� #����w�h���ZE�%iSv��Q����\�*�LW�0�֪�P�� o�^�/w�?�*��y�b�މ����U�SՖ4'�!�u ׍vr"y���T����b���������fs'��A�Fg� %�E���҅��C�����;I��z�����,>��}�_-���0y߁�g�W��iK+CB�:���X8C�܉�U���4��t%�'^#~1�fk��'�\�ܠS�@d\*Q�'��.*7�$
axH6�\]�{ �К�B��B^�&L�w`��S�����╙���Y:<l7Cڏ��S<1]�zG�����������?µS�����<�m�;�8m8p4�A��Q���H"Wu�ѯa��p��>�ow�#v�_)������py߁�;��8m%�΋=%n� -��sQSŔe�U���������/�zz7�_/�a��5�6h��Tfbn@�y7p�bt#l-�W)������-�O�C�:[�	}Ҹ��N�vJ�sI8J�� �Kf(���E�:̧ܺ���ק׷�	�����vP�NZ�o���.�7.��iBg=�Sh�D ���U���<�a{��׷�뚽�X��Ͼ�N���P�3iE)��1��@c�Q;c��߽����=
�yOu�*d?�5�{���j?wC���v���+=i�
uz�?�hP�*�ӑ�~���>	E�H�y����i�h�fx'�)�t�K�ik�Sb멄�'$�@]�-���T�]YI���������%���͝�����A�	F,�(g&�Ue���9�\#�H:|�>���$A�<y��o�v"���pڶ*�%edWł� ^�OP^�
��n�kx���ݎ!�d�U?@�7�;�XɁJ�N��ޥ�-S�IC>�~���e�T^C�[�<��W�w��=�-Qz No�v��R�
:u|�x�l*�2��@뽐S�Q����ָ�-����ĕ���u��
��K�q�&����8�æ#%���֭����L�s��[��)�ݴ�㎕Q}�N�MEÅ�V�}T�a
��+JH\����n��3�o��T}3�㐕���I�d�������)�������s���3���K,�x �o����c�ev����S�������qx.�)���z~���p��v�����s®��CӴ�"x���Cw�#r`?�)�z��y>���[`뛝龎��q%E6��L*��;���(����Wm��a7��-���oz^ݩ84W�s5���ZqrF?��h��*�֤�RZ�9�E����Bֶ$k�_j4�{&	9hg�i��1�H(Sk)���~��Ȥ
7���^N}�?���fp'�i��l�8mw7�)�AY $�PEp
b��ت�)˯�u��Ǐ����3܌m����mA�5�	��+��2��M���9Y�gk�����f�z��K��p�lpg�����E"�*e�a��g�Ъ�(�2��S�5#V}���_0��^�n��гYډk�r�~ڠ�n"�x11�I33K ��V>�"ep\�`Wq��_���� E׷�W���W�a��L��5��Lm8mw�K�u��j�Ty2�X���T!�rKkʫ?��;f�3q�)��NhC�3�ʖ7Fv*ᬋNN�^J&��*1l�)[)� |��z}q� ��NH���O��f� ��aJ�j!^�씕�������4T��r��+�; h��⚳��	����d���8��9�>r)�z��a����,��ތh^ Gߪ���ӆ�:'��[mg��<�5e��oo�e��U�y����8����Ā���1���}��gc�2��n��R�.��8��f��=G���\�9ù܄�ᬣ��� L��}S"�(��ǂ*�aR����d�<g�9ޝ�8�g�^43;���v�Nk�k�d��r s5P"�Չrq����a�Es��D,�a�v�]T/�Do�r0M�cS8�Q[��]
�����#H��MP��^z����?~�J��Ly ����nG��N�vK��f�����F�A�,8��ܺ�/߷�T=~�x����N��� �;�a/�QYx�K�0 ��K	��yr&��v�J�Vo��� �7������K�8@���q�����n���Ԙ�)=� �Fz���7�J.�r������I߽������:�����u6����8] ����9������e��/�Pm�T\7(�m@r�0��e~�Ko6���4����鲤�$�`Y�Z0�ӬL�D�֚�b����gv�����������0ЛowJKU|�ڴ�OYDQ��γ�l�WHuԔr��x�˺�����~�����U
1 �7c;��e��$��Et.�W�J�02626�LY���A�qZ���O�y@{GO���*Y� E6���'��(-�6��zSG=�
܋��ڸ�����+l����� �/W����Y۩1�A㴕C9Qڈ�4T%���Y��g�J�:�2������p��^�� P���`C�d)�ʭ$S�R|)г�"�˜eVj�p�7y}���}����|�/���ŝ<�J?��i�i0J�$�a��Hc�uVȈebZ�PE]����*�����]�Y���F���N,�䶏�ic�'��y`h�cx�Dޓ�)"m�f�l�|�@��z3�u�TV�M{I6���"�9Q���a�Oi|��3�R�8lq�??Q%-��~ �o�v��t��,� �e�Γ�BH��$��L	�,�����=��;u�x{��P��}3�g�e}&:=#�.�!�!'�;LcpJ��kТ���ü�D�� d��<�cd��#H9�T(�q�>��1P��˔�N�,��aM���m�N4ω.��f��`�*3��N��Z�YΔ�O�a�5�c�Rȩe�]ר�9�xG
�z�Z ���v�����-;ؐM�n�k�1]�)����9|A&t��D���ډrH���K�r�RE4}�(�z�[c�*r�֘}{����ޯ�/$}��+�bL����TnZ���g��h�^���$�9��X3�.��������fq'FЍ�k'ᴥ=ZQzSP>S
�ˠ�[�'��UWb�|���y��;]�k�6��7�;���-��g���L��4'�ѧ6f�s(#��<;�B~��	[���R��	Θ�z�6U�\��^!Z���?`�������p���s}:R�*���fn� �Hewa߰�:[��0��SAJ~�a5�4�+����*���b�Yډp���N�e:��	�0�ꍬ(A�5M:Q�ȿ����{����s���� �ތ�
?��a+��7�Q�`�MA�2��/�i�W�������I��:���B���A�{`C7�f�唣 �T(¥)KJ{���������߿���z�����N��P1�-�O��$E��-�S.�h`�T�Lh��9z:<}6����`}3�S�����%8L�H>�L��I�O1G3�Ғs�+���m�7o���;H�_w���fp'�y9@v����`*A	��X�r`�U�_,���`�������o�����y����፬�7?,�贑YHrF1��	�;����͗�ρm&^�����fr'�Qj;��x�d�"ӥ5toC�+�Pwq���]φ^ުBF�Xf0���4c;A����0�I/z��WN�]T�k��XUBԟlM��\~����o���K�0�h�����Y+�ؒ��Z7�,tQf!"^dS̚��pܜ��x���/S�'@3��@fߟ���2�5��{��c1��F�)K�GJ>ׂ_�����u�m{w��H��_G7O����i�W-9�l!Bn͠��}(=���]���
������\9�um��N� �  ��N �����8mٹ��S�
4Tm��o�_��L0��ˡkb|? 8��C��}����#r�!�ߚt��B0�]����!��퍜�i���m������*��^�f���XY���U:5�W���A9D��R`יRJ�k��{���*��w���}��Û�Ɵf���X~+aӝw��wp� �h���<��H9�<ʌ ���x���~� �*���/�=���{�L�AL�߯�ӖGFt�a*�D�^�	������*����\�'�~D˥�:`�>�Ά��*�O���E��
E7�S��j������](a.&ŕ_��� �����^���7�$tgʨ����.:� 9q�3��
��Jy}rSC����=����+Zjs��̼������ݵ��?&�i��8K�(EN�5�ok�c�u�»5����;h���o۫l^�l��8�~��o$��H�Wt �Z,��T�2ɀT~�����N3�����'��}Mr�����<�����iN�C�f���Wq-�vf@�>�`� :y6����b}*[�6�=n��3#Ku�68hB�4�Hi}Ԭ����ӷ��}C�����������@�ͽ`ә�B[wN�q�hY�3B��x�߁Փ0�VL`iMs��e��> �zjb7�o�AM��nD#靶�k[JI���P��4_�$��r��z���p�7�������͞��Y��?�Z	���{�I�4I�b�B��t�R�(�c_�`NK��SN��K6dn%��wT@����~Y>�2ib�>ؓnB̔!3.$U�/�e�/ Yz����;]�)<��6�cT�yJ��Cb�Ǔ9�)E���c]u*(G�1G����5Fg �����&v ��j�B��,��T�0,�~r��f
u��5J�y���2�øK�j �q2�u`}���w�p��{C��g*8�D��4|����BR�YW3.������T����D���*��H0���d�-�<��I���t�S�������/3u4Y�9B���%��?�\�H�\�w��J��@��-��%�����P�yO����M�������=� &8�b_TlnnΰN�DU�`4����fX�y�dr�[��T>e�w5$V��������	�zK��5����v8\�P��q�75}B�N>�P�K�WQ�@9�]�s�=,�e�c��Ҍ�(�Bts���\�t�O��8��C�k�,#��Y���x��ؼ�m7�s?{�q�fpge�ih�t�`�<Ws��D�n��#Q/����R2�j��p�����iw���/��,�K�u�t*��>P��0׎�����\J0xT�_��������.0�`�D�y��]�&��g�yg{���]�q�|r�t�|29��*4SqG� R*"K���덵����~�;l��v|?<n/�f�_%�բg����A�Z�i�	{v2�\�T�Q�4	J0��_�3�ו&3��vl����8m13��Y�n3�!��58ecY�����s5��}����\*����*�f Q��	�b��8�݃�(t>p��Z��T����[����
}h����b+U��6G�I��d�ؤl����?��\�5?�?^��ڼ��^��lRm�Աt��<�IU[ؔ9������lGA:K��3�{>�7ep�m�~�%t�� �E�
Ё�����9���������Y:̛)c�H�(�yU���X�ۢ+��y󶿌gD�P.�w8P]�n���U�t��LL$�^T�M�:1mU<�W�m��^q{x��}r�����Ѓi3N)�N)L����e�Teh%&��O^�5��a����9NE�ʢ��.6w���V�V ���L����T�ާ[�@=T�'AE����Yv�����l��s�?Ds�btg�bŶ',_�*�= ᦔ��,,��fN�C�\g���]���� /i��/�,��XI8-L�%����P"�L�f�0�E'���g�����x�9����y�ci��\i1���&�R�T��q��dZX���¥/LΘ�b,k8�,g�t8��/Uҭ�	��~mWV���\�<3���8���@��[��ڲP�����7�.�e���\p�$=���]�i��UK���%6�3�R����2��k����($�ҟ�'?+Gg欄@N��1C�!���}A+��i/��@��W;u\�	���r�lwv=���q��u��C��L ���~
�A�D�����~�~gfΏ7J�>7 �]� �[�v��������`�9=UU*��Zd�#h[��f�<aM��:{��m;DC��ݯk���5)Q���^�
�5��k*���tY���A�z��J����L����M�!�!�0N����i3Z�Ϭ�)�0�kT��Dy���:n��m���!����M��S�d���6}���LB+��{De����>�aR:KQdMz:7�����>^�9��޻�l/Z!S:]P�����	o��|CS��\H"}�����F��y{�q5�7�]gَ���7ҩm�'��%���lM:M�.cɢ&z��n�[��x�����㕏��V��O[bʮɊ/�	c���W&��dr�T�a�O��!����W,�o���/���y8nO�-���1�Ap0�}_�Y�+��9+5�^b^�fz��T�dM�\��XU������������������ �ъ�ξ+����4�yf�����,.E5U�����F�
(h
�<�7@{)���K�';���"c�y�!_4cDd��)9� ��( VC�S�vie�c����W��6?~�-�O�[�ۥ̓}>_լ���yEv���-n�l3PΔY������ʑ�c��J�w_?__��3?~@>���B�q��Y�5������NT�+]�TT�+�����U���]y�����y�}���������zyw�����;	�\<.̌&P�dؤ��]��=ب)y2ڭ��#��O�"�)��������p��JEpUsʖ��R�p���伋�n�ߣ�U���Mc��U�!�h��V������y�p�:�>�P��4��Cv��ŘT�\���@�qʺB��>����N�^*=���JlC�@Kl�U!��4��ݞ���gtK���?�8�V/�%�N5��$�����P����?�éj�!9{�o��X��z�NSxޥ�r,�NY��_Z*ه5.6����t���/8m�+�6�	�NV<Dh)��J�%\����w��-�x���BҲ��|et�,z��=�ִl�1����H'�0�g]��d�k��<���?��E�W�_[��a�WL�>|�� �U�\�� ���	�N��i��/�s��ot���'���d��4�z���9TC�w�8N�1�,'1��HF�<�<^p�Ȓ�M���ÿ�GU�m\��,�)E^�{�q�ZYDJ�f��Y139����*Gc���1��PR��B8P�K�S�����8��K�`:mrjt_��RQ������Yʜ�\#�U�>���a��?�m)�F�u5QU}T�b��4���>ouwN?[M2 ��4�}*�tTLZS�kYN|�.rܿ�o!�}*vۇk7  mv=�^73��Vp� ���B��N����V��e_�8�/{L)�;z���m�6�lpg����>3NN>P�SR��y��R�A_1kr	P��w�_���U.��l���W ���}Ζ����ӟ��9	W      5   �   x�u�=�1F��)ү<�'N�H{3I�+@��V,b��k^�E���!�'�'Ʊ �_��Ѐ�~��5k-2T��MLR��s��5n���.���?.������su��ǲ#V��(�;iBEJ���b�ȳ��6��!�XnP�̽�5��ŭl���O�|<���n����,)���8�AB�      8   �   x�u�1�0��9=;r?'�ӳ��M#��@�����0�����F/���қ��oM��0MV#f��V(���M*�g��4���|��F����G��gA�s���?��__��͑�@��k/�$Z�lUX����Գ~뻮{)�7�      :   �   x�u��
�0�ϛ��]��n����kxٴ)Q�-����U�>f�@H)���%3g�z��C8Q�g����yT�cD���K�X&MhK,up.M��Nw2Q˱`������+�t��c^^w�s�1�U'�      <      x�}}[�-9n�w�*��m|�"f��s����5�D�ե��U"�  S���ct^\��+����_�����S�߾�Җ)�����+�\9u�<u��gtSr�/�4�	^�?!�1�����s<��_��zW�|�l�o����U}��l�5O����WW�1O=P�]���6m��]<~�9�:n�
�ut�g��4��$(U�.��/��bj�}��_9*~�$T��椅��ۧ0��=B�6��׻�m�����^C�aqX�qy��F�ڐ:��ml{���o((�P_�|6��hN9�s��j����k�4ZyN^��W�ki�Ri��~�1G)8�_<O�ǲ�e�h��827�X}�+�'��SZ�G}�>��嚟��Y�����<���R���ꓡ �`|J�G��	\�+5��]�+��_I2>n_8z)���
�C��G����w��z8��=p�f�B笳Z�qyc�wГ`��=�Z���{	.t�����݁�IN�����X���U��C���=��z\o���[t�	v�q�S(=%�^���R�)����>����f���ЏS�F�<c��퍅Ǧw�w�ö��G/gޓ_W	��Â�I�n��\x�F:���X��xf�mx��;��I/nGb�,����� 	��v>�M}���Ԑ��zH�;> �"� �+�[��]Ď����8�Po�^�����}-u.)ݵ�:@w7@����ـ�	�1��^؋��|�n�z¶�I�?�8Y��6������5�b�]�?��sv�ӕ��4l��V��s���C�w?�� =��3�z|��]ΐ��D�VǺ�h��_�� �t@<���� >����9��ag9��d��;;�v.�D�}���j`��`{{J?�w� ;�\	ڇB�zX���d����[�~�~~��V�򼣧��]�	�W�������d��N��>�AY�է'���]�8�D]�M�� ��B�ζ�O=�^l�X��f�t/
��n�������[\���N���4�C���?������g��,�������NUX%6����O��^}����s�`������|(ni���p������ط;�i��۟���9�.>�<�oh��+�gС�ˆ�W��v<�ch��A_��]��`�����M7k���Z6.�;�;�)b��>j���?mD8{QMV�l�;��^�l`(w�w�Sl[5y��c~hV9Ҷnq�6߃b��;HX0��ނ�Y�I��zH���O]e�\� ;y������j�v���fg(Ȁ{�� �/��a�!��r`���7?.$x��f8}���z�
>���7�ƹS�Zw%�x����Qǩ0_��A�y<Ҥ9�������@
���6MP�ܞ$�����D<���^ȃى}�j��h�u�I�;@/X/�� QC̝*�&V��z���l�i{�
�&�7:7�
�����[�;�L�)�yb`^5��V�_��[
����n�倚����z'yb`^K��גƏ��TF�=; �f`�������^�.{o�r?yb`^�b�J��o|K5E��݌	�G\�fp�#vI���}��')�{����Q��-z��������$x��s�~?ps�<1 O��|H��K�!��ݘ � �L��a� �X5[ęw��e$n��4w#j�][��=�zD��.�|Y^y䍬������!p��Y�ee��|F���j����¿/�?Uc��AC�_;�oʜ� 0s,�ݳzp���j���� �����0��ۃEZ��G���3C� ��Ih1������b@n��;�a �6 �G��`�s�z7I�r�z)���o7�9v6H��0
����s�d�ʓJ��Q�-�$��Y8u�%Ǫw���QAV+����t@#���<'�c���HrI5�Z�� �f�Ώ�}rmo��k!���#��p����NA������yTP|�C}�oF��k��Jb*����(#�]S�ξd���@�
`�����~6&wV��#v`n��?n���YZ}�꛿'��P $��؏4�OF�i�9�p	��tZsCawq���2;��q�n�����Op��=�������� ߹z��:�c8z�<*��ۋ���]����8�y@.�kkϙ���fޓ����R,��Hk� ~��H���4{x���p@�#w���z��m���il�0iT���Xs��X���{�35R�v����W�l�+�/��- A��$�<0&�fi�k����Ѓ?�O�/�.�q>��X����6��c �_c*�iW�o`����H�\��p��\O��g��6`y �h��W�+�����F���id�����t����'��ΫF	i�T@3�N���׊�r���������I�I�뵺&|�D�J�o�<K�����/��e���=yfNB���3���gN�bP� ^���~6��.�jހ�̼F,�IV��N�c��β��' 3Fp�#��݅<}�M�8�KF����x�4^6`�?���`����؛�����.���݁_Á�ȀG{�����|���Sx.��B*���c��`�Z@����͙p�Y�◊�T�~�z*j��Q��M����Ӈ���7>{-�����#�=/w�'?�A/xD��!Mo�hAW���"�rc��1F��ʁ��%�=���
ļ���~�}�V����J�#�* N.p{0���/.%�A䓰��/�W�A�Ƨ��;ه餃lV(n�iIȽ`��� ���YR9�a0�^�r=��H��/�3��n��P���O�Gy�>G
Õ��d�8v��[m5�M��ɤ���#^��N&�@����鄊C���������$x� ��S��BJ�ZJ�Cq6�i����I����¯C�����w�J�?=�o��gDW�><u2�w�9p|�fxsG�x<�"���CZ�͏�o@��啀�t^^��u��L���Ƨ�w�ù�֥�#�D��/ۭ��*��bk\U0�>� �F�e:��g��!m��>»���Z	�kP��_�����N�x���0zH�͢W�.�l~����Ύ��:a�c����b�7�4���GZޔ�����(���2���U^�!�T^g��G�j,V��#}/P�&X8bɝ��ΠJG�PV%`L�s|�n�|�t��UX��j�����y�Q_�̓ ���y)��q��y�����#-�5{�)	����rP���`K�� ��>Y{o�^+��)K�f5�"
�w�}�v,��˥#~��s˓T�cn2@��j�V���*��Cr��y�����g���3K�ɻ�j0�wU@cc.�/�#���
g����ĕ]˥ͮ�ą��� =ij��R���cw��x�F��ಥ亰HKyu,�޿}2@Oc�6�k�od�6�\At#�c*�i~�>ʬ!�j�/��
������[�\��0�a�`�l��I��
+b5����'K=�od�z�!�H@>�P�P�q"�Ӻ΀�k�Ow��g�C})_����Pl����ق�	�w1���^��Z��~1Ƿ��ƀ�g�Cw�M���������ᶷ�T^~/k�������RYn�dlx��ͧf��EJ�C^ �湋�5���a�亷��.�����Έ*a@/ 9����y`*fXc��~��_n��Y*���,��]��v��D��w�wȋ,��C}�oi�޻PM?�s�
����A�*�vh�~����b�R)M_��'g��#������b�s���@+0��y1�? R}Wq��s�o*8V^P�/n�w���⤳��|�<�l�s�?�^��S�����U�: =~@��g�f@xWo@���Т����0��@���Ӵ�~��~F6c�t��]TP[6���I�9�dw&�</�q&�I����\fm���/QM�E��,k,V���L��y�C*�B��|d.�D�ڄA�q��׷T��6CC�`�+/L�'�4����[SC�y�����9~|]2�y�k;��:K�    tiI��=�b�~u&�( �����a�*�gAI1��8nn"��'��Y
���ځ�$�?<���;
�XN�<��sz�tp�Ev��L�x��k���L��f@�� ؃�6����3�o@��`!��8�*(��R��ַ�j�R!�b2��;����hh7�g���x�1&�� IN�Eh�~��~JcuX��ҮP /m������`T�ou���P��'���ށ����=�qm����>���u*?fӀ���xz�,L FW{�6�4��=��
@���J�f?sc���"|�J��"Z���L(%������������Sk+�Ea�]o��^��<�'����z����e
��s�\� �%�F;�Ez�� �M�ft�auSm�h�Npͦ�Q�VH��c��WX�ya�Mw�F��(O㓑T��_@�p;��Tޒ�^�iM�\ ����L���,b~ھ�{������Ilb�|z�c*�+�,�= ���,8������vK�6`@Ad��T���5V znf����`��92���5��½RC�TЂU�H�ѕo�ځ����Ǉi�}�k+#���{�����[2͞���\@�az,@\�����r	� pˢ����:�* �ګgC�{k	7�8.��17/or=�"���ԕyqV��/rm����.�)�ߜƘ> �J5���8�T�|�UX|Ϥ^{0� �m�ZB_�7�5,��CoO�;�<{r6�[�Z�z���A/���=J_� �����?�rzu�h�0���{���_{0� .܎-)}S*�N�|���&��s�[�8F(����k{��k�?�J_ؙs��O7��,O��"�4 ��rX�u��k���^�{e<Ad��+�}�����ۜ��E�Z!6<7(�.( h���5~{�Jցu�EO>6���V�of<z�}���\�0� ���Eޣ���ʞ��=�4�56(���٠z�.(@4X�kH�5RX4@N�g@�H��:+�W��3�d�P4P�څA@��@�o�P��;;�jfU�8-��ءk<�w��-�X���{rَuK�;|�va�b�FXeU�fo���������`Ab5�Ò��S3"�up����n�]T`_R�^��zgA 6�W&��;K��v�xm ���_{0�@궿��}�;R�R�Sl���ǊۛA5�>ټ�\�ڃA�kSH�[ú"�j�&k�����l,�y{_���ڃ���=�,���R�9A"�� /��up���8�(к6aPA��5��s��Z��s���֫�b`�N?}�ka��o���;��xͩ"�4�I��vڝ�k ��y$�"S\	���4�7B�k$������U��O��UTկp�z�h��k�'agH�{mZ��ˮ��
v�GgX9�4ШL�6a��sx����侟��$�V����m8�7H����T!Y��y��Loi�o�ݫ4���Y#�x[���M-��
�^[�6a@A2K����k��� ��
]8	t~ؿ�~.L���FFN�Z��?ҷ@��U�H7@̰��i�U�ym?#{o<�#g����>� ��S\*�Y�o�wO��l��\������ș����F�qL�;?����=�n�t�b���,�8�h�Ȉ��LJ�u*�Nĉo%>C5Z �ė�]b]�<�v�~�zl���v�Lx�:���
��/6N_RlG�瘬�
�0Z0��[R�2�8����şȚ�0�m���k��45��xL�ڛ_yy��v%�0�q	L��?�s��6�mo�o��\��>C�o�L���Sd]"����a�4Zg6��ڽ�M���?o�7���7�D��}�O���ܜ�}���,B7�D���ȭ6�W�j䏿i����<�,�=T[D�����h�F�W�ۋ���	�xsbe�M�0z���_��E9N&]�^�D���S��*�f�yg2=wWsq,Z���V�_-1�����l���|�33�b���-�>���s�7j�`d���ؙi�7��_����θ>��<�f�Qc���y�c�7@�}�����1�`l_j����F�^�r7~�|�����=ų�RO�[�E�o-,��8=n`�P���w��7����Q��x����|��ynx��mFXä2���G�ޛ���� ���|J_�G� 
�paw��'�xB��K�d9ڌ��BC5�ㇼ_��^1�.�R������	�f��a�-�I��K�o}V��zh�^�o_	���:��Gb	|�OQR��U�6˄��xUe�`_5�_>����V`�L`�Sڮ��W�#3i���iD�ihg�PV���|v8!*��ͥ M�<J��"�"��Jw���e��Ng2Ϫ��7W��FFA�^l�)����#�:ce�#۳��q>GB�e1���=�j4`�d_^Q��T8 `��q�A�r'�@\ͤr>�W�챾�[��Q2K�M�9����!k]G�T6�jB���t��?��=Y�{Wo X�}�@�[��w������]&l�����9�G��j4`V�ې���Bi��f�XY/����No,s���������v��o����L����2{M�}�4?)6d<5\�уQ�D;�P�b~W_�3j̥�x6O���������7��}Oj�`�
nb�����p����I���GK
�j�j�n��UW��UW����i܍��!l�xhVF��y1(�)����5Z0J�ž������B��7�9�FB|�����S*j�`�0��B�7�J�D�z��h�u����dwN`|q7{�����^ :o"w��,O
W_�S�����f�{ߕ-E8��V/�v� ��L��f�\OaN���ı4e���^��FF���kE(}��ʲ[�խ�-�Q���nr�L]�7���^ �FFђ��^�;#7L��hp�!V���.+���QX.���E5ۥА~;0�O��5�=����Q7Cs�#"�b��*R���s�;M)���ԾV ڕ�I����3��l���\������FF�p7��!}[r�i�ɉy�<zZ &u��E���w��~m�F��>w��w���������	�v�l���dq��迨��J�W����8*\�t��R��BIX��}^�O�s�����~Qar����E�aҥW�<�D6�q���\������^*�F�K2M�a{��	k?l4�g2kQG�	`G
�ݯ�$^�ϪT���F���]��2r�������lK�[~�]�36��sc��hW�������V��}*�M��+#��{Ruj|f�!��{Q9l�69�Cx+R��'a.�_~�]�U{�1F�l�xOc��~�v;���QyY�y��-����ѽ�� ���O�����n�t
�9�=����@G(m�<�.|Q��9�|"�~���Z��v�~�"�X�7�77�3����N�/2W�����b3LP<�^ؖ�9?`�s��+��'\�u��8���Ʃ�~Qk�����C�%�C8}n�O,S�n��wH}����>1P��Z��3��u���Rf��!��J�y��Z9�����k1ٗv��F$�����l�U�v'�3�;%��Ԇ���}Q�����7��{K�dx���i�Լ���V�K�ȃwz�h�F�E�س\(}{��d�~�[�C�8Of,�>����)�i}i��85�/*V�m�����a�πS����5y۵�b];p�C������a�v>�o�Y�wV�ŧ2�h��.���D�{A����mÃ�cw=��w�_d=ptYd�m �E����t���F�E՚��a��5�3��M7[m�3�ah�"��9n��>2P�����:J�� Ҷ�=,��������)�]�[�����cR���h�z�&�O4�	�? ��x�d�d�R��Ժ�q�S�C�сѠ\�����<+{ٰ̰�]�ֺT��oð׮�o��h�`%��e�8}�k�j�v~U�,�f�i/����y=�/��1Z0���    ����j'�O�C5SI"���'"��/�q}`�`46[�G/���k\&(��΅�AԀ�0��Y*�8��Po)��с��-��I� s��+�9�A��R�y��t����[�������[�$��|zf����!��>y]]���j4`�TŦ�����W�6�y�) ��vbW���N��*�р�X%bz��*�7��ہO�u��#u�<�q��m�0��b�VZ�j\H����Bu�gN� �vx1��Ԟw͓��^��F���?���^�u��-nf^��P6��Z��K̝���t�с�xse�N	��A`�zΕ>�x�l��T�׺��L��70��k�$��o�Rc��hn��+SI��1v��X/��3:0Z��7ҷ,qKD�W���H�Ū�\-�:�v2-5X�с��	�?�w���nr�W�֡�gX3��Z�2��F�et`<,���'���?��DH��y�9��&���̌&�?1����m_^�Ǽ�.�||B,_��� ��tv[��S����?50���i|��m�89¬�ts9��q8uK�ܠ��ļ��+jt_4A4h;	����6���y���ڬ���x>5�����&���K�VihZyF>�#�����F3��+�͙q��_��h����!�/ͪcE|d��|p�xq�ү���ݕ����h��m5���_.r��z���2]�=�Lkn%�{����ArM�c��	��a���]8��^= p��Ĳ�ө����_$�Ζ����$0rpj�gV'�sF��.-����5VG<a	�y� ��+�û��z�(���o��%�X�]#�ht_�Q��G*�$f)B��9��o�����g��q�����wJ��L8���q}6������,G{}L���P	5�/$2Yl���4ol;SGd��LY3��{����t��F����lH���[`߀=6�s86GY��ןA��?D���F��m�M�K�F"�y.��m�	���	�0=�з�yel�����l���#b��;�At3"k2LC�!���#ύ]�?�F����GQ��}�ůk�Ρ�X�r�OdM�v�/����3Z�~���a}���(}��L�u
GeV�q��ό֩%tip9,�1
E���Y�#H%~�|�n��������5�gVz�xo�P��B�l��u"�5�1�b����m��%;�g	g�������h������e���W�	/�r9��?b�k�� 5@���CavZ��7�7��`_��A�n(b�R΍{fX���<���S�^ ᣲ<,��I�����ە4����wwk4`H��w���:,&|d����-#O���}��Ȇ��� ����vV�݌oa�����:����;��7 ��m�N�woo4`Ζ]�H���i�W�xf7K�� �@|������>/R��7�������U�Q�l���̿t_�fT� ����g�`<�M��i�|Z�=���3�q+S��sRu��V���<�V�����8S��w\#��ZX�Wfe7FmT˸y�穵h�% ���1��}�71L9�����&(�����>r�=����>Z���f�R�V�k��UȶgdKʵ���i)s|��d��oۑ��a���r#��~9�Y�8�v#s����^�=C��)�C=�
��7y/pp�R��%�;�����ھv�����sώ���>[,���aZ=w>l�c�"!�p;;��T{u����kp�w�����K�:-���]�r��|��.xW�T���?���A��w�S��q�FجC_��!:��j��/V(׊6�?��{H��?k����o���1�X
�� ����M�P�<p�d�ȅ��g��x�i;P#>��K�����1<Pī���;�i�9���w���|�pT�So#��&K��W�Y1<o��A!R���	�3�C�'u��W
"ܾ�
N*��{���my���RP�}qJ���O��Oc��${�Q�p:�w���)f�����
kW�P�B�����Qj�ǁ�6^����I�y��ado4`(x�=�Ry�i#�8�_ �4���&Z�oVyi)���o��P����7{�`�`w���|kQ u�O�}a#X-��շ��.-��wl���zjY|p&������W�����]�-���`�6�Z��pv�Y�d���;����"��'�wM�A�z�f�0R}'����%F(��<��ry^�D<��`�B�N��z��!���HN'�AW�G�����3����᝽��O�z�Q�I�(}ˤ���=>��3�� �Op�E�5�堽��L�T6~�ViI����w�������S�Th���������;�J�{c�6N�<���[�*�h��ŚX�j-|C�n@��m1�+16�u@��oȷ����u��;k��`��E��E3��#}͎/�/�݃�|m`"Ǹ���*@g��q)���
�<���G���4�����:���y����N�W:c�˵��o�G������祙�h^ngr� ��b!���)�k���0
�'k8��{�{� #X�EZ�%�� e�*����s-�a�P��U��H�Y�y|��~	��|cg`���:s��k��0�
$X} ?������ٔ�Hs9�[��O��7��?%��ѻa���K��s��X5���i|��6@qޝT�Z�7���7�U>���SI8X ���d2�O�˩�9N�,�Y��`	h7�$Zx�#}� Z���d���i��W��wf�Ct�` Y��a�����;�v��0�p44w���h �������sm��a���!}���o8.�3��sc�r;��JD�̧Vwm���Y��۷ᱝ��eObg�2ӻ�-PƮ�D����_{0���w�?�7����Tu�O��A�e6��9�?�C�o��	�
r�^}��|h�JЍ���#�F[G�$�z���;�\�0���-����{��vj��������9L�{�୹\���ހ�䶿=?���5�HX���TIE|��Z�+�uz|i-^�zd�à�qb���\�>�����=M�:�tg���s����}�݀<���c��c�p|>ND�%q|�Վ�k��=�ʖkA6�[
8��V�齵N���x�1��6�tRu��=N�,�ոNL������!m��yo�]���}��'�w��T��3�ܮ����aPAUkZ�T�9�)H?��5�F��;��!��r�/��p�;$�* P� ��#�o�����%шt�l@�8(����:�>*�O���m���T}v�)���V/i���z:��<�yM�f�Ð�A+����$�	�9��(���D�����K�uf^"�wmĠ3�����O��N���%�9��3�5�*�j(�C_W����oZa�:8d��No[9�q"�f�u5Vd�V�A�/���
L#����W�0�Y��L����~9�ni�f�Y�I���������yڮ�ϼRy�0�>i��d������Rw��(�V�*�����PK��۾����^��&�CC���GW/|J���Ǿ���y��{K�����ۓ;R�y)�YU&T������������(ȱ\�b��W}�8܈w�t����7G)Mf���o��>���Z�%r_�G��{8pz+�kg�[�X���Z�4�_��¼E�t��w�|=4s���s��=6'��91�����c}7��0�GA-�Ƿ�տ3r��|n���ix�R�׏�qu�g |~�E�/��Q�I���C��|��>ii�UZDoz�q��0�I���>
�N���m:l��d|�D����|�z�I�$?��7PO|�Ζx��m�"&�]�O���Y.��g^3��B������m[=���T��df`1>�~%G�trI�����L�k�~>������̦��[|j���� �p8T~Tĝ��zWo�+ٟ^�z�'���D��لR'k�����'���
����1e��g����w��G/� �  �<}���/�=��K[p��[��F���k��G�c��D�Ē����z7O���-�f�7У��M�_����9,Y`�A-��x�:.�<�TDܓV0��@�I�wp�%�&�F�ɓ��|�cp�ݐ*lŀ�h����[����'���=�^������Ma���������Q�g��󩆷�<+����v�x��.;2�?�X�P�<换����JÛW�#�áۉM0�ө7�� V�:,��p'��0>
���zH���2���̹�Dv�upT'��z�������a�((8\��� ���;Ɋ�`�t�U�d_d�:��g�Q5��@�
����+}���c��?�n�����\m�-��pZ���w#�G�����W��,��g�L�H|��2Jpu �9l�xR�����b�(����җ嗕�$8D*��듯�-�𫕧2��!�w/Ə�����+����~��݊�߾��9ca�<�ױ��~��b|$�f6��7�
������ɧ�W��U��7�V��߽l�շ�4�a�+�H�Ț����<\i��9B���v~�b�(�����W�~��k�����t󭿃=�r���J�{���㣠�,�G����;ف��/��g�l��ƼN����LӘ�!}/OWM:�zx.|?�m^�k�7~�����&�����R7�����]x�ԁ�{��"�_���S�v�n���X��G�߇u���� 1�d�`�&�/A	Y(S����Q�����?_���v�k��'���9�|�[�u<�3�}_��V������W���H�����.p��-s��~��m!rFnIw��݊� ��\�W��e���o���qV�6teD8}�8���X��8�� �+���R极`ϹX�Rx��]C�l��z'z�[1>
��o L���#ư@�o1؀�ȺS���y�3��~�~wb|�j�LJ��A ޘ$�p�|�˕�X���r˴���w'Ə�tD�+|kU�'g��g�|���fJ ����R�#��F����՗�b��%��]$���cqj$�*ϭcr��8x���H���gٿw8r�L�	��c�_�0���uϣGFb�w'�GA)�WH^i}GyU���s��Y$ƩZ����W@�z��S5Vo@^Hګ�c�Ʊh,|v�� �ǟ��M���=B��ߝ%]/����L~Dzao�C����6�.�q&����t�v�;1~To3��y�5 ���G$��u�;��޽��P38��>���/�v�l!}��R�qV�a�d��ⷩSd��:?�^�f���G�ӵb�+}�\�3�Q2_q�Wa:/�a'��`���x�8���������!�/��l�����;"��5�}�!���_�����]ai      >   2  x�}�Mo�6��+|_P�|pH��^�=�u���M�&Y�iG���"��O|0�w�����|�pg�xl��G�hi��!�V����a�`�5�\ɜ�`rC���-�~�a������_�{���2}M_{����K~�> ��$�����H7U%�:ׄ�to�m�0�fb-Ő��g��i�㵎goua��C��G��u<뒗Xs��7d�)[O�6��
���R��:7��V']�9ߍ��ǃ�]��p�e����&�\��M�YL���F�v���Nf�lt���D�;�	�n�
�&��УA���%1	j0�6"F�d�R��:?��V�S����]<�i��k%'횘"L�k(&$����d@�ԅ�.̺��ᤃ���h�H7U���]b����Q�L3�`��\��:�q���.nu4Mw�Ǒ#�;��Jp�]�Q\q�x,bԢ�m�n	��k!|��??�뿏������W{{|�s�`.O����SHX��gk��ݱ�D��hI�\�8S{c��L��鬋�W��gko�[��L�L�s�O�Ͽ|ì�>�G�� ���`@��kU]������Q�7���D����L,��[pk��������v9/�p���_.�����^R`A�ȑU�:��Z���4�l�a�l�@1���%H<�����w�fָ2��Fv���kUn�G�K�5c�V����WLc)��P��L�N�*B���v+�^�q����,i�ߓ���}�UЮ�Z��5���BO�?Y�u�pV㶿�R�n�Go�kU޷g���梮K)��^�b�]/�Eòø�O�Mse��1�N�� �"y      @      x������ � �      B   �   x�mQ[n� ��S���]*E(1*�V�}٦]��?�����!0��<H���i�L�DN�Su��ae�)����'�ϵ-/�u�����[�l	�%>e�!�׿�ꃉ!�`�0�+h6֮'ma/����5��4�:`W��\Hǖ�u�x,��^Y��;���.;�=�乚^�,>dg�`�ct�-n v͠�1i��\��C������_c���      D   �  x��W�r�8|v�"�[�ҌF7�e�T'�b��=��$"�����f����nߜ�����K���s�WE�C��C����rr9،�J�!��k����CrWN�y�H�f����:ۛo�S�Uz~|���	�u5sș�q���Us�Ǻ���Ϧڳ �\�P�z�Zx�f����sq*ש�i*3ɇ�������=U]7�4����������Z�R-�N؉J�T׎_�SQ�/Y ����R��%��\�uyhCA�J9���+>ٵ^�Bp��X4��ϵj'y��~�	����ٞf,嫨�C�7m�_�m��S�u�Ǔ�+����fW�y��4hB��&&� �&*B��uu�1R}������Yr�FO4�V�����uK�DE\L������X�[�����X�/Y[�N	eY�`]p�cS�Ϳ��k���G(v]9�o�Y�v]_�0|�L���}]����rarI{%`��������hý��Q�@I�L$���3s@΃0�Q��� 3gbp����GHQa�<}G�DL� r�tf�u*�
��)%��X���ԃ�y[�p�ρ�.́[�pF��U�Y�7�Pde�K�����V-��ȥɬ##��%$x����8Q����C� s@v�!(q.^��y�%g��ɓ��r� ��x�4t_�LZ-e���̽�n�Y����!�T:'�e���c�*�@un�$�S
 �b�K=�IN6JFSuY'���6��7��Ws�0_e�w�\�\Af�P;C��^��ϥ)j�2X�Ez0�p+--)1$�w�r�4N|bH�S/���Mݴ3^�C��Όq*&<%a��%��^�aJ�	��h�3�$��ŵ
�����+���q�$��/�xa�����\J"�'�G�Tė�	�!+J\
�M�Y��硸����Q�eVJ�]�lT������n��b�WaYsZ鱍|��c�/�e}���v*�f>$_s)�i�%D�X>}V/���]]~��:�s��d�ۇV�'��F��JEEլ���UA��*y�N�@�~_�\��P��J�s����ʺ���E_&�1Vav�o�.A)T
%)� e�88� �fO�ca�R����Ub�3l�	�3��ˀ�����U<r�O�٢������<3�S/>v&g��u1s|sb���uwa��aq�7V����۝�(��e�L�w�Q��҇�����ʢQ���g�����bj      F   �  x���Y��J��U�{+�`~36���0`��, �1����]ꪾ�+���9�`>CF�Jg�vM��W��==�?BXi�	�̇����=M�{$�^�
�N��ֵ
ޘ�?���$I � � b
n(����e��$�J���Ġ&�zmk�dI/^��w�}+�[��b��R"��kGI�Y?�6��o�=Ď6�=� �a)�f������q�c�1iDsc��b8���.	�ߩ�����}�/bt8��z�=�2!���[)�q�L�<$����"���5�q��\��y<���G�Nh���R�lt�igڥ]�!�4�mrK6gu�:���fZ{�/`N�ᆦ�o]�.�\B�i�48o�}H-��P����iS�Ս��{S�\�&�5�4[��G�xq*{`ײs3�=�HK	f�܆*�}�x�̵����n��ʃ����e�_���jr��yoX7����d�����3�����Y�ca�-��L�qO���u�&��:���~B��I��FdْJ[���B6��������D ��`�ED�c�T�¢zi�ԟ0S�胥����I)+ԯ���>*�~��h��1���P�J���t�����2���4/Ph�1�+5^�����MI.�z������|7�uA�*f�YL�����r��'�+��1
Lq��s%�cn+[���Qr$?��C���٬��Y���� �-W� -X������1}��C��9:uڝq���D1qw�H�>��%蒪�%<��7�ҩl��P���8�c[5�V�W�����Z�麾(gu�a��n�~G~����񼝱�,Sp���2�(R ��c�ժ��	(��m
9Tu���Z��������9[F�/��fc�Ge��㩶�N6��}�3�lE�䋣ѪČ>Du��ؘ��^���~[���`Їb�Ya���x�ƒ�a���k�j�]���u�yG����y��[i���T�t�N
Ku�)	�"<�miwmwǲ�8ܘ��#���OA�/=����ԧ*��p�,B1j�؎�њ�e��.<x��v�Ᏽs��� ��)�a�/����L96����5M��5���(�嗠$}��:boV⽵�+*+��W#9���X���ֿQ�(Icka�S�?��m�D4�:��-�9[��7�L���0�:��#q~HG��i�}lⷹ3��W��$L���ql�
�ngv��K�猈���C&�������)W���%9��T�ɉ���mY��&[E�~����K�L�7���:�<���(��3�f��~�P@hC�,	�_'��W�2TQd45k����fH����kv�]p+�L�u��,��.�h٦<��3��/?�o�֌��C
��A˳_h������/p��      G   �  x�}�Ko�@���WXʲb4��ۻ�Q�hUM���&��#;62����30@��G:�q�&C���z�4Z Bd��D�-�1�!�w�c�Ɍ�3�^�;��Y��ݷ�Y \��4%R��*́���s=��Zy3u�S+Dr)5O��B} ��6�q��΀�Ԋ1ZhLr�(e�����r��O�8F��,��j�<������ۮΟz[:?&���&Q$<51�i�^�'��J[�۪��}WW}�t�mY̐��[0"�H�$9�"�=p��S���&gh)?M*�FU��Z�������xh����k;^PA40*;���~����m���5cfV��v������S�<�Ĺ���y_��][�L��&%aL�Ԓ�D�δ��vS�����m�$v�`��A�$�"Ʊ=t��{m��:��@o�>������D#���.U�W�mH`5������{�#x)�M��3<�<����9D�ϸq���PG���N��)����d,,��p�޻�k+� ��^��?�;�Lք���+�B��8�W����6�e&��Qz��ӆ�����<�)�{U���9ȏK�	߯\Ъ����L�<r��Q�Ra4Y$��<����U퐿�֗W��y5��
�P��,��h4��      I      x������ � �      R   �   x����
!E�ϯp3��2��j�|�R#H�C8���ЪZ��wq�L@�hf��#Ya�2#IE;�R�i�\j��k,�JJ幭p�7��K��׻����+?���(�T7���bi=�%�M5�3�e��-Í���F�      K   Q  x�u�I��@D�U���&MjJIu�>����<Aߟ��Zl0&�^)� �0#�l	���`)���'듊R6��k@�V�%�\W��������_���w{�Pn
������j�J`y�R�$�]S3Ǆ&,�L+����h�Ė����"O�M=������K�d>gp���6ST�M�N۹x��MeZ�\﹛���������K..3�D+�*X��s�|�/�o*��Y����W�Me�TV퉕19LH1[e/��Zv�\��o+F`x↊��V����Z�~[8�J���9��9wnٹ���me��nO�P��T�(�$5�Ġ��Z!��&�<Veٱz��MaY@���6*���OU����F�J�u&Js����]���+�.��P|��|������[O�Z��Sc�,��h�����;�|�|[YH�<�]���0 ِ����J���&�ƾ̜�Ի�!��E���*�Ӎ{�p(m��}G�ap����Vbڹp��]����u���a��,Ȧ�����c�D��J!�x�sem����<�o����U��6��G�#��gz��R�	J���:fꑥެ�N�x�L��]����I@�      L      x������ � �      O   �   x�uͻn�0���<}4��c϶+�Ҥ�6��B�� 6���!��/��jD�е&\�^4u��#���_%o�j"#H��3���8$��vY�2�Ji羽�X�}�����>��N�"�f6)�\Ak�;\	b�P؇�sH�)T��W]��u^�7Y>�6LO?���lp�өT6���J���8����go�1�䪲�6L2�A��:O�c�dڞ�{�4��vX�      V      x������ � �      T      x������ � �     