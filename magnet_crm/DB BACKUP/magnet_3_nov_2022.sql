PGDMP     /                
    z            magnet_crm_db    14.5 (Homebrew)    14.4 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    magnet_crm_db    DATABASE     X   CREATE DATABASE magnet_crm_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE magnet_crm_db;
                aristo    false            �            1259    19159 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    aristo    false            �            1259    19162    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          aristo    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          aristo    false    210            �            1259    19163    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    aristo    false            �            1259    19166    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          aristo    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          aristo    false    212            �            1259    19167    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    aristo    false            �            1259    19170    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          aristo    false    213            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          aristo    false    214            �            1259    19171 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    aristo    false            �            1259    19176    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    aristo    false            �            1259    19179    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          aristo    false    216            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          aristo    false    217            �            1259    19180    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          aristo    false    215            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          aristo    false    218            �            1259    19181    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    aristo    false            �            1259    19184 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          aristo    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          aristo    false    220            �            1259    19185    client_client    TABLE     �  CREATE TABLE public.client_client (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    nama character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    middle_name character varying(255) NOT NULL,
    city character varying(100) NOT NULL,
    address character varying(255) NOT NULL,
    magnet_status character varying(255) NOT NULL,
    id_verification_status integer NOT NULL,
    legal_status integer NOT NULL,
    magnet_created_by integer NOT NULL,
    aecode character varying(25) NOT NULL,
    demologin integer,
    cdd boolean NOT NULL,
    create_ip character varying(32),
    medium character varying(50),
    campaign character varying(50),
    term character varying(50),
    content character varying(50),
    gclid character varying(128),
    magnet_created_at timestamp with time zone,
    magnet_update_at timestamp with time zone,
    umur character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    pekerjaan character varying(255) NOT NULL,
    domisili character varying(255) NOT NULL,
    phone_no character varying(255) NOT NULL,
    email character varying(254),
    birthday date,
    is_registered boolean NOT NULL,
    is_locked boolean NOT NULL,
    is_suspect boolean NOT NULL,
    magnet_id character varying(255) NOT NULL,
    source character varying(255),
    source_detail_1 character varying(255),
    source_detail_2 character varying(255),
    created_by_id integer NOT NULL,
    updated_by_id integer,
    is_suspect_bypass boolean NOT NULL,
    is_deposit boolean NOT NULL
);
 !   DROP TABLE public.client_client;
       public         heap    aristo    false            �            1259    19190    client_client_duplicate_suspect    TABLE     z  CREATE TABLE public.client_client_duplicate_suspect (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    is_checked boolean NOT NULL,
    client_new_id bigint NOT NULL,
    client_old_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 3   DROP TABLE public.client_client_duplicate_suspect;
       public         heap    aristo    false                       1259    20006 '   client_client_duplicate_suspect_history    TABLE     q  CREATE TABLE public.client_client_duplicate_suspect_history (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    action character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    duplicate_suspect_id bigint NOT NULL,
    updated_by_id integer
);
 ;   DROP TABLE public.client_client_duplicate_suspect_history;
       public         heap    aristo    false                       1259    20005 .   client_client_duplicate_suspect_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_duplicate_suspect_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.client_client_duplicate_suspect_history_id_seq;
       public          aristo    false    284            �           0    0 .   client_client_duplicate_suspect_history_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.client_client_duplicate_suspect_history_id_seq OWNED BY public.client_client_duplicate_suspect_history.id;
          public          aristo    false    283            �            1259    19193 &   client_client_duplicate_suspect_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_duplicate_suspect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.client_client_duplicate_suspect_id_seq;
       public          aristo    false    222            �           0    0 &   client_client_duplicate_suspect_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.client_client_duplicate_suspect_id_seq OWNED BY public.client_client_duplicate_suspect.id;
          public          aristo    false    223            �            1259    19194    client_client_followup    TABLE     �  CREATE TABLE public.client_client_followup (
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
       public         heap    aristo    false            �            1259    19197    client_client_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_followup_id_seq;
       public          aristo    false    224            �           0    0    client_client_followup_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_followup_id_seq OWNED BY public.client_client_followup.id;
          public          aristo    false    225            �            1259    19198    client_client_id_seq    SEQUENCE     }   CREATE SEQUENCE public.client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          aristo    false    221            �           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client_client.id;
          public          aristo    false    226            �            1259    19199    client_client_journey    TABLE     �  CREATE TABLE public.client_client_journey (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    journal_type character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint,
    updated_by_id integer
);
 )   DROP TABLE public.client_client_journey;
       public         heap    aristo    false            �            1259    19202    client_client_journey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_journey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.client_client_journey_id_seq;
       public          aristo    false    227            �           0    0    client_client_journey_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.client_client_journey_id_seq OWNED BY public.client_client_journey.id;
          public          aristo    false    228            �            1259    19203    client_client_schedule    TABLE     .  CREATE TABLE public.client_client_schedule (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    schedule_date timestamp with time zone,
    schedule_type character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    notes text NOT NULL,
    answer character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 *   DROP TABLE public.client_client_schedule;
       public         heap    aristo    false            �            1259    19208    client_client_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_schedule_id_seq;
       public          aristo    false    229            �           0    0    client_client_schedule_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_schedule_id_seq OWNED BY public.client_client_schedule.id;
          public          aristo    false    230                       1259    19961    client_client_scramble    TABLE     �  CREATE TABLE public.client_client_scramble (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    from_staff_id bigint NOT NULL,
    staff_parent_id bigint NOT NULL,
    to_staff_id bigint NOT NULL,
    updated_by_id integer
);
 *   DROP TABLE public.client_client_scramble;
       public         heap    aristo    false                       1259    19960    client_client_scramble_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_scramble_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_scramble_id_seq;
       public          aristo    false    282            �           0    0    client_client_scramble_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_scramble_id_seq OWNED BY public.client_client_scramble.id;
          public          aristo    false    281            �            1259    19209    client_client_staff    TABLE     �  CREATE TABLE public.client_client_staff (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    color character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer,
    is_hot boolean NOT NULL
);
 '   DROP TABLE public.client_client_staff;
       public         heap    aristo    false            �            1259    19212    client_client_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.client_client_staff_id_seq;
       public          aristo    false    231            �           0    0    client_client_staff_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.client_client_staff_id_seq OWNED BY public.client_client_staff.id;
          public          aristo    false    232                        1259    35566    client_client_staff_voip    TABLE     �  CREATE TABLE public.client_client_staff_voip (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    called_date timestamp with time zone,
    callend_end_date date,
    is_answer boolean NOT NULL,
    client_staff_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 ,   DROP TABLE public.client_client_staff_voip;
       public         heap    aristo    false                       1259    35565    client_client_staff_voip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_staff_voip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.client_client_staff_voip_id_seq;
       public          aristo    false    288            �           0    0    client_client_staff_voip_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.client_client_staff_voip_id_seq OWNED BY public.client_client_staff_voip.id;
          public          aristo    false    287            �            1259    19213    core_history_syncdata_magnet    TABLE     g  CREATE TABLE public.core_history_syncdata_magnet (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    last_current_user_count numeric(20,2) NOT NULL,
    last_user_id integer NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 0   DROP TABLE public.core_history_syncdata_magnet;
       public         heap    aristo    false            �            1259    19216 #   core_history_syncdata_magnet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_history_syncdata_magnet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.core_history_syncdata_magnet_id_seq;
       public          aristo    false    233            �           0    0 #   core_history_syncdata_magnet_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.core_history_syncdata_magnet_id_seq OWNED BY public.core_history_syncdata_magnet.id;
          public          aristo    false    234            �            1259    19217    core_profile    TABLE     �  CREATE TABLE public.core_profile (
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
    last_login_ip character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer,
    user_id integer NOT NULL
);
     DROP TABLE public.core_profile;
       public         heap    aristo    false            �            1259    19222    core_profile_id_seq    SEQUENCE     |   CREATE SEQUENCE public.core_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_profile_id_seq;
       public          aristo    false    235            �           0    0    core_profile_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_profile_id_seq OWNED BY public.core_profile.id;
          public          aristo    false    236                       1259    35544    core_settings    TABLE     +  CREATE TABLE public.core_settings (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    top_client_feedback integer NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 !   DROP TABLE public.core_settings;
       public         heap    aristo    false                       1259    35543    core_settings_id_seq    SEQUENCE     }   CREATE SEQUENCE public.core_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_settings_id_seq;
       public          aristo    false    286            �           0    0    core_settings_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.core_settings_id_seq OWNED BY public.core_settings.id;
          public          aristo    false    285            �            1259    19223    core_sync_data_magnet    TABLE     [  CREATE TABLE public.core_sync_data_magnet (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    current_user_count numeric(20,2) NOT NULL,
    last_user_id integer NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 )   DROP TABLE public.core_sync_data_magnet;
       public         heap    aristo    false            �            1259    19226    core_sync_data_magnet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_sync_data_magnet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.core_sync_data_magnet_id_seq;
       public          aristo    false    237            �           0    0    core_sync_data_magnet_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.core_sync_data_magnet_id_seq OWNED BY public.core_sync_data_magnet.id;
          public          aristo    false    238            �            1259    19227    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    aristo    false            �            1259    19233    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          aristo    false    239            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          aristo    false    240            �            1259    19234 "   django_celery_beat_clockedschedule    TABLE     �   CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL
);
 6   DROP TABLE public.django_celery_beat_clockedschedule;
       public         heap    aristo    false            �            1259    19237 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_clockedschedule_id_seq;
       public          aristo    false    241            �           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;
          public          aristo    false    242            �            1259    19238 "   django_celery_beat_crontabschedule    TABLE     j  CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);
 6   DROP TABLE public.django_celery_beat_crontabschedule;
       public         heap    aristo    false            �            1259    19243 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_crontabschedule_id_seq;
       public          aristo    false    243            �           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;
          public          aristo    false    244            �            1259    19244 #   django_celery_beat_intervalschedule    TABLE     �   CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);
 7   DROP TABLE public.django_celery_beat_intervalschedule;
       public         heap    aristo    false            �            1259    19247 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.django_celery_beat_intervalschedule_id_seq;
       public          aristo    false    245            �           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;
          public          aristo    false    246            �            1259    19248    django_celery_beat_periodictask    TABLE     ?  CREATE TABLE public.django_celery_beat_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    solar_id integer,
    one_off boolean NOT NULL,
    start_time timestamp with time zone,
    priority integer,
    headers text NOT NULL,
    clocked_id integer,
    expire_seconds integer,
    CONSTRAINT django_celery_beat_periodictask_expire_seconds_check CHECK ((expire_seconds >= 0)),
    CONSTRAINT django_celery_beat_periodictask_priority_check CHECK ((priority >= 0)),
    CONSTRAINT django_celery_beat_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);
 3   DROP TABLE public.django_celery_beat_periodictask;
       public         heap    aristo    false            �            1259    19256 &   django_celery_beat_periodictask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.django_celery_beat_periodictask_id_seq;
       public          aristo    false    247            �           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;
          public          aristo    false    248            �            1259    19257     django_celery_beat_periodictasks    TABLE     �   CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);
 4   DROP TABLE public.django_celery_beat_periodictasks;
       public         heap    aristo    false            �            1259    19260     django_celery_beat_solarschedule    TABLE     �   CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);
 4   DROP TABLE public.django_celery_beat_solarschedule;
       public         heap    aristo    false            �            1259    19263 '   django_celery_beat_solarschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_beat_solarschedule_id_seq;
       public          aristo    false    250            �           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;
          public          aristo    false    251            �            1259    19264 "   django_celery_results_chordcounter    TABLE       CREATE TABLE public.django_celery_results_chordcounter (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    sub_tasks text NOT NULL,
    count integer NOT NULL,
    CONSTRAINT django_celery_results_chordcounter_count_check CHECK ((count >= 0))
);
 6   DROP TABLE public.django_celery_results_chordcounter;
       public         heap    aristo    false            �            1259    19270 )   django_celery_results_chordcounter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_chordcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_results_chordcounter_id_seq;
       public          aristo    false    252            �           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_results_chordcounter_id_seq OWNED BY public.django_celery_results_chordcounter.id;
          public          aristo    false    253            �            1259    19271 !   django_celery_results_groupresult    TABLE     ^  CREATE TABLE public.django_celery_results_groupresult (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_done timestamp with time zone NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text
);
 5   DROP TABLE public.django_celery_results_groupresult;
       public         heap    aristo    false            �            1259    19276 (   django_celery_results_groupresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_groupresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.django_celery_results_groupresult_id_seq;
       public          aristo    false    254            �           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.django_celery_results_groupresult_id_seq OWNED BY public.django_celery_results_groupresult.id;
          public          aristo    false    255                        1259    19277     django_celery_results_taskresult    TABLE     L  CREATE TABLE public.django_celery_results_taskresult (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    meta text,
    task_args text,
    task_kwargs text,
    task_name character varying(255),
    worker character varying(100),
    date_created timestamp with time zone NOT NULL,
    periodic_task_name character varying(255)
);
 4   DROP TABLE public.django_celery_results_taskresult;
       public         heap    aristo    false                       1259    19282 '   django_celery_results_taskresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_results_taskresult_id_seq;
       public          aristo    false    256            �           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;
          public          aristo    false    257                       1259    19283    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    aristo    false                       1259    19286    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          aristo    false    258            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          aristo    false    259                       1259    19287    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    aristo    false                       1259    19292    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          aristo    false    260            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          aristo    false    261                       1259    19293    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    aristo    false                       1259    19298    followup_followup    TABLE       CREATE TABLE public.followup_followup (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_choices character varying(255) NOT NULL,
    followup_choice_code text NOT NULL,
    followup_choice_head text NOT NULL,
    followup_textfield boolean NOT NULL,
    color character varying(255) NOT NULL,
    font_color character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 %   DROP TABLE public.followup_followup;
       public         heap    aristo    false                       1259    19303    followup_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.followup_followup_id_seq;
       public          aristo    false    263            �           0    0    followup_followup_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.followup_followup_id_seq OWNED BY public.followup_followup.id;
          public          aristo    false    264            	           1259    19304    followup_followupselected    TABLE     7  CREATE TABLE public.followup_followupselected (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_selected_code text NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.followup_followupselected;
       public         heap    aristo    false            
           1259    19309     followup_followupselected_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followupselected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.followup_followupselected_id_seq;
       public          aristo    false    265            �           0    0     followup_followupselected_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.followup_followupselected_id_seq OWNED BY public.followup_followupselected.id;
          public          aristo    false    266                       1259    19310    notification_notification    TABLE     �  CREATE TABLE public.notification_notification (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    notification_type character varying(255) NOT NULL,
    notes text NOT NULL,
    is_opened boolean NOT NULL,
    client_id bigint,
    client_schedule_id bigint,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.notification_notification;
       public         heap    aristo    false                       1259    19315     notification_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.notification_notification_id_seq;
       public          aristo    false    267            �           0    0     notification_notification_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.notification_notification_id_seq OWNED BY public.notification_notification.id;
          public          aristo    false    268                       1259    19316    staff_staff    TABLE       CREATE TABLE public.staff_staff (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    is_locked boolean NOT NULL,
    created_by_id integer NOT NULL,
    profile_id bigint NOT NULL,
    staff_level_id bigint NOT NULL,
    staff_parent_id bigint,
    updated_by_id integer,
    is_fc boolean NOT NULL,
    is_ib boolean NOT NULL,
    is_spv boolean NOT NULL,
    aecode character varying(255) NOT NULL
);
    DROP TABLE public.staff_staff;
       public         heap    aristo    false                       1259    19319    staff_staff_history    TABLE     k  CREATE TABLE public.staff_staff_history (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    child_staff_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    parent_staff_id bigint NOT NULL,
    staff_level_id bigint,
    updated_by_id integer
);
 '   DROP TABLE public.staff_staff_history;
       public         heap    aristo    false                       1259    19322    staff_staff_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.staff_staff_history_id_seq;
       public          aristo    false    270            �           0    0    staff_staff_history_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.staff_staff_history_id_seq OWNED BY public.staff_staff_history.id;
          public          aristo    false    271                       1259    19323    staff_staff_id_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_staff_id_seq;
       public          aristo    false    269            �           0    0    staff_staff_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff_staff.id;
          public          aristo    false    272                       1259    19324    staff_staff_level    TABLE     �  CREATE TABLE public.staff_staff_level (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    level integer NOT NULL,
    level_name character varying(255) NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer,
    salary numeric(20,2) NOT NULL
);
 %   DROP TABLE public.staff_staff_level;
       public         heap    aristo    false                       1259    19327    staff_staff_level_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.staff_staff_level_id_seq;
       public          aristo    false    273            �           0    0    staff_staff_level_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.staff_staff_level_id_seq OWNED BY public.staff_staff_level.id;
          public          aristo    false    274                       1259    19328    staff_staff_salary    TABLE     `  CREATE TABLE public.staff_staff_salary (
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
       public         heap    aristo    false                       1259    19331    staff_staff_salary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.staff_staff_salary_id_seq;
       public          aristo    false    275            �           0    0    staff_staff_salary_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_staff_salary_id_seq OWNED BY public.staff_staff_salary.id;
          public          aristo    false    276                       1259    19332    staff_staff_salary_monthly    TABLE     �  CREATE TABLE public.staff_staff_salary_monthly (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    salary_date date,
    salary_amount numeric(20,2) NOT NULL,
    bonus_amount numeric(20,2) NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 .   DROP TABLE public.staff_staff_salary_monthly;
       public         heap    aristo    false                       1259    19335 !   staff_staff_salary_monthly_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_monthly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.staff_staff_salary_monthly_id_seq;
       public          aristo    false    277            �           0    0 !   staff_staff_salary_monthly_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.staff_staff_salary_monthly_id_seq OWNED BY public.staff_staff_salary_monthly.id;
          public          aristo    false    278                       1259    19336    staff_staff_salary_montly    TABLE     v  CREATE TABLE public.staff_staff_salary_montly (
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
       public         heap    aristo    false                       1259    19339     staff_staff_salary_montly_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_montly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.staff_staff_salary_montly_id_seq;
       public          aristo    false    279            �           0    0     staff_staff_salary_montly_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.staff_staff_salary_montly_id_seq OWNED BY public.staff_staff_salary_montly.id;
          public          aristo    false    280            :           2604    19340    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    210    209            ;           2604    19341    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    212    211            <           2604    19342    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    214    213            =           2604    19343    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    218    215            >           2604    19344    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    217    216            ?           2604    19345    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    220    219            @           2604    19346    client_client id    DEFAULT     t   ALTER TABLE ONLY public.client_client ALTER COLUMN id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client_client ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    226    221            A           2604    19347 "   client_client_duplicate_suspect id    DEFAULT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect ALTER COLUMN id SET DEFAULT nextval('public.client_client_duplicate_suspect_id_seq'::regclass);
 Q   ALTER TABLE public.client_client_duplicate_suspect ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    223    222            c           2604    20009 *   client_client_duplicate_suspect_history id    DEFAULT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history ALTER COLUMN id SET DEFAULT nextval('public.client_client_duplicate_suspect_history_id_seq'::regclass);
 Y   ALTER TABLE public.client_client_duplicate_suspect_history ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    284    283    284            B           2604    19348    client_client_followup id    DEFAULT     �   ALTER TABLE ONLY public.client_client_followup ALTER COLUMN id SET DEFAULT nextval('public.client_client_followup_id_seq'::regclass);
 H   ALTER TABLE public.client_client_followup ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    225    224            C           2604    19349    client_client_journey id    DEFAULT     �   ALTER TABLE ONLY public.client_client_journey ALTER COLUMN id SET DEFAULT nextval('public.client_client_journey_id_seq'::regclass);
 G   ALTER TABLE public.client_client_journey ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    228    227            D           2604    19350    client_client_schedule id    DEFAULT     �   ALTER TABLE ONLY public.client_client_schedule ALTER COLUMN id SET DEFAULT nextval('public.client_client_schedule_id_seq'::regclass);
 H   ALTER TABLE public.client_client_schedule ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    230    229            b           2604    19964    client_client_scramble id    DEFAULT     �   ALTER TABLE ONLY public.client_client_scramble ALTER COLUMN id SET DEFAULT nextval('public.client_client_scramble_id_seq'::regclass);
 H   ALTER TABLE public.client_client_scramble ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    281    282    282            E           2604    19351    client_client_staff id    DEFAULT     �   ALTER TABLE ONLY public.client_client_staff ALTER COLUMN id SET DEFAULT nextval('public.client_client_staff_id_seq'::regclass);
 E   ALTER TABLE public.client_client_staff ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    232    231            e           2604    35569    client_client_staff_voip id    DEFAULT     �   ALTER TABLE ONLY public.client_client_staff_voip ALTER COLUMN id SET DEFAULT nextval('public.client_client_staff_voip_id_seq'::regclass);
 J   ALTER TABLE public.client_client_staff_voip ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    288    287    288            F           2604    19352    core_history_syncdata_magnet id    DEFAULT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet ALTER COLUMN id SET DEFAULT nextval('public.core_history_syncdata_magnet_id_seq'::regclass);
 N   ALTER TABLE public.core_history_syncdata_magnet ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    234    233            G           2604    19353    core_profile id    DEFAULT     r   ALTER TABLE ONLY public.core_profile ALTER COLUMN id SET DEFAULT nextval('public.core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    236    235            d           2604    35547    core_settings id    DEFAULT     t   ALTER TABLE ONLY public.core_settings ALTER COLUMN id SET DEFAULT nextval('public.core_settings_id_seq'::regclass);
 ?   ALTER TABLE public.core_settings ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    285    286    286            H           2604    19354    core_sync_data_magnet id    DEFAULT     �   ALTER TABLE ONLY public.core_sync_data_magnet ALTER COLUMN id SET DEFAULT nextval('public.core_sync_data_magnet_id_seq'::regclass);
 G   ALTER TABLE public.core_sync_data_magnet ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    238    237            I           2604    19355    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    240    239            K           2604    19356 %   django_celery_beat_clockedschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_clockedschedule ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    242    241            L           2604    19357 %   django_celery_beat_crontabschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_crontabschedule ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    244    243            M           2604    19358 &   django_celery_beat_intervalschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);
 U   ALTER TABLE public.django_celery_beat_intervalschedule ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    246    245            N           2604    19359 "   django_celery_beat_periodictask id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);
 Q   ALTER TABLE public.django_celery_beat_periodictask ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    248    247            R           2604    19360 #   django_celery_beat_solarschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_beat_solarschedule ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    251    250            S           2604    19361 %   django_celery_results_chordcounter id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_chordcounter_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_results_chordcounter ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    253    252            U           2604    19362 $   django_celery_results_groupresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_groupresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_groupresult_id_seq'::regclass);
 S   ALTER TABLE public.django_celery_results_groupresult ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    255    254            V           2604    19363 #   django_celery_results_taskresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_results_taskresult ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    257    256            W           2604    19364    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    259    258            X           2604    19365    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    261    260            Y           2604    19366    followup_followup id    DEFAULT     |   ALTER TABLE ONLY public.followup_followup ALTER COLUMN id SET DEFAULT nextval('public.followup_followup_id_seq'::regclass);
 C   ALTER TABLE public.followup_followup ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    264    263            Z           2604    19367    followup_followupselected id    DEFAULT     �   ALTER TABLE ONLY public.followup_followupselected ALTER COLUMN id SET DEFAULT nextval('public.followup_followupselected_id_seq'::regclass);
 K   ALTER TABLE public.followup_followupselected ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    266    265            [           2604    19368    notification_notification id    DEFAULT     �   ALTER TABLE ONLY public.notification_notification ALTER COLUMN id SET DEFAULT nextval('public.notification_notification_id_seq'::regclass);
 K   ALTER TABLE public.notification_notification ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    268    267            \           2604    19369    staff_staff id    DEFAULT     p   ALTER TABLE ONLY public.staff_staff ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);
 =   ALTER TABLE public.staff_staff ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    272    269            ]           2604    19370    staff_staff_history id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_history ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_history_id_seq'::regclass);
 E   ALTER TABLE public.staff_staff_history ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    271    270            ^           2604    19371    staff_staff_level id    DEFAULT     |   ALTER TABLE ONLY public.staff_staff_level ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_level_id_seq'::regclass);
 C   ALTER TABLE public.staff_staff_level ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    274    273            _           2604    19372    staff_staff_salary id    DEFAULT     ~   ALTER TABLE ONLY public.staff_staff_salary ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_id_seq'::regclass);
 D   ALTER TABLE public.staff_staff_salary ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    276    275            `           2604    19373    staff_staff_salary_monthly id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_monthly_id_seq'::regclass);
 L   ALTER TABLE public.staff_staff_salary_monthly ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    278    277            a           2604    19374    staff_staff_salary_montly id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_salary_montly ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_montly_id_seq'::regclass);
 K   ALTER TABLE public.staff_staff_salary_montly ALTER COLUMN id DROP DEFAULT;
       public          aristo    false    280    279            3          0    19159 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          aristo    false    209   V       5          0    19163    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          aristo    false    211   s       7          0    19167    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          aristo    false    213   �       9          0    19171 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          aristo    false    215   �      :          0    19176    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          aristo    false    216   �      =          0    19181    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          aristo    false    219   �      ?          0    19185    client_client 
   TABLE DATA             COPY public.client_client (id, created_at, updated_at, is_active, uid, nama, first_name, last_name, middle_name, city, address, magnet_status, id_verification_status, legal_status, magnet_created_by, aecode, demologin, cdd, create_ip, medium, campaign, term, content, gclid, magnet_created_at, magnet_update_at, umur, gender, pekerjaan, domisili, phone_no, email, birthday, is_registered, is_locked, is_suspect, magnet_id, source, source_detail_1, source_detail_2, created_by_id, updated_by_id, is_suspect_bypass, is_deposit) FROM stdin;
    public          aristo    false    221   �      @          0    19190    client_client_duplicate_suspect 
   TABLE DATA           �   COPY public.client_client_duplicate_suspect (id, created_at, updated_at, is_active, is_checked, client_new_id, client_old_id, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    222   	      ~          0    20006 '   client_client_duplicate_suspect_history 
   TABLE DATA           �   COPY public.client_client_duplicate_suspect_history (id, created_at, updated_at, is_active, action, created_by_id, duplicate_suspect_id, updated_by_id) FROM stdin;
    public          aristo    false    284   &      B          0    19194    client_client_followup 
   TABLE DATA           �   COPY public.client_client_followup (id, created_at, updated_at, is_active, uid, answer, client_id, created_by_id, followup_id, staff_id, updated_by_id) FROM stdin;
    public          aristo    false    224   C      E          0    19199    client_client_journey 
   TABLE DATA           �   COPY public.client_client_journey (id, created_at, updated_at, is_active, uid, journal_type, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          aristo    false    227   `      G          0    19203    client_client_schedule 
   TABLE DATA           �   COPY public.client_client_schedule (id, created_at, updated_at, is_active, uid, schedule_date, schedule_type, status, notes, answer, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          aristo    false    229   }      |          0    19961    client_client_scramble 
   TABLE DATA           �   COPY public.client_client_scramble (id, created_at, updated_at, is_active, uid, client_id, created_by_id, from_staff_id, staff_parent_id, to_staff_id, updated_by_id) FROM stdin;
    public          aristo    false    282   �      I          0    19209    client_client_staff 
   TABLE DATA           �   COPY public.client_client_staff (id, created_at, updated_at, is_active, uid, color, client_id, created_by_id, staff_id, updated_by_id, is_hot) FROM stdin;
    public          aristo    false    231   �      �          0    35566    client_client_staff_voip 
   TABLE DATA           �   COPY public.client_client_staff_voip (id, created_at, updated_at, is_active, uid, called_date, callend_end_date, is_answer, client_staff_id, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    288   �      K          0    19213    core_history_syncdata_magnet 
   TABLE DATA           �   COPY public.core_history_syncdata_magnet (id, created_at, updated_at, is_active, last_current_user_count, last_user_id, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    233   �      M          0    19217    core_profile 
   TABLE DATA           �   COPY public.core_profile (id, created_at, updated_at, is_active, uid, is_supervisor, reset_token, is_ib, full_name, no_ktp, phone_no, email, is_verified, verify_uid, last_login_ip, created_by_id, updated_by_id, user_id) FROM stdin;
    public          aristo    false    235   Y      �          0    35544    core_settings 
   TABLE DATA           �   COPY public.core_settings (id, created_at, updated_at, is_active, top_client_feedback, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    286   p      O          0    19223    core_sync_data_magnet 
   TABLE DATA           �   COPY public.core_sync_data_magnet (id, created_at, updated_at, is_active, current_user_count, last_user_id, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    237   �      Q          0    19227    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          aristo    false    239         S          0    19234 "   django_celery_beat_clockedschedule 
   TABLE DATA           N   COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
    public          aristo    false    241   0      U          0    19238 "   django_celery_beat_crontabschedule 
   TABLE DATA           �   COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
    public          aristo    false    243   M      W          0    19244 #   django_celery_beat_intervalschedule 
   TABLE DATA           P   COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
    public          aristo    false    245   j      Y          0    19248    django_celery_beat_periodictask 
   TABLE DATA           '  COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
    public          aristo    false    247   �      [          0    19257     django_celery_beat_periodictasks 
   TABLE DATA           N   COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
    public          aristo    false    249   �      \          0    19260     django_celery_beat_solarschedule 
   TABLE DATA           Z   COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
    public          aristo    false    250   �      ^          0    19264 "   django_celery_results_chordcounter 
   TABLE DATA           \   COPY public.django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
    public          aristo    false    252   �      `          0    19271 !   django_celery_results_groupresult 
   TABLE DATA           �   COPY public.django_celery_results_groupresult (id, group_id, date_created, date_done, content_type, content_encoding, result) FROM stdin;
    public          aristo    false    254   �      b          0    19277     django_celery_results_taskresult 
   TABLE DATA           �   COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created, periodic_task_name) FROM stdin;
    public          aristo    false    256         d          0    19283    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          aristo    false    258   5      f          0    19287    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          aristo    false    260   �      h          0    19293    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          aristo    false    262         i          0    19298    followup_followup 
   TABLE DATA           �   COPY public.followup_followup (id, created_at, updated_at, is_active, followup_choices, followup_choice_code, followup_choice_head, followup_textfield, color, font_color, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    263   �$      k          0    19304    followup_followupselected 
   TABLE DATA           �   COPY public.followup_followupselected (id, created_at, updated_at, is_active, followup_selected_code, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    265   u'      m          0    19310    notification_notification 
   TABLE DATA           �   COPY public.notification_notification (id, created_at, updated_at, is_active, notification_type, notes, is_opened, client_id, client_schedule_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          aristo    false    267   �'      o          0    19316    staff_staff 
   TABLE DATA           �   COPY public.staff_staff (id, created_at, updated_at, is_active, uid, is_locked, created_by_id, profile_id, staff_level_id, staff_parent_id, updated_by_id, is_fc, is_ib, is_spv, aecode) FROM stdin;
    public          aristo    false    269   �'      p          0    19319    staff_staff_history 
   TABLE DATA           �   COPY public.staff_staff_history (id, created_at, updated_at, is_active, child_staff_id, created_by_id, parent_staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          aristo    false    270    +      s          0    19324    staff_staff_level 
   TABLE DATA           �   COPY public.staff_staff_level (id, created_at, updated_at, is_active, uid, level, level_name, created_by_id, updated_by_id, salary) FROM stdin;
    public          aristo    false    273   =+      u          0    19328    staff_staff_salary 
   TABLE DATA           �   COPY public.staff_staff_salary (id, created_at, updated_at, is_active, salary_amount, created_by_id, staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          aristo    false    275   9,      w          0    19332    staff_staff_salary_monthly 
   TABLE DATA           �   COPY public.staff_staff_salary_monthly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          aristo    false    277   V,      y          0    19336    staff_staff_salary_montly 
   TABLE DATA           �   COPY public.staff_staff_salary_montly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, updated_by_id) FROM stdin;
    public          aristo    false    279   �,      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          aristo    false    210            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          aristo    false    212            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 148, true);
          public          aristo    false    214            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          aristo    false    217            �           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 190, true);
          public          aristo    false    218            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          aristo    false    220            �           0    0 .   client_client_duplicate_suspect_history_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.client_client_duplicate_suspect_history_id_seq', 4, true);
          public          aristo    false    283            �           0    0 &   client_client_duplicate_suspect_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.client_client_duplicate_suspect_id_seq', 18397, true);
          public          aristo    false    223            �           0    0    client_client_followup_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_followup_id_seq', 27, true);
          public          aristo    false    225            �           0    0    client_client_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.client_client_id_seq', 50126, true);
          public          aristo    false    226            �           0    0    client_client_journey_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.client_client_journey_id_seq', 21518, true);
          public          aristo    false    228            �           0    0    client_client_schedule_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_schedule_id_seq', 27, true);
          public          aristo    false    230            �           0    0    client_client_scramble_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_scramble_id_seq', 1, false);
          public          aristo    false    281            �           0    0    client_client_staff_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_staff_id_seq', 6418, true);
          public          aristo    false    232            �           0    0    client_client_staff_voip_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.client_client_staff_voip_id_seq', 1, false);
          public          aristo    false    287            �           0    0 #   core_history_syncdata_magnet_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.core_history_syncdata_magnet_id_seq', 96, true);
          public          aristo    false    234            �           0    0    core_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_profile_id_seq', 186, true);
          public          aristo    false    236            �           0    0    core_settings_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_settings_id_seq', 9, true);
          public          aristo    false    285            �           0    0    core_sync_data_magnet_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.core_sync_data_magnet_id_seq', 30, true);
          public          aristo    false    238            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          aristo    false    240            �           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);
          public          aristo    false    242            �           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 1, false);
          public          aristo    false    244            �           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, false);
          public          aristo    false    246            �           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 1, false);
          public          aristo    false    248            �           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);
          public          aristo    false    251            �           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_results_chordcounter_id_seq', 1, false);
          public          aristo    false    253            �           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_celery_results_groupresult_id_seq', 1, false);
          public          aristo    false    255            �           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 1, false);
          public          aristo    false    257            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 37, true);
          public          aristo    false    259            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 85, true);
          public          aristo    false    261            �           0    0    followup_followup_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followup_followup_id_seq', 26, true);
          public          aristo    false    264            �           0    0     followup_followupselected_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.followup_followupselected_id_seq', 1, false);
          public          aristo    false    266            �           0    0     notification_notification_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.notification_notification_id_seq', 14, true);
          public          aristo    false    268            �           0    0    staff_staff_history_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.staff_staff_history_id_seq', 1, false);
          public          aristo    false    271            �           0    0    staff_staff_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.staff_staff_id_seq', 178, true);
          public          aristo    false    272            �           0    0    staff_staff_level_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.staff_staff_level_id_seq', 8, true);
          public          aristo    false    274            �           0    0    staff_staff_salary_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.staff_staff_salary_id_seq', 1, false);
          public          aristo    false    276            �           0    0 !   staff_staff_salary_monthly_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.staff_staff_salary_monthly_id_seq', 1, true);
          public          aristo    false    278            �           0    0     staff_staff_salary_montly_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.staff_staff_salary_montly_id_seq', 1, false);
          public          aristo    false    280            h           2606    19376    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            aristo    false    209            m           2606    19378 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            aristo    false    211    211            p           2606    19380 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            aristo    false    211            j           2606    19382    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            aristo    false    209            s           2606    19384 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            aristo    false    213    213            u           2606    19386 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            aristo    false    213            }           2606    19388 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            aristo    false    216            �           2606    19390 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            aristo    false    216    216            w           2606    19392    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            aristo    false    215            �           2606    19394 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            aristo    false    219            �           2606    19396 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            aristo    false    219    219            z           2606    19398     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            aristo    false    215            D           2606    20011 T   client_client_duplicate_suspect_history client_client_duplicate_suspect_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history
    ADD CONSTRAINT client_client_duplicate_suspect_history_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.client_client_duplicate_suspect_history DROP CONSTRAINT client_client_duplicate_suspect_history_pkey;
       public            aristo    false    284            �           2606    19400 D   client_client_duplicate_suspect client_client_duplicate_suspect_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplicate_suspect_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplicate_suspect_pkey;
       public            aristo    false    222            �           2606    19402 2   client_client_followup client_client_followup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_pkey;
       public            aristo    false    224            �           2606    19404 5   client_client_followup client_client_followup_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_uid_key;
       public            aristo    false    224            �           2606    19406 0   client_client_journey client_client_journey_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_pkey;
       public            aristo    false    227            �           2606    19408 3   client_client_journey client_client_journey_uid_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_uid_key UNIQUE (uid);
 ]   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_uid_key;
       public            aristo    false    227            �           2606    19410     client_client client_client_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_pkey;
       public            aristo    false    221            �           2606    19412 2   client_client_schedule client_client_schedule_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_pkey;
       public            aristo    false    229            �           2606    19414 5   client_client_schedule client_client_schedule_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_uid_key;
       public            aristo    false    229            ;           2606    19966 2   client_client_scramble client_client_scramble_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_pkey;
       public            aristo    false    282            ?           2606    19968 5   client_client_scramble client_client_scramble_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_uid_key;
       public            aristo    false    282            �           2606    19416 ,   client_client_staff client_client_staff_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_pkey;
       public            aristo    false    231            �           2606    19418 /   client_client_staff client_client_staff_uid_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_uid_key UNIQUE (uid);
 Y   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_uid_key;
       public            aristo    false    231            M           2606    35571 6   client_client_staff_voip client_client_staff_voip_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.client_client_staff_voip
    ADD CONSTRAINT client_client_staff_voip_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.client_client_staff_voip DROP CONSTRAINT client_client_staff_voip_pkey;
       public            aristo    false    288            O           2606    35573 9   client_client_staff_voip client_client_staff_voip_uid_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.client_client_staff_voip
    ADD CONSTRAINT client_client_staff_voip_uid_key UNIQUE (uid);
 c   ALTER TABLE ONLY public.client_client_staff_voip DROP CONSTRAINT client_client_staff_voip_uid_key;
       public            aristo    false    288            �           2606    19420 #   client_client client_client_uid_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_uid_key UNIQUE (uid);
 M   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_uid_key;
       public            aristo    false    221            �           2606    19422 >   core_history_syncdata_magnet core_history_syncdata_magnet_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdata_magnet_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdata_magnet_pkey;
       public            aristo    false    233            �           2606    19424 #   core_profile core_profile_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_email_key;
       public            aristo    false    235            �           2606    19426 &   core_profile core_profile_phone_no_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_phone_no_key UNIQUE (phone_no);
 P   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_phone_no_key;
       public            aristo    false    235            �           2606    19428    core_profile core_profile_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_pkey;
       public            aristo    false    235            �           2606    19430 !   core_profile core_profile_uid_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_uid_key UNIQUE (uid);
 K   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_uid_key;
       public            aristo    false    235            �           2606    19432 %   core_profile core_profile_user_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_key;
       public            aristo    false    235            H           2606    35549     core_settings core_settings_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.core_settings
    ADD CONSTRAINT core_settings_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_settings DROP CONSTRAINT core_settings_pkey;
       public            aristo    false    286            �           2606    19434 0   core_sync_data_magnet core_sync_data_magnet_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_pkey;
       public            aristo    false    237            �           2606    19436 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            aristo    false    239            �           2606    19438 J   django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_clockedschedule DROP CONSTRAINT django_celery_beat_clockedschedule_pkey;
       public            aristo    false    241            �           2606    19440 J   django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_crontabschedule DROP CONSTRAINT django_celery_beat_crontabschedule_pkey;
       public            aristo    false    243            �           2606    19442 L   django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.django_celery_beat_intervalschedule DROP CONSTRAINT django_celery_beat_intervalschedule_pkey;
       public            aristo    false    245            �           2606    19444 H   django_celery_beat_periodictask django_celery_beat_periodictask_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);
 r   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_name_key;
       public            aristo    false    247            �           2606    19446 D   django_celery_beat_periodictask django_celery_beat_periodictask_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_pkey;
       public            aristo    false    247            �           2606    19448 F   django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);
 p   ALTER TABLE ONLY public.django_celery_beat_periodictasks DROP CONSTRAINT django_celery_beat_periodictasks_pkey;
       public            aristo    false    249            �           2606    19450 `   django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);
 �   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq;
       public            aristo    false    250    250    250            �           2606    19452 F   django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solarschedule_pkey;
       public            aristo    false    250            �           2606    19454 R   django_celery_results_chordcounter django_celery_results_chordcounter_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_group_id_key UNIQUE (group_id);
 |   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_group_id_key;
       public            aristo    false    252            �           2606    19456 J   django_celery_results_chordcounter django_celery_results_chordcounter_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_pkey;
       public            aristo    false    252            �           2606    19458 P   django_celery_results_groupresult django_celery_results_groupresult_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_group_id_key UNIQUE (group_id);
 z   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_group_id_key;
       public            aristo    false    254            �           2606    19460 H   django_celery_results_groupresult django_celery_results_groupresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_pkey;
       public            aristo    false    254            �           2606    19462 F   django_celery_results_taskresult django_celery_results_taskresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_pkey;
       public            aristo    false    256            �           2606    19464 M   django_celery_results_taskresult django_celery_results_taskresult_task_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);
 w   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_task_id_key;
       public            aristo    false    256            �           2606    19466 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            aristo    false    258    258            �           2606    19468 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            aristo    false    258            �           2606    19470 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            aristo    false    260                       2606    19472 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            aristo    false    262                       2606    19474 (   followup_followup followup_followup_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_pkey;
       public            aristo    false    263            	           2606    19476 8   followup_followupselected followup_followupselected_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupselected_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupselected_pkey;
       public            aristo    false    265                       2606    19478 8   notification_notification notification_notification_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_pkey;
       public            aristo    false    267                       2606    19480 ,   staff_staff_history staff_staff_history_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_pkey;
       public            aristo    false    270            $           2606    19482 (   staff_staff_level staff_staff_level_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_pkey;
       public            aristo    false    273            &           2606    19484 +   staff_staff_level staff_staff_level_uid_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_uid_key UNIQUE (uid);
 U   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_uid_key;
       public            aristo    false    273                       2606    19486    staff_staff staff_staff_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_pkey;
       public            aristo    false    269            0           2606    19488 :   staff_staff_salary_monthly staff_staff_salary_monthly_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_monthly_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_monthly_pkey;
       public            aristo    false    277            5           2606    19490 8   staff_staff_salary_montly staff_staff_salary_montly_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_montly_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_montly_pkey;
       public            aristo    false    279            *           2606    19492 *   staff_staff_salary staff_staff_salary_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_pkey;
       public            aristo    false    275                       2606    19494    staff_staff staff_staff_uid_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_uid_key UNIQUE (uid);
 I   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_uid_key;
       public            aristo    false    269            f           1259    19495    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            aristo    false    209            k           1259    19496 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            aristo    false    211            n           1259    19497 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            aristo    false    211            q           1259    19498 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            aristo    false    213            {           1259    19499 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            aristo    false    216            ~           1259    19500 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            aristo    false    216            �           1259    19501 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            aristo    false    219            �           1259    19502 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            aristo    false    219            x           1259    19503     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            aristo    false    215            �           1259    19504 $   client_client_created_by_id_a8280477    INDEX     g   CREATE INDEX client_client_created_by_id_a8280477 ON public.client_client USING btree (created_by_id);
 8   DROP INDEX public.client_client_created_by_id_a8280477;
       public            aristo    false    221            A           1259    20028 8   client_client_duplicate_su_duplicate_suspect_id_60d3d1f1    INDEX     �   CREATE INDEX client_client_duplicate_su_duplicate_suspect_id_60d3d1f1 ON public.client_client_duplicate_suspect_history USING btree (duplicate_suspect_id);
 L   DROP INDEX public.client_client_duplicate_su_duplicate_suspect_id_60d3d1f1;
       public            aristo    false    284            �           1259    19505 6   client_client_duplicate_suspect_client_new_id_2ed995c6    INDEX     �   CREATE INDEX client_client_duplicate_suspect_client_new_id_2ed995c6 ON public.client_client_duplicate_suspect USING btree (client_new_id);
 J   DROP INDEX public.client_client_duplicate_suspect_client_new_id_2ed995c6;
       public            aristo    false    222            �           1259    19506 6   client_client_duplicate_suspect_client_old_id_bee2d272    INDEX     �   CREATE INDEX client_client_duplicate_suspect_client_old_id_bee2d272 ON public.client_client_duplicate_suspect USING btree (client_old_id);
 J   DROP INDEX public.client_client_duplicate_suspect_client_old_id_bee2d272;
       public            aristo    false    222            �           1259    19507 6   client_client_duplicate_suspect_created_by_id_9da4a207    INDEX     �   CREATE INDEX client_client_duplicate_suspect_created_by_id_9da4a207 ON public.client_client_duplicate_suspect USING btree (created_by_id);
 J   DROP INDEX public.client_client_duplicate_suspect_created_by_id_9da4a207;
       public            aristo    false    222            B           1259    20027 >   client_client_duplicate_suspect_history_created_by_id_ac92a5bc    INDEX     �   CREATE INDEX client_client_duplicate_suspect_history_created_by_id_ac92a5bc ON public.client_client_duplicate_suspect_history USING btree (created_by_id);
 R   DROP INDEX public.client_client_duplicate_suspect_history_created_by_id_ac92a5bc;
       public            aristo    false    284            E           1259    20029 >   client_client_duplicate_suspect_history_updated_by_id_f2be8074    INDEX     �   CREATE INDEX client_client_duplicate_suspect_history_updated_by_id_f2be8074 ON public.client_client_duplicate_suspect_history USING btree (updated_by_id);
 R   DROP INDEX public.client_client_duplicate_suspect_history_updated_by_id_f2be8074;
       public            aristo    false    284            �           1259    19508 6   client_client_duplicate_suspect_updated_by_id_eb786622    INDEX     �   CREATE INDEX client_client_duplicate_suspect_updated_by_id_eb786622 ON public.client_client_duplicate_suspect USING btree (updated_by_id);
 J   DROP INDEX public.client_client_duplicate_suspect_updated_by_id_eb786622;
       public            aristo    false    222            �           1259    19509 )   client_client_followup_client_id_45370856    INDEX     q   CREATE INDEX client_client_followup_client_id_45370856 ON public.client_client_followup USING btree (client_id);
 =   DROP INDEX public.client_client_followup_client_id_45370856;
       public            aristo    false    224            �           1259    19510 -   client_client_followup_created_by_id_57569ec6    INDEX     y   CREATE INDEX client_client_followup_created_by_id_57569ec6 ON public.client_client_followup USING btree (created_by_id);
 A   DROP INDEX public.client_client_followup_created_by_id_57569ec6;
       public            aristo    false    224            �           1259    19511 +   client_client_followup_followup_id_fc5601fd    INDEX     u   CREATE INDEX client_client_followup_followup_id_fc5601fd ON public.client_client_followup USING btree (followup_id);
 ?   DROP INDEX public.client_client_followup_followup_id_fc5601fd;
       public            aristo    false    224            �           1259    19512 (   client_client_followup_staff_id_04b7a4de    INDEX     o   CREATE INDEX client_client_followup_staff_id_04b7a4de ON public.client_client_followup USING btree (staff_id);
 <   DROP INDEX public.client_client_followup_staff_id_04b7a4de;
       public            aristo    false    224            �           1259    19513 -   client_client_followup_updated_by_id_20a2ab61    INDEX     y   CREATE INDEX client_client_followup_updated_by_id_20a2ab61 ON public.client_client_followup USING btree (updated_by_id);
 A   DROP INDEX public.client_client_followup_updated_by_id_20a2ab61;
       public            aristo    false    224            �           1259    19514 (   client_client_journey_client_id_2e449a98    INDEX     o   CREATE INDEX client_client_journey_client_id_2e449a98 ON public.client_client_journey USING btree (client_id);
 <   DROP INDEX public.client_client_journey_client_id_2e449a98;
       public            aristo    false    227            �           1259    19515 ,   client_client_journey_created_by_id_88c21422    INDEX     w   CREATE INDEX client_client_journey_created_by_id_88c21422 ON public.client_client_journey USING btree (created_by_id);
 @   DROP INDEX public.client_client_journey_created_by_id_88c21422;
       public            aristo    false    227            �           1259    19516 '   client_client_journey_staff_id_6ff5bed2    INDEX     m   CREATE INDEX client_client_journey_staff_id_6ff5bed2 ON public.client_client_journey USING btree (staff_id);
 ;   DROP INDEX public.client_client_journey_staff_id_6ff5bed2;
       public            aristo    false    227            �           1259    19517 ,   client_client_journey_updated_by_id_1f07dea5    INDEX     w   CREATE INDEX client_client_journey_updated_by_id_1f07dea5 ON public.client_client_journey USING btree (updated_by_id);
 @   DROP INDEX public.client_client_journey_updated_by_id_1f07dea5;
       public            aristo    false    227            �           1259    19518 )   client_client_schedule_client_id_e3ee1cbc    INDEX     q   CREATE INDEX client_client_schedule_client_id_e3ee1cbc ON public.client_client_schedule USING btree (client_id);
 =   DROP INDEX public.client_client_schedule_client_id_e3ee1cbc;
       public            aristo    false    229            �           1259    19519 -   client_client_schedule_created_by_id_9b078863    INDEX     y   CREATE INDEX client_client_schedule_created_by_id_9b078863 ON public.client_client_schedule USING btree (created_by_id);
 A   DROP INDEX public.client_client_schedule_created_by_id_9b078863;
       public            aristo    false    229            �           1259    19520 (   client_client_schedule_staff_id_92fd05bd    INDEX     o   CREATE INDEX client_client_schedule_staff_id_92fd05bd ON public.client_client_schedule USING btree (staff_id);
 <   DROP INDEX public.client_client_schedule_staff_id_92fd05bd;
       public            aristo    false    229            �           1259    19521 -   client_client_schedule_updated_by_id_89e26ce0    INDEX     y   CREATE INDEX client_client_schedule_updated_by_id_89e26ce0 ON public.client_client_schedule USING btree (updated_by_id);
 A   DROP INDEX public.client_client_schedule_updated_by_id_89e26ce0;
       public            aristo    false    229            7           1259    19999 )   client_client_scramble_client_id_a69905e4    INDEX     q   CREATE INDEX client_client_scramble_client_id_a69905e4 ON public.client_client_scramble USING btree (client_id);
 =   DROP INDEX public.client_client_scramble_client_id_a69905e4;
       public            aristo    false    282            8           1259    20000 -   client_client_scramble_created_by_id_a3551279    INDEX     y   CREATE INDEX client_client_scramble_created_by_id_a3551279 ON public.client_client_scramble USING btree (created_by_id);
 A   DROP INDEX public.client_client_scramble_created_by_id_a3551279;
       public            aristo    false    282            9           1259    20001 -   client_client_scramble_from_staff_id_f9c3383d    INDEX     y   CREATE INDEX client_client_scramble_from_staff_id_f9c3383d ON public.client_client_scramble USING btree (from_staff_id);
 A   DROP INDEX public.client_client_scramble_from_staff_id_f9c3383d;
       public            aristo    false    282            <           1259    20002 /   client_client_scramble_staff_parent_id_feab11e6    INDEX     }   CREATE INDEX client_client_scramble_staff_parent_id_feab11e6 ON public.client_client_scramble USING btree (staff_parent_id);
 C   DROP INDEX public.client_client_scramble_staff_parent_id_feab11e6;
       public            aristo    false    282            =           1259    20003 +   client_client_scramble_to_staff_id_fcdf1967    INDEX     u   CREATE INDEX client_client_scramble_to_staff_id_fcdf1967 ON public.client_client_scramble USING btree (to_staff_id);
 ?   DROP INDEX public.client_client_scramble_to_staff_id_fcdf1967;
       public            aristo    false    282            @           1259    20004 -   client_client_scramble_updated_by_id_6bd8c389    INDEX     y   CREATE INDEX client_client_scramble_updated_by_id_6bd8c389 ON public.client_client_scramble USING btree (updated_by_id);
 A   DROP INDEX public.client_client_scramble_updated_by_id_6bd8c389;
       public            aristo    false    282            �           1259    19522 &   client_client_staff_client_id_196dca78    INDEX     k   CREATE INDEX client_client_staff_client_id_196dca78 ON public.client_client_staff USING btree (client_id);
 :   DROP INDEX public.client_client_staff_client_id_196dca78;
       public            aristo    false    231            �           1259    19523 *   client_client_staff_created_by_id_ef63d6bf    INDEX     s   CREATE INDEX client_client_staff_created_by_id_ef63d6bf ON public.client_client_staff USING btree (created_by_id);
 >   DROP INDEX public.client_client_staff_created_by_id_ef63d6bf;
       public            aristo    false    231            �           1259    19524 %   client_client_staff_staff_id_2a3b6b6e    INDEX     i   CREATE INDEX client_client_staff_staff_id_2a3b6b6e ON public.client_client_staff USING btree (staff_id);
 9   DROP INDEX public.client_client_staff_staff_id_2a3b6b6e;
       public            aristo    false    231            �           1259    19525 *   client_client_staff_updated_by_id_35a02e55    INDEX     s   CREATE INDEX client_client_staff_updated_by_id_35a02e55 ON public.client_client_staff USING btree (updated_by_id);
 >   DROP INDEX public.client_client_staff_updated_by_id_35a02e55;
       public            aristo    false    231            J           1259    35589 1   client_client_staff_voip_client_staff_id_ab7aef7e    INDEX     �   CREATE INDEX client_client_staff_voip_client_staff_id_ab7aef7e ON public.client_client_staff_voip USING btree (client_staff_id);
 E   DROP INDEX public.client_client_staff_voip_client_staff_id_ab7aef7e;
       public            aristo    false    288            K           1259    35590 /   client_client_staff_voip_created_by_id_76d9dc5f    INDEX     }   CREATE INDEX client_client_staff_voip_created_by_id_76d9dc5f ON public.client_client_staff_voip USING btree (created_by_id);
 C   DROP INDEX public.client_client_staff_voip_created_by_id_76d9dc5f;
       public            aristo    false    288            P           1259    35591 /   client_client_staff_voip_updated_by_id_4451eaf4    INDEX     }   CREATE INDEX client_client_staff_voip_updated_by_id_4451eaf4 ON public.client_client_staff_voip USING btree (updated_by_id);
 C   DROP INDEX public.client_client_staff_voip_updated_by_id_4451eaf4;
       public            aristo    false    288            �           1259    19526 $   client_client_updated_by_id_12f0c54f    INDEX     g   CREATE INDEX client_client_updated_by_id_12f0c54f ON public.client_client USING btree (updated_by_id);
 8   DROP INDEX public.client_client_updated_by_id_12f0c54f;
       public            aristo    false    221            �           1259    19527 3   core_history_syncdata_magnet_created_by_id_d178392e    INDEX     �   CREATE INDEX core_history_syncdata_magnet_created_by_id_d178392e ON public.core_history_syncdata_magnet USING btree (created_by_id);
 G   DROP INDEX public.core_history_syncdata_magnet_created_by_id_d178392e;
       public            aristo    false    233            �           1259    19528 3   core_history_syncdata_magnet_updated_by_id_a7d3bab4    INDEX     �   CREATE INDEX core_history_syncdata_magnet_updated_by_id_a7d3bab4 ON public.core_history_syncdata_magnet USING btree (updated_by_id);
 G   DROP INDEX public.core_history_syncdata_magnet_updated_by_id_a7d3bab4;
       public            aristo    false    233            �           1259    19529 #   core_profile_created_by_id_d0c22ea6    INDEX     e   CREATE INDEX core_profile_created_by_id_d0c22ea6 ON public.core_profile USING btree (created_by_id);
 7   DROP INDEX public.core_profile_created_by_id_d0c22ea6;
       public            aristo    false    235            �           1259    19530     core_profile_email_858298b3_like    INDEX     n   CREATE INDEX core_profile_email_858298b3_like ON public.core_profile USING btree (email varchar_pattern_ops);
 4   DROP INDEX public.core_profile_email_858298b3_like;
       public            aristo    false    235            �           1259    19531 #   core_profile_phone_no_312b2c31_like    INDEX     t   CREATE INDEX core_profile_phone_no_312b2c31_like ON public.core_profile USING btree (phone_no varchar_pattern_ops);
 7   DROP INDEX public.core_profile_phone_no_312b2c31_like;
       public            aristo    false    235            �           1259    19532 #   core_profile_updated_by_id_f1bd9ad3    INDEX     e   CREATE INDEX core_profile_updated_by_id_f1bd9ad3 ON public.core_profile USING btree (updated_by_id);
 7   DROP INDEX public.core_profile_updated_by_id_f1bd9ad3;
       public            aristo    false    235            F           1259    35560 $   core_settings_created_by_id_768dc1de    INDEX     g   CREATE INDEX core_settings_created_by_id_768dc1de ON public.core_settings USING btree (created_by_id);
 8   DROP INDEX public.core_settings_created_by_id_768dc1de;
       public            aristo    false    286            I           1259    35561 $   core_settings_updated_by_id_45cd8687    INDEX     g   CREATE INDEX core_settings_updated_by_id_45cd8687 ON public.core_settings USING btree (updated_by_id);
 8   DROP INDEX public.core_settings_updated_by_id_45cd8687;
       public            aristo    false    286            �           1259    19533 ,   core_sync_data_magnet_created_by_id_411b3df8    INDEX     w   CREATE INDEX core_sync_data_magnet_created_by_id_411b3df8 ON public.core_sync_data_magnet USING btree (created_by_id);
 @   DROP INDEX public.core_sync_data_magnet_created_by_id_411b3df8;
       public            aristo    false    237            �           1259    19534 ,   core_sync_data_magnet_updated_by_id_44e7c6a9    INDEX     w   CREATE INDEX core_sync_data_magnet_updated_by_id_44e7c6a9 ON public.core_sync_data_magnet USING btree (updated_by_id);
 @   DROP INDEX public.core_sync_data_magnet_updated_by_id_44e7c6a9;
       public            aristo    false    237            �           1259    19535 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            aristo    false    239            �           1259    19536 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            aristo    false    239            �           1259    19537    django_cele_date_cr_bd6c1d_idx    INDEX     t   CREATE INDEX django_cele_date_cr_bd6c1d_idx ON public.django_celery_results_groupresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_bd6c1d_idx;
       public            aristo    false    254            �           1259    19538    django_cele_date_cr_f04a50_idx    INDEX     s   CREATE INDEX django_cele_date_cr_f04a50_idx ON public.django_celery_results_taskresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_f04a50_idx;
       public            aristo    false    256            �           1259    19539    django_cele_date_do_caae0e_idx    INDEX     q   CREATE INDEX django_cele_date_do_caae0e_idx ON public.django_celery_results_groupresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_caae0e_idx;
       public            aristo    false    254            �           1259    19540    django_cele_date_do_f59aad_idx    INDEX     p   CREATE INDEX django_cele_date_do_f59aad_idx ON public.django_celery_results_taskresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_f59aad_idx;
       public            aristo    false    256            �           1259    19541    django_cele_status_9b6201_idx    INDEX     l   CREATE INDEX django_cele_status_9b6201_idx ON public.django_celery_results_taskresult USING btree (status);
 1   DROP INDEX public.django_cele_status_9b6201_idx;
       public            aristo    false    256            �           1259    19542    django_cele_task_na_08aec9_idx    INDEX     p   CREATE INDEX django_cele_task_na_08aec9_idx ON public.django_celery_results_taskresult USING btree (task_name);
 2   DROP INDEX public.django_cele_task_na_08aec9_idx;
       public            aristo    false    256            �           1259    19543    django_cele_worker_d54dd8_idx    INDEX     l   CREATE INDEX django_cele_worker_d54dd8_idx ON public.django_celery_results_taskresult USING btree (worker);
 1   DROP INDEX public.django_cele_worker_d54dd8_idx;
       public            aristo    false    256            �           1259    19544 3   django_celery_beat_periodictask_clocked_id_47a69f82    INDEX     �   CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);
 G   DROP INDEX public.django_celery_beat_periodictask_clocked_id_47a69f82;
       public            aristo    false    247            �           1259    19545 3   django_celery_beat_periodictask_crontab_id_d3cba168    INDEX     �   CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);
 G   DROP INDEX public.django_celery_beat_periodictask_crontab_id_d3cba168;
       public            aristo    false    247            �           1259    19546 4   django_celery_beat_periodictask_interval_id_a8ca27da    INDEX     �   CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);
 H   DROP INDEX public.django_celery_beat_periodictask_interval_id_a8ca27da;
       public            aristo    false    247            �           1259    19547 2   django_celery_beat_periodictask_name_265a36b7_like    INDEX     �   CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);
 F   DROP INDEX public.django_celery_beat_periodictask_name_265a36b7_like;
       public            aristo    false    247            �           1259    19548 1   django_celery_beat_periodictask_solar_id_a87ce72c    INDEX     �   CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);
 E   DROP INDEX public.django_celery_beat_periodictask_solar_id_a87ce72c;
       public            aristo    false    247            �           1259    19549 9   django_celery_results_chordcounter_group_id_1f70858c_like    INDEX     �   CREATE INDEX django_celery_results_chordcounter_group_id_1f70858c_like ON public.django_celery_results_chordcounter USING btree (group_id varchar_pattern_ops);
 M   DROP INDEX public.django_celery_results_chordcounter_group_id_1f70858c_like;
       public            aristo    false    252            �           1259    19550 8   django_celery_results_groupresult_group_id_a085f1a9_like    INDEX     �   CREATE INDEX django_celery_results_groupresult_group_id_a085f1a9_like ON public.django_celery_results_groupresult USING btree (group_id varchar_pattern_ops);
 L   DROP INDEX public.django_celery_results_groupresult_group_id_a085f1a9_like;
       public            aristo    false    254            �           1259    19551 6   django_celery_results_taskresult_task_id_de0d95bf_like    INDEX     �   CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);
 J   DROP INDEX public.django_celery_results_taskresult_task_id_de0d95bf_like;
       public            aristo    false    256            �           1259    19552 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            aristo    false    262                       1259    19553 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            aristo    false    262                       1259    19554 (   followup_followup_created_by_id_bd33bd23    INDEX     o   CREATE INDEX followup_followup_created_by_id_bd33bd23 ON public.followup_followup USING btree (created_by_id);
 <   DROP INDEX public.followup_followup_created_by_id_bd33bd23;
       public            aristo    false    263                       1259    19555 (   followup_followup_updated_by_id_aeb66564    INDEX     o   CREATE INDEX followup_followup_updated_by_id_aeb66564 ON public.followup_followup USING btree (updated_by_id);
 <   DROP INDEX public.followup_followup_updated_by_id_aeb66564;
       public            aristo    false    263                       1259    19556 0   followup_followupselected_created_by_id_d6e0a19e    INDEX        CREATE INDEX followup_followupselected_created_by_id_d6e0a19e ON public.followup_followupselected USING btree (created_by_id);
 D   DROP INDEX public.followup_followupselected_created_by_id_d6e0a19e;
       public            aristo    false    265            
           1259    19557 0   followup_followupselected_updated_by_id_f571c189    INDEX        CREATE INDEX followup_followupselected_updated_by_id_f571c189 ON public.followup_followupselected USING btree (updated_by_id);
 D   DROP INDEX public.followup_followupselected_updated_by_id_f571c189;
       public            aristo    false    265                       1259    19558 ,   notification_notification_client_id_56858ebd    INDEX     w   CREATE INDEX notification_notification_client_id_56858ebd ON public.notification_notification USING btree (client_id);
 @   DROP INDEX public.notification_notification_client_id_56858ebd;
       public            aristo    false    267                       1259    19559 5   notification_notification_client_schedule_id_cba97593    INDEX     �   CREATE INDEX notification_notification_client_schedule_id_cba97593 ON public.notification_notification USING btree (client_schedule_id);
 I   DROP INDEX public.notification_notification_client_schedule_id_cba97593;
       public            aristo    false    267                       1259    19560 0   notification_notification_created_by_id_66da0796    INDEX        CREATE INDEX notification_notification_created_by_id_66da0796 ON public.notification_notification USING btree (created_by_id);
 D   DROP INDEX public.notification_notification_created_by_id_66da0796;
       public            aristo    false    267                       1259    19561 +   notification_notification_staff_id_8c97b845    INDEX     u   CREATE INDEX notification_notification_staff_id_8c97b845 ON public.notification_notification USING btree (staff_id);
 ?   DROP INDEX public.notification_notification_staff_id_8c97b845;
       public            aristo    false    267                       1259    19562 0   notification_notification_updated_by_id_08647d1b    INDEX        CREATE INDEX notification_notification_updated_by_id_08647d1b ON public.notification_notification USING btree (updated_by_id);
 D   DROP INDEX public.notification_notification_updated_by_id_08647d1b;
       public            aristo    false    267                       1259    19563 "   staff_staff_created_by_id_750bb59d    INDEX     c   CREATE INDEX staff_staff_created_by_id_750bb59d ON public.staff_staff USING btree (created_by_id);
 6   DROP INDEX public.staff_staff_created_by_id_750bb59d;
       public            aristo    false    269                       1259    19564 +   staff_staff_history_child_staff_id_339b898a    INDEX     u   CREATE INDEX staff_staff_history_child_staff_id_339b898a ON public.staff_staff_history USING btree (child_staff_id);
 ?   DROP INDEX public.staff_staff_history_child_staff_id_339b898a;
       public            aristo    false    270                       1259    19565 *   staff_staff_history_created_by_id_d7ef2079    INDEX     s   CREATE INDEX staff_staff_history_created_by_id_d7ef2079 ON public.staff_staff_history USING btree (created_by_id);
 >   DROP INDEX public.staff_staff_history_created_by_id_d7ef2079;
       public            aristo    false    270                       1259    19566 ,   staff_staff_history_parent_staff_id_a548da9e    INDEX     w   CREATE INDEX staff_staff_history_parent_staff_id_a548da9e ON public.staff_staff_history USING btree (parent_staff_id);
 @   DROP INDEX public.staff_staff_history_parent_staff_id_a548da9e;
       public            aristo    false    270                        1259    19567 +   staff_staff_history_staff_level_id_01fbd862    INDEX     u   CREATE INDEX staff_staff_history_staff_level_id_01fbd862 ON public.staff_staff_history USING btree (staff_level_id);
 ?   DROP INDEX public.staff_staff_history_staff_level_id_01fbd862;
       public            aristo    false    270            !           1259    19568 *   staff_staff_history_updated_by_id_0a1a85b8    INDEX     s   CREATE INDEX staff_staff_history_updated_by_id_0a1a85b8 ON public.staff_staff_history USING btree (updated_by_id);
 >   DROP INDEX public.staff_staff_history_updated_by_id_0a1a85b8;
       public            aristo    false    270            "           1259    19569 (   staff_staff_level_created_by_id_591009cc    INDEX     o   CREATE INDEX staff_staff_level_created_by_id_591009cc ON public.staff_staff_level USING btree (created_by_id);
 <   DROP INDEX public.staff_staff_level_created_by_id_591009cc;
       public            aristo    false    273            '           1259    19570 (   staff_staff_level_updated_by_id_27db31c0    INDEX     o   CREATE INDEX staff_staff_level_updated_by_id_27db31c0 ON public.staff_staff_level USING btree (updated_by_id);
 <   DROP INDEX public.staff_staff_level_updated_by_id_27db31c0;
       public            aristo    false    273                       1259    19571    staff_staff_profile_id_f1607ae4    INDEX     ]   CREATE INDEX staff_staff_profile_id_f1607ae4 ON public.staff_staff USING btree (profile_id);
 3   DROP INDEX public.staff_staff_profile_id_f1607ae4;
       public            aristo    false    269            (           1259    19572 )   staff_staff_salary_created_by_id_79ac0491    INDEX     q   CREATE INDEX staff_staff_salary_created_by_id_79ac0491 ON public.staff_staff_salary USING btree (created_by_id);
 =   DROP INDEX public.staff_staff_salary_created_by_id_79ac0491;
       public            aristo    false    275            .           1259    19573 1   staff_staff_salary_monthly_created_by_id_6b50431d    INDEX     �   CREATE INDEX staff_staff_salary_monthly_created_by_id_6b50431d ON public.staff_staff_salary_monthly USING btree (created_by_id);
 E   DROP INDEX public.staff_staff_salary_monthly_created_by_id_6b50431d;
       public            aristo    false    277            1           1259    19574 ,   staff_staff_salary_monthly_staff_id_9d6d9629    INDEX     w   CREATE INDEX staff_staff_salary_monthly_staff_id_9d6d9629 ON public.staff_staff_salary_monthly USING btree (staff_id);
 @   DROP INDEX public.staff_staff_salary_monthly_staff_id_9d6d9629;
       public            aristo    false    277            2           1259    19575 1   staff_staff_salary_monthly_updated_by_id_22beedbc    INDEX     �   CREATE INDEX staff_staff_salary_monthly_updated_by_id_22beedbc ON public.staff_staff_salary_monthly USING btree (updated_by_id);
 E   DROP INDEX public.staff_staff_salary_monthly_updated_by_id_22beedbc;
       public            aristo    false    277            3           1259    19576 0   staff_staff_salary_montly_created_by_id_f9fa18f6    INDEX        CREATE INDEX staff_staff_salary_montly_created_by_id_f9fa18f6 ON public.staff_staff_salary_montly USING btree (created_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_created_by_id_f9fa18f6;
       public            aristo    false    279            6           1259    19577 0   staff_staff_salary_montly_updated_by_id_c063865d    INDEX        CREATE INDEX staff_staff_salary_montly_updated_by_id_c063865d ON public.staff_staff_salary_montly USING btree (updated_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_updated_by_id_c063865d;
       public            aristo    false    279            +           1259    19578 $   staff_staff_salary_staff_id_ff8bde85    INDEX     g   CREATE INDEX staff_staff_salary_staff_id_ff8bde85 ON public.staff_staff_salary USING btree (staff_id);
 8   DROP INDEX public.staff_staff_salary_staff_id_ff8bde85;
       public            aristo    false    275            ,           1259    19579 *   staff_staff_salary_staff_level_id_1864b0fd    INDEX     s   CREATE INDEX staff_staff_salary_staff_level_id_1864b0fd ON public.staff_staff_salary USING btree (staff_level_id);
 >   DROP INDEX public.staff_staff_salary_staff_level_id_1864b0fd;
       public            aristo    false    275            -           1259    19580 )   staff_staff_salary_updated_by_id_35738d50    INDEX     q   CREATE INDEX staff_staff_salary_updated_by_id_35738d50 ON public.staff_staff_salary USING btree (updated_by_id);
 =   DROP INDEX public.staff_staff_salary_updated_by_id_35738d50;
       public            aristo    false    275                       1259    19581 #   staff_staff_staff_level_id_02e5808b    INDEX     e   CREATE INDEX staff_staff_staff_level_id_02e5808b ON public.staff_staff USING btree (staff_level_id);
 7   DROP INDEX public.staff_staff_staff_level_id_02e5808b;
       public            aristo    false    269                       1259    19582 $   staff_staff_staff_parent_id_3a0ea1e3    INDEX     g   CREATE INDEX staff_staff_staff_parent_id_3a0ea1e3 ON public.staff_staff USING btree (staff_parent_id);
 8   DROP INDEX public.staff_staff_staff_parent_id_3a0ea1e3;
       public            aristo    false    269                       1259    19583 "   staff_staff_updated_by_id_ae4985b6    INDEX     c   CREATE INDEX staff_staff_updated_by_id_ae4985b6 ON public.staff_staff USING btree (updated_by_id);
 6   DROP INDEX public.staff_staff_updated_by_id_ae4985b6;
       public            aristo    false    269            Q           2606    19584 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          aristo    false    213    3701    211            R           2606    19589 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          aristo    false    209    3690    211            S           2606    19594 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          aristo    false    3836    258    213            T           2606    19599 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          aristo    false    3690    209    216            U           2606    19604 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          aristo    false    216    215    3703            V           2606    19609 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          aristo    false    3701    213    219            W           2606    19614 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          aristo    false    3703    215    219            X           2606    19619 B   client_client client_client_created_by_id_a8280477_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id;
       public          aristo    false    3703    215    221            Z           2606    19624 X   client_client_duplicate_suspect client_client_duplic_client_new_id_2ed995c6_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_client_new_id_2ed995c6_fk_client_cl FOREIGN KEY (client_new_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_client_new_id_2ed995c6_fk_client_cl;
       public          aristo    false    3721    222    221            [           2606    19629 X   client_client_duplicate_suspect client_client_duplic_client_old_id_bee2d272_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_client_old_id_bee2d272_fk_client_cl FOREIGN KEY (client_old_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_client_old_id_bee2d272_fk_client_cl;
       public          aristo    false    221    222    3721            \           2606    19634 X   client_client_duplicate_suspect client_client_duplic_created_by_id_9da4a207_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_created_by_id_9da4a207_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_created_by_id_9da4a207_fk_auth_user;
       public          aristo    false    3703    222    215            �           2606    20012 `   client_client_duplicate_suspect_history client_client_duplic_created_by_id_ac92a5bc_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history
    ADD CONSTRAINT client_client_duplic_created_by_id_ac92a5bc_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history DROP CONSTRAINT client_client_duplic_created_by_id_ac92a5bc_fk_auth_user;
       public          aristo    false    215    3703    284            �           2606    20017 g   client_client_duplicate_suspect_history client_client_duplic_duplicate_suspect_id_60d3d1f1_fk_client_cl    FK CONSTRAINT       ALTER TABLE ONLY public.client_client_duplicate_suspect_history
    ADD CONSTRAINT client_client_duplic_duplicate_suspect_id_60d3d1f1_fk_client_cl FOREIGN KEY (duplicate_suspect_id) REFERENCES public.client_client_duplicate_suspect(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history DROP CONSTRAINT client_client_duplic_duplicate_suspect_id_60d3d1f1_fk_client_cl;
       public          aristo    false    284    222    3729            ]           2606    19639 X   client_client_duplicate_suspect client_client_duplic_updated_by_id_eb786622_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_updated_by_id_eb786622_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_updated_by_id_eb786622_fk_auth_user;
       public          aristo    false    222    3703    215            �           2606    20022 `   client_client_duplicate_suspect_history client_client_duplic_updated_by_id_f2be8074_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history
    ADD CONSTRAINT client_client_duplic_updated_by_id_f2be8074_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect_history DROP CONSTRAINT client_client_duplic_updated_by_id_f2be8074_fk_auth_user;
       public          aristo    false    3703    215    284            ^           2606    19644 M   client_client_followup client_client_follow_followup_id_fc5601fd_fk_followup_    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_ FOREIGN KEY (followup_id) REFERENCES public.followup_followup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_;
       public          aristo    false    3845    224    263            _           2606    19649 T   client_client_followup client_client_followup_client_id_45370856_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id;
       public          aristo    false    224    3721    221            `           2606    19654 T   client_client_followup client_client_followup_created_by_id_57569ec6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id;
       public          aristo    false    3703    215    224            a           2606    19659 Q   client_client_followup client_client_followup_staff_id_04b7a4de_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id;
       public          aristo    false    3860    224    269            b           2606    19664 T   client_client_followup client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id;
       public          aristo    false    215    224    3703            c           2606    19669 R   client_client_journey client_client_journey_client_id_2e449a98_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id;
       public          aristo    false    221    227    3721            d           2606    19674 R   client_client_journey client_client_journey_created_by_id_88c21422_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id;
       public          aristo    false    215    3703    227            f           2606    19955 O   client_client_journey client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id;
       public          aristo    false    3860    227    269            e           2606    19684 R   client_client_journey client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id;
       public          aristo    false    227    215    3703            g           2606    19689 T   client_client_schedule client_client_schedule_client_id_e3ee1cbc_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id;
       public          aristo    false    3721    229    221            h           2606    19694 T   client_client_schedule client_client_schedule_created_by_id_9b078863_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id;
       public          aristo    false    229    215    3703            i           2606    19699 Q   client_client_schedule client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id;
       public          aristo    false    3860    229    269            j           2606    19704 T   client_client_schedule client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id;
       public          aristo    false    215    229    3703            �           2606    19984 Q   client_client_scramble client_client_scramb_staff_parent_id_feab11e6_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramb_staff_parent_id_feab11e6_fk_staff_sta FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramb_staff_parent_id_feab11e6_fk_staff_sta;
       public          aristo    false    3860    282    269            �           2606    19969 T   client_client_scramble client_client_scramble_client_id_a69905e4_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_client_id_a69905e4_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_client_id_a69905e4_fk_client_client_id;
       public          aristo    false    3721    221    282            �           2606    19974 T   client_client_scramble client_client_scramble_created_by_id_a3551279_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_created_by_id_a3551279_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_created_by_id_a3551279_fk_auth_user_id;
       public          aristo    false    3703    282    215            �           2606    19979 V   client_client_scramble client_client_scramble_from_staff_id_f9c3383d_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_from_staff_id_f9c3383d_fk_staff_staff_id FOREIGN KEY (from_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_from_staff_id_f9c3383d_fk_staff_staff_id;
       public          aristo    false    3860    282    269            �           2606    19989 T   client_client_scramble client_client_scramble_to_staff_id_fcdf1967_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_to_staff_id_fcdf1967_fk_staff_staff_id FOREIGN KEY (to_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_to_staff_id_fcdf1967_fk_staff_staff_id;
       public          aristo    false    3860    269    282            �           2606    19994 T   client_client_scramble client_client_scramble_updated_by_id_6bd8c389_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_scramble
    ADD CONSTRAINT client_client_scramble_updated_by_id_6bd8c389_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_scramble DROP CONSTRAINT client_client_scramble_updated_by_id_6bd8c389_fk_auth_user_id;
       public          aristo    false    282    215    3703            �           2606    35574 S   client_client_staff_voip client_client_staff__client_staff_id_ab7aef7e_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff_voip
    ADD CONSTRAINT client_client_staff__client_staff_id_ab7aef7e_fk_client_cl FOREIGN KEY (client_staff_id) REFERENCES public.client_client_staff(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.client_client_staff_voip DROP CONSTRAINT client_client_staff__client_staff_id_ab7aef7e_fk_client_cl;
       public          aristo    false    3759    231    288            k           2606    19709 N   client_client_staff client_client_staff_client_id_196dca78_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id;
       public          aristo    false    231    221    3721            l           2606    19714 N   client_client_staff client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id;
       public          aristo    false    231    215    3703            m           2606    19719 K   client_client_staff client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id;
       public          aristo    false    3860    231    269            n           2606    19724 N   client_client_staff client_client_staff_updated_by_id_35a02e55_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id;
       public          aristo    false    3703    231    215            �           2606    35579 X   client_client_staff_voip client_client_staff_voip_created_by_id_76d9dc5f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff_voip
    ADD CONSTRAINT client_client_staff_voip_created_by_id_76d9dc5f_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_staff_voip DROP CONSTRAINT client_client_staff_voip_created_by_id_76d9dc5f_fk_auth_user_id;
       public          aristo    false    288    215    3703            �           2606    35584 X   client_client_staff_voip client_client_staff_voip_updated_by_id_4451eaf4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff_voip
    ADD CONSTRAINT client_client_staff_voip_updated_by_id_4451eaf4_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_staff_voip DROP CONSTRAINT client_client_staff_voip_updated_by_id_4451eaf4_fk_auth_user_id;
       public          aristo    false    3703    215    288            Y           2606    19729 B   client_client client_client_updated_by_id_12f0c54f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id;
       public          aristo    false    3703    215    221            o           2606    19734 U   core_history_syncdata_magnet core_history_syncdat_created_by_id_d178392e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdat_created_by_id_d178392e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdat_created_by_id_d178392e_fk_auth_user;
       public          aristo    false    3703    233    215            p           2606    19739 U   core_history_syncdata_magnet core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user;
       public          aristo    false    215    3703    233            q           2606    19744 @   core_profile core_profile_created_by_id_d0c22ea6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id;
       public          aristo    false    215    235    3703            r           2606    19749 @   core_profile core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id;
       public          aristo    false    215    235    3703            s           2606    19754 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public          aristo    false    235    215    3703            �           2606    35550 B   core_settings core_settings_created_by_id_768dc1de_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_settings
    ADD CONSTRAINT core_settings_created_by_id_768dc1de_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.core_settings DROP CONSTRAINT core_settings_created_by_id_768dc1de_fk_auth_user_id;
       public          aristo    false    286    215    3703            �           2606    35555 B   core_settings core_settings_updated_by_id_45cd8687_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_settings
    ADD CONSTRAINT core_settings_updated_by_id_45cd8687_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.core_settings DROP CONSTRAINT core_settings_updated_by_id_45cd8687_fk_auth_user_id;
       public          aristo    false    3703    286    215            t           2606    19759 R   core_sync_data_magnet core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id;
       public          aristo    false    215    237    3703            u           2606    19764 R   core_sync_data_magnet core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id;
       public          aristo    false    3703    215    237            v           2606    19769 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          aristo    false    239    3836    258            w           2606    19774 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          aristo    false    3703    215    239            x           2606    19779 U   django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce;
       public          aristo    false    3791    247    241            y           2606    19784 U   django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce;
       public          aristo    false    243    247    3793            z           2606    19789 V   django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce;
       public          aristo    false    247    245    3795            {           2606    19794 S   django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce;
       public          aristo    false    250    247    3810            |           2606    19799 J   followup_followup followup_followup_created_by_id_bd33bd23_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id;
       public          aristo    false    3703    263    215            }           2606    19804 J   followup_followup followup_followup_updated_by_id_aeb66564_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id;
       public          aristo    false    3703    263    215            ~           2606    19809 R   followup_followupselected followup_followupsel_created_by_id_d6e0a19e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user;
       public          aristo    false    265    3703    215                       2606    19814 R   followup_followupselected followup_followupsel_updated_by_id_f571c189_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user;
       public          aristo    false    3703    215    265            �           2606    19819 N   notification_notification notification_notific_client_id_56858ebd_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl;
       public          aristo    false    3721    221    267            �           2606    19824 W   notification_notification notification_notific_client_schedule_id_cba97593_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl FOREIGN KEY (client_schedule_id) REFERENCES public.client_client_schedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl;
       public          aristo    false    3751    267    229            �           2606    19829 R   notification_notification notification_notific_created_by_id_66da0796_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user;
       public          aristo    false    267    3703    215            �           2606    19834 R   notification_notification notification_notific_updated_by_id_08647d1b_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user;
       public          aristo    false    215    3703    267            �           2606    19839 W   notification_notification notification_notification_staff_id_8c97b845_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id;
       public          aristo    false    267    3860    269            �           2606    19844 >   staff_staff staff_staff_created_by_id_750bb59d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id;
       public          aristo    false    215    3703    269            �           2606    19849 Q   staff_staff_history staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id FOREIGN KEY (child_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id;
       public          aristo    false    270    269    3860            �           2606    19854 N   staff_staff_history staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id;
       public          aristo    false    3703    215    270            �           2606    19859 R   staff_staff_history staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id FOREIGN KEY (parent_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id;
       public          aristo    false    3860    270    269            �           2606    19864 L   staff_staff_history staff_staff_history_staff_level_id_01fbd862_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta;
       public          aristo    false    270    3876    273            �           2606    19869 N   staff_staff_history staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id;
       public          aristo    false    215    270    3703            �           2606    19874 J   staff_staff_level staff_staff_level_created_by_id_591009cc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id;
       public          aristo    false    273    3703    215            �           2606    19879 J   staff_staff_level staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id;
       public          aristo    false    215    273    3703            �           2606    19884 >   staff_staff staff_staff_profile_id_f1607ae4_fk_core_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id FOREIGN KEY (profile_id) REFERENCES public.core_profile(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id;
       public          aristo    false    3776    269    235            �           2606    19889 L   staff_staff_salary staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id;
       public          aristo    false    275    3703    215            �           2606    19894 S   staff_staff_salary_monthly staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user;
       public          aristo    false    277    3703    215            �           2606    19899 R   staff_staff_salary_montly staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user;
       public          aristo    false    215    279    3703            �           2606    19904 S   staff_staff_salary_monthly staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user;
       public          aristo    false    277    3703    215            �           2606    19909 R   staff_staff_salary_montly staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user;
       public          aristo    false    279    215    3703            �           2606    19914 Y   staff_staff_salary_monthly staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id;
       public          aristo    false    277    269    3860            �           2606    19919 I   staff_staff_salary staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id;
       public          aristo    false    3860    269    275            �           2606    19924 J   staff_staff_salary staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta;
       public          aristo    false    3876    275    273            �           2606    19929 L   staff_staff_salary staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id;
       public          aristo    false    3703    275    215            �           2606    19934 G   staff_staff staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id;
       public          aristo    false    3876    273    269            �           2606    19939 B   staff_staff staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id;
       public          aristo    false    269    269    3860            �           2606    19944 >   staff_staff staff_staff_updated_by_id_ae4985b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id;
       public          aristo    false    3703    215    269            3      x������ � �      5      x������ � �      7   �  x��Y]r�,|�S�_!��y��U.�V�*�K�����Fɛ�n�-30�����w���Ʒ]w_�/e�k_\�7u�!�����T��@끷n�
]X{�g��#��#�I٣�>�y�ǻ���ܡ�X�:�=a}��%�׈pMR�6�χ�^������� k���*K� ��mR�I�^��S�?F��p�O << ���0�O����m�|=:u�
�k��挅00"��bxЇ��>�dh/�`MR=w�_=z���Y�:���y	��zyU	�W��8���A��t7u��b��Y��L�Lϛ*YM�N��)m���b�5�vd���J�Fj�#g��_/�[����G�v�ՄE���Э-�)�JA%�&R��)�(EbXP-G�c_��SnO�;hhjK"���q$".�Q$"T�5#&G�{?/��u�'N��X�ZM���y���T$���
�nN������ٜ&��Ҿ�*�=��5����.`H�'L\_��9!�B
�Uq��g7(c����҇}!	���H0�>D�2#�bb<k�`˕��Ю�Ň;	��l��>Ԃab��q�	s�|�caY�������9���iz�^�����Rk��߰�
'�h��e��t�c%x@b"������D����$B���л\D�p���>��ΐ��DuFŔP(�3&$B�h��K� �Hl�})��H1�ND!r#��i�p[:��w��z�4�t�S-�@,f%�Dd��(xB4b+�N��?�s�w_��ccЫOg��P[��H�������H�R���Q��*�-���\I�0���D+��Dj+���ac�ģ��e���_[�����.VU�=f ���[Q��\��5}�\�>�5~9�<y���K����b:��O7d��ppOd���Hh��x�\"������U�3	�#���L%ʗr��O�'�/󇂍�*�E�����EUPׇfگ��dp\�O����ˑ���8�\�{M�j��Tr��F`��`<h(d��/P�΂	ހ '�^�x믻������|����������{0��wa�C��(#މa|#�p��\ؘ��We%E0��̦����jË�fV�F���\�Ც
�֮��[7����(4�)%8��঄��������)�	�DP�O$t:{8�e��F �u��^������aQ6$kW�qH��	��2Ãv�G���^:����}������B2�vB�C��⋧z�sN|���Ot������vr�n��c[^v#8��N���1�xb�p��W�	-�S���o[�!t;�F��i�HH̍*!3y���b��y�LH��N(��\��÷Ih*T�ˉ��!-E��U�������k�8�a�oSW43�j�,��mV6~7mb_2.};HP�� C���%_2�!$XY�@��9�eOEeYQ,?W��#]�8]��#](2�����Z������      9     x���Y�����:��<�F��iW�I�"(�8 b:�aFEPD?����GoY�� ���Z{�������6����C,G!\?TV'�ya-�/s��s#��vT��%��7~�Zo$og�,X���:i��^Y[�������_�[�VV^�?�]'(voo��[�� B� ���Oށ��q���? �-\��b�E[xI��)`�$�dK�%yo�X^�	i�]1�ǃ��I=�_��4'���U)�.DB����@�1��r��Y���]����.j�P��q3���(��V��f�c��U
���{�G�gl� ~D�����������ڡ^H��s!e�����[�́��.G���@�:`�p%�XCN�菻'ÿ�Hb�7��O���^?k?�a ���t �U\�y8�B�u�c�c�<u�mv<���?,�=av䤤��b��:x'�kĩv��C����#��#���Woe���z�n����S��~A��w̾3\rOn�����8d�fq�鬕q!�
�D\v�#�eO�b`Z�Q���1;��Y��@���Z�����������ɼ���9?�O�k�Or�/[e(xZ��i.�-����2m鼈��4XΏpG�K�N��\(�S,F3������WB�`����ɀ-6?��x٬�f�zDI���BFu�Ù�M�7�%�\��.o����K�X������+��0�?5$_G
�n��^�贐D�+�+�� �h$�}���$���]p���)�M�l�r6I~2B�[!@0̇P _��$o��h����v�~SH��y{�OM	�L�,$I�9n�lӑmH[%	h���mQ�AȾb!�o�'����n��6�����PWJ�^/��{�g��/]����+s3���"���!� �^	Y�X�nB�d���2!��j���l٬��|����,�J�P{��_���/Wa6h����E��W�߅���%0��,��p:N�
3�G��Bbj�)iϣv���gMk��7W�|8WV�E&�F��y�B�w�� ���9״�	����|��d�Q=us��m֧6%��w�Y4�z�(��ҼY,��^{�g��׽�!y�WB����	���t8��b��Il9��9H]+�,�>Yn.�![�h�O����B����,�Ɏ�W����+�2��y���� �z.O<`�#�i�YxK
�9;�R=fWe*�N���ͦav4���>���5�w;�_�|�+W��,
���OrE�)�*H�}�{�ڞP��?[+t�G���$N��L�.��S[{�1m��y���,��dA���'ɲ؆ǠŚ4+�J&q� ���u�U�>d�K�D����Q���]���i4	��J�v���1Z���r5bLx��O��8ܦ������i�7�aE���G�ni���v_�幯�=�{��Њn�g�.��c���>��H�����A��LO�E��ܬN*�Ң�d�-��.��qc�܁H��cj�����5�uq�v�c��� ����������      :      x������ � �      =      x������ � �      ?      x������ � �      @      x������ � �      ~      x������ � �      B      x������ � �      E      x������ � �      G      x������ � �      |      x������ � �      I      x������ � �      �      x������ � �      K   X   x�u�;� �����,g��?����u�f�I ��3tc��T���~�������(1q��(s��|�)�����R� #�@      M     x�}��n7����������WY�N��-��m E ��%���Di���^ʱ%*�.�|���g
����F�	�	�TZj���Sz�~�E�2�A���^ho��h�LB����,�����k��ߗ�ӷ�*|�;}���W#g�����������^ζ�C����a����٧�i�R�*��F�1V��P����
��AV"8"����'��-��PU�1���hk��c�<5P`�E=A$�В�"甌���>�����XbXU���7Ҹ#"x�Z�l6�m�����]��Y��Dh�hP�E
C���&����+������?ow�R��G�`�\R������RC^���P��XY�����6
����]�I�4�nqb=_/�M�\�u���Ps��e��帷Q⍒�r:k�1�qꊭ<��Y�-k@�? �vP�L�4Q���nn��M�,���ͺk7�����WWp=��
.�����<-+%'����d6�ˣ��$���>�	����]6��ݚ�؃4�Bz�ˢB�7 'hN�] j=]��dNZ"[HD@�c�N�XQ(CN�a��v4T��/�?g�z��\:u��F+k|uqe�u�OZ{d��j�F
�h��^$ʝ/�e۬����V�����Ǧ�*q���u��H���]���1�|ߞD@LԞU�'���z�^\�o�^�򐏳���k�@R��7M�&���D�4�W' �EOV�@hd(�m�g]s~����j����mw�/ė�<�ek������Y@�hǩ)B�$CO>c4=���0}N�F?ў�o���c���^�.WoY��+�v�kW�5,���<�K�k�PgNG��[��Ɗw��h|*��.?�cX���SW<M�iWG��p��)���>!�Ff���`�O�
1�`zEyx�^q�\�g�[B;�
��p�0H?GxD���q:����M�mN���h�p��G���}�6�7�|�M����W1ё;�S~ZMJ��ľN��V�ʰ&�U1pDŗ5.�/���暍�VM�TE.��p?�:��qjʳ���9p� M
�E�(Ȁ���_������6\�Ǒ�}�Q3��Rp;ku����.���I�C�s�q\���ca9����L�[���OϘtͤg{�%סB:>�*���`��#Q4M'Q�[�`2'e2�_�9ح�"�|rk1IWHO�c����g�~v�S) ��J1	����y�w�K��$��,g�6q��F��2Y~���}~	�Q���"7���������      �   A   x�Uɱ�@��0w��yj��5t�]b0�pn�j�,Ա|���hd��&=��%�B���>�|      O   B   x�uɱ�0�ڞ����M2c��p�%L�9�s�Z8��T��߭��1q2 �)��F���_���      Q      x������ � �      S      x������ � �      U      x������ � �      W      x������ � �      Y      x������ � �      [      x������ � �      \      x������ � �      ^      x������ � �      `      x������ � �      b      x������ � �      d   �  x��S�n� }�3��_&E���@��S�~�I�%˴��>>�Δ�g.4�S@0�S�z��%�����&���~R2a����▆�GFx��� 'V��W��C�����.%`DF�וQIU�j<&����P[������R�C5:,��QRu=}�˟j����~�r�D�JC��6���tN�Ĵ�e��y	Ts�5�[4�4$v+�G��cY_��be1�wV��e�ːAH�C����u,{v>�����80�|*]�U�rEU��2u}}�b�r�܋vڢ�c��X�}�8�G)5]�8�b���n�n�'���X)�DlL4� �݆ht�c� ����y����zT�u,���
�'&������o�i�Ī[�=���7btgM      f   .  x����n�8��Wq��y��\�J7aK ��d�~�6�c6Y�J���`���z�ʮ];���v��u[�u��(����wJ~ 9~ �N���Fw�u<=��J3>���\�/��>��C�m�#.���ޝ�og���-�*�`�p�<C����8[�cݵ��)��<uu�ȲX�t�y5����m��ˢ8£Ԓ?j�ft����\�_�����m\{��ʢ0��{�^PlB]�p�n�R���c
O)�#,�����p�X��!RDS��|��6��s���@��"1�_�~�nH��9�C$$������|M]c�����ޞ�0Ǎ�si���t69ϲ�9�1G|!��r��pAL@�dB��zy	#���`�^/�"g/}��4d>?<�,�4��gݿ�-��"q=Eֻ�6!��"���c���<�!d�/��욦�y��&5�~veSc+>{F���R�&A4�� �(�l�0�b�)�U����k�ׇ+^X�D��S�7 �b@���q�e)ʵ
H��%,�ʔ�<�+A#Kn���®��%O�,�M�A�6X"�}蚢ʓ������1���#Y�!A�To��JM���3&��BqZ���JX��X�|%46U@1���	� �`h~Y�+�Y`�[��3@7����s��BG���.�b�B����o��{#����V�G����s��4c��!��>>��e�)���t�mm��B	Z��YB3׵!�ӇM�_�*�W*ռ�E��T�E�JU(�,K)Ab�mh �k����r�]bm�Ѹ�t�\-p@�=������+[D&�X�7�r:�����c�����ӵ��M������Vz7\����J�t�F~�N΢?�����2��VJ����f-~@�ƉQq�k�$8��8&�p�Y�dNN��K�a�����\���ڀś�Z0	M��0ϔ=�~�qz�:�p�����6OЧ��\�5��p����Wew��vc�Tp�J�1q���d1�p�^�EqǠN{����.}���T�$J��6��4�$c��ݻ;O�d���k������9���$�4�=wp���<L��)�Im�M�ol1�&�t�RQz�u(��D�P�k8u�8v N�A�R%1�׃��ŕ���]�aXQ=�g8��4H�P�z�d��c"D�d�tli�x�{�ZǫC��{E�x���
�-�W�<�)�C�C�yd|��x���!L��Ҡ�|�.=A�0:x;�P,A�#��ڷ��9@ށ��Pr�(U��\�ڻc=����Z��\?�׊�8NI�Uҹx���V����l0%��I��>�g����N�����i
7���1:5|�Gwc�O�p#̔g}�%�"D���E��m!O�.�P��p��A0�����eB']��ۃvr�����f���������D6� ��i��~ =���ɽ4]n��B7�u;���8�7g����#���~� �)C���-�B���/�㞿��r����> ��	2�T����V��Z��@����bBŗ+�����SĬ�      h   �  x�ݗG��XEǕ��yC³t3Q"�IQ�h@���s���NT&�{����8qߍ�}�F��p8`�.ÈGfR�Ll7���r1`~�4O�ޅ����Sc�G0L�	O�Y��t���S��>���� ?�' f�b@��\�ue`Ot�����*�"�c���u!�f*Z�uŘ�"���SM$Q+�x���ךm�����('@4g	���Z�u�Wv��z��
P�9��?Ձ��V�C�>6�T{���뭘����:M���,/'r{\L��?�xNY��Z��i������<ﴡ�3mM}/BU��?j���.��/5�|�&���g�*c]ֆ�P/�6��M=W���	�)����:�����\@��K')�Q�"�������X��p���Ln4�x\i�9s8>K�ݕdc$��Ӏ�ֲS�u��[&�H�ك�-�h�m�;�_���7Fe��֛�b�Y�^�6?�KlD��J�/8v#�ޢ$
�=�#���5�w��^���Ȋ�>��38t�Y(�^���(���k(�P���W����7�چ���a"k}�5Y*�~�OD
��S ��"�~��qY��mK�*	��a�$�,06�Wc.R�
ū|����]��L�kk�s)���;�b����Iw�ۙ�U�O���c���R��$�Iг!�\� F(�������j��ݘh���+\'�p�����{�`[�b3����ķ�b�,���e�����YN��ݘ�g����� A:̲K�8��8t����o[���-OG ���<ZI85��sg�� o��w���mV��:?L��ު�� uq�d�����F�}F�75EQV�OwG�e��%:�N�ӊԳ��/��/'���QǱ�/<]�'d���1�9�C- ��0�S��Å]��Oy��fۂ_���κ����-�A��n��Ͷ���IE��l�v"D/��i�3w�!;=�j�K�T{о����[�+�ҵ*]G�9`-Jnt�o�f��ą[)�]�TT�ղ�g=g���0�aI׫S�7̓���Z6�S(��v�`T}`'��>T��YV�Ց�ݝ��%����	�|f
jN|M�s���Q�g;�P�E'm�~���̀kS������v�'d����yB��D.?�4k&k�#����TN�R�.�0�&����*98�L�RK:1�#��7M�&�t���e���S��S��'�F�sLX�������� Sn���`��욎("��@3��&x��nm�)}�Cw��W�5�#�\��[۲O*(3!�/4f�|ACP t�0d���ql�8���,s�2f�رI^d�����PK�OG����ϊ�
=���A9z�	G�`�~|���pT�.N�_���`�H�����"�E-3K��Y0fUM�W�5���0n��_�$�q�ɇw�^�%�G�1ƅ7;蹒�����XƱu.M��qX��)	Aj��b0^(v܅�ʶ�bx���y�w�e��/˥�s�0U�*6��6�C*{N)T��K�ݔi#�m�:��.M��A6_���;���!�p?�o8T�1�"��wb�o��ʫ�M1ZGaG� 9��_�vo^���p/q/Rec�J�i%�>�-�o�w�@���{���'�*Ӥ̂tL)lfjq#�bP߇m�|�e�	�:�17�{��~����5B�W����G�Aҋ�o�}�Q��
q����yo6�7�Q����h(�ƨ�#�-�7�^q�k�7�\U�2VS��u�t��n�GFk����x��e��o��{X�D��}_�|�����	�C�)[���&o
��@ �o���������f=�����fk{�T��P�ԦG-^�o��}���~QC� �������61c�WLC����e��!T^H��c�W�7�^BDE W�������B��<p�g����/�l�+~ͦ?��	�����m��q���X�!�{��"�<r��(����W9ߖ�t�nLg}TNfk�X�ؖ���P��6"�Er��]dN�'����Y�P���������}}      i   �  x�}�O��0���SD�c���ϭ��=�]U����n��MPH�����.qbH<����7�ɐ"��^#́����D#?P5�2Ƃ:d�ng�alw��mvG_4�0��r<dO+�[V�&�B�rQ�9Q~�:�X�m�6�L͂pj��H.��I�IU�O����6n�� ��Z1F@�IN���϶�X[��G¨��%1Q���ci���쾫��ޖΏIo���%���&�"S"M<��]i�|_�/������ϛ��M ���zF$	�$GU�b���zj9�!��-�	C� =��
[k�ڃ}}OMU0}k�*��@%`�\�OW�~����f���{ί��:� t��gU���Җ6�þkˀ[�n�	CI�2ҋhؕV:��j;x���GM֎LA5(�d�T�8����=t�M�Rg@7��,��6�t��hc$}?���B����6l`5��x\���<��Rޚ
�&�fxyV9�7؟��Ɲ�?Y�u��E�$�XpEH��;��A�B`���]X�%�n�?�;��IJXAʸ�)Ï�S�p�1��v��;�0�83:���Y�}9D�+�ý�����ۈ�~VU�n�7����'���
���B ��9��W�C��Z_\���\��
��Z��'�Z���p�E      k      x������ � �      m      x������ � �      o   a  x�u�Mn;��=��>���(��!�	���	r���<X��r�o�*�B��~�~��4���O��-��L�bj�R� � �����a��E	_�����3�~�(�����cfޛ?j��]�w��!J���T*�4�1R���|QH��׭[�d'�[5{��`-((Ji��@�J��1粗��m$eI'�[Ը�C�AL�:��@˹r��r��ݓ<D�����;2������}��2��B$B����i�T���>��=�/{3fb�V*�O ��)��M1H1M� T�z&f�ybn��	�� ���s�-�Rm�1�WȞA�ŧ2Ack0=�ӫ���E��"���
B��/��O�Z$�B	�dM�er������$@0����*��v���FY�^�E�����Zb���
D���N��7�m�4h�p��ϰ�2�T�AzO��d0�I�c�TH���_�Ë2n�����{�G��R�xA�w����"�)�s𰂶J�� ��5��*���N �*��fE���. ���&��ٰUl2(�ՙ���u�{gͷ�!�����8�(� �,}�g�B�w�_oVe��A�����s�`�r�U^ #ik�t�A��/��ź�޸��#�g5o+�� ��ȣf��j�`U�*Zje�O���eeU��jy���Y�`�ȭ��Rŷ}3�-������[�(#�2���	G�������C@G�[�lo"�R��F���EJ��G�-2��"G��������p(ͣ�uj�v>�p�7e� �i���z�Bc��#����b~LPá4��	�g'��P'�}����x���gF�D_�ޯ����      p      x������ � �      s   �   x�uνN�0F��y����x<��"!�mi�?AQ��,�OH�-X<�u�����!h���ڋ��z
����W�	�uSV�r$�K�ES�^GN�{��MT�U/�$Sdl��i���L�2��h�!w��!嬈��h���j ��Le���%: �H��޾��=��Ҿ��Y�a�8(�N�c�#�R��Ξ���r�R$��t�5G�\�@Y��Z��s�^e��a0pG�wM�� ͡^x      u      x������ � �      w   I   x�uɱ�0D�ڞ�ź�1q2c�� !����(�F4���Y36ˬ굢��?z~�]�7��!ƽ�0U� ��      y      x������ � �     