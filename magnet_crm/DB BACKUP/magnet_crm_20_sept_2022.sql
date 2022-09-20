PGDMP     ,                    z         
   magnet_crm    13.7    13.1 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16385 
   magnet_crm    DATABASE     U   CREATE DATABASE magnet_crm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE magnet_crm;
                postgres    false            �            1259    35474 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    35472    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            $           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    35484    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    35482    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            %           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    35466    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    35464    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            &           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    35492 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    35502    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    35500    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            '           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    35490    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            (           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    35510    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    35508 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            )           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    35885    client_client    TABLE     �  CREATE TABLE public.client_client (
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
    is_registred boolean NOT NULL,
    is_locked boolean NOT NULL,
    is_suspect boolean NOT NULL,
    magnet_id character varying(255) NOT NULL,
    source character varying(255),
    source_detail_1 character varying(255),
    source_detail_2 character varying(255),
    created_by_id integer NOT NULL,
    updated_by_id integer,
    is_suspect_bypass boolean NOT NULL
);
 !   DROP TABLE public.client_client;
       public         heap    postgres    false            �            1259    35941    client_client_duplicate_suspect    TABLE     z  CREATE TABLE public.client_client_duplicate_suspect (
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
       public         heap    postgres    false            �            1259    35939 &   client_client_duplicate_suspect_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_duplicate_suspect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.client_client_duplicate_suspect_id_seq;
       public          postgres    false    249            *           0    0 &   client_client_duplicate_suspect_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.client_client_duplicate_suspect_id_seq OWNED BY public.client_client_duplicate_suspect.id;
          public          postgres    false    248            �            1259    35931    client_client_followup    TABLE     �  CREATE TABLE public.client_client_followup (
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
       public         heap    postgres    false            �            1259    35929    client_client_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_followup_id_seq;
       public          postgres    false    247            +           0    0    client_client_followup_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_followup_id_seq OWNED BY public.client_client_followup.id;
          public          postgres    false    246            �            1259    35883    client_client_id_seq    SEQUENCE     }   CREATE SEQUENCE public.client_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          postgres    false    239            ,           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client_client.id;
          public          postgres    false    238            �            1259    35921    client_client_journey    TABLE     �  CREATE TABLE public.client_client_journey (
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
       public         heap    postgres    false            �            1259    35919    client_client_journey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_journey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.client_client_journey_id_seq;
       public          postgres    false    245            -           0    0    client_client_journey_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.client_client_journey_id_seq OWNED BY public.client_client_journey.id;
          public          postgres    false    244            �            1259    35908    client_client_schedule    TABLE     .  CREATE TABLE public.client_client_schedule (
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
       public         heap    postgres    false            �            1259    35906    client_client_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.client_client_schedule_id_seq;
       public          postgres    false    243            .           0    0    client_client_schedule_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.client_client_schedule_id_seq OWNED BY public.client_client_schedule.id;
          public          postgres    false    242            �            1259    35898    client_client_staff    TABLE     �  CREATE TABLE public.client_client_staff (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    uid uuid NOT NULL,
    color character varying(255) NOT NULL,
    client_id bigint NOT NULL,
    created_by_id integer NOT NULL,
    staff_id bigint NOT NULL,
    updated_by_id integer
);
 '   DROP TABLE public.client_client_staff;
       public         heap    postgres    false            �            1259    35896    client_client_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.client_client_staff_id_seq;
       public          postgres    false    241            /           0    0    client_client_staff_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.client_client_staff_id_seq OWNED BY public.client_client_staff.id;
          public          postgres    false    240            �            1259    35630    core_history_syncdata_magnet    TABLE     g  CREATE TABLE public.core_history_syncdata_magnet (
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
       public         heap    postgres    false            �            1259    35628 #   core_history_syncdata_magnet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_history_syncdata_magnet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.core_history_syncdata_magnet_id_seq;
       public          postgres    false    223            0           0    0 #   core_history_syncdata_magnet_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.core_history_syncdata_magnet_id_seq OWNED BY public.core_history_syncdata_magnet.id;
          public          postgres    false    222            �            1259    35611    core_profile    TABLE     �  CREATE TABLE public.core_profile (
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
       public         heap    postgres    false            �            1259    35609    core_profile_id_seq    SEQUENCE     |   CREATE SEQUENCE public.core_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_profile_id_seq;
       public          postgres    false    221            1           0    0    core_profile_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_profile_id_seq OWNED BY public.core_profile.id;
          public          postgres    false    220            �            1259    35603    core_sync_data_magnet    TABLE     [  CREATE TABLE public.core_sync_data_magnet (
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
       public         heap    postgres    false            �            1259    35601    core_sync_data_magnet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_sync_data_magnet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.core_sync_data_magnet_id_seq;
       public          postgres    false    219            2           0    0    core_sync_data_magnet_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.core_sync_data_magnet_id_seq OWNED BY public.core_sync_data_magnet.id;
          public          postgres    false    218            �            1259    35570    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    35568    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            3           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216                       1259    36158 "   django_celery_beat_clockedschedule    TABLE     �   CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL
);
 6   DROP TABLE public.django_celery_beat_clockedschedule;
       public         heap    postgres    false                       1259    36156 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_clockedschedule_id_seq;
       public          postgres    false    260            4           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;
          public          postgres    false    259            �            1259    36087 "   django_celery_beat_crontabschedule    TABLE     j  CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);
 6   DROP TABLE public.django_celery_beat_crontabschedule;
       public         heap    postgres    false            �            1259    36085 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_crontabschedule_id_seq;
       public          postgres    false    251            5           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;
          public          postgres    false    250            �            1259    36095 #   django_celery_beat_intervalschedule    TABLE     �   CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);
 7   DROP TABLE public.django_celery_beat_intervalschedule;
       public         heap    postgres    false            �            1259    36093 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.django_celery_beat_intervalschedule_id_seq;
       public          postgres    false    253            6           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;
          public          postgres    false    252            �            1259    36103    django_celery_beat_periodictask    TABLE     ?  CREATE TABLE public.django_celery_beat_periodictask (
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
       public         heap    postgres    false            �            1259    36101 &   django_celery_beat_periodictask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.django_celery_beat_periodictask_id_seq;
       public          postgres    false    255            7           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;
          public          postgres    false    254                        1259    36115     django_celery_beat_periodictasks    TABLE     �   CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);
 4   DROP TABLE public.django_celery_beat_periodictasks;
       public         heap    postgres    false                       1259    36135     django_celery_beat_solarschedule    TABLE     �   CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);
 4   DROP TABLE public.django_celery_beat_solarschedule;
       public         heap    postgres    false                       1259    36133 '   django_celery_beat_solarschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_beat_solarschedule_id_seq;
       public          postgres    false    258            8           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;
          public          postgres    false    257                       1259    36197 "   django_celery_results_chordcounter    TABLE       CREATE TABLE public.django_celery_results_chordcounter (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    sub_tasks text NOT NULL,
    count integer NOT NULL,
    CONSTRAINT django_celery_results_chordcounter_count_check CHECK ((count >= 0))
);
 6   DROP TABLE public.django_celery_results_chordcounter;
       public         heap    postgres    false                       1259    36195 )   django_celery_results_chordcounter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_chordcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_results_chordcounter_id_seq;
       public          postgres    false    264            9           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_results_chordcounter_id_seq OWNED BY public.django_celery_results_chordcounter.id;
          public          postgres    false    263            
           1259    36212 !   django_celery_results_groupresult    TABLE     ^  CREATE TABLE public.django_celery_results_groupresult (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_done timestamp with time zone NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text
);
 5   DROP TABLE public.django_celery_results_groupresult;
       public         heap    postgres    false            	           1259    36210 (   django_celery_results_groupresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_groupresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.django_celery_results_groupresult_id_seq;
       public          postgres    false    266            :           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.django_celery_results_groupresult_id_seq OWNED BY public.django_celery_results_groupresult.id;
          public          postgres    false    265                       1259    36173     django_celery_results_taskresult    TABLE     L  CREATE TABLE public.django_celery_results_taskresult (
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
       public         heap    postgres    false                       1259    36171 '   django_celery_results_taskresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_results_taskresult_id_seq;
       public          postgres    false    262            ;           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;
          public          postgres    false    261            �            1259    35456    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    35454    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            <           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    35445    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    35443    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            =           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200                       1259    36272    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    35850    followup_followup    TABLE       CREATE TABLE public.followup_followup (
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
       public         heap    postgres    false            �            1259    35848    followup_followup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.followup_followup_id_seq;
       public          postgres    false    237            >           0    0    followup_followup_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.followup_followup_id_seq OWNED BY public.followup_followup.id;
          public          postgres    false    236            �            1259    35839    followup_followupselected    TABLE     7  CREATE TABLE public.followup_followupselected (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    followup_selected_code text NOT NULL,
    created_by_id integer NOT NULL,
    updated_by_id integer
);
 -   DROP TABLE public.followup_followupselected;
       public         heap    postgres    false            �            1259    35837     followup_followupselected_id_seq    SEQUENCE     �   CREATE SEQUENCE public.followup_followupselected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.followup_followupselected_id_seq;
       public          postgres    false    235            ?           0    0     followup_followupselected_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.followup_followupselected_id_seq OWNED BY public.followup_followupselected.id;
          public          postgres    false    234                       1259    36233    notification_notification    TABLE     �  CREATE TABLE public.notification_notification (
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
       public         heap    postgres    false                       1259    36231     notification_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.notification_notification_id_seq;
       public          postgres    false    268            @           0    0     notification_notification_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.notification_notification_id_seq OWNED BY public.notification_notification.id;
          public          postgres    false    267            �            1259    35681    staff_staff    TABLE     �  CREATE TABLE public.staff_staff (
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
    updated_by_id integer
);
    DROP TABLE public.staff_staff;
       public         heap    postgres    false            �            1259    35717    staff_staff_history    TABLE     k  CREATE TABLE public.staff_staff_history (
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
       public         heap    postgres    false            �            1259    35715    staff_staff_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.staff_staff_history_id_seq;
       public          postgres    false    233            A           0    0    staff_staff_history_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.staff_staff_history_id_seq OWNED BY public.staff_staff_history.id;
          public          postgres    false    232            �            1259    35679    staff_staff_id_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_staff_id_seq;
       public          postgres    false    225            B           0    0    staff_staff_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff_staff.id;
          public          postgres    false    224            �            1259    35691    staff_staff_level    TABLE     h  CREATE TABLE public.staff_staff_level (
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
       public         heap    postgres    false            �            1259    35689    staff_staff_level_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.staff_staff_level_id_seq;
       public          postgres    false    227            C           0    0    staff_staff_level_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.staff_staff_level_id_seq OWNED BY public.staff_staff_level.id;
          public          postgres    false    226            �            1259    35709    staff_staff_salary    TABLE     `  CREATE TABLE public.staff_staff_salary (
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
       public         heap    postgres    false            �            1259    35707    staff_staff_salary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.staff_staff_salary_id_seq;
       public          postgres    false    231            D           0    0    staff_staff_salary_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.staff_staff_salary_id_seq OWNED BY public.staff_staff_salary.id;
          public          postgres    false    230            �            1259    35701    staff_staff_salary_monthly    TABLE     �  CREATE TABLE public.staff_staff_salary_monthly (
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
       public         heap    postgres    false            �            1259    35699 !   staff_staff_salary_monthly_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_monthly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.staff_staff_salary_monthly_id_seq;
       public          postgres    false    229            E           0    0 !   staff_staff_salary_monthly_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.staff_staff_salary_monthly_id_seq OWNED BY public.staff_staff_salary_monthly.id;
          public          postgres    false    228                       1259    36283    staff_staff_salary_montly    TABLE     v  CREATE TABLE public.staff_staff_salary_montly (
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
       public         heap    postgres    false                       1259    36286     staff_staff_salary_montly_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staff_salary_montly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.staff_staff_salary_montly_id_seq;
       public          postgres    false    270            F           0    0     staff_staff_salary_montly_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.staff_staff_salary_montly_id_seq OWNED BY public.staff_staff_salary_montly.id;
          public          postgres    false    271                       2604    36288    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    36289    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    36290    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205                       2604    36291    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    36292    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    36293    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            &           2604    36294    client_client id    DEFAULT     t   ALTER TABLE ONLY public.client_client ALTER COLUMN id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client_client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            +           2604    35944 "   client_client_duplicate_suspect id    DEFAULT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect ALTER COLUMN id SET DEFAULT nextval('public.client_client_duplicate_suspect_id_seq'::regclass);
 Q   ALTER TABLE public.client_client_duplicate_suspect ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            *           2604    36295    client_client_followup id    DEFAULT     �   ALTER TABLE ONLY public.client_client_followup ALTER COLUMN id SET DEFAULT nextval('public.client_client_followup_id_seq'::regclass);
 H   ALTER TABLE public.client_client_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            )           2604    36296    client_client_journey id    DEFAULT     �   ALTER TABLE ONLY public.client_client_journey ALTER COLUMN id SET DEFAULT nextval('public.client_client_journey_id_seq'::regclass);
 G   ALTER TABLE public.client_client_journey ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            (           2604    36297    client_client_schedule id    DEFAULT     �   ALTER TABLE ONLY public.client_client_schedule ALTER COLUMN id SET DEFAULT nextval('public.client_client_schedule_id_seq'::regclass);
 H   ALTER TABLE public.client_client_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            '           2604    36298    client_client_staff id    DEFAULT     �   ALTER TABLE ONLY public.client_client_staff ALTER COLUMN id SET DEFAULT nextval('public.client_client_staff_id_seq'::regclass);
 E   ALTER TABLE public.client_client_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241                       2604    35633    core_history_syncdata_magnet id    DEFAULT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet ALTER COLUMN id SET DEFAULT nextval('public.core_history_syncdata_magnet_id_seq'::regclass);
 N   ALTER TABLE public.core_history_syncdata_magnet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    36299    core_profile id    DEFAULT     r   ALTER TABLE ONLY public.core_profile ALTER COLUMN id SET DEFAULT nextval('public.core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    35606    core_sync_data_magnet id    DEFAULT     �   ALTER TABLE ONLY public.core_sync_data_magnet ALTER COLUMN id SET DEFAULT nextval('public.core_sync_data_magnet_id_seq'::regclass);
 G   ALTER TABLE public.core_sync_data_magnet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    36300    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            3           2604    36161 %   django_celery_beat_clockedschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_clockedschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            ,           2604    36090 %   django_celery_beat_crontabschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_crontabschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            -           2604    36098 &   django_celery_beat_intervalschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);
 U   ALTER TABLE public.django_celery_beat_intervalschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            .           2604    36106 "   django_celery_beat_periodictask id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);
 Q   ALTER TABLE public.django_celery_beat_periodictask ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            2           2604    36138 #   django_celery_beat_solarschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_beat_solarschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            5           2604    36200 %   django_celery_results_chordcounter id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_chordcounter_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_results_chordcounter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            7           2604    36215 $   django_celery_results_groupresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_groupresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_groupresult_id_seq'::regclass);
 S   ALTER TABLE public.django_celery_results_groupresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            4           2604    36176 #   django_celery_results_taskresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_results_taskresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262                       2604    36301    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    36302    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            %           2604    36303    followup_followup id    DEFAULT     |   ALTER TABLE ONLY public.followup_followup ALTER COLUMN id SET DEFAULT nextval('public.followup_followup_id_seq'::regclass);
 C   ALTER TABLE public.followup_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            $           2604    36304    followup_followupselected id    DEFAULT     �   ALTER TABLE ONLY public.followup_followupselected ALTER COLUMN id SET DEFAULT nextval('public.followup_followupselected_id_seq'::regclass);
 K   ALTER TABLE public.followup_followupselected ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            8           2604    36305    notification_notification id    DEFAULT     �   ALTER TABLE ONLY public.notification_notification ALTER COLUMN id SET DEFAULT nextval('public.notification_notification_id_seq'::regclass);
 K   ALTER TABLE public.notification_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268                       2604    36306    staff_staff id    DEFAULT     p   ALTER TABLE ONLY public.staff_staff ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);
 =   ALTER TABLE public.staff_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            #           2604    36307    staff_staff_history id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_history ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_history_id_seq'::regclass);
 E   ALTER TABLE public.staff_staff_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                        2604    36308    staff_staff_level id    DEFAULT     |   ALTER TABLE ONLY public.staff_staff_level ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_level_id_seq'::regclass);
 C   ALTER TABLE public.staff_staff_level ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            "           2604    36309    staff_staff_salary id    DEFAULT     ~   ALTER TABLE ONLY public.staff_staff_salary ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_id_seq'::regclass);
 D   ALTER TABLE public.staff_staff_salary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            !           2604    35704    staff_staff_salary_monthly id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_monthly_id_seq'::regclass);
 L   ALTER TABLE public.staff_staff_salary_monthly ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            9           2604    36310    staff_staff_salary_montly id    DEFAULT     �   ALTER TABLE ONLY public.staff_staff_salary_montly ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_salary_montly_id_seq'::regclass);
 K   ALTER TABLE public.staff_staff_salary_montly ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270            �          0    35474 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ��      �          0    35484    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ��      �          0    35466    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ɤ      �          0    35492 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   �      �          0    35502    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ��      �          0    35510    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ��      �          0    35885    client_client 
   TABLE DATA             COPY public.client_client (id, created_at, updated_at, is_active, uid, nama, first_name, last_name, middle_name, city, address, magnet_status, id_verification_status, legal_status, magnet_created_by, aecode, demologin, cdd, create_ip, medium, campaign, term, content, gclid, magnet_created_at, magnet_update_at, umur, gender, pekerjaan, domisili, phone_no, email, birthday, is_registred, is_locked, is_suspect, magnet_id, source, source_detail_1, source_detail_2, created_by_id, updated_by_id, is_suspect_bypass) FROM stdin;
    public          postgres    false    239   ɮ                0    35941    client_client_duplicate_suspect 
   TABLE DATA           �   COPY public.client_client_duplicate_suspect (id, created_at, updated_at, is_active, is_checked, client_new_id, client_old_id, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    249   �n                0    35931    client_client_followup 
   TABLE DATA           �   COPY public.client_client_followup (id, created_at, updated_at, is_active, uid, answer, client_id, created_by_id, followup_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    247   ��                0    35921    client_client_journey 
   TABLE DATA           �   COPY public.client_client_journey (id, created_at, updated_at, is_active, uid, journal_type, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    245   �                0    35908    client_client_schedule 
   TABLE DATA           �   COPY public.client_client_schedule (id, created_at, updated_at, is_active, uid, schedule_date, schedule_type, status, notes, answer, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    243   7�      �          0    35898    client_client_staff 
   TABLE DATA           �   COPY public.client_client_staff (id, created_at, updated_at, is_active, uid, color, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    241   T�      �          0    35630    core_history_syncdata_magnet 
   TABLE DATA           �   COPY public.core_history_syncdata_magnet (id, created_at, updated_at, is_active, last_current_user_count, last_user_id, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    223   q�      �          0    35611    core_profile 
   TABLE DATA           �   COPY public.core_profile (id, created_at, updated_at, is_active, uid, is_supervisor, reset_token, is_ib, full_name, no_ktp, phone_no, email, is_verified, verify_uid, last_login_ip, created_by_id, updated_by_id, user_id) FROM stdin;
    public          postgres    false    221   �      �          0    35603    core_sync_data_magnet 
   TABLE DATA           �   COPY public.core_sync_data_magnet (id, created_at, updated_at, is_active, current_user_count, last_user_id, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   !�      �          0    35570    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   u�                0    36158 "   django_celery_beat_clockedschedule 
   TABLE DATA           N   COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
    public          postgres    false    260   ��      	          0    36087 "   django_celery_beat_crontabschedule 
   TABLE DATA           �   COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
    public          postgres    false    251   ��                0    36095 #   django_celery_beat_intervalschedule 
   TABLE DATA           P   COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
    public          postgres    false    253   ̑                0    36103    django_celery_beat_periodictask 
   TABLE DATA           '  COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
    public          postgres    false    255   �                0    36115     django_celery_beat_periodictasks 
   TABLE DATA           N   COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
    public          postgres    false    256   �                0    36135     django_celery_beat_solarschedule 
   TABLE DATA           Z   COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
    public          postgres    false    258   #�                0    36197 "   django_celery_results_chordcounter 
   TABLE DATA           \   COPY public.django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
    public          postgres    false    264   @�                0    36212 !   django_celery_results_groupresult 
   TABLE DATA           �   COPY public.django_celery_results_groupresult (id, group_id, date_created, date_done, content_type, content_encoding, result) FROM stdin;
    public          postgres    false    266   ]�                0    36173     django_celery_results_taskresult 
   TABLE DATA           �   COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created, periodic_task_name) FROM stdin;
    public          postgres    false    262   z�      �          0    35456    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ��      �          0    35445    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �                0    36272    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    269   �      �          0    35850    followup_followup 
   TABLE DATA           �   COPY public.followup_followup (id, created_at, updated_at, is_active, followup_choices, followup_choice_code, followup_choice_head, followup_textfield, color, font_color, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   %�      �          0    35839    followup_followupselected 
   TABLE DATA           �   COPY public.followup_followupselected (id, created_at, updated_at, is_active, followup_selected_code, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    235   à                0    36233    notification_notification 
   TABLE DATA           �   COPY public.notification_notification (id, created_at, updated_at, is_active, notification_type, notes, is_opened, client_id, client_schedule_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    268   �      �          0    35681    staff_staff 
   TABLE DATA           �   COPY public.staff_staff (id, created_at, updated_at, is_active, uid, is_locked, created_by_id, profile_id, staff_level_id, staff_parent_id, updated_by_id) FROM stdin;
    public          postgres    false    225   b�      �          0    35717    staff_staff_history 
   TABLE DATA           �   COPY public.staff_staff_history (id, created_at, updated_at, is_active, child_staff_id, created_by_id, parent_staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          postgres    false    233   ��      �          0    35691    staff_staff_level 
   TABLE DATA           �   COPY public.staff_staff_level (id, created_at, updated_at, is_active, uid, level, level_name, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    227   ��      �          0    35709    staff_staff_salary 
   TABLE DATA           �   COPY public.staff_staff_salary (id, created_at, updated_at, is_active, salary_amount, created_by_id, staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          postgres    false    231   ��      �          0    35701    staff_staff_salary_monthly 
   TABLE DATA           �   COPY public.staff_staff_salary_monthly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    229   ̤                0    36283    staff_staff_salary_montly 
   TABLE DATA           �   COPY public.staff_staff_salary_montly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    270   �      G           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            H           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            I           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    204            J           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            K           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 157, true);
          public          postgres    false    210            L           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            M           0    0 &   client_client_duplicate_suspect_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.client_client_duplicate_suspect_id_seq', 14115, true);
          public          postgres    false    248            N           0    0    client_client_followup_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_followup_id_seq', 16, true);
          public          postgres    false    246            O           0    0    client_client_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.client_client_id_seq', 27904, true);
          public          postgres    false    238            P           0    0    client_client_journey_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_journey_id_seq', 22, true);
          public          postgres    false    244            Q           0    0    client_client_schedule_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_schedule_id_seq', 20, true);
          public          postgres    false    242            R           0    0    client_client_staff_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_staff_id_seq', 4194, true);
          public          postgres    false    240            S           0    0 #   core_history_syncdata_magnet_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.core_history_syncdata_magnet_id_seq', 63, true);
          public          postgres    false    222            T           0    0    core_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_profile_id_seq', 154, true);
          public          postgres    false    220            U           0    0    core_sync_data_magnet_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.core_sync_data_magnet_id_seq', 20, true);
          public          postgres    false    218            V           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216            W           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);
          public          postgres    false    259            X           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 1, false);
          public          postgres    false    250            Y           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, false);
          public          postgres    false    252            Z           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 1, false);
          public          postgres    false    254            [           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);
          public          postgres    false    257            \           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_results_chordcounter_id_seq', 1, false);
          public          postgres    false    263            ]           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_celery_results_groupresult_id_seq', 1, false);
          public          postgres    false    265            ^           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 1, false);
          public          postgres    false    261            _           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);
          public          postgres    false    202            `           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 72, true);
          public          postgres    false    200            a           0    0    followup_followup_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followup_followup_id_seq', 26, true);
          public          postgres    false    236            b           0    0     followup_followupselected_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.followup_followupselected_id_seq', 1, false);
          public          postgres    false    234            c           0    0     notification_notification_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.notification_notification_id_seq', 8, true);
          public          postgres    false    267            d           0    0    staff_staff_history_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.staff_staff_history_id_seq', 1, false);
          public          postgres    false    232            e           0    0    staff_staff_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.staff_staff_id_seq', 148, true);
          public          postgres    false    224            f           0    0    staff_staff_level_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.staff_staff_level_id_seq', 8, true);
          public          postgres    false    226            g           0    0    staff_staff_salary_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.staff_staff_salary_id_seq', 1, false);
          public          postgres    false    230            h           0    0 !   staff_staff_salary_monthly_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.staff_staff_salary_monthly_id_seq', 1, false);
          public          postgres    false    228            i           0    0     staff_staff_salary_montly_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.staff_staff_salary_montly_id_seq', 1, false);
          public          postgres    false    271            G           2606    35599    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            L           2606    35526 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            O           2606    35489 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            I           2606    35479    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            B           2606    35517 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            D           2606    35471 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            W           2606    35507 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            Z           2606    35541 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            Q           2606    35497    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ]           2606    35515 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            `           2606    35555 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            T           2606    35593     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            �           2606    35946 D   client_client_duplicate_suspect client_client_duplicate_suspect_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplicate_suspect_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplicate_suspect_pkey;
       public            postgres    false    249            �           2606    35936 2   client_client_followup client_client_followup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_pkey;
       public            postgres    false    247            �           2606    35938 5   client_client_followup client_client_followup_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_uid_key;
       public            postgres    false    247            �           2606    35926 0   client_client_journey client_client_journey_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_pkey;
       public            postgres    false    245            �           2606    35928 3   client_client_journey client_client_journey_uid_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_uid_key UNIQUE (uid);
 ]   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_uid_key;
       public            postgres    false    245            �           2606    35893     client_client client_client_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_pkey;
       public            postgres    false    239            �           2606    35916 2   client_client_schedule client_client_schedule_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_pkey;
       public            postgres    false    243            �           2606    35918 5   client_client_schedule client_client_schedule_uid_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_uid_key UNIQUE (uid);
 _   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_uid_key;
       public            postgres    false    243            �           2606    35903 ,   client_client_staff client_client_staff_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_pkey;
       public            postgres    false    241            �           2606    35905 /   client_client_staff client_client_staff_uid_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_uid_key UNIQUE (uid);
 Y   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_uid_key;
       public            postgres    false    241            �           2606    35895 #   client_client client_client_uid_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_uid_key UNIQUE (uid);
 M   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_uid_key;
       public            postgres    false    239            y           2606    35635 >   core_history_syncdata_magnet core_history_syncdata_magnet_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdata_magnet_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdata_magnet_pkey;
       public            postgres    false    223            l           2606    35625 #   core_profile core_profile_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_email_key;
       public            postgres    false    221            o           2606    35623 &   core_profile core_profile_phone_no_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_phone_no_key UNIQUE (phone_no);
 P   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_phone_no_key;
       public            postgres    false    221            q           2606    35619    core_profile core_profile_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_pkey;
       public            postgres    false    221            s           2606    35621 !   core_profile core_profile_uid_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_uid_key UNIQUE (uid);
 K   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_uid_key;
       public            postgres    false    221            v           2606    35627 %   core_profile core_profile_user_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_key;
       public            postgres    false    221            g           2606    35608 0   core_sync_data_magnet core_sync_data_magnet_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_pkey;
       public            postgres    false    219            c           2606    35579 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    36163 J   django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_clockedschedule DROP CONSTRAINT django_celery_beat_clockedschedule_pkey;
       public            postgres    false    260            �           2606    36092 J   django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_crontabschedule DROP CONSTRAINT django_celery_beat_crontabschedule_pkey;
       public            postgres    false    251            �           2606    36100 L   django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.django_celery_beat_intervalschedule DROP CONSTRAINT django_celery_beat_intervalschedule_pkey;
       public            postgres    false    253            �           2606    36114 H   django_celery_beat_periodictask django_celery_beat_periodictask_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);
 r   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_name_key;
       public            postgres    false    255            �           2606    36112 D   django_celery_beat_periodictask django_celery_beat_periodictask_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_pkey;
       public            postgres    false    255            �           2606    36119 F   django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);
 p   ALTER TABLE ONLY public.django_celery_beat_periodictasks DROP CONSTRAINT django_celery_beat_periodictasks_pkey;
       public            postgres    false    256            �           2606    36148 `   django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);
 �   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq;
       public            postgres    false    258    258    258            �           2606    36140 F   django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solarschedule_pkey;
       public            postgres    false    258            �           2606    36208 R   django_celery_results_chordcounter django_celery_results_chordcounter_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_group_id_key UNIQUE (group_id);
 |   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_group_id_key;
       public            postgres    false    264            �           2606    36206 J   django_celery_results_chordcounter django_celery_results_chordcounter_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_pkey;
       public            postgres    false    264            �           2606    36222 P   django_celery_results_groupresult django_celery_results_groupresult_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_group_id_key UNIQUE (group_id);
 z   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_group_id_key;
       public            postgres    false    266            �           2606    36220 H   django_celery_results_groupresult django_celery_results_groupresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_pkey;
       public            postgres    false    266            �           2606    36181 F   django_celery_results_taskresult django_celery_results_taskresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_pkey;
       public            postgres    false    262            �           2606    36183 M   django_celery_results_taskresult django_celery_results_taskresult_task_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);
 w   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_task_id_key;
       public            postgres    false    262            =           2606    35463 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    35461 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ;           2606    35453 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201                       2606    36279 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    269            �           2606    35858 (   followup_followup followup_followup_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_pkey;
       public            postgres    false    237            �           2606    35847 8   followup_followupselected followup_followupselected_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupselected_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupselected_pkey;
       public            postgres    false    235                        2606    36241 8   notification_notification notification_notification_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_pkey;
       public            postgres    false    268            �           2606    35722 ,   staff_staff_history staff_staff_history_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_pkey;
       public            postgres    false    233            �           2606    35696 (   staff_staff_level staff_staff_level_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_pkey;
       public            postgres    false    227            �           2606    35698 +   staff_staff_level staff_staff_level_uid_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_uid_key UNIQUE (uid);
 U   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_uid_key;
       public            postgres    false    227            }           2606    35686    staff_staff staff_staff_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_pkey;
       public            postgres    false    225            �           2606    35706 :   staff_staff_salary_monthly staff_staff_salary_monthly_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_monthly_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_monthly_pkey;
       public            postgres    false    229            	           2606    36312 8   staff_staff_salary_montly staff_staff_salary_montly_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_montly_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_montly_pkey;
       public            postgres    false    270            �           2606    35714 *   staff_staff_salary staff_staff_salary_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_pkey;
       public            postgres    false    231            �           2606    35688    staff_staff staff_staff_uid_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_uid_key UNIQUE (uid);
 I   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_uid_key;
       public            postgres    false    225            E           1259    35600    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            J           1259    35537 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            M           1259    35538 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            @           1259    35523 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            U           1259    35553 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            X           1259    35552 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            [           1259    35567 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ^           1259    35566 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            R           1259    35594     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            �           1259    35957 $   client_client_created_by_id_a8280477    INDEX     g   CREATE INDEX client_client_created_by_id_a8280477 ON public.client_client USING btree (created_by_id);
 8   DROP INDEX public.client_client_created_by_id_a8280477;
       public            postgres    false    239            �           1259    36081 6   client_client_duplicate_suspect_client_new_id_2ed995c6    INDEX     �   CREATE INDEX client_client_duplicate_suspect_client_new_id_2ed995c6 ON public.client_client_duplicate_suspect USING btree (client_new_id);
 J   DROP INDEX public.client_client_duplicate_suspect_client_new_id_2ed995c6;
       public            postgres    false    249            �           1259    36082 6   client_client_duplicate_suspect_client_old_id_bee2d272    INDEX     �   CREATE INDEX client_client_duplicate_suspect_client_old_id_bee2d272 ON public.client_client_duplicate_suspect USING btree (client_old_id);
 J   DROP INDEX public.client_client_duplicate_suspect_client_old_id_bee2d272;
       public            postgres    false    249            �           1259    36083 6   client_client_duplicate_suspect_created_by_id_9da4a207    INDEX     �   CREATE INDEX client_client_duplicate_suspect_created_by_id_9da4a207 ON public.client_client_duplicate_suspect USING btree (created_by_id);
 J   DROP INDEX public.client_client_duplicate_suspect_created_by_id_9da4a207;
       public            postgres    false    249            �           1259    36084 6   client_client_duplicate_suspect_updated_by_id_eb786622    INDEX     �   CREATE INDEX client_client_duplicate_suspect_updated_by_id_eb786622 ON public.client_client_duplicate_suspect USING btree (updated_by_id);
 J   DROP INDEX public.client_client_duplicate_suspect_updated_by_id_eb786622;
       public            postgres    false    249            �           1259    36056 )   client_client_followup_client_id_45370856    INDEX     q   CREATE INDEX client_client_followup_client_id_45370856 ON public.client_client_followup USING btree (client_id);
 =   DROP INDEX public.client_client_followup_client_id_45370856;
       public            postgres    false    247            �           1259    36057 -   client_client_followup_created_by_id_57569ec6    INDEX     y   CREATE INDEX client_client_followup_created_by_id_57569ec6 ON public.client_client_followup USING btree (created_by_id);
 A   DROP INDEX public.client_client_followup_created_by_id_57569ec6;
       public            postgres    false    247            �           1259    36058 +   client_client_followup_followup_id_fc5601fd    INDEX     u   CREATE INDEX client_client_followup_followup_id_fc5601fd ON public.client_client_followup USING btree (followup_id);
 ?   DROP INDEX public.client_client_followup_followup_id_fc5601fd;
       public            postgres    false    247            �           1259    36059 (   client_client_followup_staff_id_04b7a4de    INDEX     o   CREATE INDEX client_client_followup_staff_id_04b7a4de ON public.client_client_followup USING btree (staff_id);
 <   DROP INDEX public.client_client_followup_staff_id_04b7a4de;
       public            postgres    false    247            �           1259    36060 -   client_client_followup_updated_by_id_20a2ab61    INDEX     y   CREATE INDEX client_client_followup_updated_by_id_20a2ab61 ON public.client_client_followup USING btree (updated_by_id);
 A   DROP INDEX public.client_client_followup_updated_by_id_20a2ab61;
       public            postgres    false    247            �           1259    36027 (   client_client_journey_client_id_2e449a98    INDEX     o   CREATE INDEX client_client_journey_client_id_2e449a98 ON public.client_client_journey USING btree (client_id);
 <   DROP INDEX public.client_client_journey_client_id_2e449a98;
       public            postgres    false    245            �           1259    36028 ,   client_client_journey_created_by_id_88c21422    INDEX     w   CREATE INDEX client_client_journey_created_by_id_88c21422 ON public.client_client_journey USING btree (created_by_id);
 @   DROP INDEX public.client_client_journey_created_by_id_88c21422;
       public            postgres    false    245            �           1259    36029 '   client_client_journey_staff_id_6ff5bed2    INDEX     m   CREATE INDEX client_client_journey_staff_id_6ff5bed2 ON public.client_client_journey USING btree (staff_id);
 ;   DROP INDEX public.client_client_journey_staff_id_6ff5bed2;
       public            postgres    false    245            �           1259    36030 ,   client_client_journey_updated_by_id_1f07dea5    INDEX     w   CREATE INDEX client_client_journey_updated_by_id_1f07dea5 ON public.client_client_journey USING btree (updated_by_id);
 @   DROP INDEX public.client_client_journey_updated_by_id_1f07dea5;
       public            postgres    false    245            �           1259    36003 )   client_client_schedule_client_id_e3ee1cbc    INDEX     q   CREATE INDEX client_client_schedule_client_id_e3ee1cbc ON public.client_client_schedule USING btree (client_id);
 =   DROP INDEX public.client_client_schedule_client_id_e3ee1cbc;
       public            postgres    false    243            �           1259    36004 -   client_client_schedule_created_by_id_9b078863    INDEX     y   CREATE INDEX client_client_schedule_created_by_id_9b078863 ON public.client_client_schedule USING btree (created_by_id);
 A   DROP INDEX public.client_client_schedule_created_by_id_9b078863;
       public            postgres    false    243            �           1259    36005 (   client_client_schedule_staff_id_92fd05bd    INDEX     o   CREATE INDEX client_client_schedule_staff_id_92fd05bd ON public.client_client_schedule USING btree (staff_id);
 <   DROP INDEX public.client_client_schedule_staff_id_92fd05bd;
       public            postgres    false    243            �           1259    36006 -   client_client_schedule_updated_by_id_89e26ce0    INDEX     y   CREATE INDEX client_client_schedule_updated_by_id_89e26ce0 ON public.client_client_schedule USING btree (updated_by_id);
 A   DROP INDEX public.client_client_schedule_updated_by_id_89e26ce0;
       public            postgres    false    243            �           1259    35979 &   client_client_staff_client_id_196dca78    INDEX     k   CREATE INDEX client_client_staff_client_id_196dca78 ON public.client_client_staff USING btree (client_id);
 :   DROP INDEX public.client_client_staff_client_id_196dca78;
       public            postgres    false    241            �           1259    35980 *   client_client_staff_created_by_id_ef63d6bf    INDEX     s   CREATE INDEX client_client_staff_created_by_id_ef63d6bf ON public.client_client_staff USING btree (created_by_id);
 >   DROP INDEX public.client_client_staff_created_by_id_ef63d6bf;
       public            postgres    false    241            �           1259    35981 %   client_client_staff_staff_id_2a3b6b6e    INDEX     i   CREATE INDEX client_client_staff_staff_id_2a3b6b6e ON public.client_client_staff USING btree (staff_id);
 9   DROP INDEX public.client_client_staff_staff_id_2a3b6b6e;
       public            postgres    false    241            �           1259    35982 *   client_client_staff_updated_by_id_35a02e55    INDEX     s   CREATE INDEX client_client_staff_updated_by_id_35a02e55 ON public.client_client_staff USING btree (updated_by_id);
 >   DROP INDEX public.client_client_staff_updated_by_id_35a02e55;
       public            postgres    false    241            �           1259    35958 $   client_client_updated_by_id_12f0c54f    INDEX     g   CREATE INDEX client_client_updated_by_id_12f0c54f ON public.client_client USING btree (updated_by_id);
 8   DROP INDEX public.client_client_updated_by_id_12f0c54f;
       public            postgres    false    239            w           1259    35677 3   core_history_syncdata_magnet_created_by_id_d178392e    INDEX     �   CREATE INDEX core_history_syncdata_magnet_created_by_id_d178392e ON public.core_history_syncdata_magnet USING btree (created_by_id);
 G   DROP INDEX public.core_history_syncdata_magnet_created_by_id_d178392e;
       public            postgres    false    223            z           1259    35678 3   core_history_syncdata_magnet_updated_by_id_a7d3bab4    INDEX     �   CREATE INDEX core_history_syncdata_magnet_updated_by_id_a7d3bab4 ON public.core_history_syncdata_magnet USING btree (updated_by_id);
 G   DROP INDEX public.core_history_syncdata_magnet_updated_by_id_a7d3bab4;
       public            postgres    false    223            i           1259    35665 #   core_profile_created_by_id_d0c22ea6    INDEX     e   CREATE INDEX core_profile_created_by_id_d0c22ea6 ON public.core_profile USING btree (created_by_id);
 7   DROP INDEX public.core_profile_created_by_id_d0c22ea6;
       public            postgres    false    221            j           1259    35664     core_profile_email_858298b3_like    INDEX     n   CREATE INDEX core_profile_email_858298b3_like ON public.core_profile USING btree (email varchar_pattern_ops);
 4   DROP INDEX public.core_profile_email_858298b3_like;
       public            postgres    false    221            m           1259    35663 #   core_profile_phone_no_312b2c31_like    INDEX     t   CREATE INDEX core_profile_phone_no_312b2c31_like ON public.core_profile USING btree (phone_no varchar_pattern_ops);
 7   DROP INDEX public.core_profile_phone_no_312b2c31_like;
       public            postgres    false    221            t           1259    35666 #   core_profile_updated_by_id_f1bd9ad3    INDEX     e   CREATE INDEX core_profile_updated_by_id_f1bd9ad3 ON public.core_profile USING btree (updated_by_id);
 7   DROP INDEX public.core_profile_updated_by_id_f1bd9ad3;
       public            postgres    false    221            e           1259    35646 ,   core_sync_data_magnet_created_by_id_411b3df8    INDEX     w   CREATE INDEX core_sync_data_magnet_created_by_id_411b3df8 ON public.core_sync_data_magnet USING btree (created_by_id);
 @   DROP INDEX public.core_sync_data_magnet_created_by_id_411b3df8;
       public            postgres    false    219            h           1259    35647 ,   core_sync_data_magnet_updated_by_id_44e7c6a9    INDEX     w   CREATE INDEX core_sync_data_magnet_updated_by_id_44e7c6a9 ON public.core_sync_data_magnet USING btree (updated_by_id);
 @   DROP INDEX public.core_sync_data_magnet_updated_by_id_44e7c6a9;
       public            postgres    false    219            a           1259    35590 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            d           1259    35591 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    36228    django_cele_date_cr_bd6c1d_idx    INDEX     t   CREATE INDEX django_cele_date_cr_bd6c1d_idx ON public.django_celery_results_groupresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_bd6c1d_idx;
       public            postgres    false    266            �           1259    36226    django_cele_date_cr_f04a50_idx    INDEX     s   CREATE INDEX django_cele_date_cr_f04a50_idx ON public.django_celery_results_taskresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_f04a50_idx;
       public            postgres    false    262            �           1259    36229    django_cele_date_do_caae0e_idx    INDEX     q   CREATE INDEX django_cele_date_do_caae0e_idx ON public.django_celery_results_groupresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_caae0e_idx;
       public            postgres    false    266            �           1259    36227    django_cele_date_do_f59aad_idx    INDEX     p   CREATE INDEX django_cele_date_do_f59aad_idx ON public.django_celery_results_taskresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_f59aad_idx;
       public            postgres    false    262            �           1259    36224    django_cele_status_9b6201_idx    INDEX     l   CREATE INDEX django_cele_status_9b6201_idx ON public.django_celery_results_taskresult USING btree (status);
 1   DROP INDEX public.django_cele_status_9b6201_idx;
       public            postgres    false    262            �           1259    36223    django_cele_task_na_08aec9_idx    INDEX     p   CREATE INDEX django_cele_task_na_08aec9_idx ON public.django_celery_results_taskresult USING btree (task_name);
 2   DROP INDEX public.django_cele_task_na_08aec9_idx;
       public            postgres    false    262            �           1259    36225    django_cele_worker_d54dd8_idx    INDEX     l   CREATE INDEX django_cele_worker_d54dd8_idx ON public.django_celery_results_taskresult USING btree (worker);
 1   DROP INDEX public.django_cele_worker_d54dd8_idx;
       public            postgres    false    262            �           1259    36169 3   django_celery_beat_periodictask_clocked_id_47a69f82    INDEX     �   CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);
 G   DROP INDEX public.django_celery_beat_periodictask_clocked_id_47a69f82;
       public            postgres    false    255            �           1259    36131 3   django_celery_beat_periodictask_crontab_id_d3cba168    INDEX     �   CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);
 G   DROP INDEX public.django_celery_beat_periodictask_crontab_id_d3cba168;
       public            postgres    false    255            �           1259    36132 4   django_celery_beat_periodictask_interval_id_a8ca27da    INDEX     �   CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);
 H   DROP INDEX public.django_celery_beat_periodictask_interval_id_a8ca27da;
       public            postgres    false    255            �           1259    36130 2   django_celery_beat_periodictask_name_265a36b7_like    INDEX     �   CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);
 F   DROP INDEX public.django_celery_beat_periodictask_name_265a36b7_like;
       public            postgres    false    255            �           1259    36146 1   django_celery_beat_periodictask_solar_id_a87ce72c    INDEX     �   CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);
 E   DROP INDEX public.django_celery_beat_periodictask_solar_id_a87ce72c;
       public            postgres    false    255            �           1259    36209 9   django_celery_results_chordcounter_group_id_1f70858c_like    INDEX     �   CREATE INDEX django_celery_results_chordcounter_group_id_1f70858c_like ON public.django_celery_results_chordcounter USING btree (group_id varchar_pattern_ops);
 M   DROP INDEX public.django_celery_results_chordcounter_group_id_1f70858c_like;
       public            postgres    false    264            �           1259    36230 8   django_celery_results_groupresult_group_id_a085f1a9_like    INDEX     �   CREATE INDEX django_celery_results_groupresult_group_id_a085f1a9_like ON public.django_celery_results_groupresult USING btree (group_id varchar_pattern_ops);
 L   DROP INDEX public.django_celery_results_groupresult_group_id_a085f1a9_like;
       public            postgres    false    266            �           1259    36184 6   django_celery_results_taskresult_task_id_de0d95bf_like    INDEX     �   CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);
 J   DROP INDEX public.django_celery_results_taskresult_task_id_de0d95bf_like;
       public            postgres    false    262                       1259    36281 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    269                       1259    36280 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    269            �           1259    35881 (   followup_followup_created_by_id_bd33bd23    INDEX     o   CREATE INDEX followup_followup_created_by_id_bd33bd23 ON public.followup_followup USING btree (created_by_id);
 <   DROP INDEX public.followup_followup_created_by_id_bd33bd23;
       public            postgres    false    237            �           1259    35882 (   followup_followup_updated_by_id_aeb66564    INDEX     o   CREATE INDEX followup_followup_updated_by_id_aeb66564 ON public.followup_followup USING btree (updated_by_id);
 <   DROP INDEX public.followup_followup_updated_by_id_aeb66564;
       public            postgres    false    237            �           1259    35869 0   followup_followupselected_created_by_id_d6e0a19e    INDEX        CREATE INDEX followup_followupselected_created_by_id_d6e0a19e ON public.followup_followupselected USING btree (created_by_id);
 D   DROP INDEX public.followup_followupselected_created_by_id_d6e0a19e;
       public            postgres    false    235            �           1259    35870 0   followup_followupselected_updated_by_id_f571c189    INDEX        CREATE INDEX followup_followupselected_updated_by_id_f571c189 ON public.followup_followupselected USING btree (updated_by_id);
 D   DROP INDEX public.followup_followupselected_updated_by_id_f571c189;
       public            postgres    false    235            �           1259    36267 ,   notification_notification_client_id_56858ebd    INDEX     w   CREATE INDEX notification_notification_client_id_56858ebd ON public.notification_notification USING btree (client_id);
 @   DROP INDEX public.notification_notification_client_id_56858ebd;
       public            postgres    false    268            �           1259    36268 5   notification_notification_client_schedule_id_cba97593    INDEX     �   CREATE INDEX notification_notification_client_schedule_id_cba97593 ON public.notification_notification USING btree (client_schedule_id);
 I   DROP INDEX public.notification_notification_client_schedule_id_cba97593;
       public            postgres    false    268            �           1259    36269 0   notification_notification_created_by_id_66da0796    INDEX        CREATE INDEX notification_notification_created_by_id_66da0796 ON public.notification_notification USING btree (created_by_id);
 D   DROP INDEX public.notification_notification_created_by_id_66da0796;
       public            postgres    false    268                       1259    36270 +   notification_notification_staff_id_8c97b845    INDEX     u   CREATE INDEX notification_notification_staff_id_8c97b845 ON public.notification_notification USING btree (staff_id);
 ?   DROP INDEX public.notification_notification_staff_id_8c97b845;
       public            postgres    false    268                       1259    36271 0   notification_notification_updated_by_id_08647d1b    INDEX        CREATE INDEX notification_notification_updated_by_id_08647d1b ON public.notification_notification USING btree (updated_by_id);
 D   DROP INDEX public.notification_notification_updated_by_id_08647d1b;
       public            postgres    false    268            {           1259    35748 "   staff_staff_created_by_id_750bb59d    INDEX     c   CREATE INDEX staff_staff_created_by_id_750bb59d ON public.staff_staff USING btree (created_by_id);
 6   DROP INDEX public.staff_staff_created_by_id_750bb59d;
       public            postgres    false    225            �           1259    35829 +   staff_staff_history_child_staff_id_339b898a    INDEX     u   CREATE INDEX staff_staff_history_child_staff_id_339b898a ON public.staff_staff_history USING btree (child_staff_id);
 ?   DROP INDEX public.staff_staff_history_child_staff_id_339b898a;
       public            postgres    false    233            �           1259    35830 *   staff_staff_history_created_by_id_d7ef2079    INDEX     s   CREATE INDEX staff_staff_history_created_by_id_d7ef2079 ON public.staff_staff_history USING btree (created_by_id);
 >   DROP INDEX public.staff_staff_history_created_by_id_d7ef2079;
       public            postgres    false    233            �           1259    35831 ,   staff_staff_history_parent_staff_id_a548da9e    INDEX     w   CREATE INDEX staff_staff_history_parent_staff_id_a548da9e ON public.staff_staff_history USING btree (parent_staff_id);
 @   DROP INDEX public.staff_staff_history_parent_staff_id_a548da9e;
       public            postgres    false    233            �           1259    35832 +   staff_staff_history_staff_level_id_01fbd862    INDEX     u   CREATE INDEX staff_staff_history_staff_level_id_01fbd862 ON public.staff_staff_history USING btree (staff_level_id);
 ?   DROP INDEX public.staff_staff_history_staff_level_id_01fbd862;
       public            postgres    false    233            �           1259    35833 *   staff_staff_history_updated_by_id_0a1a85b8    INDEX     s   CREATE INDEX staff_staff_history_updated_by_id_0a1a85b8 ON public.staff_staff_history USING btree (updated_by_id);
 >   DROP INDEX public.staff_staff_history_updated_by_id_0a1a85b8;
       public            postgres    false    233            �           1259    35760 (   staff_staff_level_created_by_id_591009cc    INDEX     o   CREATE INDEX staff_staff_level_created_by_id_591009cc ON public.staff_staff_level USING btree (created_by_id);
 <   DROP INDEX public.staff_staff_level_created_by_id_591009cc;
       public            postgres    false    227            �           1259    35761 (   staff_staff_level_updated_by_id_27db31c0    INDEX     o   CREATE INDEX staff_staff_level_updated_by_id_27db31c0 ON public.staff_staff_level USING btree (updated_by_id);
 <   DROP INDEX public.staff_staff_level_updated_by_id_27db31c0;
       public            postgres    false    227            ~           1259    35749    staff_staff_profile_id_f1607ae4    INDEX     ]   CREATE INDEX staff_staff_profile_id_f1607ae4 ON public.staff_staff USING btree (profile_id);
 3   DROP INDEX public.staff_staff_profile_id_f1607ae4;
       public            postgres    false    225            �           1259    35800 )   staff_staff_salary_created_by_id_79ac0491    INDEX     q   CREATE INDEX staff_staff_salary_created_by_id_79ac0491 ON public.staff_staff_salary USING btree (created_by_id);
 =   DROP INDEX public.staff_staff_salary_created_by_id_79ac0491;
       public            postgres    false    231            �           1259    35777 1   staff_staff_salary_monthly_created_by_id_6b50431d    INDEX     �   CREATE INDEX staff_staff_salary_monthly_created_by_id_6b50431d ON public.staff_staff_salary_monthly USING btree (created_by_id);
 E   DROP INDEX public.staff_staff_salary_monthly_created_by_id_6b50431d;
       public            postgres    false    229            �           1259    35778 ,   staff_staff_salary_monthly_staff_id_9d6d9629    INDEX     w   CREATE INDEX staff_staff_salary_monthly_staff_id_9d6d9629 ON public.staff_staff_salary_monthly USING btree (staff_id);
 @   DROP INDEX public.staff_staff_salary_monthly_staff_id_9d6d9629;
       public            postgres    false    229            �           1259    35779 1   staff_staff_salary_monthly_updated_by_id_22beedbc    INDEX     �   CREATE INDEX staff_staff_salary_monthly_updated_by_id_22beedbc ON public.staff_staff_salary_monthly USING btree (updated_by_id);
 E   DROP INDEX public.staff_staff_salary_monthly_updated_by_id_22beedbc;
       public            postgres    false    229                       1259    36313 0   staff_staff_salary_montly_created_by_id_f9fa18f6    INDEX        CREATE INDEX staff_staff_salary_montly_created_by_id_f9fa18f6 ON public.staff_staff_salary_montly USING btree (created_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_created_by_id_f9fa18f6;
       public            postgres    false    270            
           1259    36314 0   staff_staff_salary_montly_updated_by_id_c063865d    INDEX        CREATE INDEX staff_staff_salary_montly_updated_by_id_c063865d ON public.staff_staff_salary_montly USING btree (updated_by_id);
 D   DROP INDEX public.staff_staff_salary_montly_updated_by_id_c063865d;
       public            postgres    false    270            �           1259    35801 $   staff_staff_salary_staff_id_ff8bde85    INDEX     g   CREATE INDEX staff_staff_salary_staff_id_ff8bde85 ON public.staff_staff_salary USING btree (staff_id);
 8   DROP INDEX public.staff_staff_salary_staff_id_ff8bde85;
       public            postgres    false    231            �           1259    35802 *   staff_staff_salary_staff_level_id_1864b0fd    INDEX     s   CREATE INDEX staff_staff_salary_staff_level_id_1864b0fd ON public.staff_staff_salary USING btree (staff_level_id);
 >   DROP INDEX public.staff_staff_salary_staff_level_id_1864b0fd;
       public            postgres    false    231            �           1259    35803 )   staff_staff_salary_updated_by_id_35738d50    INDEX     q   CREATE INDEX staff_staff_salary_updated_by_id_35738d50 ON public.staff_staff_salary USING btree (updated_by_id);
 =   DROP INDEX public.staff_staff_salary_updated_by_id_35738d50;
       public            postgres    false    231                       1259    35834 #   staff_staff_staff_level_id_02e5808b    INDEX     e   CREATE INDEX staff_staff_staff_level_id_02e5808b ON public.staff_staff USING btree (staff_level_id);
 7   DROP INDEX public.staff_staff_staff_level_id_02e5808b;
       public            postgres    false    225            �           1259    35835 $   staff_staff_staff_parent_id_3a0ea1e3    INDEX     g   CREATE INDEX staff_staff_staff_parent_id_3a0ea1e3 ON public.staff_staff USING btree (staff_parent_id);
 8   DROP INDEX public.staff_staff_staff_parent_id_3a0ea1e3;
       public            postgres    false    225            �           1259    35836 "   staff_staff_updated_by_id_ae4985b6    INDEX     c   CREATE INDEX staff_staff_updated_by_id_ae4985b6 ON public.staff_staff USING btree (updated_by_id);
 6   DROP INDEX public.staff_staff_updated_by_id_ae4985b6;
       public            postgres    false    225                       2606    35532 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3396    205    209                       2606    35527 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    3401                       2606    35518 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    3391    203                       2606    35547 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3401    207    213                       2606    35542 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    3409    211                       2606    35561 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    205    3396                       2606    35556 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    3409    211            2           2606    35947 B   client_client client_client_created_by_id_a8280477_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id;
       public          postgres    false    211    239    3409            E           2606    36061 X   client_client_duplicate_suspect client_client_duplic_client_new_id_2ed995c6_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_client_new_id_2ed995c6_fk_client_cl FOREIGN KEY (client_new_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_client_new_id_2ed995c6_fk_client_cl;
       public          postgres    false    239    3494    249            F           2606    36066 X   client_client_duplicate_suspect client_client_duplic_client_old_id_bee2d272_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_client_old_id_bee2d272_fk_client_cl FOREIGN KEY (client_old_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_client_old_id_bee2d272_fk_client_cl;
       public          postgres    false    249    3494    239            G           2606    36071 X   client_client_duplicate_suspect client_client_duplic_created_by_id_9da4a207_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_created_by_id_9da4a207_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_created_by_id_9da4a207_fk_auth_user;
       public          postgres    false    249    3409    211            H           2606    36076 X   client_client_duplicate_suspect client_client_duplic_updated_by_id_eb786622_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_updated_by_id_eb786622_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_updated_by_id_eb786622_fk_auth_user;
       public          postgres    false    211    3409    249            B           2606    36041 M   client_client_followup client_client_follow_followup_id_fc5601fd_fk_followup_    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_ FOREIGN KEY (followup_id) REFERENCES public.followup_followup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_;
       public          postgres    false    247    3490    237            @           2606    36031 T   client_client_followup client_client_followup_client_id_45370856_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id;
       public          postgres    false    247    3494    239            A           2606    36036 T   client_client_followup client_client_followup_created_by_id_57569ec6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id;
       public          postgres    false    247    3409    211            C           2606    36046 Q   client_client_followup client_client_followup_staff_id_04b7a4de_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id;
       public          postgres    false    3453    225    247            D           2606    36051 T   client_client_followup client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id;
       public          postgres    false    247    211    3409            <           2606    36007 R   client_client_journey client_client_journey_client_id_2e449a98_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id;
       public          postgres    false    239    245    3494            =           2606    36012 R   client_client_journey client_client_journey_created_by_id_88c21422_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id;
       public          postgres    false    211    245    3409            >           2606    36017 O   client_client_journey client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id;
       public          postgres    false    225    245    3453            ?           2606    36022 R   client_client_journey client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id;
       public          postgres    false    211    245    3409            8           2606    35983 T   client_client_schedule client_client_schedule_client_id_e3ee1cbc_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id;
       public          postgres    false    239    3494    243            9           2606    35988 T   client_client_schedule client_client_schedule_created_by_id_9b078863_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id;
       public          postgres    false    243    211    3409            :           2606    35993 Q   client_client_schedule client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id;
       public          postgres    false    3453    243    225            ;           2606    35998 T   client_client_schedule client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id;
       public          postgres    false    211    243    3409            4           2606    35959 N   client_client_staff client_client_staff_client_id_196dca78_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id;
       public          postgres    false    241    239    3494            5           2606    35964 N   client_client_staff client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id;
       public          postgres    false    211    241    3409            6           2606    35969 K   client_client_staff client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id;
       public          postgres    false    3453    225    241            7           2606    35974 N   client_client_staff client_client_staff_updated_by_id_35a02e55_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id;
       public          postgres    false    241    211    3409            3           2606    35952 B   client_client client_client_updated_by_id_12f0c54f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id;
       public          postgres    false    239    211    3409                       2606    35667 U   core_history_syncdata_magnet core_history_syncdat_created_by_id_d178392e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdat_created_by_id_d178392e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdat_created_by_id_d178392e_fk_auth_user;
       public          postgres    false    3409    223    211                       2606    35672 U   core_history_syncdata_magnet core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user;
       public          postgres    false    211    223    3409                       2606    35648 @   core_profile core_profile_created_by_id_d0c22ea6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id;
       public          postgres    false    211    3409    221                       2606    35653 @   core_profile core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id;
       public          postgres    false    3409    221    211                       2606    35658 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public          postgres    false    3409    221    211                       2606    35636 R   core_sync_data_magnet core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id;
       public          postgres    false    219    3409    211                       2606    35641 R   core_sync_data_magnet core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id;
       public          postgres    false    3409    219    211                       2606    35580 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    3391                       2606    35585 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3409    217    211            L           2606    36164 U   django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce;
       public          postgres    false    255    3557    260            I           2606    36120 U   django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce;
       public          postgres    false    251    3538    255            J           2606    36125 V   django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce;
       public          postgres    false    3540    255    253            K           2606    36141 S   django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce;
       public          postgres    false    255    258    3555            0           2606    35871 J   followup_followup followup_followup_created_by_id_bd33bd23_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id;
       public          postgres    false    237    3409    211            1           2606    35876 J   followup_followup followup_followup_updated_by_id_aeb66564_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id;
       public          postgres    false    237    3409    211            .           2606    35859 R   followup_followupselected followup_followupsel_created_by_id_d6e0a19e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user;
       public          postgres    false    235    3409    211            /           2606    35864 R   followup_followupselected followup_followupsel_updated_by_id_f571c189_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user;
       public          postgres    false    235    211    3409            M           2606    36242 N   notification_notification notification_notific_client_id_56858ebd_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl;
       public          postgres    false    239    3494    268            N           2606    36247 W   notification_notification notification_notific_client_schedule_id_cba97593_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl FOREIGN KEY (client_schedule_id) REFERENCES public.client_client_schedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl;
       public          postgres    false    3509    268    243            O           2606    36252 R   notification_notification notification_notific_created_by_id_66da0796_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user;
       public          postgres    false    268    211    3409            Q           2606    36262 R   notification_notification notification_notific_updated_by_id_08647d1b_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user;
       public          postgres    false    211    268    3409            P           2606    36257 W   notification_notification notification_notification_staff_id_8c97b845_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id;
       public          postgres    false    3453    268    225                       2606    35738 >   staff_staff staff_staff_created_by_id_750bb59d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id;
       public          postgres    false    225    3409    211            )           2606    35804 Q   staff_staff_history staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id FOREIGN KEY (child_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id;
       public          postgres    false    225    3453    233            *           2606    35809 N   staff_staff_history staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id;
       public          postgres    false    233    211    3409            +           2606    35814 R   staff_staff_history staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id FOREIGN KEY (parent_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id;
       public          postgres    false    3453    225    233            ,           2606    35819 L   staff_staff_history staff_staff_history_staff_level_id_01fbd862_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta;
       public          postgres    false    3462    227    233            -           2606    35824 N   staff_staff_history staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id;
       public          postgres    false    211    233    3409                        2606    35750 J   staff_staff_level staff_staff_level_created_by_id_591009cc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id;
       public          postgres    false    3409    211    227            !           2606    35755 J   staff_staff_level staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id;
       public          postgres    false    3409    227    211                       2606    35743 >   staff_staff staff_staff_profile_id_f1607ae4_fk_core_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id FOREIGN KEY (profile_id) REFERENCES public.core_profile(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id;
       public          postgres    false    221    3441    225            %           2606    35780 L   staff_staff_salary staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id;
       public          postgres    false    3409    231    211            "           2606    35762 S   staff_staff_salary_monthly staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user;
       public          postgres    false    229    211    3409            R           2606    36315 R   staff_staff_salary_montly staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user;
       public          postgres    false    3409    270    211            $           2606    35772 S   staff_staff_salary_monthly staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user;
       public          postgres    false    3409    229    211            S           2606    36320 R   staff_staff_salary_montly staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user;
       public          postgres    false    3409    270    211            #           2606    35767 Y   staff_staff_salary_monthly staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id;
       public          postgres    false    225    3453    229            &           2606    35785 I   staff_staff_salary staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id;
       public          postgres    false    231    225    3453            '           2606    35790 J   staff_staff_salary staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta;
       public          postgres    false    231    3462    227            (           2606    35795 L   staff_staff_salary staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id;
       public          postgres    false    3409    231    211                       2606    35723 G   staff_staff staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id;
       public          postgres    false    3462    225    227                       2606    35728 B   staff_staff staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id;
       public          postgres    false    225    225    3453                       2606    35733 >   staff_staff staff_staff_updated_by_id_ae4985b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id;
       public          postgres    false    225    211    3409            �      x������ � �      �      x������ � �      �   B  x�}�]r�:���U��[���6����$�1.����~��>��[_�n�#N�Ŀ�����j�߫�-�B	}}���R��}���Qn(����4ltCl-�5f"tΞ��9��8?Dm��yBs$w���c� ��h���#p]p��̯�h�A��T4��/Bz��!��V<`]��&8x��"Zk��)U�ϧ��x����p�Ϧ�����9<�6?6��U��sG뀆̈T4��d���Jx�|}�6��e�
�����'k��d��{d�g��j����YW�+�m������i�m�]��7?�e��}IFvs%�����J���Ά�U]�N\X(�Ja4�d��*y�`bY6unUc̡lb�ߏ۵��[�>��ǰ��-
sÎ�aٰ�*��Bɤ�ڊR�x2)�aQ�T&��\�q�ޓ��.e�* �{z�U$p~�$��J�횞��1�ۼ|_m(�I���'��ZV�?�CYv�b���Tww*���'�odw��#�[��&����ٲ��_v�aU����������V��5LB5�����!�4:�����:1x���&u��So~�O�%��t��B�I��-�)L�b�s�
s����,ra���� �1/���І/d��n7�����a'�dI�I�	�b�:A����,D5� b1���r��A���4�^D(�ewW��j:"�9"�Uu�|KD�ud\#DD������h8rk�3�^�r� av��NM� �{���>���|o:���-� U%��4 Lᩐ	d,V��d�ͯ�1|����hT�/�\�᱂�+��e�C�	D)HT�(�d��H�5�ԥL�⡢�)�B!��m�e,�Ҫ�}��9��^?�Z_�S����1c込jo"�0Wa�؛����\�>�7���<q�y���f���]�c�c�M�Sz�`{M���\[M��$��z	�.~Ϗ�*j�$薽#�R���G��K=D�g�'����L�*��]h��D�[�����UǷ�����|߉�_�	���Dܭ��{ͨ��_��IԮW�� �]y�^���%d� ��6@g�^�|o�֯D}�g_vЌi:=��x����k�Yj�yW�31�r
��.Y�U*~T�K
A�J�&��B��w�XM�(`�ugZ��2tWU���? ?uKx_퉄W:��O$X�\�j:����o��h|7a/M��@�oO*H:� �D���"N_��m~�j�״��5fȍh��s�yƳZNx��x(䄶���Ǽ�җ)u�P3`iLӼH��s�ҧ����½~�'��!1�r��M~�8zE~�
<��(�x$N�����K���      �   d  x���K��H��)f���VEu�IQ��r��D^" ���s��Q�m�6��9U�1i��:�?u�!�p�������9+����j9ѥ�p�e+�]��9��`4�ummښdkAn�C^���*���ߍ��Fبw^�o���,6��C6v�
�W���Ho��d"����b�\��y?[��%J��R���9��ry����#v�7����Y����<X�.��[!z�?q"��(=��"��Tȕ���S]y�7U��A<���z���p��;߮w1<�J���y���x}��+ b���@<"lϷ��@�)T!���l�(���I�3����kP�+���y>��&W��|c��MaI����U$"�L�
�s�1�aE��I�t+�|�@���MK�����{�X�����Zۧi"��m���Ȣ��}��+���@�U�>y'
�Dg���^iw�
+P����lw~ޟv�2ʃ�wI)�k�rz[1&̔O&���S�
��2�Q�
��1<�}P�[���(k'D�&�h��n\{�K�������s%�I�b���5�V(>�?�&$�j!~e��92��JBg��r�E�sa+ó�u+�N�==�?U;���ϛƶ�����
��^��saAڮ%��ɹ_N#��T. ���"Z`���q2�Ra�8Ig�MtyЏ��I�[!}�WB0�{ȟĵ>V��^g�: ���e)��!��"��)�{9��e�>�.a/�U/O �U(^t+���+!a Av~�^�*p<�q_���v��sae,k^������*)�żޘ;]U����}}�q*kp��A�^	%!�N2�p!����"��xRGE7;{.�Aᇢ��;��0O�Z'��ygЩG ��E[�Z>������р5�@)����߆q}�՟mCJ �I��s<	��YSg3�K�v@��;H�G.��pk��n�Z�Uh�~���B�����Sz�C�&�&X@�����W�	������]X��@��w�v�]��ۚ�SVmy��[�oRd�찡�,̕}��<9�����7,6L��<�z_��o^�I����?����W����Ҽa�_���k�{�˗/�N}��      �      x������ � �      �      x������ � �      �      x���ks�F�6��+�}<u����#_d[�YI^�'6�D]E�dS��i����@5ЅO��C(�����|2+3&��#�u�v��T����RB��o�WG-��cY
��Ed'��Dv,����8���v�}�����S3=�������2������9�?����n�/�h�#���e�Я�Ɵ	F🶹�y��0��>ݻ��*<��	࿥M��*�dϟL���b
_����fU<0*�ē��.�ԥ�u'D�QVt�EC|0&S����o���]���>�����g�p����D:�%a�C[*_1���4��7��z-;IDBk"��EKɬX���v:6����Yw�+���g;Cb<�3��a���N(ח�o�z%`ǨSy����[XM4��x�����њ�q�p��I�w&�ԉ�y�t�r~�^+k��r��K�^�- �J�WD�@:7=��I���o5�fU:Vs:� ����.��:t�l��<g��J����,QA6�cP�0>;K7n��%홢�p��j����FTWo�UT��G�w�� �,:.�*&d�)��^fz�3�4�Ӿ�m><�����v�~&R���HT��+n^Iq*����ۓ�yx��EGD�䩆�g�UU�+��|u�H-��0@#ZG��԰Q�����:%���`���7*�Z��������K2�S-a�$y%��Y���pftU���N`ܲUc��c?�k������p�<��d(*�87�4��ͽ��O}tO�8>6��phe�h�a�4�#4I3{4̲���tv��Gvt�kTm׬`0Ք�"��Hv�'�K��!�3�[�1)
e�$76J��e.ˢ
]�6
�nSU(�3d8t���t��%K�h�ƒ�Ϻ,x���H��~�ؖ��ٶ8�p�/[fqO���S9���b��9N�5	��Q��ZW�0����ppMǢU �Z������V�rss~T$S�n�E�a����7؛{�s3[�7�&S_��|@�k�j�2�č�O�A[L:G��G�Nq��}����-"�lS������-R����2�RPLRCWU�L�RP���Rp6u^��a��$<ǈ��М�)����f_�?�9�E�qn�ʫ�����Z:�ƙ���'��c�W��$�4Z�� �gis�X�,��Kl���|Zs
i�)�ߕի��7�����rI'h3ah K�B�Y06f �`n��޵��e��࿿ Ж����d�=26;8����|@Z��V���U�[���ԬӰZ�!^w@J'bd$d�Ы K	�{uY�x|����~��DP�s�jηA�њ�g���\�eT�p���F ��Ή��vN��PΒL�T��u쏽ky<<���f|ڀ��K0Ucd ���<��+��y0_�g���O�G�ӣ5O�\Q!Y���f�f����I~RA���,�љ掌��غ��u����΋�`u)Q��Ia������3qX�F$�T5,F��^ٚ88Wl2�̇��=��!�)� ��˽�9ۼ~8��w��xH����<?m��p�����_��
�������T*5Bk�� |%�T�QSd-�u�u);��'O��J�� �ȔPɵ��f��L�V��"���Q�x� �	;W�vS����/kk
ְ�=`T�c"� �]T$:��ހwǅ������������)�5��m!7�
þ�3a�/����1�Ê�fTYͨ�:�vų-�v
D's0|� �C�:��B )'�ͱy�������wM�nsOzyO �͋��{b�l
V����(I��j�{)�v<�<��qp\;���P��s5�$߼��v�k�?<����fzh��w���}u�v���E�jE���BQB�����ɨ�b\e�����Vi-*b��J�
�qD�cL:�Nwܡ%��u�/�hʉ����Y����˷�Cπ���K({��+^�h��ԈsI�A��9����Sg���`h�."T
��0���;��Wԏn��fp��zD[e�%�n8@�7��hQ�<?@5t���L2i�*��Aۀ$$g�'��G���93Ą��.i��{
���b1����ā����@cu�&W���hq�ӚpK��`g,�_D� ���%h`�b�Кp�b�����_r���pjp��U�t�ׄ��%f<B"Z�h]�S���rgz�*X�˞��T8��aK��&����(���euU�e�+�|D��@�(�D���q>���Gų3Mf�&�c�&	��Ģ@�]�CCDA2�F�Fk�5MM��Z��*��PZ�t�/>G�) 7k�I�:6��艱x�T���O0�ן7	Gs�K0:������ߖIK�Ka{�S�S���� @��^R�'G�2��I1
��A$`���A!N�)���o_6������-&HTv�:�Y��슪0j�WD��g˨�I	�	�e� у�% G@hEuȠ� �����/��<���5�� ��J�Wbv6��C�C��*+�`	��z����r��kZG�O�K�K<�fL� a�6Y͓�<� �xs�\����7�lI�����x�1��"k��.���붟�A��r��z����+JБY���{�
��� H$⥌f�s��.X�e��b�C�.}m��o����x�"`%p{b�Ow��Uڧ��<O�?�
������୬��2J�o0���a��J��k�:�.�����nRع]�<��.A1�Q1^Y���'�$sh�����k���Z=0*�����Dz�iR���w:Z��9�M�����-E)��(UR��"��S	�>�K�N��T5��kX�ɈY��Q;�
�����Ṉp.���^�H��4�G�ߧO�����>�v� `�����/��]��i��e1��N����y��j�\��F�� N�:�F�����Jt�9�[	�$˙�����m����-10z)8X���xw;�?<z��,l*�i ���yj�Z-�uIX@#�R\x]�� �>��T�.S�K���P���z����۷-�����X�<�!5�Յ�RC�NaV�|�{�;��+7�4�)vƜ��Iy��+ƈ�+^�|��d��&w�Q�D���p�"Z������������������¦ s!9d���Dg��xxH ����H��F��k�5v-`���Wo<].WT�]��gU>28E�y݇ۧ��������}s1@Hr��
�L[��+1����w�v�X�W}C#���1^GcL�'����L�2L�(H��c�ns�/XE� �7��vq����_��xw�n��P
O[�S�.K�	����Ô�j?̳��P[��GTO�1i�*p�A��ܭ���΃����p<( 8���aZ�\��;tH�����oO���
*/"��������4Õ����%E���x�v�D�1-��[�b���!� ���>a�5I5���Ύ�(����z��������=���䲝�b_ɹ�38�`�\��Vu*��Yu�ƌPr]��'8��+�y�)$V1@�2wYY�>�>���3����C�nHbxl�ǭ���W�	:~\ÿ�������;�=���YU��=�L��uP�/]K�-�ߒk�6L9����w�i�i��1���1����4�����y~qy�X���(��	�HD/���;L���(�ӝ#k���=N��+�2���A�e	1_1X�����Y
�) ����w��'�۴�Ҋ�,�)�J`��0��	�碨9A�q�$SkUeT��*������(�!r�)�E0��I�1Ǜ7�]x��+O��Ӗ���B�ͳ`yEg�r?��Ɉ�+V���l��Q]6T*EWe�V��zj��>�NJt�w���1N� ��������kC0������\��nN^oy�\�O��C7��Lƍ=;S�)��E�E�e�)�r�^FG�V$�"��s'Tҝu& �Lu��~H_�7�7�7?>ާ;�ߒ���L�=���i������ęG	+9    5ٲ�Q��3�5�lՏ�Q=z�^�r�Ze0Q����K2	��O#$6�c�����&��� �KZ[h��8�!�]��$��I��R#����F�q{��l���?I8h@]
&5�ɨ�9��}�b�w�S3>m�"~)_3�"��\ڕO?����j�[�R=6u�@b�jLG�s�I�t�e�19BL�3hGh��P����Ay`>&0o���F��V�Mrqo�p�����E�*��T&5/@Խ A�a��|C�F�IXb	c��b:�}5�إ�'�?ܸt�~~HO�����>m�E_r'��@�L��4\��a�K�+ꕟ��d��:��r-Ϣ��)�^�ъ�FuRP�`�;�8�r����6���n�n]��q�O��q[8��.E8��:�	�/��I�b�ts�5O@�=L�Z�
.��>���I�\(�G��C�)��28E��Y�^�a�7������ln��~E��8�W��.7�2W(5�/����\�jèlR( 
&�R��9��s���()�D6Cj0r��mT�ɥ<�o�XFZp�'��ݺT5h+��M)ŪсQ5��]"Iӄ�KB3�M:m(x�1ڜ\s��7=��Y���~p_���������^t��2Uv�nO��!��S�j`W�񛄿-V��)2��'2(~L�� H�[f#�7%
���>������W&i���T�&!gq\�C�xVՠ��C7����F�sM��&���Z"�Na]��`D�y�n���������7W�1�ɦi��C4o��LW��L�
c��U�ɵ�k�Vo�`t�3��Z%�r�C�����%gQqo�EL���S���ی$�\r{�eB_19ǵ0�+S�C[����Q5'�N"�\��RN]&e��z���D��G,2+�  ���B��>r�@�p��]e�q"k����H�����7�)_+�F�r�dR4т�qh�-�_��J,�L��e��r���\'�z���rP��m��8���f�W5ܦ�M��mV=@�-���6R�A�F�`Iw��6A��UF���z(�}����������|N�{��ɡ?���{���T��U&�XF��)�Al�AI4�<��K�A����u�Ԏ����{���L�?�LE��������j%V��C2-锅�$w
�ZT
�+8�$��'=��A} ���n���0���=�ŢҾ̄��,�I�&gxD�b��.z���U�R� ���g�b�q��_�(R�Ļ�?��X���mߢ��y�.�>�8���2LC�HLv����N�IDՑ����J`頻:�=u<A@$��-�[NA�Pg��n���~�@�w/P$��D�����|q�Ϯ?.��.��R��������ɁѩNVf"8!�SZ�jT+�����P�<�:��my��bˎ9`&)shj=��lͪ-*�
��t=��f��F����Q�ND����vQg±N�i��1ǯ��x�7#�ⴔ�w��	B���t��𮍾pT���ȱ��X�;�PwX	�x��_��R�*5�O�-�3@�����qS2b;@P���y�����C�}� k���hj�]�,�h�V�PF��/˼v�$��=�Sx��G��U����c��$�$�+b^��$`��cu�>?*5ԮVP������|��v*
��F'b13�%	+2��T���i��>�)��"����Jf����0��dzf��q���k�]��;�d���+�zJ�q!g.��T`��YT&
P��O2P�ͻ���w�/7`uw/� q�avU�y@2��q��ۺ�=�ﺆ�u�+�ތ��235D��q< >d>��q�w!��x����`:��Ә��U᧿��Y�b���UY��S�k�]ׁ;,P����Iy���`V.v�MXg�V_�H�̘�{<���nJ#*�����S4�`��Z�XϔG��:6oD���+��O���Q��T��:�2� (����+$f �nJBa/��(�sPE�35h���Tqz�~Fո/2��� 8�b�=^�xn���Q[�4�0��؃��'H�%�vf�`u���r_�'{~������0��cRP���0����ۘ� �u��~B`�,�rqQ{#S��kp�^P����t>-���J���@oo�SC���F�}��-$�r*e>(��w<��`0(ހ�/��7�dl~ �-��#�=�C3>�
��Xb)�Ge�ձ��q�v�2NtV���L��:4U�\H2�Q�.���� ��E�ŀ��H ��@4���_��k�߇��q�s Gˋ���ֶQ;�FJ��y�g��_8����]dz�Uۧ�`���m��s�yT�I�Mǉ�,�;Cѩ��#�\�fHB�1�a3�*�uKchhfo1�h���3�a�9��^P�S�ᒮFSqtJ�Q�el�8��3�:���2|�&�*A��� t������^b���%��)�gv)����,�+��R}aOXp��;��|�,u��N�Jr,�Ȓ3� �214��ǝ�o�A�Gd���� �)���[�G��Pj��_��Q��s�#0�l�hIx�)"K�-̀%r����?޸�b�H�y��X�p��?���ޚ�]�,9��p���R�76��G�X�4F�Μ�b݁�� ~(O�]�y�tԎ���?N_�-��T	`���H�����Ӿ��n��hˬ SC���X��(YuwaTO-a��E�%vd�v^��I�P�)��D�C+>�M��]S�n{]���d��"eo���OGg��N̓�lĚ:��S���#a���`��ȣ��,���R���9B �x8U?�]�l���d�H�H1|F�Nԓ�E�F��p���X�	]O��Q6����Y���Di�:O|��c�Nq����wm{pw��=�j�����O6v���♘��!<D�y�����39�Ş��9SǸZ�����s�k8=�l*Y��u>��sX�νO�'��pp����u�pӎ/�o/�et)`0�H���xI���o@ə�q�Ӡ���9S��3z�3{5�M<����e]��:��	�R�	X�@�v�w�x%|��P�-���EK�ƙ��q�,Բ��|V�5\g֖-����N=�-�Dfj� �nc&(:�)2;�`����4s�jr��բu�S�����b˔�๲��;S�K��w�Z�;Ē��=S�M)#���Q*p�srL6��M{�i�7[��DJ�>�n�����R���Rwu���fr���ԍ��l��fp`��x_����[�3��=~u���ko���vC��Ei��l���w����|���������]�D�U`T�1�F-�Y1ՙ�M��ɝ�Qu\q�(���C�g�����/�������4Z�4�FNe6��a��V(uq��8�����y���q¿�g�`�¶���
�V�W	¨��(�ǖ��`��H<�΃󨰟X��g�����m���K��8}��}r�]�����m>�F�U��{濭J���F��E��A���=zҩ�B8$x�t��ɥ�'p��ke�/_��cqm����f��Ȥ:�D��tk[�<�Q>�XG�� g���3b�$�29F��$�??�ٷ�>���� .Ѷ<��L$V
��9e�g���n�gF4�i��r���k�j��2
?�x�cbt4�.G/��0�8X���pL��
 ���?J�z|j�xA [E66�-�˖�e�{�I�E�*�^�cS���k�V��r&��*P�r`�Y�.�,W�cZ߼��q���^�o�﷤�/f�º����J{�i�
F�,�f�si�,�ʏKǦ1��G�r��i��d���b��|Q�c�J�t��>���y�n��
�M����)��R&�W�����'bg!�
?L�V)@p邛�C����6\{k ���:&�p~-\� u��s���[Y���-��-)_X�����Yc��2ZaBQ�Jk���ڭ��>'S $,%�%[Ch�;����S��k��>=�w�E��K2�$ �˺�Q:
�EaN    5�Dx%)xi�k��Jugz�#^�c[���K��"�Ev,�f�+2��#�o�\��]�7��&|��8�e"�K;|�+s�sqȅ� ZZ���s���/��s�S�i��q1�s	l0ޜ
������? ����P��8���m�����K��4�˴5�̠�.E��v�`I�j�	G�R��f^p7aU�X����(Et�a#�����TR�6tj�?&tq��4Mt8��C|�Lk,�JfK���mF�(f��.v�kLҲ�s
~`͍�bM9.�������e�o��\���ջ_�(+�fҨ WZ%���Jz�G���LC$d�y(���Q�J�g���N�͇�*{ؖ�r��*��,��K��\�)��i��V��p�����-�K&����3�����I����4��.���ƦQ�Rn�X������|%��/|�Bk<����U���M㨞�3�~HM�I{��s�J�	缔��cw|�!i�T]Q�^V���H�4O��}�ww%���}?��q
Jk$�J8��ի�R����CsF�N�����4D��+��'��0��];�f]��_�4���4��a�|s8���c������S�T�(][���Eь�)!)��b]$�}:84.ፀ�$'��z����o<o��<.�0��]-r��q�2G�:���:i�7=�r���Sf�ӅQ�F�c�6�����#�s��Z�i%��B�w�%��G�t:O�.�S�'2. X�]2�Rlኵ\OM�Q5��:-x�{��I!�h�z�>��G�}�(J��$8��冕�٤����
̀��<�Fρy�	�V��`�t���b���F$�
�s�Ũa�q���L�ebn����@�kL^��b���������W�g��GQ�Ph�X+W��(��k�1! ��r�pF$6��	��L�9����0�a'�M�vY�%�~)��z��bh�o�^Y�.\WY4�c�P��X-�p��n�D.��� ����,n���llj�ʸ��fVe��}���<�z�e@NCM�q+e$�E��]p���bh���9'����`�K��m�2sލS82���ېy4�FB�L:�x8	d}���ec�d03&'tc��vM�1&-�����Û�o�߯߿��iK�2��Y��(Q22�辺}t7���FΜ2�5�Z����*����b곜��,������4�WRu�;����/x?j'�^l+�J�O�|�/�D�+'��_�,�zK%_ռ8:5���R;D
����Vk�R��l�oc�4�Ծ;�&t-찠j��naʀ)�9,Y�������R������bi�;�����F�e���I ���m�qkmr˷[�H[�:a���R;�?�nP���ݙL�B&5�Z��
c+8���ܘ�#<u��s���V��GÒ����\S�h4F��K(a�+�ck�u�z��`�0��s��̀*�}0�ł��Y̵��Ю!pnΏ����<��=lG��sE�����|�Y�ߛ��9MĢ5�Z��ŊU�at�4�)H� �08'�������a���o� 	Hb��tU�'��^,�,�sS|~0ry��?��5L���H��B%]!!F���d&:r�8_��u�`K�#<��^�A��謇���)�:�$��
����P$7g���PNL��֨�PJ� ;�N|�"�S���ocb��c�b��$�������۽�ooz?u�������h��ʯLV�g%�˫��1��5]i�2>��2p�D������d�y]b��W�5.�]Ǧ߹v�n��{w��gyݜ�n���j����O;�l���}l����}�;����? D��n����#|�'�{���}�[�2�;wD#WK�Qo�t��๜�a{]1�mY�͞����E���p������ND�t�QY�YR���aN��\T�Û����-U��X���
mؘ�M�O�l�����C��J#ȹTj���x름˕���T+L��#��[ؤ����2�ॱyN�/�0�>�8�>��휪U��T&f���_8����S��1��|�)�+�L�(�D$��)�� ��	���,*�3�f�/L�����%w  �U��Y���_�9�0�ս�+.Zy��f�A��WY�D�2ʧ�@�%�r��<!ͤKp���/u�͇�N���T:˖�f|��A<���T<v���ʧ�T��NojD$�F��kgr�KX�J��g)Dp�%�'�H(��� �f�s �_�#U{txs4�h�_����R�����|@���?�;,p�K&�՝f�ՈIh���g��t�H���D`���s� #!ӏ�`��N$lnp���A���6�^��;�
�����2IQ�;d�:#�Rs��FRBk<ae���^�����0lB<����Ykp$����B|�U_ݱ�o��ͶL��#-��ff���}e|y�l�U�L5@]#	��
��],�Sn��P����]�dgx�1'[_E��c���^z|l�����������\\��2?s6Y���k�a�z��
Z�� �Ӭ��6uVa����Һ,:'%>���1x��G`W�o�k��v1^/^�2�48�$Wn�'��������X��Y��FO����ȭ�@��92`�	6�q�8�,���y���z�oʷ���\@5�rY�=��Z\� P�r8�٭���QQ��5F\����'�Q=Zk%���i�l�&z�D�e�M�i�X���Ѿ����~|h��5�3J�nk]�_�����S�h�Q���έѭ� p.�Nq?	�\'A)Ed�Fx��H���14�{w����cߖp6����-��P�Z������H`ů\J�Ut��wN������
�ʑ�gmt<V4d��a��!M_ԝb2�L,	Q5o�_>�?~�������?�t������?���jΆ��U<�"��˘q	�L8|<����i�YV�f���$�H�Ѱ�H��Z?v8:�/C�N�8�A���E�4%1�l�t�w���m_��?1�����6��[Z��m�J��9���	��;�{8��*�9?�EE���j���ІҠB�d��fr(���F�A'Q���b#��;�q`��y~�}h��C|(�7���
j:nbI$�"3_�3LA�Y�ʹ^c�5Z6\5����8NA3�� y �D1]���Fw:K稡�s{����u;��l%��v*�<fi�8��g3�<�t�3U]��56\-g��3��Qk��y����/�HAWc�$\����Rwh>�<ܻC;���q��q������'���M[޾?�Ķ�վ�z���I�a��];��ˮ*[/�;)Ws �c�-8��Ws��"\��:��t�(G���֘�P��;WF��3Bݞ:8Vf�c��#`7e/�y��蹾K���Ծ�A¨���7g�W!��g_ �0�k%�{�OW��b�?}J�E�\i��)��q���JE�6�;qri�H��@�Y�:���͆��C�&�f��b+���6����R�O�brӞ:�<9��ԙ�˿�"L�	���kdo�t�����jK���Z%���j* �ڐ���*e0[?���S۾������	�\��;<���`S\�V�scpZim7��.�^3������̖���������zmtʠ��R� Sb����FPv�	����&}����- ��������fx^E�#^�d����e&�?���4�Y��_�Ԙ�h��%��ZǠ0����>r@4u�#U $p��LNIѳ�	S{LZ�k�w['���.2�q]D�p����'¯�}?�8ҳ������-���x �N7�Lx��y&,�P��N�U�إ�9B��֋����w�~p�ܝk��#ͷ�UͭG�mA�����b�FNe��s(��;�r5�/Z#E�p�"Z�r8:Uj{�I
�tN�ҏ`�w����J[�|�Gb�O����8
ֽ`.��u��zt�R0e�T��:*.��8ۗq�����2O���Y��SV�����p<�,"�    �"Cn�XR4��<h� "f�=_�	}�����\�d� "�I��8�����!�����r�<�N�`F�L@��aK4`� F�
~$yJk
�U���"��j1��0@�,ɋ
������'D�8�5P^#G+�x�j�qtנy2�!�z������:R�bfA7�wi�Ӯ�W��o�o�b=��D|I ��$����t΄Fk�_�ƄV�j�J>�0:U��蝹��C��N ���%����	8����1���b���D�-�b��{�k��ٲ�9�1&����a���4�$5,�pc)�! {g�NIA5�9ꨛ���c�3�:塙V�)�I2��%���s�)�{^�˩[cF�5�8\9Wf%/w�zA���Mv:c�л�sg]Qb�K�����q��� ���K����n�_�Y�gYY�iy���C�n��w���f�����'�1ȡ$�U�FǤ�c��K"��{�� �G+�IP�:i,a��/� .���<��Ԍ��}{��߯I��ARb��YR]�EK�'��E����}�.�mgª!���CN�k�FLy��/���`/FFL���Tɜ��/7`������=.n��4�o�b�
���V�$_�߅t��ǔvt�U��ag�h�9��(�PJ�6�a�L�A��F��2��Wu���i�,�����@/����_1��˫f�j�2�%�`������#LXʒj�j�����1̡$�`����<��,2'`�h��D�sp�:�@!
���~�����_��~��M�����o�_��f����~Ubr���-���,��n��d��b�l)Mk�k��@��p��	��e%�=�<v^Xe G�t!R�����sO�m�J�[��o�P�i�O���]3&����Β��<'�ƹFkteņ�u7F��5p��d:G���r����T�i��Xܷ����M�l��A�s*�����\*{FJG�56Z#���
�C��SQM�\:�<3_ Y�w:��7���xp�� �g���n�V��-������!�i����2�3���Ф��i���iJo9V�0�'�i�9���`��	���w,S�(������SA���۷M��5��Qf�ld����O�=?��y����F�Fk�vEF��1�zJe;�t�F3 -�#��x}ǝ�B�d �|�����~|��mʷ[�B��E"�o���~����t�����E�n#μ�c�1���9�A��F��Xl�J*j�D���c����Ɂ��R�������׾�>�c�ɫf|�z�F	0iST���<}�)~�]�g��๝���1������B%��E��jp�;e�{~*�?`"���w_n��n��?�����&"v���0�r�λS������j~���ӠO�׌����5a��H:�)M�++$��c�1 M��,tAy�i,˓ka%j�vپ篛���F�����ĥ�]�w���Y�����P��_Oa���`���k0#Y6H  �?*�H}�pܯ��[�t�}���L�k�����z'��p�H��K��n��Θey�Ч��i����(����q_���btCCj���d�%�j&@�4-�>�����Y��.���w���0�n�^��JL��l�2Y���w0[��-z�vd��kȺ���@5�n�at4e<3f�낍�m�Rg��&���Eabd����tl��k֝��P�7�=��v�4Np���E�|]�g��k�%�q�᲍Z��F�҉T�Q8�5��TaSUց��56AHx����	�⼠tJ�m�<�j�G��	�૳��(ܩQ��?.[#�F=`�s5��iLM��X�q	vo���������\ow��lܿ�����������x��Ǩq��W,]��᠚(Ҽ�N8+oݑ/�d.�2$��I�C�*��ǻN��=H����fz�v�ĘSt���DZB,������]�PB��Mk�i�F'�� ļ���z�1'&�@��D�V7s@���e��^�c�ӧ��m�K{d�yܮpR[���0̲�L�;��u�<�y����b��e��N��;˔���V� �$���C�r�p�X�����߿m�?W��s��li[���w9��pss^Ќ�g&��1��Z��vU08Q�H��yl,���p̲�]�>�d�6я2��w�Y��&�gY��μ)��Lp�p{����bu�@jطF'W�,.d!��^@3���Hņ��ϴ�)X����o~��￼�~׾����Oo�N�����a��^�Q�y��I�})�]�(0o�NS�9�֨�P��u[�t��T�������9�y8/�F�(o%��5�aS^��Eb������W�G�od5Mr�K3�����[�o����
�8�z�� ��QG�W��9��9��Rp���ct(��G׶����CS�Ģ��%�}r-��;l��Y�z�D�]��H�p�H��*���S�NR,�?`�� ��5��%a�x�����;�?��)�\^6���Hn\MIl�*#�2�_�9�v�p\ܮ���!��B#�]��v��H�D��Y�<��Y@RN��Z��+a�d�,����k(������f�_b���H����/_���0�_����.
k|l��O��0`�׍�N)�|T����4�a�LbUNVGX��ݟ�v~���Ŀ<7����f�nBbLY�E�W��g��+I�ظ��Fk|u(��J'�q�L�}�������͠d���uT 8V�H�Ȍ�C����@�:=m�f+{��F�lfzh����_�ÿ�ԇ�ǧwY56Z#�+��t��F�T~�U*:���OO��%��Y�P��<��}«���68>�����xjML�VU��6�D,B��y�g1g��r��j�l��R"�>t�[���[�Ǟ`ߍ�����Y��c4�hz)d��ٗ������`x�|{���F ��F�F�4T������<���c���,=���s��Q�yV��S͊�6
l���3�� \��i���O�۾Z��L��C�;
����y�!�5L��ya�<�Qc��5;Gc�*(��w�b��Ab�!f�>����"F�8י`�k�������t�LT��<�s����;<ԇ���fR�A�i�Y�׷�N�c��tH�EE�DVw���.�N੃�K����x+2=fD���*�%��+����1~��͝��|����¥�뗠8:�^��3p�D�ȧd�`p���R����=`��������|���C�k��ӱf9V�쌭�<�c��y���<�&�P�έZa��P2
�������`<d�Z�3�r��U�v�xӑ�� k��+�\����.o�hC7\UU\�ec����w�Ee�)�7fYP5~;Z�+��kL1è����g��jfɰ��E��l2"X������~��1����W�ɫ5�3����a��̈ݧ��s-�����Su���h��e����S�c�;pL�� �Sg�	��:cx"*4�}v���b��w���MSެ�x9&����@
��ϳ��D8�]�q�E1��g �FtGkDw(��K�b�K�g*��T�Xy����:�Y�Y泐���x�7X��/����k�߭21�j#}U�:���n��?��/�Y������P����qt��V����hq9n;�KJ�ap�8H(�ט����n�0�B̌�#3S~�n}vؖ_n��0��O�P��5�;X��N��
F5���#��\)*�����]VK��*������n��L[�ȲGT�D�*�"�9��A99�&f����.��jD�]�P^wI��?u&���@��Q�43;�(��s�@4�v�E+��þG6��=:�#��uGk\we����C����2֛h���vGо3,�·`q\b���?�����>?6������H�tQ{�ٜ�	�S�|z<�>-��"M����h���f=���vj���D�n!�PQdf�K"��|s}�����੸��c3=���b��    ���%1�,�f�a��0Z�3�f�FyGk�w( Ε^u0��x|a����I(�ͽ3��Ά� b��ͻ������}Ӿ�����ES^�m�QD���y����<����:���ݲ�Ƣ~�Ո�h��/����\!��?K�"�nY��;`�-�	YicJ�	�w���}�;�%�p�����U���C5�5��Uk=("�i[drY���)���]��ũ�jظƓ�r�p�V�8:�qy��S2t!"��W��0{�|f�Lp���=��W8o1���s3=��+=Jg�;�.�Yآ���3�Q���ݩJ2�i+6Vc�c5�<\>z뫲A4=%�0�x9�/���b��Q�&\IOa׀7�^6�;��i�����.N_�I"d:���_&�T0M��g�`�z&�.�f��VZ�lc�bi� ,"B̠�s���� a�����&8d��S���t!���*�l���[����b��-Y`���%Е���qYD�Bg3��Ȇ��A���2�^x��}����~����_���lN^�s>Ji��n�*���v}�rv��ǻ�s�lm�jDz�F�����3�
�J:�qn �kL(�%��zp�)��V�;����1��۷0�D��!�%�n��O�`�hf+g��j�z�F�WVl�z��N�
�3"	]"H�� s[�]�C@�2��]Q��إ`xlJ/�/I���cN�½�9�7�&헹[���	��Y�\���Yj�D����Z��VYXl1{,���w!d�2s������������������X����m3���a��d%���TV��i�����/�ċ��F��j�{(*�Y��0�L�敓>��Q��3����Fdp6��/w��v��g��s$�Q:�dG���m���WvA�Z:�͏W���c�Uj�L���k0� �Y&��y]$��4s�M�٨�Yjy��z���U��ժNV��6����������>�D���26+sd5R>V#�C	p����ݲ��mV�k�:��7.'�L.Z�!����o��M}��e�2��b�H�>�K�tv�$f֬���jL|�L�������N&F[�d�2`�Nx@4����!)��ƕ��aC�{ ҔW��Ֆ�a١��Б�ye��[����l�Yz�q��G_�Z���FC1GF�-�f	{���j�;I2��&mC��o��i_���m{�����f|�-��!�A8��a&���z8G�1y���Z��s�1���0'��gC�^�\�d���HS��kJ�h>����� ��O��|�����7o�0 ��+J����?����_����" <�	_l��4\X� $#����O���W���b2U�(�Q����G�C`�O�1�:�UȤ��L�*:F�@����U���MuWa��0 =��\�?�wռH�8���SBrV��c5J?\�v=yG'�l(��;������s�E80>����r'~��^�׎�CCa�雍� �6�D>f�)��Ε9�g q�����X���`��`���M���ͭ��l����ۂ�V���4ʩ��߿�t܏����Om���7mi����7��f6�*7Q�c�rQ�͔���S}D�;<���/�W�wf��F�jD�(�:^�:hb�v�`�u'�B]0��ށ��9k�xf����^�^Rr�ᩙ�V�_�J��ִ�ck�Y�7����nw�o.f���k��p����%�Oѝ�=�G����.�v�"b�[O'M���Zlhu|	�7�{:��E"�/�}�x���?�~���������ͯW��ۑ�f^@�jd��F�ko|=�	G'ZD0�Y�]0�C>/�yl��,�I�{�!��;�n߾A^�o�͛%OE%oIp�͂48����������Y|��M:��Z���w���Sw� 4(dߑA6��+3�V>2���`x^��Ȣ4�+����p���;mHӖ�"��8|9V�:�y���V� -�J�`�O���z-�9R���A��9�mФ��$���3�����g��?0��u|��y���2��)��v�^��i����V-r��F��,08I��Ĥ�N`����:d��Z����?����nKd��*�b!�6��5Ӽ1'���V@+腔�q��f���)&lɐ��wB���u��Q�8>�����M�����k�%���.'rDg��MVcd+l�V��O�$c��E���3�4�t�ᝯ첦+c4�y�>����|zW��a���@��f�	��J�{��L�s�{�,y�[j|�l����Z0�&�3�D<�B���v�$tg	|� 9)�T���}�Է�n]��p����Ms�f[B�'		��-Z.�D	���4���t�nk�tl��P���-�S�E<:��c��#�A:�)@5���p~����U�i��e#l\���;fG��a�@.b�z��:p5f:��Շ��/�m(q�C������N�:@�$��ڐI��]v�OH��n�C3=����q��M �]���n��z--�-�MN��A[a��^�����ɿ��6��|"���z:���0k$���=}���w{��.��ۛU�?�K��P-׺zZƉ�N�,�5��Yj1��ձ*�����v�z�ik����+�H�U2I�EIb���w-�C�#~�s���*��L�m�,1S�,8�q�a��M%��FXǪl~ ��k�(�ѩe'�7G9&�0��(�Eo�u6��O�%�w�����O߿ �l�O�0� }�Co�a����ΰ�����X�����Z�o��>iȉf�=@�}jp�s�N+�����k��������}����y+*��K�A8�.H1�'��-��5�:V��õ[.W�V��TV&���p����4)E	��Qa� �I�=�`�2���ۋf|�e����8�Ժ ��L6�P>߰�V�<�85�:V��0�W��2j�:W�T�aK
�;�����A)pʉ���/���Q�A�{]�A�} �D�.O�H��7��٬FQǪ~�j.V���ѩC2��
0O��f #�C$#C�*D0O�!�_��n�o�A�h��h�P�X ����W0�{�w�o�W.��,{��=���z�]k=N}�=�B�TTXZ�MR:uԁmh����[�������o�W�ɫUMgH].�BQ<C|�M�<C.s�Eۛ��j�J� ���/�*B��%�f4]�P���kX�>;p��������o�hx���_�h���M���������ZXf����p�� ��h2 �ۧ㬞Ք��Y�V���U��P W.�Z2qg���]J���=e)o�h��.�O���ͻ��m������\�O�����7ZkB�|���]���������X���m�j�D���x ���%���5�B*'8'�ܻ��Yéj�����.�ͷ�-�.ͶV*���np��4ɢq&�"�-�R��L�]��F�����w%T��6^�r�ә�Hx��w�-^�a�������]s�nU9�QNv[9r�9M��{���~Ĳ��E�^ט�X��a�]�ͤW�uJ���l9�ǘ�%��
<������`ǁ5A�l�����tQ���iɖ�s 	6�D&W9�p����ѩN�G�V�ƀ鲆g���w!
�%*3�W���1�Suu�8Kǎ~[mm�<HKV���{z���ML��fɢ5j9V�SF�JT����pYǽ��Z���P ���N2Cb�4 �i���l��%C|ul?٘�?�C�8G.S�٭��N�S�4�U��p�J�Uă�v*s2 ��xI}���}cy������%����f|XU$c����&)=��������w��8�^��۔m������k9�e�LΔ�9I$�<*�qA���H�M���ۏo����N��텤�	�(����J҈^��?�O��K}vt�5��(�X�H�"�;]A�(�"Y���3� }G'!�`��+�O2'�T)]K���S���ٸ���4�u��+Zd,���=k�7/�e5B8V%̃����~�`И)e�J�KLc�\�    Έ�̵e+���y������1�a�n;�6:K�B�;-��K���۹��`�g�Y5B8V%ɃeK�ֺ(�z�X����M���c֟f�l�.��X��m�}1�[p�bm�;}Ռ���3i����;
�ә�I��&z�i�T���Ո�X�7�����et�!v��	��HY[,�7�sTuF�|�:���io��x*-&����������T�.]���8A��������M���U��@X}��y4Z��h�Si)�b�i�}b�Qep̵O\�d�i�U�-��s�5��O'=W��6w��N]����Δ��~�dyC��/b5�8V����ʃ1�NR0̍f��  ��T�;�h��ye���>�ps�G��u��l܂�p�hws:^��[L��t�[�2���-l],0�F���k�%� �8�;Cl(u�L�Hx�_�Z�$��������v��	��D�&������Y�/��k�q�J���d�_���&C��b��b�Pٹ�E�%���)&l�{���y~��3li�T8]eF��f��R�0V�X�X�S�^1�����2j�s��Ȭ�l9æ7�Ny�Y��HcR6ю7߹�[n}x�����a7�kN�mJi���(%���9|�bN?]v�,��F)ǪT{ �8k�2eTMy��1���!J�M�����s d�xԁ�N�O��Ϗn|���iy�Ȝ�S����.igG.���8L�M4���~�Ԑs�o�/�]IF'�W0�1�3�!%�5N�4���Y�F7_����f��V�F��[��z���t�n���j�hY�t-�^�FǪ{�v����5�S��IdнY3���2�@cR ~����G��G� ����U3{�����AD��g^ə��L�-�MJ�tV�\#�cUz=��V����S�HX�e;nLi��;z�s��>=���wo>��ks�u�#Փp6���e1��`���pߙO���U�R��-[��-�|�
5>9��i�7��_�-x77�,��j�eWY>��K���sS @�����T�#?���$��g��	�m�! ��,��Ҫ��B�"6�h�À�c��ٖǧe�K-�V,&h@�L,�/��O�Y��/4�I�ZN���Wk8SYw��GD?��0؉�#�Vۆ���O���i�����0ovݦ+_��`7����d�����;"��Be>������|
w��v�4%�1��L�X�^N��h"N�MA��i��B�H���Z3,. ;��Q/�W/߾}yY��[���M_M<��BO	�gf��7��. �9���$�G�4zd��I��#�-B�U���c:E ��S�ӚS˼k�k�}�J�W�i?��q\�ߖ�_����W�Ey�����Pֵ�dT������7��>^�Y�y����� �_��@���01�wyǱx���Z+%��TiS�m��Y���N�2���| Q�d>b��cG�$V
�q�tk؀7GcB,4vxD������#���IB6������67��Cs�-���z:-�Kq��$�|tl?ʊ$��CT�i��
�W�1���Z�ڀЮLo��������<n�â.5[�>��L��a��iB��g�`��y8E%G�,{����e�}ɴ�l4��w4��8SIpU�
{i�C�j���9����R���N����La�K�Cѻ�g�Y�^�:�&I���9�6�8+FX&c�i6�ߠ'7���M��4C�3��?�@x���qTGK.\ċ�\D�ߩ{�վs����!�c5=M)c;I��.{B����4YK@� d�ሉl|��[�֐F!C��S�E�ww�_��YSญB�QN1t*��~��Rn���
��J��I�=�L�O� ��X��)a58���f�0�g�jj�j�8^�'�k��+��/H(��g��@ؐژ���?�KM����HQ��$�~��*���V#S,\�5���|����6�㮮l$�lۂcs�v�G�q��`��b�È��U��x�Ȫ�߽ۦj	OcB)b8��Ѓ/W��z$�,��$S>pZWHP2���'����-,}��'D:�ry���Jc�l�i�1�/�*S�|�zV]�b��I�<�f0^E^"����4ԀZÅY�	�V� (���ă.���:;[����X�G�0��0G�,T��!?U��"6�Q���E�O�N�?)�8�d̃����5�VG���P���;� %�Z�*�k�mS�>�Z�[�(��_\����d3z��,Ǣl��O����nCj$��^I�;b�_R6o�>����Lg].�et�#$^������X�!���l,8a�}���sd�(*�`�d��jwMwgG��~�"��I�<�fR?Q腳#E��2*���`�v@:p¸�H�������!���׏WY3��BZ�41 �'u+�����?`�|ۄo��NN��S<q4I��rP�e�h������Zj��1\���Z��A
�Ohk.����Bc%��+��n���4�h�1EG��y��2���U�4̹Z��
�y��0�9w�u���;�;B��7�������������[F-8�<�Q͓����Hh�Y�i�@�&�@�ȼ��J�tZ���U�%h� ����#i7º�qU�˷���|���X��6e���r�����w���n�o��W��>������֗�/�����������ú�����H2C�<�.KR��4�2}֑jI!�����ie��C���E�}�&��@��e�!�,�ǂ��gm%�L��LUNc6��Z:� B9=����yp�N^?^/����	�196��ݽ}������]���MR��8�9P�~v�A�Լ�_��8-ٙ�j��`�����t�:��bO^��E���M�4�w�?����u��tv�l�$WH�B>���c�����&䩶`Q¡�C�vci(��W����//���bd���},PHK��`��Md���a������積�-pt�O���$a~�y�+��#a,�m"�!>8�m�`�T�h���,�Hq��}*�E�F�0ʩ���!~K��=��=l�������JY�Iv>�neD>|��z�blX͂�U�8�25�2��J4X�	v���7>���A��8,�Å`!8;n<��s��и߻���2�r�oRvv���^�����r�Eds��Lj2f�ʀ�w_S�@��T�_��C������qq�C��©���	��U�	M�a��u��w�^X�X� ���my}���¾�o>ٛ%/Dc{�i�ְ�G\����}?��g��f�դH�h���	��8s?+�d��"Co�Lk�|�T�Ҋi�Z��l��O4�?��Gl���8\��Ymy'�zV��՟4WS�u4I�GV]�l�C��>��Z��4ȕ�b��G�KV����5���������*Ǭ���u�BUu������a����<�?o�MQ��$�|3��g#'��AoiiXm8�(�\>y\0g!%��ᾋ�{�C>��ǣ��;���,������sx49�)#=���˨ȗ�젧����!���q�CftiY ���>�]t����[̀Ň�{ɖbGQ��N����춵�+m��&#eQ'���k9�,ge'�GuLP�����Nw��l�X#N4�5���b��W�.>�s6�6�?b�*���y�$��N������Rt4İ_-��:�X�=|B�R��{k�]!q!��ox��r.���{
�{b�^��^���@�I�8�t6�OqvF�8E���h��������r��a�̴M�\XFW��V:���n���������^_~��(��u�����b�:k��v���G�05k�����{����i���zrA��$�E2���Y9Є�F`@���$�`
�W˜�ܓ��?�^�x�Gl�}�.֗�7��f!ƆV��)C��Y@?�u��C,���,��U����D} U�=T?;R�cZoQ� <�qX�Ir*P�T1���]f����X\<e�-��"���=��%Ϊ�hE'�%e='	��[�y�E    �c��E�4�\�\���j׀ࠇ��Ný7�%g������&�� ��b72K��$�|��*1i�|�%p���m�h�45I�i�A��m��}�D!6?�Y,d�#-|-g���'{�������(����I�=�V�z�%�k=X��n�RcjTK�4�}I���\K�xn����T�)� }e�6��}��}��t���V�� ,f	'�L$n�-#U,�ӧ�JY�I>���y�'�#���dU�����q뜴%^�F�:V���⢼��./��a{��E1�X��� ��s�c ;�'�݀%s���NJ�I.>�����)��ʌ��0
�sJ�Wl`˹��'�Ѣi�pE�����W����Ƿ�P�<W�EBX>{����:������zZ�O�i!&K��$%|-�*�z0���R4w��|#p��� ���}����T�)�O�ct֖��x�������	�4��RLs4I�_��=<�%�Hᘶ��F\º�Z��=��Ɩ쇍-�w]��~A��X��hn��lq:��p��"������_��d�B���P��K�I�>�6�f#10kF���^��n*�T�j�`|u�}�I��H�F ����w������}n��Q-U�F�9�f�j�r&�?:Y�p�	��m�d�� lW~�q���u�5�)V�YYæ�S�DϪ ����7/ߢ<�a��������{NC�M��Enf;C�Bkb�q��,tI�> �b��Q0;�Dq.�P�!ij�k��J�#�lc@F�����T��I�|j����(	�	bP�����t�p�ѓv/���cI.>�N�D�
g���Rd�H>�,�1�g+Y3eY�]P���@�`�-r#�a�?���X9(����#j����v��q�����g��qzs���X���\�4f����AFeG0J��ljZW	&�mԋj�d4)�3�|&��9|�HB��Ɵy�I��܃��鬯Í�Y���%��@(Xh�W70+����g<8��Qd�n$���n�����|�7ey�8�2�&��Dn��-5�����ؔS��9{߅�NT:֑�J��,I��0�E�x�l��C�V @]*�,���Fi�	6z�e9��q�t�'ۈ�RY�*D�p2�H�s��t�"�cI&?�R��|�%�
:B�45��`ؠo�92���Z���ɠ�K�5��Z�×�o0k���_��r��ADK� ��x=�j�ĕ���ޝ43��UK���k�2�`�=U�ý��
�[cU�+�k�V�����n���[��qTG���u��n�n܇�������M�;��ڔ��m7�7�;`v���|n�ء|��AlV~:-�`��@�;����*�H�A������A��$=��-�b�cIv@*�m����쑻���X��ʵ��\^~Bǂ��fXqT���w���l�#F�E/�E`b~��]vaco�_[@�`)�;��VA�G��jDhx˕&b�b^GU�%��FѺUV��XGn�ۭ��0��-2�e!"����)��z$x3��޾[���v)<�d�o��HH�Y��R����8f�4r301����ı��xp��w]�"`,ZQ��b�.���QN9�^N|&�/e��&��c��ԶJX�,I�&���Xk��{'T�2��������������������������#+ �G-�������-:'�ˀΪ��l'�l�$O A�g���ٱ��5�4��Z�q�5�5��+�t^]qe�h����U���~|Q_�D4pmJ��^�<���~����$�MN��X��%9��5V�g����Ҷ�DV�C[�V ��*4ԓZ�+ނ����>�eo,��aQ���*G�]{[�tw��_�����sZ?֦\rhL��6�:�ZD�=����3�MZY��%�QH2G\'TxK5�2l�
X�!IS���������m4��탽9�?O��М�1�("��'��}\)��8K��$Y Yi�ɺ�8+��':�X���rh�k�p�Hv�=thW���/���S��ŏ�Y����Z��X}�dW��P\���>�N��6�K��\�z�f�����q6�c�$2rp 9Ҷ��&6P�cWS���M�gX�O��"�`�%O�j�R�n\�Wf��Rvz� ��"�NV2�q1h� ���G�׀
]��m��5^Dpu�x����,+�2�^���xV���}/̗œ�2������X������a`>��!���r�{��Cٴ��p�dQ\���Ɵ��"m&�m�Y=�a���;�^b���B�rN� �g���������S���P	8�v��t�b��r%�i�a�8®;���lw8���czH�eE±�RL��7��`|��T�DSLw,I�_��0�˄���}o�� �Kc�S��(Eaw(/Uj�����_�n
�m|Q���Z�Õ��BP-�|�i�|����_e��q��Kr��y�
�#^xP�Z+�*���� C$�Z�`������E�n}��# ��I3Ye�����r�;·�&z��^f�b�cIB@�jD�Ȋ;�ǢyJ} �a�է���e+a<����V��G��iꎗ�R䂳`�fdF� {c���1�}f)�;�$��������*\oZ�ɪC��*�T�.���2�M/����+���"I�W����@*�Y-��؎��?�B�d�I�ݱ$	 ~���\�K8B�[��+: �(�	�h���i0+}+��4���s1>g���ƊR���"�%�ť��=<�m��?��ENs],e�&)��8�:o�j10���i��x�@y�Q��`"�j3�����]y�����蟋����v����|��}�	�_��L�y�e(�l�E��	XM�	\��p$7��sl�Ǩ�6��I.e�%��@6�d���,AHj�������Ƹ��d�7tM��^�Y3J��F�x�C�Y;���~&�,���k�\;
K��$)A>�'��q�+�"�q�m	l��`\�Jxg���!V��m翗k7U?*�ђ6Z�h�����3����k� �p�im]��e��@02�mg�ߦh�IlS�ئ�����۰ *JIn�w�{�����^x�����Uq�*s��=0J����"��2�u�����3�k�&*;e�e��Rp=!"C�1S�?����Y������x�y�hcc�+<F�B���4pL
���?N�L��}�9�n8Q��pl� ���X���/�Ϊ�e�Yj�oth���W=�4��}�(\n^#/xyqk���Q9
��� �y���v�<�(�i�8E��24x�3���>�Ul8@.PH�+!�:�(�}�Γn����MhnA��a�;�����q��+����x��H$���f�ˬ�~�َ��]3uRDx,C�g%OA�{QZ�
�DUC���
�{N ƚ/ﺽ-��F�a���0%�S�k��YR��(:SV��#X�y���R��@z��eH�����,q�HP�r�+�k<Qp�� �A��۶�E�����>����o0����mb��p��OvL����eXE�iEf���$�S�x,Ìg��&�e�<���6ԙ!����P���r��7�"t���.�b��匥�sI�=���,����1)�;�a�Cb�|�Ύ\�з��X]���M,+��J�+G��������/?\�)��Elڏ���1�=�Yn6��/w����N���˰��5�Ya��-�q�1�UY�5��+�[5��H�Ч���}�kx��
V��o/"�D��W����7�����d�yZS�-�K��nd��<���Z ������O_��sgW�m��=���3��<�̚�6n&-0�)��M�͠$X��#����b��B��pW�5e/,9��Z���Y��$dsow�����c
�zR���cI2zp�|c�2�Y3��K��6���?UXWX� u%�&�p�y�*�*���o��q���d-��T?��x��������  ��g��U��(�Y�$�!�G�    `V�!�Zex���ÕET:��鴾i�H��-v: .���yxQ�x�h����	�V���B�6.���8��z���E�r��tUc�*���ّ�V�Z �xE�`�4�r��ʀ���f���H�sS^n�Z�BqTG���y:� ?�q�'N�g��~(����Ʉ���Y�0�"�8���Y6bj���	D����;����3�h�dC�n�%����A	�ᢞe2��3�|ʋH��:Ǉ�ώ�oV[[�V-�p�6d�ۺk�x������㇫����qTG9U34`�Z<]��1��;�Yr���؉��8�Ig��M�4�%Iid���*��*,rn0��+�/n��G���'�:$��te�Gږχ̓�]:9X���Y���zeq�~rց�M���T�*�%��A��O⬩�hz�J�a��E�:�k5�D��%	R`�v��.IaA����mZ������-�)j@���o��d~?9"X�Њ�l$o��͗ڱJ���U�^ �ƾ���rȌ�xS�2r�C��g�����g|�č�:����	A K�$A ��"��y8r�^7�*,[�BE�X��m�w�̙���W��֖�}�M����P֨\��-H((��V��,�R\iQ�}rz�xY�7�F��\O@?;l'���u ��x��])��6\!8���Hg�&C- S?q-=�O�C/�����
�����8�P�x
X��U]YX�2/�5��ux���7��O#�GƊ�ď�O����sdP�9[0a���)L�N��R<�,���@^����\#��o���j�Z*��l��똰��}S'���\�3%�o�7�oRvo���H�1��f)���c��`g���eDxM�R���lHR6O'�P6;٦!��l�ed��|�����B0����Y>�9�t]_����H���!�� H�k���ot-Œ�M��O��MF4)+8I
�ii0Ϊ��&�B��	"m/�9lC[����hڼ��ӢiC�(WBM�c}���[�oR�,I�:v��f�����V��2S
ԙc��<(���\�{�nL�]]���]�E?��g� ��P �؈�쾫����7���ck�D2)�7����Vd���k=ln����J״���,J�e����S�|*_�	f����b�$���	=�A�l՛ֺ��*7�"�`�_tz�x�X�����G39ܘ~vd�	�J��Qg).k���w4��z�෿��-�B7<�����.n0�����V�0k�g��)�?����o&2)�O����(�e@F8��uej�b�W���)_�ח�S_���^c�rx��@s�7D�[�'���4������"�,Me��v��~�٠3r@�,��4"EU�Vp5K�+�k�%e�7���s��G<N�M���W��*�kF���x���u��M�	s<�Щ�b�cI�?��fl�U�9"��Z�����]9�T��槑�,�/��M�D�]���<��Y$�	��<cb�i�߶;�8�e�S��Kr��7�l1c�=�I����<(G�ʧ�ި`���7M_{4�c�k�H@4�y^�)�aV=��a��>�yh��uE���r�~��.�����b�+�PG�X�=b�E�⫆KmiA�b�#v�oo�qP���Pjo���5��.&&�go�W�f>)3/���G���X�Y>ܢ�G�U#9�� 8���5�o*��L0r�
�uć���%]~��Ӳ�bg�i1`l҅�ć�)�m\��s
{�T���X�`�=[��O�-s����k�p1����߉�RZ͂��`��&j47�����Rat������36I�l��nn�.l����tV§fK�[�%��(R��\�C?��!d����.WBW�׈�D��pS+���	�ݑT���0�YF@V�����ɬ.���j�*T����L��R�r,�/���a��b8L����`�����s)�*�҃�T� Mq��t�ه����f�-W�7���c��-�.�h��0.t\	��<��ј��RvM�n����䄓���a�U�eX{�����4��AEѹ͡���u������(#]�D �Z���ڄ�����&&���K2��W�,kX?9&�
6��D�4�vu�j���yZW|���k�9,���be�l�~���n2�ϼD!<l�O�3(d�qR�L�f>��:��Y"����e_�&���\�n���k��1şߺ >�f_�~����2����.�ӹ�6�5�
�Atl�xws�w��9�z�?Eie)�5�d��0Ar�����viYC%�H��I���X�ܙB�V/@i?�;�m-��F9���Z�]�X���b������px8̕4�����x҆ ㆘���sa����(�*�H�xx���������n�Ή�(F��/@���`t�B��y{�g�I�� �R$k,I?�+�Z&GEL��-1j�dYmc*M��s\K�eŀ�q�L�ذ�d�p���1G	?��4����-�0�E�W�$�S�j,I8��t��ガ�#  aִ,�ZHe]��1ZWW�1ʋ:�uq}����bk���`y��]��]�_0���jA����qb�ǥn�,>��J���$�7�0��&ӃY2b%4�S�)b%ke3$���c\"X{�{�������?@�<���̀k���1�G+y�vK�Ω#�:IIr>�
<��e�������S^��Ǽr���֫���1}� �Pn�<A������up�4�y�f=����n��$V����n��I�d���$����!>���Fb��k���s,�n��i%�λػ��c��X8���g�R�}/5�H��������QG�{�qR!�$?|�F Ѭp`����^{��;�^�&o]*8p������`w��b�\��_+�������Er:k�w���(��D=�Y��>����~���WbП��H�X���V���,�� �֞�����A���C���$�.ʿׯ���\_�{��ǋbx�t�	�t�� 5C���m�?w�!�iY��o���J�I�=���6�8KF�Va�o*�	B�xRi�8�L�"����������a��Cq\�/��R`GD����S��g��:����$�b�cI�= �O̪k��#n?x��嬭h�p��+�����Ac^��E�:^�]�܅�f�i�Q|q�`�=+�6�,�w�V����d��<�$k|/�Q&/F鈪���0��D`�|qg�1��PS��,���ǫ��\���U���Y��BbQ��ϴ|�{����������Ɯ�`ɋ=m�Oi�LWG?+����Rv {�⚂����
X��m��7]��[�ғ:>�c�H����i�{���?��?�S�_���X�*?V��r�<r]�t�-�Վ;`w�V���	���Z4qn�M��b���Uѿ*���]y?��t�>�E0ȯ�f��$���X��IL@�d�R�ߠ�j��vu���;;q)�3�䁣�㙭��gG�o	?U��XJ�վw�B�E%e���+�>�E�ET���9w��b�ɝC9����x1��L����mXnjc�9�#Kѡ�$A�<4����C#����Q"���u^5��U�Z����Mqe�<�KG�~T����MᨧAid]�j�IDc{��Z��q��3�<5!Ee)~4�$���7�g8;rHۊF
W�Eߌ#)*����oZ���H��ʆ]t��?�8�F��(�EO��<ϰج߄��~��Bc��.�!71S�i,�!RД��.�,��x�zP�5�Q���C����T2��?����[.�0,�av��,�G��u������*����U�bPcIV9�~C�x'��:f\�6A��>�����B��`:r��w�/`z��[$qp�E�H���u�p�䨟�[�u�M�ͱ!�Q��Kr��7�C�g���jj�A��I�J/+���b[�3q{�-�j�%B.�\�$T�]���������ь�&E�ƒDr    ��Z嫕pv�M�EDGČ������D�y�+�P�a�LC�/_�{�qq/�f�BT7�W��&춛U�}^�v�CR��$_]EN�l�P��8�DN��XzRc���2-Jƪ���2���~{�纼�_��FE?:�
M�ʥ>�^*r��2,�����XɌV��%I��ۉ����c�#
�E�ZD�
h� �(lFH��(.�DKЅ'*Џ��-4�G��z��c���Q�,��&~9O�$a~7X�ِ;�����-x��o
-�Ҟ�Z��7�~�L����C��}>��2� �_�Wٻz�1T�pW�ȕA���]�	wwv߅��&:Q�6NRȁ��9�~v�Q�фV"̍P�c�̼@�r`倁S��no���l�,/A �jN�û%����{!q5C�q�W�ą�<�����yK�́88B d����ЫiC �{=�d�c�H/BP��CÊ��}ۿە?��%C�����#�}��;�G4�{:o�csXg�bMÔh�V�OY��ݍ e2H�	�臈�uټ�c'�F�ݠ���`���)�O7���55W��?�� 6gN<����q������S�T�dv� ,��g���@���T�k�KUi�E%�l1�nA����o��CCJ�e���Y��ƺ��nv�oj,x�<�%���+9��hpv�c�uSK.�X�B��zR�FJN}�lC�k}������d8,N��3��(�#F�nbR�5.!f��K
=�L��O�����y���P\�����e`��T�Hh������=B��?��o_�41�QV�Kjɸ�xj0�9��Lx񏄋3O̮���d��Ϗx�Y�h*�1��AQ�cͱ���	2�4mD�Z��m�n��=f��c���Z�;����YT4��0r������6�X���|�f;���H�a��z��+WY'Ir���cܵ���oW/�^_^�{�jY��e�ғ�n��}.K�^T/)�7������_�X�7F�kñ˲j��o��V^3�Z_�B�����o�]g�w��`7�ۇe�Q-�r3��~\������X�N%��>�IN8��X��upv����[+���� I�*�d])E}#[���p�X����c�9wL�*�P	)�O�gu��wxN/���Tݦ��x���0ʲN#̲�i+����.�#qR���
oso5*�.
���U����߮ޭ/��s]>y��*/��o�a[�/��>��x��a���������)_����7���_��s�W*��PJ����"|��V:a��Dth�n�h�q�mV�;@��S�',f���������Jh�]� g�`	q؍Ƹ�3��㶱:�?����8����.����$Fy�5̛�w{W"�̛��2O���$�|=Lf�{�w����z�0Бr�^i����	�j�b��"B�1�<�����2V�B�(1���5���vG`���(OQ��$�|:WÙ��r9��#���qpb��'d�^�B#A�_����|R�+��BKb{���Ts}��v���3דO���$Q|'���G���z�P��QÀ��@�Um��F[|��Xa��nJp�-��b|���YT2J/U](�s"��B�:)��S�3EhƓ�n 	_�5aV�}�2Ą�C�n�2��b�¢i����n_�?�p��X���P+8mD��o��_:�i}O�������$�N�ĵ��,TҖ��!<W0l(5\JgY�n{S^|���Gd|�3}#�(�����7dj#������KO��wO���h�l�f�<&]Dh�CS:�.�]4`�(^���X����|suq���ߑ�=�)N�,�%��H���lS�^o7��_��ݒU��.�In7��T畎���)�{N9�$�x�2�V���5�q��1+��kS~��G������]1y��D�Jdd���HgN��}�����~��l����%&��<�afҊ9�p�Y��($nwJ�
�����m�ߤ��9$����Ň��v�k}qy���0+�у�yM9">O���M��߄�ǳ��d|y��'��`�#��0+�:8�n�ŭ��5���P���(� �����ܿ�4��8�(�7�ii�J�L�9�j�[]��E�����o���>���Qw��0�4v�31�2@ˁ�o�.����G��2�T�W��~�I�<����qr���L�!HT_m��a�f�T��6�R�iD\�"S��;��N-#͒e9�ɜ�to9��h1����t����x��"�p>S��cgd �	��J���2����Vc���j���ækî�bw7�}�eI�O�(i9'��a�/7�/������STn<IX�͘�7�����B.۪e�G�
)��Fx.���]|��v]�a�[��["̘�N'��N2#K2�N�4:�m�k���f�Ӣ0�"��IV3Ǟ���� C`��d)�UphdK��v����-U���v{��{�b���E���e1��z�f�ӂF�rbl���\k����2�22��YK�I�3��dm��c��Q�gD��j-�
b2C��dx�j�ʘ�B�<yΚ�}��e�RU���Xn�X��33�N���O����KS���`��pM�b���f u��h*�kh�HP{Y��~��*�~�F�~X���9�R�b�ΒٷI���3l�O��/Ϯ�i��h�x�����YSf��m�o��m@8���#jM[��&ſ����Y� �SRQ�*��׳��YA��j�Y��)�/��=�O�&�ЃP�#[�w�D}k���!L��6F
�\�^����.����o/�%����������/����l�lq�.�k�M�������w�I=j��>���I�4���̎���e�I�V�#'�mek"*��u�ؘ�ۗ�b�u}���r=��q��6]H�Po�������4p֥#�;uLR<a<I�FWh����Y�ƚqcB&T��5\i "�-�%/-m���Dr���h$��M_��9a�AwS�Їۓt�gt�}կ��:Kг	,O!��$�=Ȃ �hVRD5BT��K�nDn�K� �����K?�E��`�$�(mVD���&���F�v�3����:롗S*�d���PIr����a�E09�00*��\M�ۼ��[	Fҋ��ʫ�=x�X�9Ñ�QBx�H�V���"�S3/% *g>���v�֙9��R�i<�-_/�;!0�G�d��y[9y,���3���R�l�e��mʛϷ7��T�O��m���1���^�=��G+z
�}&�A}����=nb���]�2���r��`Z��q֌�Ym���|#Eπ��C:�뀱Z��_oo�r�ʒ|�J�E�L_��zEO�L(�Gw��WۑĠς�l��I��$E9:��˼ID�M"j,�F�=�-�-h��&QXY7�Sˢ�(�<��V��>���ӟ7��腑�x��3�.d?�>����q-1�͘��IU���稍�Y5b��4+4��iZd��Ʀ�D��"�O��>��D�6��K����#�"�P�S�:"5Ώ��w�z�]C�҄)b9��h�}A'�]C�UU�&X8<
���P�VV;��0�c�/���E|��_�ơ���lV"��{X����t$E��I��v��z�'fُ(,X_�� 7�?�ЂI+��J��΅��\O�ś���2��-�Pl�i��َA�=9cͰ�����qu{�e�������x���^��k
��0!�2
�dX[��ւ|�!�+���m�������E��f}���(׽px�-?ug����0�o�����`�҉����I�=�!�Xv�����.�w�a�q�+��l5�0������=4����CWn�aq��ZB��O� $�f~� ��ipab��D���x�}d�Q^��ئ\[�XCZ�;��9��J�(3b���An�}w��C��G6��{ؕ�?^��9e4�^5��W$��)3V���p^�Bel��S�t<I�R�O��¤K^��
�*�v����E�T�W��"	F��e9��'�FOr    QM��ǛM��P.�jJ���~�������x�x��D�X��.prDD
�[p�G�C����
�k%r�X�C����t�����Li��aC�yƺ_H���h���!O��x���X3�a�
����A>:��T�:�2i����:�+�7;LQaڧQ�x��Xc8MԿ��%�bt"�.��W��6y�q�S,u<�߇A������mH_�VE?�9� m�f�hϴ�\0!nl�~<��J��W��x'w�pw�-כO{8��ے����-h��@�F��E&��bR������q{�����賸R���'��@p�ɫ@H9nC�k�͇r b�"c3Z�<Tj8�R����? ����N�QN���10�L�ײ[:�}fg��]���@�Y٨�Z��oE[q�zτ��~���<��-�Œ	�fE�ZBV�!���r��w73�q)�O7��s6.�"n�;���h��[N��5����*w��ՄSg�(��1�_?�]b��/l�ff�|����L[�n�eORb�孍�c*���y��0�
5Z��� �y���k�j�T�����;/����(׿fo"��D*W�E�o���l��ϒb{��?�%x\f�H�5�	Z�8���DU��j���k#�ԋ�����\��9��$5�"" �W���'��v%���?��B��00�j����?O���$�[�5�9ﮟa�Zm8�<�[6��9FᚄV�!�*�F�rtc�/FG&o��������r����:|�QW|<� Yc�mrm���x�%a��~�H�%X�����vH"�����xm�;d������.��|*����ӂ��M`\��ZsfZ�i�l��'���I�5���#��W)f�kA8��<6{�Z��c^�:b-��뷏�~T��%E�����`�̑CA�c=sQ>o�
w�j���sN�Or�(ͥ���X,*������"�Q��Օb�4XF
�O��H���:}�6���v���/�M�*X8j�ze̊��e�	�F������/{������H�x�?$�˅��,u���`�6cۂU]��n*+C�G�+���퐣���|zx���Eq|�ST5EՐ0�n�Ӟ�3��М:0�a���WO��Or�)�<�d��;�2i�%#�<p��"���`��`@rV�N����'�f���,�W����6�l������N�eY*���=,�Ր�E����78����x�5�&v$Ί�È[0:����[�8A��M�xbA� ~B�>ه�ݙ�O	G�?6����63+�WZ�UO���UO2�ᇫ,�{�%c���A0h�{*(����b������/_\�_<��{|,��l،��I��D<Sn��o��~ۂ����Cx�eO�Ɂ4�9
�~vF^'湬Lh|�[�e	RU�j�ZOD�G���9&�b9��8�.��3���Qr�'�������u;��|��/��>�<SDj<�2B1T���"GxFނ�`9,0i�r����΃s��O��ͮk�A�!�.�������4�������gD����3f���L%S|�a�0 ����<�9gzS�V����Z�L%�b�-l&z�t�W�3��_@�L�i�.�V��OԦ�nP�����}���s�f��װ��S��+��µ8�T��kN��$Y�G�\�d�Uc���Vas�ZP\5�^5���yM<������]�o®,��nc�DN_�뜊#�pA����Bu֥WB��3�5��L���$�ȅ���g�p/j޲FxQ)�l�:�MW
�X+���G0�?���:�p�~�g<�a�~e��?��|m��ng޵9�[�(�x��$è��0{Č�"Hkc�SN��mUۚ:��a�X��cy�����\��9���Կ���V����Ov�;�m�Y
b�O�2���w(p�������e��,h���L�)F��f+i϶�""�s���Ou�f�W�"��`A��U\o��6�R��$�|<��̫yN�X�K����B�&���X-3�P�d�����s|z" <�?}�XY�51�a��b^~���=թ���m�Ibp��!��qVa�����|�h8i?x'<�L6��܈(��!/2�J#ͬ"t��骻߆��Ҥ�"�͓������'�����V�-Z���&;w�2-i+�qۆ?��'Ea�֣�N�N�3e����>�>��L	Yy���'�O��:�#�ώqNAT���TҶS��ҭ�'�|'D�m��T��=�}�O�2��yj�Lџ��,��Fqx��"��"sWxjI���y�Wk�x��U�bTiB(]�$(Y�Te=Ҵ�`Z��)�l�~�5[��_׫7��xSo�o�w����Ê�W��;���n�U��}�f#��+�
}5��5a�085�O�F���#a�<o�QL�Sb8R��0̒#������@�iX>��B��o�Z���ñܖo����� k�c���<x��r+��VzVV՛��r�T� ��r��qvtEcUmIe9��0�����[��c��ŻW�?�\�/�_^����\_����9��F��W�,����� ������������^�|�$�%�$y��4�����n5C�z@V�)�Z݂G*a�gT��My� V&tߺ�W��*����i���d�}/+qJg����s���B�*��1L��IrB��İ�툓#���M qY��(�W���M��S��-����ۨ���+�,T]L���J��1aQ�Y�ޝ�bo���gōr&��e�� !0�s�qV��j�JB)zk��x-Ee8B.R�vN��W��~X����[���n������:{�a�O���(��m�_�p���fg0er%�	Y���a�����Gm�_�.��Em$��q��X2go��\c/a?�"�.r�L����R..���>����y��0��t�w!Κ���xS�@�#������T�U{��<�(ކ�h^�����;:j�.UL��I0���Q-M6�����~�����r��R<�<�c����Yg�p�H ����jQ6��A�G�V���8W�ޭ/?�|[^_���������U��Un�Q^�'�{i1D��vr~�uwwH~t�=l7�l=�W�~&��A����H�s �qV�BЂ���8��"ܴ��V�J<w$����7ȿk7�m�?�O�y(.��!<��Am��y�����c���V�aS��&S�~<���P`��/=�%zXDv��@�k�yS,OUq�������`��k}s�KW���t{؁�_^!����E��n{[>/+��dt}_�`����*�Fib���Z�T �Ѻ8�OG(�����+���Lq�$ N�yΟZ��I|C�����J�wl��/U��D=ϋ��U�X�#��U��5=���0|�Y��>�5f?,���e+Oq �$ ��0��7 ̎{1�wi�&�!�b������Y�)ka���.rr��񱨲���iL�������� �D\��M
IzVS�$	 [�Z�\�l?;"ҶB��[U�9
�
	�uCy�B�H٥�z��{���gm�3�+�GF�։҇_��?��s ������x�=�sU��,���q�XK�\�x��d o)x�F5�W\��o��럋�9k�;������3m��g#�]Ļo�����2������y��!���͑��cMhS��C���"�mW)W�_Λ�`���ެ_��^��X_�_��8^�1�1�H���Iff�>�5[�?S��<�0 �`��P���1�Մ:0�����C|]�e�z+dm�s�(���;�7���گa�-�[��z������2�|�9���3��۬�ÃMבn�Oc0)���]`J��Y1�3�Zx,��ܚRWF����Q�6��~�raaZ���W���Ov5�g�g�v��r�{�G�=%"�c��Diw�1�rt�q������    �AW�#~GFm)5���4ܻ�
;~�����o���bKM|WL�����4"4�>s
�ؼc}��~�5��i��NO�|I6N�O�9����*�T�3�0
FZ�`�b�ś�m(����v�~�
eED��'�81�� ���-,�mVd�z����M'O�$��Ȼ�0��.d$���0���!��^-��u�e�����<�ޞ�/N�g/���d�Ć������s�!Ϡ�R�<I�bє���,�f���C݂��8�+�T��TM �WD�8��F�vw�}��q1�S�=ֿ�QH?���4�o�W|�<�����N�D�'IAp��2̚�.(8��T�F~&�Zls�;�zJA��ֹ���bU�-��;�d6�
t���ŋ������/��߿y�9�C�y�~�rQ`�n6��ڀ����C~]�؊�Y�h�z�'�r��B?;�F�V��琢��#y���#}l������?�Z_]\����%b�^\�X_}�8�(Ɖ̱����#��8��*�%�	��RU�);:�\H14�$C#����\�U���y׀�����F+-�:�Mkj��� S��~k�!�1ۏ��x)��]��pp5��N�l��N+�2�O}��#Or8�(��R�S��:�85��
��hH�'����J���NmS ��E�������śqX���y�/�&Pnr�B�������bz���r�I.G�.[K�%�#|�s\��PUh�G���^�L'�G�>����ׯ>���/��߮��"��O�yl����R��O`��ԓY�姈y��?��b�&C��.��w����ʺ�#�m���Z�9�KEM����;I��9�M^s,�S��~X�>�Ә��E��'	��.��͎��'�@��¨�F���&�s��~Q��P����K�@��_�^�{�D8���Td)?|�|���ϒ�V�r]����iE����nz��L�=ޛ~��������}�=�o�g�8Cͥ�ϥ�z@��:O2j�5��`�ِ�BXO��X�c�o�G1k�<m��~�����4���q8��������DfP��ص��C�M���H1j�$�&A�k��gǜ�!t����]��k��<w��$́s{��u18>ec�Ǯp����3�}�j�_���D��G/*a'.�~Xw�"����<�N��R����&��g����:P	�FLTDe�A�9�j�oEq���A�x�.����Ma��Ň':����>�n�9E�=�W �rÅW��ww]�g\�5��RbK��&2,��Y>֙��*��,Y�vH�z�4؆�1�}[\��/���,��Ǣ�����w�����xy�å��z��w��¯4�o5a�_�/_��.����_���i�2��!�&����������:%S����n�߇n���ae��U�bn���)O2y�,��z�XZ:�_�7XxD`��C8��Ж�[� /�^��k7y�>9���w�~ ��)/���l���g�8S;E��=y��?��E��}���L��T!�|	�+t�+FIk��$�W֯��_Wg��G,���+�w������k
#`���5J�.�����&���2K��I���a��V��/_7�k��Js��!�ְ�QN�lˊ+{�|��n��a\��B���[�bE$�mV�f�C��h �R^^�������a�N�U]�$�H����v�d��#6�F���y�W��3^`�zL~뚪�)�|{��;��b.�*��Y�w��gT�{��כ�20�6SʍJ���$��-Ϊ1�:�*�j����E$c�Xn:4�v�F��2����be�D����t{�R����(� �6�6秎��lr�R^U�-�����0+ǊP��nl�� %�.�ێ
њH%
��\p��8<=�2��_��4x�a�q�hA��ٍgfX�H|��)�P��`-}~�w9�����R��Ы`N(��Ul��8Ґ�b�\������	E��`(��x����ׯ/^��i{8���|_���?��A�y�P��o�A\�(����q#NKP�q*X����즮��?s�4}'2O�	"IKʐ;�
����Hc�j�Jd��b��� �C�X;&n1q�v{�=}Q�9'T�δF����q�����)�_���{{cV��z��)Q�$i`$7/+���0x�v���ؒ������+uH9݊��ag�Ζ�=��������.��E��nU��ca�����}�娠?ۇ�>��(�_R�`��)�[�xS�1�L���B�̙��'vJ(Rd�"IF
RT���``�������`��?�G�|帯U�h%).�����Yϕ��sU=$*�i��Je��{Y�gL�v���1<��*��A�^j��T$�H��5��z�Y3�LJ�(m0YL��\�J�o���%�x��˿�*�m�QN>|����!+#V`�ѼS��-�+v�eXme��yH<|�Hr�&��A5�u��gG� �	m[E`� 4U@�� 86@�փ��]S\�xB�;����b.ڷZ��Ò��uk"n	�UD���~=cΩ(�X
�N�D����o�+���]���zڀ��[/�$1���8#�����&܆������8 �7��f��q��O=C]5���%��q�)�K�9��vS4�"I��V�֬���pvD�AI�`-Eq_9x? �"��3���b���3����">�,��4Jɟ�b��9c~�����u�kU�� ��	+�H񿊜0���T��@>��e�r�0݄�ó�VxS6M+��X?nm	�w��Ïa����v�m����5߂w�fS��r��N��N�����u���bK��r^�{��n�ةIY� [g���nH%��*T��/-=%���ȍ>�~��xQ�-)��ǾeJV$e`����g��AmT�9��Bu�S�x'm����VQ���_?��z���k�/Tt�*�Wوc?��>;i��1Nk&Y����uc�v���N�ߍ,�p�DRl�0�%k1��$��B/|�JW��M��y�,�yEZ8��Ζ����a�>����	��,�S��=H5��9�U���;Sq9٨�q��m7�� $O*�+�
�`	N�Ɇ-P,m8 �hk�[X7��H<h���� �)��~�ho�[ر>��;����E�6���L�������zt�qw��'�k,�'R��")k
v�\��.A�!���Ԣ.T6`,a�2�6�s2��^sW������վ��oC;����F9�D���k���̄'���j�k:�����8=�|*�ʧ`�v�[����ګ�Q�-W  �Vp ���������,,}?�Y<5s�RÔgǧ;31���1bx�l����ch�RBI����Y>M{��Zs+PK����xS�߶PD���;LF�e������.�vn�~gG��_�R��3��,�g۩Dc�5��)	�T�EK�Pz�N�S�o�P�iy�,�*��V����$��6\:@����gi��Q��yBׄ�������i�����r1ucxtc��TJV$�a*U+�_d��!�Z��Y��ֺ,�Y����(��Fs�Bg�n�߂a�����{�_�4x�j��n�}�j6;{?�y����sJV$a�/@µ�y����,=w*�J���Ĩ��]%���OM(.:A��z�=�1k ���gW�A>�Ѩ(�a,!_��)]X�ԅ��oD��z��C\Uu5�=��Eu�������ʮ�/v�.o�������^���}��;�o-�^Eo�{�C��G��ā���)��I�X��e��Nث��) N������+eeS	c���#̪o?~�VƼ��?�.0i��G�����:+d�1Lq�C~�|�t&��>�.�KS���舑K��eERYm{i~=2Ç�����v�`�5J�ڊ�V� �/4���>l����G�Y��{�X�t�=Gg�&�8�o�oEyr�o�$dERB,���SH`�E6����H�*6���Lچ�`-}r���    ^��ΆY�`������t�ZŁ6nb}��L�Ǌ�|,�{�ʇٱwp��x�IV��E
sq��X��+�.�9�P~���b���E�,��*�+6B�%6��[�m��L��/	�����F��cER=����$����~��|9,�WQ�RQ5x��ok̄S���$R����}��}
���wQM@"�gct�]�ԠylՍ�O�/ɈO^��bER�>���A7����S���lM��gU��$E���)Ҡ��6��!캧��7 ��8h��ıVHd�p2a�� e���.L��_�)��^F�s��U�"�x���j���-�u-S`����c�����6��}�h���sB�Z�سk*�P��ΌcΆ�N�Z5*,)-]���EH���^E�����G4-6a��8�F�@\K���]��bӞ��h�o���
6��S��H6��'��7��>RP.bT�8��I]��(2�u�PU{(S�N��%� -��8�n,r=C,�cM�a��\�����.�Y5sǺ��&�w�8�툸����.��7m�)w$��0 ���0�p=���㽀%(�K+�<���:'h ���~_���.E/����|��d����SG�����5����ƛT�`.#_c��dER1�� |�L�y�<g��^Um�Kee���j�p?�����q�.������݋��E���Qp����zS�I���H�y�$�ܐ�v*��u�����a�CB
��B[��(�*��5M�`Z��Y�˿�3�V1�r�t0�췦(F��%<o"�&I�q�݀HG3e�A!��XdJLU$�T�pZ�$���!L�Da%u����Jk�*L��g��`����8u���8{����������������>�u����zVe,�>�� ��^5.���@o�P�b !�R�q�Ww��#ۦ�xR~��U�Jz�E #��&%������5	���m�vފ���w���]	���Ѷ-l�Go����u�#��Q���e,#��1g�a�)����R�<��
�D�<�����9�Q���N�j��f뵩���w���o�%kZ9C��4@��NH,Eȳ������+u�����&�[u2eT)�U��_E�B�CʚJbvsp�Ix@1SE0R���īn��P{+�˅/߅孽�Ǣ|��앢��3���ĳ�Dlr-�Z�E�7�����v$N;:Rګ"��ʢ�x�_�eG�#��AMUq�|�=�Um	����}z7�����������z�e��˧����6a���Δ��,�cU�4�v���N,l��-R��"��
FѰ���x�8��+�z3��� ,�t���F×�+,��	g�}�]�84s�������L�*6�,����b�a�#,OpƘ�G�DUERT��^>h��bOU&)8:ڵ�[Ώ�'���ևV�Mqq�N�>���o�vvS���8�IYV��3����s!Q�h�\_��kLB�)�U�Y���R4x�4�`V,o��)��7�n(L�F�#��� ]w�{��Բ~z.������j<W��:�`�e���'?ʣ��b�]�������4XER�>�-O�z�,�B;ny[,�:1���SJ*����������-�?�v�Y�o����|m���!)a�IQ:��=�z�ʉ0b
�0��x?K鵊�&)|4�g	ľ� g�ט�:\�V7
0�������`n}0�<\����b�8j�}��1#��9'b�+�x�ޮ��F&�T�%h4�Rr�")j�.����K�%�*��dTH�0��n(TN�1uSK�:Ŀj���<�*�`��/�|����?��o_�|�.	 ��-L����ȨQ�	��ao�y��,�H�uO=9�q�'��+2ꮆ�n���@o?�,��ᛵ��L�EfJ����^� �f�{u��Z��a��A���A`��1��f�%}�RtEW�����((L6��3sA����Yǅ�-	�ċ׷�o����f��G�#Ng
E��Q�h�'Xb��-��#���h��ǓQr5̨�
D^Nr����E`�9/mC��A}��\:��� �xS�_��zu�ip���X?8c/Xf*�u��K�s��*�z��oFGu_)W�p5\��¹�%DM=�FV���P4*f�D�Z,,.������6��EE� �_��Oc������]��K#"%�*2��������^1�	�RʦA-[�;k��k��s���7�k�������m�(�Fq�}A����:2��|���I e�8Kx����t��w�>�!�tXEF��D~�������u�2��:r�`���4	@����o#�gV�fm�����E֗l�����B]�q�%y?�8!����G�R)���`|O��;�nxÝvX���ѪV��&��T �uq��ioo�����?4
lt��������@�ǿ��F������|���>��cyܬ��u�XL݃���v��:DU��v�`�{{��O��b:p���a��s?�������<R�.�`u�=��/8�AN�R�"��j`�	"�m�i1� _�r�`k;�#z�]h�ןߗ�_����^���(�9�:dψ�).;���6��&�.����#1d8��O)���,����Uf�b���8��¥
	�sI�[" X$���Y1T����u�aA��f�)��t]E�륨�0�oG�)����C��{�܏b��L;f:)IX�����\�0F�5C�����F��4�[��tuU��a�k틏_��~(�]���K[�����zI��r�N9U��dVa�Xz6��.�s�'�4`ERlAU���q��6�� v��Ҕ��u��I���[�lA=��04��x)�*��*Q�r�P\OVa�^m�L����1�JJ�U$u^��)��Z�l��bx9�rI0�E��<���4Nk�ԽB7mQ~Xb��oC3��HS$��ɒ"&&�Wt��;��;~�x"�<I	H�����+��:��w�b �i�kD����v*��4X̷)gM�fy뗷p�}�[m[ގ^ݫ����ȡ�C>t(���x�G!�����VOe�it�Gg`*��rk����� ������r^a��+�p^y�[&S���Q���M 4��
���U1�*Pwd�t�w(����.����_P����h���x���,	�.�MI��9.Y�5%Tp �D�v���]�ن���Ǜq�WJ�c�I� �5�;�pTp�!�������^����{���5N�{�vѦ����kC륽LtY)1�)��^r ̄���[�\o�B���ȸE$�^fvI��e� �!u�$�@hX���i���º�x��/�b�r����?�*����Q��|SxԄC�"��l�;��c�4�
+2��gk�{��!1PZm��x�p2J�Sݰʄ���(�U��=�QMކ�����F�����,|=�_�x*%73�Ϻ��,�Џ�/zݏ<-����Z�I�a�L��z�Nݟ�e���P���N]#-WS�:41�b�o�-�#�(;�HdmxzY<�̙L��l;?�gQ� �.�n�P�f+{?іE�Y2�QJI����,F��˺΁]ʵ\Y�:�P+��"�TxUp��->G:�� �$>��K� �|��Fzr��=��=w��+v�S��"))&�"W��u�����-@֢���u����>I֤m��w��o�X:b�Oo��Mn��o�>���#{j�q�s?R=-����QkJ�T$�a���9��'���4/-�`*kOG��FQ�X')
�������ފ���������}�i�����3L=y먨H�&�b+�v����N�3&�Ɣ̩H��Ĉ���`/���a�!/�D�<p�r���%�8[����������|����Uy9�*�^�6�!�՜/HI"�:�I�Ux8�pgLA��)��q��r�ٮw�εSă�^�)8B�WX��,�,��+\x_��n�.�K ��C��ZE�vkWvWb�U/�f֛-��Ե�,�.��y��	(\]�fo���O{k    ����\���Q灥���VŢ3�O��A9\�߈� ���(�4'ߔr�Hj�rL:��b�!^f��"8Y5���q�v����o�.�L��}잋���邋Lδ�1:;�GJ���I��s�{�a�aL�'B�DRERV��";m�6�>hj[�{>[@���(��+�����W�F� x�m����<���v�F} �Ԥ����(�3�ϩSXƀ��#�|�}���g�O��x#8���IY��Z��3�ʡ����K)@��
��j�S��<jC/��d��_˓<���O�N��g�@���\��=���������v��8<G�bJU$Ec�o�7��O$w�(Bme�W:!*�Y9��i\�Ӛ��;[��}R�>�yQ����V�|�����$��HO��1�JJU$�d�0�겶R�"����?M^5	m�5�JP84��9�W�ݏ�-?=<l��v�Υ�mv���}o��}v��H ~b�!2ڍ���w�L��>u`M�����,�+D��_��nz/�C�J2�+X���(��j�l�:؆o~,�ߗ�%*�]E��,��v���r�]�v?ga��o�"-;�=����l���A��T�MyfL飊��,|��U&%���,�H�*űbM�����f��3V��Rt)bX{ZB���Tt)
5�![�O���.���~�M��gz3��GA��*ށ��<��E�yUp� �;pQ������2�	�R����]ح���š��BT�)����2�V��xk0���d��ίRvJ*��Y�̮E�UC�k����Ήld-�P��D@v�Pk�j�s��~��eE�4<��G׎����"��R���D+�s5*	��|�2m��4�6!B��f�dг�ұ@�¿�b& �*/L��`"څ˿�~�잋�9��������ʣbc����(�
�'�DL5v�SJ��$1*'�{��~	�ˊ��J�G�5x�����=�na2��>��14���bhd��$2��U˘|1ڍn�kw���}��F\�)]]���e�P-�����KIay��XhpѦjٺ�ٺ�]�ú\����v��od��]p����>�>:R��P�mr�ob��v:�+��`�E����.��a��`=�� �Z@KK�@�?7���'��Fq�S�p܃����,�t6"B��0��S==�)�X�����/s%@]��㍥VHR�Fh�Am+�jQY,TtH��r�=DY�����P]�8��SIf:�
�3� �q��׍�P�AJU$�c񢜫��8�<����
A�sr�!p��Vjge�:��Z�
p��,Rޏß)LD��9����T
��a0{��:B��e�AI��R�|�$y�ai�5UӶ`�d��2�62��}��l�����~�Z��m����|�j�[7dƐ�/k6J0.*�77�������杒@I�X���Y
��w�[Cu�-��*ؘ��dm�,|� ��[��z�A���Qt�, �7o5�2J�~�qg���@���Ƈm�_l�v���p����2)!�����Hjł)}�q��B&�#�Φ  �p�y�i�p���`r3��/����5���g���6d2y�hq��RxS��"�	��Zֹ�Ԯw ׍��P*�4N�y30�z�I�Gd��Q�w���/����.�'⦷�1��f�@���G��ѤIA���+�1̃�fa�` �2�&EV�*[98>> ����.�k���B)�C��ӥ�s6?]g&&�;�z��=���5�BEIW4@��=�*ޛ���5 �1c/�[LV��ʶ-���W�����O>}�š�ۀ����՗i��7EF;���-���MOI���r=%R*�:�`�y������L#j��Ш� �	�
]�XdS�9���������r���뛣7E�&�a�J�]}��%�ǥ(ˇ���]̾'􁧛u
#%5]� TJ�7�q#�+ע��oc�=z#AV��V�Zb
G �i9<I��ΧC�H��G�����L���d˖)qR�5Hn�5{�[��dP�s5m9&d׍@����|7Eh�K �S�-a�\}��a�n�~z�"��@q5���O��%��h�;2H���F$]��_��dFER�
�o2���2�M-8��6�I��s?�Jd�V!O���+��n�k�*�V��?L�_ڝdLsfu#mq���d"���s*i���s>G���4t��	�F�n+0��,*(s㬮��l�?�k�)o�rӗ[,H��/������~�u�}�1�<c��b��1�K&a��0�9�ì�O]$�la�5\v�qA�,��H�څ ��,J-��+=x��!��V���������O�p�AV�M�I#!+�C��'r�o�l"��k]��ydJ�U$l�� /��'���n�0J�{^�Pa���P ��*Ɨa�(����EѿH�x�b]�n�~'��y��IL���b�{������.���r�"�`	�1{I�b(ե��J8�j̑jM]ic\%������o˯�5,�����E�ƒ�Y��~���/:�4���>S㽽���6�˘��Ö_��}h���~����4��A�pR�Da����a����?'���ɔ��Hj��i�$Y�{y�j�h�Uw-8�\�UX\0��(��ċ��Q�䥣���`��Le/��>D��;�F�����0У�Li���+|m��gf��_�_�-k�
�URj�����P-��-Ż��o��߿��(����X����8�������,PJ�m&
�߻�=��7�'�l�)}Q�c�hCD�A/���4�0/�U�#ݴF׆���,ha�����q���%F�Ȟ�]���|G�F7i�F�	��%��T�+#��6J9�IV>�1��Ra�<�0?v�\t=����JS<H�m$ŤO�X��/�k$^/����.^��/E�8�O�C���!EhF�D+n����z����LH2%8*���`Xo2�ͰwP��|&ө&Y�����%	+̏���񨤰k?�f�F��MxWkM�L�55���}�V��c����Ş����FI�Ѥ(+ZAs���4CƋ�Mm�2�Uh#H������lC�ŗ���,�����Y�lb���R۝�8���n$*p��q��'SR�2)�
�������]���ƂT�`�?��X�y�^4�xܑ]L��j�������קE�"���Xg�u��Q��@�ǽ��D�����dkף����IiU���*_%��C�qm *������p�����kۺU����Ͳ��߁+b��_�	\��@l��F����x[�K�}|�F;)�ӣ�8����I9U0��%��'�U��(QGs���u�e��]�B�}�Ż�ò)>�/�Dt��QGe%�gDD���7�:q8��$fܥp��"K�J�@����|B��Σ�̜�Ύ�^Sؗ��^qϸ,.�1%�����*�֋V���	`hm_���4��}�\ۼw��z�lQ�sk�)3M�����7=�Sz�2���f19~��iH?� )p@�e+��@'8C��nC��j����0���S�݊)��� ���l�V�X��ݤX�D��z4�S&>��k�e+�z^jé��!���?8��:�!���!�4̡�WHO7<�m3�G�pm#�dҬ:j�&�P�q,�N���I9O���I��K� 8n��[Ɓ�2�V����4N
n�wY�r�o�P�^G��x\�V�u�+�"�p�7�,����u2��^u��7�A�)�J��L���:y�蠓g|p_o��"V�ԒW�®�}1��O�
�Hu���%�n��o��"ٗ�t���X���T(�;���c���:r,�cs&@�Lʀ���>�5'��A��)�]Е����3�0�Ll�܇F7���n��\f�{x�/�Ë����Gy��3K̹��n���|}��J|ख़�Y���5��,i}�Hx1�'�R�`b��]��Org���#�������Z��.��IZ���v�㮋�]4�>EV;e�R��БY_nܢ�Z���,    �+����崣8t/�qzvU@�9)$��Cmqd=���ߣK5���Y�v����,����n$S�b1��C�h��`6���6�-��|���|�����M1��m�=�lEC�xQ�qط�H�% o�ɍ�DeJMT&5X�$�k��J���=��3Xֵ�u�,�x����޴v]��-&�Cp'�^O/s���oDE�;�Xd����[��a�c��<LG�,�1%X�( 9��K�hZ`1W-*H� �e�kV9�lR���2�"�N/�F�����(�Ӄ9�1�?eI�s�٤f|��E�hJO��1�t�������(�@�9/��!�j`�9'l�¦�à,K�4�o�X[���5�챮���wx�l~l���#�&�0����y��ĉOC��8�	�8�)=M��`�[�`���J(�8�laz��14��J�KnX<p��m���\���̭B�{C	�p�L`jWce���+j�s��J'Us�8��]L�s���Q�'��)��`�qYsr�֊3�Uy�0�E]$�E%�ht��<��vtY^ϯ�}}s1�����;�Tu]���,��Rޡ���Q���6������|ǐ�Y�:�2�|�)�)��^6�EQ8�t�i�Z{�dH�4G�P�������۰���X��-��tD��	B�Eq��D����<r@�8��2���d��L�iʤ
)|}�$$���3�4�&<�8���p/� �l�h�L�q�Y��|���m�6�����I�/h�ى�i&E7d�8�#c~y�ДI�Q4�Q�� �N��\ 
�z<��**��h�@�L~�t���FY��Q�{N���7����;#�z�h�m8���hr�ΔI�Q� C=�}|�!aPX�MT�9����j@Pт[m�����ӵ��l7�>�s6F��M�.x��ɤ���f��]�qm j7��}FJ?S&�E���V�5?Dä
3J �D� x�dŭ'L���L[|F��/��T=��,�����O��	�$����wG�3���S�x�RΔI�Q0�`�ds�wP�v�i	l@�	�W���V#�9�D�󫋷_�e����7���Ëbx�U��T����TlZ�McSR�N0r�!���$m'!���@98�*Ty�9֕��`x�k�Ai����W@	��,���8y~�	�rd�T>޹����ٲS�[�DĦ�^�PI)V�2 ��x:��[�Ј�Q�#�u_�2*�*�H�B925��7��0n^޾�/m���Wb�Z��W������o����)�
�'UH�
 Q~R��	�m�ۡ�U�9�r��i���=�ă�������D�6�,�/_2�g��S�ar̨y\wÞ��ɖ�r\���`H)�ġ�@�ʜ�%����n��+[9�Ƶ� �|�	Ӯ���;{���_e!gF��_1ð� N���y2���2%�)���/I��i��ˇ�����7��X�j�X�
���2�
�%+>}D�e�Y�6��(��K�<��}8�@��׽"��$�6�r��W깨>���b��m��������:���5�v���J��/�� 3�&.HS�� )p��-���1�}��m�����m��X��Eq�"��0�Ώ)w�k�{kqș;I���H�yn)S�{�3U�K.ө��p�������؞e��5%�^p������?,�����Xo��79���2�'$:�b��86�ṋ:�}�n�)0)�
� $7�F��wv��H[�*�j(U�6pV�z��УE9<<�o��Ca����{q�"g���8FƛW�qv�I���*%d*�F`jr���P%^7
���(L�`\V��U1�fh��@kV\��������׫o���۫��^�׹Ñ��`��X����n����m���z��#U�(90�P*��`��bT��t��e������9n�����J捤���m�Y�Ϙ<�~��/߽��'�{Cʏ�Ҕۇ�����y8ma���j��D����u���r׉:�p��}6�����|4�Pc	E���ù���Gz��mV��(��1ݢ��:��ܧ�(,U�$'�{5 wU��/�6`}��:����p���&얨p}��g�(m�����95�F��p�n��E�6��s�2�I�W��B��W�C|��ց5\�Oغ���.�ց��sDF����l�H�h����F�G(�����G6�l����I�W��D:ܬ�$����f��͍Ĳ�d������5i��M1�/�o��3b�3	:�E�,�^�q���r3�k��I�]�o�S�2)�
P��<�P���j�	�a𸺴�nCEQ���s#c�ey����w�(1���mq�6w���;?������?��֋��?�9I�$#y-��0�I�W��"�ᄽ�=���� +�Q�l�J��-���k�����?�CaP|~!,Hk�N����5��*�U��;�^�uG�>�����Rd%Y,_���` Ϡ2��@<��߿��n48�
��P2���z/ۺ�]-��we�.����,��$��F�����`�����zD&S¥x����(������Xe9��J�q=�	����H�[g|�������i�s�׏v����o��mQ܇�~U.WH_^tuV���"8f僽�O��v�R?�/�;�<|�2��]�*�|d��d8�)��+��(�N��GjS2�2)��g����\�^ɇ=�<8R���آ,K����[�����2/?~�����ǋ�]<�_�A�T}R	��0_�%k��,��>���fDu<��gjJ!V&v�l���0"8��kk�@EJO�a��d-m��y���y��O���q�9�ƭ3���<��f�[䝰epCO2�R"�2�������|7 ���W�䙢�b�5�6R�T �����i�T7�||�?,H}~�U�*��c�0����4��8�N��ʤ�+XI��6b��^O���Pk����՞/-�*�_��/��_�}z7?4�������+~z��}E�Q���faU=�h��*F,\2�u*�
�`p�rZ�]��W���*W��~�]{RɆ�ւ;*C[\lc�;�Xs�0��v3~[o�[T9#]��A2�g>`��X#��~}���ߊOJ�;��Q�rJU&b�.�tc�RC&�nF��0�G*E��`6���D���r$.����~)���nh!	�F�г�+� �б;��;:�\�DQeR'L ���o㰌���T[�PA�	����b�C�
��6V�����|��޶�Lҽ(/��ꃊ��OdM� ��L���c���l�mR)')�����<.�ށ^բ��?T�J��D��g�\F��i@�p��]�9�%��Y<5�nQ=X�W6s�0aS��.ys�n֏��
��W��ydR��'�Άk�W�C'@��a 5U me`�WNi�-�����}�{�.���/�]�c����}�䥃�EE�S�Ϩ6SY���4��� �/6�Bv>��Ji�ʤ�.��z ���пnS`�
6,�`��Q�W�[i�7-��Ot��􉩛��tH�u�- P�)k��n�L�"�0�}�L�(��C�%%�*����9�Y�z��ށ�������(��
���j����Fo ���j鐋cSbЮP��*R]Yt��) 잹 �=1�䞰���ϟ?�}�{Ǫ#LΤ^eR�C��]{�{\��̲*h�`��j���� �%���XL�X��E�x�:a���s �KU�@1g��1d�9a-���cJ�UfDo�yN����=�b<�z@R�3��+�9�)n���0�����C��8�L��c���;_}��S��2�p�<y�V�CԴ5̷���^Ca��b�e���61�ĖW�z�������n9z[�ś������o��?���Y{�����y����µǎc^��BP&Lk�����bU��h�4^eF�@Y�������(Y+��;f��*0"S�| �"L(/.����/����U1�Jξ�fl0ܙ�t0�c��)ǹ3�(�.G    ~
�f�p������tH�Ս��h��@Pkk1��%���q����G�Z��)io rf�mg d@����HOcj�N|B2�AK��ʌ(����-�ِ�+��+aa�t���E�%�FyX��o�9/�^]^|��c�?şf2-��59/����(�?Xy��W��k�������������_~�z��z��|���/�?�����K���U�߾�__d��Ǚ7q�Lr��Q6.�Pخ`�	[9Qca'�zJa������y��"c��Tz�j�p�Yek[W-��R�uX�x���%篢�)���z�M8�F<�	\L��^n���} �sZ��;GW()�X�Q)6Ȧ��u���:�xǰ��7�!9z��T�D���,>n�^"�ﶁ�E���	�O*Je4x17q�_Z��l�'<}�����-]$ y2��լm��S<�/F#��3���ښ�������EG�/�L���}4�_9a��=��{݉ȁL)Pʤ���5�M���#/�HZ������Ҧ�=k�׭s��w���S6�f��|�������yEG)�\�p��bB�D�%��ɚ���I�W4�ѹ�����V��(I@����b8N���a���j����o巯�o�C��/�z��g�s��hT;�S��߂q�� �Ӥ�AHa���Jᵤ,�(�3^B׫̰�j���,����kp�zG)m��m�hա���(3���uG{��1A4t���V�X��Ҩ�I�W0 5�"��I��5��<��V��
om* �i=�����v�Zn�w����^ӹ�H�5CZ�Ljkg ����yZ>п_�u���)tu3F7�)ES��+�ek�z{�"��jد5fV��hM�x�A���R������ÿ��5�bx�]o��$��~eBi����l�����D��(8�")��u�Y.�+��A���s��V�+&8��XUY�L�S�8�5|Mܴo6����`��^ǯr��%Y$��_؝4���QDl���>9A�c��&eR����l����k.P#���������� [��X-�ぁ�S�_�/�Y��g|��L�+՝i8�b��x*������s�2"�c蝒��I�V��u.�F��>�cai	�$|0�[Y�[8�xt)m�ŷO�_�ey}�������Ў����{[�����e���JX��,�����^�[�[��-�h��-_���p��"Umߏ��ݿ������{HT|� X�T� �Qɚ�T,�ov���햰��M�O�
=�A��)eR#�n���b/
��S5A=�i���I���XF�qZ)��,֨��C�C��Z�i��`�a���� wg4T3�����p.=LrN���b�`#%;)�r��UN5�j�Y'jW8\P�?Y5`�j@�L��Ql�. �λ�I1�r�^O^.	a=	C� �쬊\
�dϋ��h�����\{CKiPʤR�@u�Hv�&Ӱ�M�|�F$Q⍜c9+}c���f����$�5$%����P4k��ͤ�;8�HSN�i�d���XR ���tĮwXa\G�A��T����[���/�kQt��e�V0y�vqhg��7�8?L9�ddIGn��:��ñ���IuW0�Fda���=�h�Qx�[Q�q����~FPڐV�{������}�����
Kh�:�QG�p�9f��'_�z���8h��&��դ����eR�/��$k8�A�~~)�!��Ba�w%��P$�i'��_�n�;{W~�7�j|���B\`�_�k*���k�pw8�l���(-G)RJ�2����? z��� �BL����`~�����"�
T_����5������q�݅1�rxW��6z>8��s-�HS9���Q��5R�T6��dK�MH�����z� EKҴH��+ޢ�ց7J[��T�b~.�w��z��Uq�*7�dwU"Y}�M ����#k�M�Y �,ٸ�!%�(�z�0�8�D�����k��KT4����Ƣ\�ikbZ�`��c��r�+���ׇV[/
aJ�o�8�����n����O
��$V�Z�I�X�7�=+�^��*ʴ�M��o��b(��2R!���!�a��Un������)U\�<���8e_��״��½��_�������l2�v�N�h������$%o)�*��"�U.%%���/��Đ��8�`��i
�"䂙��r��ݢ,j�P��:��E~�@�x=>���r��s
(sL	5ɤ~,�@DY�(�f�6#'0P���\P��i��AE#�`�y�]�Ǣ{|)D�:��^|��vg�Ⱥ@��˿��٬}m�~8fㅔL�~��������^�;�6if`�I�x��m&��S��M��Iߑi��S1%J�ELɸ�P ��h�(�� ��<Q+��
�o��8� ��츔��L�W	�0Lg� v�A�x\��9������dg���Gg0�vY��8��ԃ�0����({JL���$������|�(J5ޞ%z���MJ�S&�t�k���.'襤�`�a�p���H��VX�6m�ն�h�/!������0E���3*��gF��{eIb�1E�F��݄O���4��)�j�U{���١�PZ)!Q���,�V�
���v�a#��9��G��#����b��9?�FE�q1��.�>~�ߡl-^\C)��T�E�^F�c��C��o5�L�
�ș�r�T��^3�T������bAutp�f14�>H3��J��P�8��|���PS�grR���I��HX�d~�a�ׇx(�G�@��OiX
�fb��7��w3wvQ>=�pݟQB��wƙ�bŁpDJ'���XK�͓B�I�\0 G^��y8�����)C�%.���P�e���mp�OqU�f��(��{�,�z^ �����D�h&�B�@8܏8��p�x�w䐩���L��%y茽C	��ce,����Zk�xhzne-|�_�3l���*�Q��{.��=������������-�����s��Q��,(���;���)�����?Y�-��^P��"�J�Wʤ�.Lb�$kN@.� Xƅ�(h��lm�L.6ܜ����S��v�����c�wl}#�2{�V�_��%V����nG;�7�QU�J�0��D���:�Ԍ�!���T�VLg�񲀣�`�-&�rv�(��#Cd��}��P����/�ns$� �r��X�()5����0�8l��k�$���c���;I]($��a�w�
`�a��FaH�
>��Ӻj��D�`%�7 �ֈ�Q)�o��
+z�w��69y.�a�����:�:[=Ix�#�]���I�]���g���0�,"CaQ�鰬_�54�D9x�����q�%�G�y�5X	���V҈���p<�6�r����>)�%)�9���,��˘��U��U��s>��⟦��E�^~�����-�~�|x��e���(�#�T���R�g��xQ���n��v�No"0���-�rw�B�b�j����{��� ̰!-VK���s�j'*g�(����9;L������1s�tf"�����:<L+�~�Ѿ�Rڔ2)-��\���|��s��ܵ x�,m�kg���b��ׅm� X������1ud"6�̆�G��#j,P,�`�hޤܞ�,X �|`{e�ۖ��� ����&���[�"�N��K����9f6�]����?�x�ٴ�`�����1N�sῦ�5s�}����&�d�Ez��I
Ƃ�h����A��Y^�
�)SL0^Y�	���h������}y�����[����Uq��(>#�|�5��� n�����kNt���JVw�"�n`>=�n|�`b�gX� W. /���my�Y�<ń��~γ���ins5f���@pB4&G�����5O2"ȨD�dDeR�~����_�����1w�¯dC���|3-}�yM�#�X�sG��$��@�xj����똢�3ۼ����|���LCf�,qQ)Q��B#h�Ӗ�z��m8�CUIN�f{%�&S�    RP����oX��ۻ���y�,͜�İ�ՐX�f�~���h#ʦ�؇�=��
1�|��URA4)�+P��f}-�{���5����,9�o��� ���0 :�%m��k8��M��9��JǼp��%9S���$)�1�KJ�&uz�K�r|L�W�zL˺u��B�*�S��������%�����]��7�v7�)�޼KLw�3�fS:;�'95}y�F��o��a;Q3��o����jhR�m�u��'��A/�f��8@ �-ÛYi�a+��	�ʹ��}��}�T�Z/����/�����Sc��L����ؼ_գ�t�#���ݣ[ly�$�oXUJGT%�z���|�{�j��h��B�A�$�9%k��mQO��[�-˲�ۥ�]��/ 8 ���[��Ԏ7#��N.Ƥ���ǡ��l�J
���=�A��K���T�@�QpՀ�g[k�A�8����rg�����]/m�.���XJ��u�Y�ah�ٶ���I#_3�!��Z�h�J3�'l�NRW	�{�[�Cv��"�*lX�q���=���s��7�>�7Q)	U�F�E����~���Yc�ro4��G.���p� H�4�9q��  �[�L�oQ�MV�Ec5����١ ����O���9����C��c�v�[�_�	=��W)�P���P8�N6����Q�Zn+�B	��a�+0���a
���Liq���}f3"��:W�����N2ja0�N��q/2�lH�UI�^0 ��<����"�,O[XHZO*���i�R�9?�2�*g�?�4���Vp:��a�����>�-
��ɵP}2mR��*���\����A@�Pڤ��~Ӫ���v8�[+t[Kn5��p�0�\���n�;zU������E���)�K�c�u�:��<�9�	����@Pfc��S{#Ur#q8���� <��˅U
m�S�����$�옠Y��:Z%6�A�l#h�Hcͧ��0�q@5��S�FNZJ_R%�v�+�G��i��{,Ge�4��M�U���a3R�%�U̵Vo�\��G>�,�����,ҙD����n'�%���I|�D(C��$UR���&��bD�r�JlY�c��$*�����b�V�v� �����ͧ���w�_�#���b�~A�s+�;�,t`�J���&Vu�n&5�:�iCĔ��J����,�|�Wd�5��!�U ��.:�J��Q�fP��Z����
�fqhf�3��LA�h&t^�C1���ǛT͘�f���tR�l!���[J�am���xn��(�J��l+B��6$AZ�`����X~Y¯�.�{F�CG1���z�(�%iê�X�+��>0��!�z��'F�3*�J����b�9�_䠈�҇2��y@��X��ʸ��ZYK��u�H5uv˝۔Qи��"�����9�cJ�U�l
����ȷ�8�9���RJ^R%]��P#r\�wpr���^U4�t��T������W��Y�{��`q։�m"@�MW��f���w����4��3��֛����`/�'Ic�?��TI�V���"o.�P.�\+%l稦��Me1�OEPx?h1��|�\m`����V�,��v:6�H��Lmdg&�N�o�åjA��oRz�*��*g5Y���Ky�r�y�`�0�H��k.�F/Lb�{��/������L��'d�=��v��[;�W������s�\�L�'��z�Rz�*)�
v������+�QpG��4&s@�F�`4qǝ�����nV��x3�6���Ç������mJ��S�c�"|�#E"�fZҟ��d�|h�M"}�R��*)�
��"�G;͠jW˖�m��~�i*�hؙ\m�PQ\�m�������̠O/���E��~v�����ݣ-o����a.H���l3�{���w����aiN�	�6Xj( �����?���E�UJ�R%u_�z��[[�=��1�j+*b͖f�j �Wͮ[W
#�զ�A���:��X����xz���b����!��vq���{�I�|5�6����H|u�S2�*)+a�4(�^���ш���)S�^��R�w�é�4��o��K_v�x&E{ð�S=H,�jRڽ[>,��шH���}sJJQ%�_1?Lf��b�
�keC�%Vպ!x��Q����>��\�r� ���rU^ڻ���8~�3��� 4�о+;�'�FHG}�[���'�������fRV�$��6롗�Mj�����i��;K���3�z�E���)��W���y�`�1�B�k�ɳ�
�'2�w8�Ǳ�dC�O�h�(I�W��M&��u��z�6��
=:�R�~�T���=3� ڄu�>�׏���&�}�b�*v�˼1��K9@Ĕ��1��T��H�DG�.�M*r���&�`�D ���VW�W&����DM�W5k�).Í��;� ����v�,�}q�>~|��+���&rY8��n0�|;J��)�%�ra6	pa��8�ҡx�I�ǈ�ĸp�4���V�ZX��mo�w�7�j����y�����t.��3�F�8wG,��1�#�M��TIq\���4�⡗���5 �+�X�Yue��@5UA5(�Z\?��a9���]���C������F4漏B�8�n�7Tw'1a�F�/�RҒ*)����:K�{�fUST�W\�P���
� L$Na��Ç�T��)�0�VM�!�����
����|x��G�b\`�r oa��X%�P���0�0��Tv��c(�A��Z�rƈ�<k;�Խ��`�(��v/���@NY�U�lm<��ȲU���:�/�������H��+���H�n�����aJ}S%�]��Ӝ>V�w�,�xC}x�i��Ia�� ^��'�`:��Lx_��i2JL�Qx$�Su��ak�S��d?�fͦ�1UR��6�+9���K�lӘ�J�*�4õ`m+#��CDLo�ƒ��\�,׾\��s�o�+R}��^o³�:b��Du-�� &i��Kk?>�R�*).*��W��JV�H�W��=x�yZ�44�\#����X��C�u�q�T��]4*��~������1w\?�R*�*�.
_�֜�Ck1ȵ�I�*�|�++�
��,'5�,���ǋl!H��{X��//:���,�u�g��g#4����s�Rם�	�BHI=Q��"{E{��SZ5�I��M�E����7!��V��!F��.�l���/����_�g�0�"��Dh�[V��URD�7=kd����uVԕ�M�K���7#��`���/.g�[l��c���]J���ع"�`�u�J�Hu���:�B=�MJ,O%Uaf ����!��D��q�vᶮ�'�8	�6pz��*��e�sg�Vѵ����9�KG;GT-&�q<�[y��ӱ���3VIYU�%B�\i������VqA+��Uk��α9�-m�h���b���(Z{�5�C3{Z�~�����O%:e��k�j�-lN��&i)UA�TSSH%rI]�k�9 @�2�;��- S@��9;;�q|�އ��馳{qt���V�k�M��z�f��Vql1�X!ɱ3�RTIQO����#zm%#ZF(�FKQa�b��M%��6ҵ���;�NWyx�oM�J�f�k��$��1������f��mc�.����.mJ^P%�<��+�3x-[�XU���` ��6������>�7��������9o���B�|.~4R�"�/b�����nw���Ǉ[JGP%U<�L@��{M"��P������T;�I�T��V��^���뗫�돟��S%���"��`)x�<[v���4Qc�L������
��*����'�;�S������*J��
��m<� ي5���c+�l0���f}�=��%P ����f,�؄o��af8�D�M�Ӄ?�Z$U;� Z�:o�W� XY��	�D�j���p\V�%���� .yTS|,�>�r)i�D�ֆ�a4��g#^�R�hWn�v��&'��� ZJ�S��G����z����� 7:`��PS)g�
�7�\~zW    �~q�f�����9{����?�X( �%������	H�0᫋�$��'V��X����+X��j@]
�� R��,^�H� S��)�e��/��X~����ݧ�(��K';?Wa9�!���^�}	w���-ב#��X�܊�t&UR�͠Ua�@�0i 0pP&r�Kj�:\��.~���,K#�t�.휩z	-����tx*�2_��:·�:����f6%-���Dr&Qx&���w�'zE`�q��u�v�'m��$ixm8��%�k�}�]��?�GW_%���S(V
>�BMi�ٮ���N����tJ\R%U]�S*s9��W��D�$оb>'��ME��Ռ�$�uؕ�K�ww��|��z3y]��ެ��]�<�{e���n��n&�^�nȀ���i�������Jʕ�m@���RD��#���B��ߕ��#���$Ca�f���,-���k�G�J��=Q�g?�����&��lt�FAٔz�Jʖ�`�̕zu�dt�R@�m�%��e��E��Ej_�(��g���eyxʣ�HD+s�-#����L�� د��f���-O%?0u4}R�:)L
0��! ���6��z7T �[�R���hA�����u�ϿG��o՝i���l�k���N<1<��L��UR��� ���2L�֍���d-�m�j�	��F4�ՊIiV�m�m�n���}�80�w��]Q|~S~]�����/�����#�ݖ�F���k����]�"����n[�S�d��7U@��E��H�=��3 E�U����&��*2Y��Y�k��҃�EԳ�����q�:�-��a	��>r��=;6�b:&�B���$��+�,�M���4�BO�zJJQ'�N�B�-Ԉ���Ɛ���R���j�j|�y�M�����ߺ-�6ey��6�n{�Q����8x(�Fƈ9�k�š�Ů��m�N�-T
�'�M�<��Ke��J0# vS���nN�a竩Wʶ�	��:d��5n�Z�~�Ym���㥍Ш���x��gƻ�Cߍ#z��gb*c���`!���Y�A��k��zj�,�6���*�Z��εu-n1Uz��ٽ�T��d�߂"��s��Oy>]�=|���Q4J���2)��T8�Ϟ����FĚ����zpz
�pۺ
u y��O����[���M��[����qw�)Nz�.�`=+·���}̺�7M����[H�uM��RB�:���0���?c�n�}c��Uʠ~$��ʇ��=�n$�.H��?a� ��Q���&-El�:C��u�YP��h�x�'��Ϋ�֭�e�&�������&�~&OU��9a���j>Ehy��$�H���g�����-��/��_b��.��9�xP"��ٵ¬��3-X�������
:*4��XDJ1]'�Ha������1� �<5��T|<$Z���^֢�d�tA](�}/�3<���Qx�c�丛cV���=gQ�����q��]�m;�-BK	�'R�Ri���Ac,�;���(׎W�(����C�=�C��C���������3W�}Zq�]g3ZS�Y�>lw;�̏�ԊKyGI%R0�D�<�ɋ��5�*V��WAT^8W1�:��:�#)�r=
�<��DQ�/i,�gg���,2�MoGq��z��
�3]�R$�IER0�fY1��w�A�B�"B<̭ ��2�՚�<���Q�n��������q1�(��T6��E�?A/�d���v7���~��Q�r��r���a��#�!cʸ�n^SE��Z�Q��j�mm��UW�>��T�[u���vǭ�S��:�S�����g)�[6��b�ғT�٭hJ�T'���.*ǡ;͡^C)�U�bVBmj\��r��B��1�ů7�z�ay!���'�����&���̘j���S���}\bRN�餮�ZF����w$X��T 4�	1�RWI������Q��ԡ����G�>;[n���sTp8���Rb�:)<�⾙�>�;8}޷"ؖT%�`gj���Wp��rJ}M���|���oL�-��bA줱�GQ`3oub�&fi�K����P�qZ�����M8z�k��N������U��Ac��@`!#�p�l�H�����囀� �nݸ��*��q���?hYW��R8L�}���_TŎqSJ"T'%B��;�z��� �M�:푧�#b`3�	lT�W�����<Ƈb|�M5��|�`�J�� ��c���D�BMo*R�:�
F�L�TTc�$�;G1-�;3g��* *x����x�^�Yu;@�7CC��������I3�"f��R��1�wZ��#��M�͉F�Ni��F(BQ���z9\9aD]���0�	➢dU�I-4��%�;�	E%���+�vn�º�4O͹�e�`2q~�YDfo~!�%-8�m׍Þ���i�FJIT'�D�@��H���C*�;#њNc<a�xՊ��s��&����C	��[<��7���Ac��]$�3��r4�<���Q3c����Ȍ�f��Ԉ)\��3a�]�Z:��T5�ii�uu�]S����i�ectQ��|���O���~�\^��Utb���3Y,�b�m/����6�f!����Nj����Y�7�ч<a�[8��X�'�'��#��U`�2+wa��]�q����m�=���,b�c�V��Yn��q=�츍c2sz�:g�L)���YCY��3�{šO�N!3��1kv5������*Y�a�)�^�����vs��ۊi[6�98�T�����+y���QF	f6$�~�>r*^����c4���C/#��I{>R��~Qe�i�8�[ECQ���R5���G��w����`>����'�.�d}�q�8��0�I�'��0�C��1i�&���WY3�!�+��pD�^V�A�@\5��Z����_푧�[���P�/���*�޹����vZ�p�~4������Nˤ��I�P0�E�f�d������)�i"GR���|�� �#،P	lz��k	�h�qË{�>;�f�Sr����űb�M��zR���	�I�P���Y>{�+k�jie�TA1p`b�]]q�< .kjˋח�^/�߯��\��������l���:��T�Sn�k��݅�0�f~b(�˧�CuR<M�.��w�Kl�H��X�)`'��,�b�v"e�ڵmW��v7ਜ਼H]�7�Ɨg���L�bm����8�~��9#Ni��&Xv�<��^E�]K�_U�T�����C�+�zf��
e3�/��\�_=���|��֏g�$���X:�E!�~부�]��v��ɤB�8�(������h-m��=[>���lQ;U�`f	���m���vΘ�U�^����������&�<�@��1φ>g3���R�bRv��a;��\\�C^�nLa�ʪ]%g*$��T-a�g��ցs�{�v��	��sqx�!�!�ߪ�X��3q���:���K>��Q.�3��HuR�L����K29N.�uc�0U��eЕ��aeK�6�������U���?���m�ؖ5؀�����5��Q��(9���"�)�R��(�(j�Y�kƒ��:n&H¶U9�����20�V�����7Ʋ��C6�F#���Ǵd
��ĽqMX�陠IM#�)�R��(3��5�{P�F*o(꼰:T|��@��u[,w?�u�\H]�j럋�3
��._^_^�oߖ_�||��}y�eAiy�ǂ����_���իϟJ���w�����_���O_�D���"nEO>�>���7:�NL���$���H����`�6̚�ބ�,%���"�z.��A��{8V[��A�3���\�S�Q�S��Р�#KT�����D8 �����?q���G�Y�9q����;}��?�I�S��f*1��1;��]�d�*SsS	
?�����`!4�h��ͭ+��k7ӚL����5�����֥��|o3)S��0�O�94cÔѢ����揩�F�N�_�&`~&- �ߑ�u���C̚?�*�'�"Ȍ>i�JM��Ǜ�r�N
o    §�| ���J6��ʸ
���^�di�g-VZ�����ⷰݬr������\Ϲ�H|�X��S���S�b�u+�<�6$�M�dQ��jRj,!)7�E%�PUvR6��U��橼oXek*%�����VU_����lHk�������L<"�dx[���s׾:�[)O���H�K�_�W�q�9����x�����r-�mDf,^u�#��x��ٳ��8iιCCj������(l�Q&We0���+������J]c��-�e��/ˠ׎k�i< U�!0�y(��2E�eą�)~�q;�������8J��c�Wdzƿ_ǡ����QD���+��NR}&,�{9	�-	�5�|EP� ^�ӊ+�&g�˧��V�?��}T:<�S!z�H��&�کi���XR�q���x&���"�F��\B_�iGA�� ��}�q�$�S��5�=/����'���M����Q�Y���w�݃H�G���R�NR����!�}�;�L5p����܎i��V@=i��v��T��=j�mo6۸���Qcn~"N֘�7w;�M����E�۹�D��L|�"�I!R�	a����s�j�-� �xKH��9)�\8+}S�u8��%���r�w�7L��Z�[_�ژ(y	K^^(!��������B�<g=��J����n���'%�l�7)�P�	I�u~�� ���ʷH9������u]� $W#X��-�x"��}�TL�^�\�|ɰ�^��M�6�C΋�h��>�3)�P�T��(Uo����s^4�)髖��!���p��L	>#�{�x9��� �)Q
��CY��=�H�_��0p
��9c�I�b�.&����A�W����1Tv���)�j�L1��:D���L��_/n�����/'��G�n�Ѐ�?ql�ZOJ`�;M��3�=l��Դ��5(�#, #V�Xb������i"S����a�{j)Ɩ�> v{>���|d�َc�{Տ9�� ���d"%��I�ajq�*��^>ʈ9 ��Q�ѡ��+_y�Q�	�W�=�
Ͳk6[,$D�����xccqܘuu�h�8��D��6�|nd��)��j���.��n��v��IE�Iic��6&�Dr-��9��.��x)�=�0RLu�Sj�Q�{���\_�H����眝�5����U;�M]�����W�}s�yD'̰&%�i���z!�,�=A��D��&��n��vp8^��:��F�����e��������s|*O)o��|�w42��*�����Y����{�R�4IUL�&�gם�"��Gk)P���a�
OE�4 �7��Ŝ/��L{�u��������~�VmE���}Xc����e�i����Â�_D��rx�Xv�sb�@Xy~I��&\_i�Ŀ���ۇ���yW�,n�Ϻ/�	 k��z!1fW,����n�8mB�\L$��Uk�6�y�<���DϜ��Ͷ�=DNá�8jʭ["�2}�����S(ۈ\��'�ڡ��)ʈ��q���q�IIo���&��Ϯb�=఺n�j�s�Um��8L`6�"Tm1nz��k����oaխá������R�K���Trrx�@���k?�qx')�i�!y�(ͅwb/,a)�I����!�����u�5�
����x��r�_�E���P5�4�e�{���˩���ǽ��q⣋I������Ij���Җ���� ��D-�JVN���#Y�m]��<h�����v�CDqչ�_�jZ��|_�O5����v��'�eb6ӒK�D�w,��^:nqZ;��@��H���W`H�y�;8d�W�q_�M�$�9n���CSn������"��^s5X���ɹt҉8�I)����)���\YP�;R�6:���?0S{=��Z��Z��Q���qc�s��։-�qKn���H�g˜���v���☋�z�qX�>9F�)5T�TCc ��W��
�������*�U�<�Ūs@-��:���ʕ#��ؐ�8�=-,���X6�'O�$��w������@YJ�$%Q� �lg@/�qi�ϔ�T���/�JX����խ�uY��n;�oJ�۬�U�X�s��5����g|�ƛ'��Շ��v㻉�pOP>��)eT�TF�M(#�Z�����2H��t&����z�uheZ����o��(��KpB��ۋy�������}V��Gp�A��^ֿ���Ih�Ζf��JJ�j�~��H��1G���[��<�µ�4	U��v��7&F1����i]�o��x���bh~i�R}v��j����x+1���Ag|-�0ߖ��QMRU/� d7�)���RS���Ե�)_W��=JN�6xځz]^�}�	S|(Ƈ�ʤ����5
���,obw��G���de� l⿧tRMR'L@d�S���I�kZUI������ /$�5�plq���o�����o�_.�ߑN�o-歹UI&;���M&�,�|��m�7�.�s4�4�$�j���`�hN�$�k�V'k�q!������Q���a�LM����m��+��͝Cj.����s1"1���>Ź&3�|6�n��v�����l|�\S�&)���h����@<98��zӪ�� nHe$lc`���> \܄h��׿.���p�L��Ni�Qh=�2���V��a��\���ӀcJ��$�S����C��;�J҆�W�&Q���<J;ʨI ����1�^ۮY\?�q�Ǳ�>�'탫n�ZŉD��F�w��"��i����Q�;os�Pp��a���P���X������3�-G�����1���]�8<f��q�����,��K�6����#��*��iJ��$O��g9>���9�5՜"��l?�V��~ѵ��uuxj��+~�Ö�a�>FQL�}шV���g��T�,*=�'5)�N�T�hD�ʇf�W����: ��j8��M� �l;��HP�Z�W����+W~w�n74��Ag>I�\6ڀ+N``kzst�z����<_<r��	hOY.����ߎ��4>M�9�%�x����o������X��i����S�����w�">���� gg��H����P��z��o7p���� Ah>I�LI{����F�#�4�ޑT��5fᒚ
�����K9�L�ȃ���O/�<�T�l�g_?����+�Q��O���,�^�#��/��i�B�0O�&!k�=�~`�=&��u��mc*p��N�Z���_]9�uŇ����mC�(�C�,�1�Tfo�qI,f��o��p����ew��S�JR��1�/k&��T܋:���-�E;�qE��tƛ�z�
7e�~�`s|(�����/��CؖW%���Տ�^�������!���n�����Cb]w��:l����B����_�:2�Ks�BX�۳cx�ܥ�(�VHV�����Sv�){�F��5I!U��������+�!������eU�o�o�+���-';.�H�y���-jm��}h/N�3S�K�Q�3�l�n�>�:�S���6|�l�Y�)�P�W�(��AV�cy2.#�Jy�ӷ��i,��N
o[-���>���a����9E����S����yp�gX�zK�8�&��=<��}?�?�d֝��a�]��P��n�Ij��Q�$��J�UC�c"8��: `�JT��(O�	�r�e����\��
����\�+��_���}k,:�Z��,]~z���{�;��|}�������R��2\E~fb�5� z��-�Z�(�w��`#�����J��Ԕ�I*���7��1�ktԍ�ijQ�r:Lǫ+�mj�rS����mJ��x�k�bEW�DT2n{�.(�8���'D��H~�v�f��6t��y���F�r5��7fA��!�^c�=L>eC�r
�
���QA4�L�j�����͗K�S��Sqx��R:W u�0ޢ�iq<��Oc�)V�԰p�sw!����Iu�� ��Q��})%�dMÈ�H���T�_�1��L$u�	� ��V    �~����f����|9u7Sz�&)T�VP2Z�^=^F֍�\��/�*K��D�64`˖o>����u$'�O����4Bʚ������)�������mc'w����<�I�ւ!g9^���G�!���?�%�C	ؓ��_ǩ5��$�;��p�Ww�V�S�?e��Fg@�g��O�SJ�Y�4�#�nu�K��N]Sz�&)bv�jOdz�H�C�R�r�d�6��BSys�r�d��9��}�N�%���Q�橭8��\O��mP���Wd���9���qԻaL*O��,��r5I�[���&W����!�D*E�	H�avin*+Q8���y�l�����G��������~�_� ��}yY�_Y��^�2p&.J�(�ޕ;XS�m���������~�i���+��~�҃7?�����uYw�ە�/F���T�{�V�Lf����"{sRM���zp@Y����������MX�:����8�5�q�Kq��z���s y��Sڣ�T��R�L]W��n�3^�kE���(� �oN���"�]L�ǷY���[c�T�@e
�R!ݤ�.|t�a%g��ħ5Ĵ-��m%H�+�[Z�V�V�tM����na^b�gx*��`E�sy�K'��]��kا2�qZJ'�$uu�
 Orz�}�8�X��F�U�[����W�k�jv�>.�,��Ui�8���QtL�}�u��3 Wd$ pt^���_ʯ��e}���/��������L�hiqf�Boi���3��_h �%����>�]�y젥$hMR��`1���O���8�H�+�kT���Q��ʅh)ol��U�E�oV�=X�w���z����kna��!�1>M�MIϚ�2/|p�͂>�0vƩ�3�*̢b��#����ƨ���6�ѯ�ק�9]���Ĺ�c6�������ʸ��w�U��ْ�h�lvˇ^�Y�[H�-��4�V�^��	�G6�F�����Ë��0�a�=1o��l��<�tꁏ`����C��Q(휵Ǥ�gMR��`��y����d�;7ԃG�4(,ă��dU��H ���X�(�ޕ׋����E��C�r\d����f2\�n^�8�o��R��9Yc)�*)���<K�����N��)ʚX�YD"����;�x�k�d���ӳ)x����Ԇ	��Y�����MG�{�3
Rj�&)I�j=��L��U#7��e&*�Rj���+�,l¹i,��-��.�\].ˑ����x�e+����
~����v�`2�í�󧐆E.�	EpD��(a�ʵ{܆o�;�!�Sg,%�j��`<��Y��z�����U�H�E]2� Yu�+Nmc��� ���� �[��r	�����O=���X~��E�`���})r�R�ű�ahjŉ�Դ@1%Fj�2�Ť�r2}��s<��L(�Tk��	Xڀwޡ!����P\//�����qy5�.����V/�g��V�x�<M�ۃӺs]�_͘DZ���rJ��$�����/���y����"o|@bՉwVT�[��Ğ9[\�6<dJ}q�Gw�R�-1��<�m�k@��M��AQR��j�����������W��k�G�z�/��~����qj�y;NM&�,S�1c����$яy��1��6h�IvDJn�$���AI�a/R���kʚ �o�jx���`~}�t���om�]�߯ʻ�2���Ŭ1����֧�2��3�24W��[Q���l���m�n΂�S��)!]�6�EӜ"K�e���0�[)���q������j�  �!~�E*C��#,�����bږ�||��OM;^�Yyك��GS�$�.aS?�X�eHJ���"��{��o<J��g�y[�ZU^iQ�� �����X��_��%��ݤ��^�a��'q�	�`4�Q��j|��P�<�k${���T#fGG�yH
�9���%	�#y1�;�/30�r��v+*+��I�����l_v?PB2���bl+�Wn��mK�Aߕx:b4�C��M�)9�Ϊ��*�/�x����a�����:O,���g|K��p����>�5)Y]�3�	X(y�B�Qc<�+.[9�e���9���V�X�;`������|���.��bx|�~�d�&C�-X>6G��"53��n��l-��3>4����RHRL!�_A/%tQ�NW)_�J�)�Y��.m���%�W��s��]������s�St0չ���8��O��oa�zhK����͔rA�J�`�t.�����u����3
ubŔ`0�Y:�jZ\�=`X�p��Nv���\>t��⩣(���7�����׀i`�r�� ���XQ��/0��:����g�y�&�3�z$��p*�*��f�2zr��g�1�$u������6Xe�[[8!`Ê�y�`���w�W�#%�b��r����c1<f�҆�nϬ�������������f�K�ߗ�䒔ԮI��-ͩ���cN���f � U�0h��Z�Wι��;I(����?��fnw1c[��l�e�_�\���^}J�T����4�I~9��R��&�M&�R�ȯb���dW/ѐ
<d,D���(�Z»�eFCʘ4��w��}�P5��=_/��0�sL��W�3ќ��vr�i��9Ft)]Y�T��3<�<H�^6fU�H{�W�eQW�c����3��Ԣ�cx�Mx�Ňb|Ș����8 e��C�<\�Hov+q��2�0)AY�T�03e-���ҿQ�&�Е�� ��
�[����IidCb�+2���8<�V�x�"��)64j�r9�n7�W}�'���9�J&W��ddMRyL��-k(���)m �q]q� �*/$�T��m[��o\��1���u6d~؞�8;���P��7��!A�LՈz����Iꢂ4F�&����6�m[$2!�� �<XLXi�P��-�7a�z�"���[���S��uG@f��){�V˔�"����Mr�vq̻ÐL̝����I	/��(��_~�;f����*�t5E���[���M8�U��Gp�>m¶Yė����/2X���p���B�￸�`�z�TE������2Δ��H�)NH�
������cc�a��"�ij��J� �LiSٰ��M`ŵ{��E�ux�y�������`^�ޕ|�����Q�uW/���w��Ozr��Җ5I�*�����t���F�5��uJR�=���juE�b��@���H� ~v=��cs1m�:Gf���W4�Ѥ�S)�;��ר�ح����8ILI����1�X.����A�������A;Ѷj��Rol:��_]�+��Q�q�kNL��Cs�����������z��ɒ	�o��4ȾD������vߙ$���d��z�L�����/�/_���t��y�X�`Qmn�S�WuS7�	ݺF�9_�F��������<j,�Ƣ��󷒣�Y�_�_�m��e��K/�~��#�w�3\�`�s�F�~Gb�k�> �}�\�Ku���ibHJ��$Ł��0�!�;֢�6�g��//���	�WMh�3���b�뻏��eyy�qy�a|,����7Lu&�]o2y'� x�������&�")�V�C�ZQ6���"Ղ=X����G�
PK��k�FZ�M���-��>73��Q�}����Y5�#8Uzu���ǥtXMR>�P6'ƀ�z({(�FV7��=�xm�� ���m��K�4���zj:˗���>�M��i��/ݳѥY�*	;��I��Q�#(�z,�	LD��IZ�����z꟒�����F�k�s�[���{��i�nu��ojvyw*xotr:���B	��C��a}I�j��L�ު����L)���3<���w��s�S1>�p��Ɏ�
��c
����O��i��}?�#�R2VJ����E�2Ά ���jA��iKM[0U�Ja����5?P���R|*Oِ�p��-,��G�n�뻃�hj�Ae}�$T��PRf�F���Gg��ha"5��&���sU@qr��B�_^�o��]y����w�����    �_����@kϖ&f��}����aƘ֋GO�@��L�G�q��6P"l䂩��Q`�Fe�PYS7�T������\���~ߺ]xx�<5��\LlȌgT���Ha��L���Aoܺ�y��e5I1d0�^��4��Ӭ51�ç�Fst�M%�ך)��&C> �cy��b|��&;�Ȝ�X�����3$�k��t�	�@J��$E~�BNs�}���
�϶�e�S��`%��9L��ܶk\���������w���=E�'z�I�?sC���g�a�^<���ۧ��)EV����PX��0�j6��Dպ�FT�me%��gf�d4pմ�?h�e�E���S1>�d�=�ѳ��h%��ۓ���c�p�g���&fJ��I�Z0��,�B1������S�~될�S�j�#
 V$b�����rq�T,���ٵ�+	��u�uXE&����䫇�x����3��dg�óHl%���H,7�`��ӛ$D� ~�I�do���LR���eN���r�֭���f,���U�s^_�Z�������L��$*� �{6S4T�Nȇ�{�M���/kww�o����wp�ބz�����!�]�I�M�Vj�w4�����A����I�d�yl�*���ݶM���L��x�J�[�D�}�v�8m'���+N%�J�SCQ6O��*�!%e����|�{��v#$�B����*��i��"�0"|�k�zC����7ۤ�`���?�Mb�ޔ>31�(?Z���SJ��$E��0��|� ��fC>X�pW�,&�G���T�?)_�������٬�;�
Z�r�����qk�Ԛ�b�}�l�ѡ�O�%�m�j�$z;SIɱ��h0T�%.��z��,ê�����!ޕ���Do
�Q�.Բ�#��\��)3�6y~5Bo&!g�};�`�����Α`S��&�l
\2��Xx�4��\6.�'%�Ѣ$��s)Ƭb��VLKKXA%�4mϮM�T��I��[��`��؏�
cN�<���6��j�J�`d����;�i�`�o�*H�9H��k�l5X'��Ҳ�z�Dc��Ɔ������:���%�������n�m4$:���RI`�Yf�r�^5�r ����t *("�@+d$��:͆�'�g��������%�	&���N1�`;��Ƒ������/�f��>�Oj#㬁=<�bB���R:�T���!H���O5�O-5Ɵn3�c�.33���]��`(�ȗ��J�e�;q��Il3/�)�[�K30ص�8K����XEZ2^�C���pV,ʫi�Zn����xa�X^�;�������w}=�(�:��'��|C2��nە��*�!P^����\��z�������?�\�������J�&%��-@܌r���P�lq��-}�U�țM�隤:3ؚk����{GV�\-�S&롞nSyҰ*�ޤ	V���X��t�^���'���I��ѡ�bz�b�߮O�J��M�xlJ=�$ř�����`�1cާ�\׾"���NTX�
�t�p�ǧ&S��I�ܭ+�i�뾁����,��;���MHg�N��_�w�͏��.g�=�T%5��<��桉�f�PJϐ��n��4���T����7��m������s��<���aA�Z?VW��_J��'����/���r���<� Ú��D��'�����s��kªs��|�iI�3KJ�A5�JP��c���W�s�Q���_���
A�oain�r��fS^���S"���>3G�ܕ�:a�W��o��F5IqY��I�d�^z��ypB"�%����45
�f�)�$|��\������e-F'����<U��l������'W�Ǟ�M�~���,�C����^1">�z�&UKQ���Kg���ጷ6��#���>�T������d��u`J:pL�C�I����0�?W0��$2��;���4I�-�����:��(��u�`�`��c�ʠ�^��e�%Ӗ��U�OZ�p2��b��<47K
F$et�k&�1��)�=�(�`���^�����]�16Too��	u �/�*��y=D�>2�PQ�S𘴞�e����Y�:��y�+�96N
<$t��+�M6��Ř���k'58㘭�	ޮ��iU����;G�R��g�j�[�-��n�T��)�/��RH�C�ctԂ���-c
�<���~Cwa�gF�T6)�T���� �k�X��9f�S���rV5-u}������%mݢL�)�;L¸�$0��_�u�'��О=��x��A<򄞥��������<��t��CI�b�b��z��Q�H8���B�P"UL�w�1�6,H�mq}ӭܠq/�د�*L7�)�z��uz	#�ǳR����"Y 	2\�`R�g��b횿oܖ�n]�j�cp��X�Imc4"���ݨ�f�u(��c��,����Ƣ%�׍(���]�\�k��2�.�יi8��3y~�Yo0��j@w+�p�6�&4��)UT��1��o4�����C%�e�< x�s�oP���2�9��v�X^}���|����e�/sې����?cu�wx�$*�y\����	ݷMɞڤx�YBl������ZH�N��4�Q4�3��i	i������݅��Ww����7CKqԒ���d��p ���_fӨ3�w�������M3�X�:^��S�x��F�L�7�wd먅b�iS|�{��V�"�mt��勹YlB����3���Q���)���L�6�`j���8K0�$?��A�@�n�9��h���^���ö^��������c��_��,pN@��?����L����3�ΪY�+j�M)�R�Tepbsj��K�XZ�mM���� ��t����j�m�� ���C�]|,����a2�su�z;i�Ü�6�q�F�|v%bfM�|J��&u����<�
��jޚPSYyb��0�t,Jh�`��f�����7��e6���Tk��: c���d�ݏ�:���u�.l���fk0�[j�*�h��m��c�x�t3�Nl�V��L8V3-��H�pY.�?1������j�����O���_���?|X�R~���맷�+d�_~X~z�+{~xP�
C9U�$ߧ�i�~ /2��Y
�%��9�R7�9{)\�Yk*����*m�9
�v4��ў�%S�{��������~,Ƈ�~ʞ]1�\���I��l:��#g�I8k>�^�M�
��1�L=�cIfk%�|��\3bUF�W�F�[����zd1�,>����?�}�<Ro(��S��`���p$��5�S¥6��kE���E��1�:xK�*&�M����60�Y�niA�������X�E�F.VB��R���
�0X�S?�n�����q����۠�T�M��1��yvL�=>8'H�03��2_�	LD��-��VK����������{x���Y�L��}!�J�n��`�ߝ@���eJ��&��P�I��ք�b ֒��hU�Z(L?ψ����echMaK\��Q1q��:n��W���8)�|�E�$Rn{�$l��}x�߂K��J�?}v}%�(���y_�g�j{���YO�6s����_g���đLi�ڤ��W�,���A:�p�(��*(�>6k�l��6*���lEQ��Y�B������8�3?aq�~'~5
��~w��������Ief����	�dc�n�bx��"1�P��ou%) [�*[+U�{���ղ|� ���W�z������L4��!�h��y�q�W�{N[g����D��N��lJC�&u��.F�|���� 5�i��Z�
 ���F7�h��D3�K��r�w�uS�i~t��{������S�K^8��4�Q>g6s?'��m?p�qOr�d����R`7��l�jӖ���PU��o��\ �̙H@U '�I]�[^�^��,��.�l;>�s�R��9r�{�F
e���������2Z���]��fW��tmR��A�e&Y�;���ZӀ�@M=�M�k�Q�F؆*�b׮kʯ����wv��bb�^�PI1f�    q(�#N�IF	z�ӄ�������g�:V��KaۤR3Z����sd�l�𺦍�೵0�<�fd��!{���1?�1�4c�ynJQ������5��<�O)�ڤF3|z�{�Ռ�t��5Q�׾R���,��I�@�:��& ���װ���߯.?�Hj�Ŧ��ōޞ_gQ�g�_�|�έ�F��X���6%�k���`�i.�,���֟P�A!kd���l+.�Z�l͟.ߖ�GL3*��߶[�ik�h���	��S����]?�[=¨���)*ژ�4��)UYL�H�����I�wTC��0_W�{�QĽ�������#l���l�n}���0>�ǌ�tp�5;?��KNg��q�q�9�ȉ��M�ۤ�5�!����b���t���Z�TdX>y�tC�]� M�+,*߅U�+?v�غ��M��To7��a�9��ۄ��_&Iw���L�[����/�t�W��8�� ����*��E��m ��ƭ4�7��[Nx ����J�MJB[���d�ث�(��85CSq������i����lR)X�
�t��v���6r�5CSv!w�|�p�������8�<uk^�j�mJQ�&���QfR�c��� i����o4 \��B��68���_.�m����뗫����cn*t�n=���x��� ���u��̃F����<K��ڤ2���gP��b k�Q�s/�+���	"E,����
����G��O��5p�Y}>k%��o��m��,v�x'�*|R{nS�6) f�L�.b�<�I�BkX��L�e��<�H+�ֆ��k���gA����K.9�3W������83�k6��ūJ;"�)Q1��|ŏ-u.Q%���=[�ƴ�>)��6`V*hw�8Y܇�w�ݭJ��܆���S'籝D��<&�E5�L��0}rvn�_�C�W���7wn����4i"�pj��t��3͠W�ak�N�� [�l:�bx_��V��!A���!�u��?ݮ���/�"�S��o�H�9-%y��������M
�ZL��9a��w�{k�q�ا���{��2l�n���E��nêhQ~�e���)�=v���%h�\�ɞ�מd1��$�M��ڤ.zc��L�+�r2Fl_��B�	R��L-P��Ij�e��w�\.��̯`���H�8��q#Un�w8�S@)��k�>M~m!Q�!_�V��^VxC�ǡ����wZp��@��ְ]//_���:c#N�`�s�;z�k1��CP��M3
5�S��=)�R��ĵXeBT64Ð]x�� h�jh�������=�iM��x}�i������<^�IO���kPA4����D"o�4b����0�'��LpЦ�BmR�"g��y����,�6�r��t-k��Be`E C��n����L�������Ա!��X_��59S-X��*٘2����P���+ɉr�M�bڤ�E���e8�M� ߐŸ�mP^\M �XbX{�WZKG���7	��}�;�>ʇ���l��}�S_�-��p�_���S� ���������.?�}�;��7tǞ��wvfv@ok�Zt3�C��
2����*�	�'�4O�m*���l�
�t���A�
�E�C���MP��7�r��
�Ir78ˋp��-{}���Mؖe�^"�4檞�D1���$���g�F�
}���mV{x��p�	z��R��Ă�	 ('{��_g���#�	YeLK+	.���T��ҟ���~�\�_�7H�Q!e����I� �S!}���������?��[,�^����̧\*V�&KO6*`)�}g�9	[cͮ� ���m]yH��7M��F����=���W�%^u\��YWqԕ;b=�3��B��n�c*��v�=�Ԝ$�iB�HM��z0�G��!��Ā�4�<��A8N����EG-�x6F;�r6�[u���n{h.��Y�Z����{�ê4S�]8�`v�6�U�nVOcb���;��j�ʿ`����3�#���r�"���a�e�(����X������e��wo����cK���B��u6��eg�j��n�c�	�vaFPp�u�t]mRLb`��#C�g�-	��X�k[S�����m��z�ɮ\ە� �?b����5k��M��0���mj�-�xs��$#���)�W�T
�NQ���QL��0�ӕj0�É��WM�N[�Tp��.��a�i�m�������3�R���O�I�f�����-��������wJ��&�^�p �K����X	r+�X�@���|(��%��,����}�;������p\�s�G{+aJ�,9��׏��?��T�,�xN�`Jc�&5�6��}��/8`&kW]s𨤯�0�"�V���.�%x~ś��n�K�X��B�E�ha�^?N�8]�b̞�4�$��f�*��5g,�-aOӡ����D �Z#׌�pR�%"^do�<�)O��'n* ��f
%x�3n�C�������N�SJ��&j��c}K�6搕/����������qT�V���\ŗ��&����7���U��̸1S���c�8ڇ�'>��~���s�r�[=� )e7�TF������� t#�=rᑭ�gw�a�D��\%�¦s&V2b�L�.(Q��*/Bmمj��3�sfQ�w^����1��Ɯ����lR�`�s=�;�8��6']Y�8��o�m`U���V2G}���vQ�r�A�-R�.�0]u�^�i�6�ͺ\;��-3��`_�y9���O��D:HMP���^��ݮ�ѹ���t�R���nJ��&ES���{?�;�f �.T�5X���R	�5�S�T�q��/˫��>����1w��!�.�O�M�U���N������CA��Ɇf��tJ��&uS-

�|�ZpجFwG����� 5u��ָ
a�7mk����f["d~te��v�q�M�Д>e���~�n�Vs����x�<P3!c�që��
ER�l�{��8�[0�¨k�Jw yM���Q�	�;�x}���}���g������s�R����A�<cɅBM.����_X��H[~ak�.�C���ML��D��v��ޝ��xJ�0%cn�z�0�4���I�pl�\�VVL��а�[��c�(�W_��z�?.���_��?������g+���MD~ĉ�㻰���" 'iS��R����d��x�b/�/����<j���H�Z�T5�׼�9)�?��Y�O�c�.�!g�֏3i�'!���ޭo6�������	3���ؔ��M
��$��&'v{1h���p^�
�n�`�ɖ^Q��Q˘+�ۭ�n��"kΆ�:?1e�i�_��#��Tn�b����I�]0��d�b���[��/wm%%r�5��9K�I����������s���|�n���c�?���(�D|�vy��,��|X~���ߗ�՗!���ckA>}^���y6j#�8w�1�@�?z�6(�eL������W�=t��s�
*��z�ElR`�"�<�)��j�Y�q�Y�5�X�����8�h-�r��f�ݕ��U��y6cB ���=x/�k��L�wo3��,/|��� ��(��W�dr^�\���.|~��Y��{X����c�7����6�2N���x]K)~s��v�D��On�GƓ���И��zt&�83u0�S��e��a��F�	��,����I}]��7o;N�V�������B��e����	:x_\o֏0��t���%�[	_�֕��[onK���P���������AL��d�� �����8�#��\?.��c�f�����q�'%pi�
�`2i	�:_�;rajP��W�ě8J���!�J�7uS\���]��Ch�o+&m�p+�'�|<�O�����a��CRu������I�Y0�3���7��F]pLa�5��-s�J�^��[�έK���O���BDp2��
�M�e��09z�q�UU�'�T�ަ�mR��"o��ٓ{ǲz�h��a�:%0�6Z��LKT�"�XQlF�Z���    H�	�Hv�g���A�/�&v�bt���cf��80�GAR�6�/v�2A��qR55���sAeS�(*�L�H���U�q���*4��辭�C���^$���qF.��\t�SN����.�QO��,�.%�h���`!&m�{�c�3J5�t�*��[pB�s}�j&��-���+Q4���۸6bS1m7��u�W6�ǍG����~nDoH�䮳�8����o��Ӫm�4=6� Nfb
)'5��X���IU�+��r	>G�j[)�`S���V| �x���e���n ��c[ΧgÑ�cu&d_j��,8���E�P�����$��W}��ǟ^�D_c�ΧmRl$EVN���R%����ZF�P(��y��-�Fx��0���vsw�v�C1<�����1�J/8[dS�hϴ�f��q0�v;p��8#Z�So5%�h�:�`������k�jg8%��x��E�#_�M,���������c1<��`\���n�Sl5=7�$j�1��/$u��R_��j�D�m<3�����J5/��nw��}׬'�Ͳ��eJ��9��Ck�����ŕd0���~�������5�/�ɍ�W�o��vPS�j���j��<5���+1��	fϿ.�c�mr�~��8���օ�d�mRK&���6�E`�ٕi0�ma;�X,Nj,,��2�ֲ���)޼_�1��	<�˫7���c[�h�j�?a��� ��&�٭��۪>�R�oh)/!��&�)���3JKF%���Z��r@(���x[�Eŕ�U�C���H\�ˠ�&���g�Dz�X���8�b7�8��CvG�I�ڤ�3���l�}z���6�5l�h��
�EQ4Rs�,���Vm���w"	y��b�a�,+�#����M��Á�O�R�G�TmR��.46'܌�(/:l�ڋ6VxD�#Qc+MZ� �_�b���aU6�m���TO9w��N�'o�v�3I�~�~�9�X���Sz�6)��``���0_����z�[D�������uK����<VC����%R��;��-�SK�^j��8��.2WP9���qL���	�v�M�ڤV1X�U�XM��jk-�Ą��e���TW-���A.��}|����"�m�7j\5�Ɯ���M���i�:B-�c����cds�t�'�+�%ey�(�š�ޑ�N�ݜ��4X9ڠX�u��̀O.�k�k{���k�,����T�0�].�x�f%��<G��|�z�|��T~�S�^^]B�ˏ1&���ӗ��������˯_����G��X��ϟ����2J��6��[*�`���Ww��}X?lV���o�/s짦�mR��m ]����$U�a5��<�kY��������`i]\������c��ϯ�4�c1>�p�%�s�&Ng��~��p7�{8�O�D>)	G��`�H�H�1#�ӊZd�D"�F#K�W�r4H��DmӴ=y`�;�0��	��Ν���/�g��\�0g�9Sg0W�ԙ���M*z�n�:k&�O�G��Z�* ֨�mB��@�����Y )�N����T�O�P�f;�|~��03��W_��?�?_|������:�P�$��g�R�`��+k&^ш_�5�;p����u��p� �@�1������H����)��NȐ�&���4Ϙ�"S���\��o�dT��FI����,|lEX�O7�ryP�k@��Q�	bH�#�?�A8&�*b��=�O*gC��:g14�'Hr�0����f���P���	η��(�+Ӓ��`x�9��{g$�u��PB���k*ZAᔭ%V﷏��+��ﺕ�����B`�3��`+,�5������os~�~#~�;)�$<��R-�)+	�:����k�p�N��E�ګ
�B��r�2�(>�m����M�e�>Y�����0�� ,�G�,J�ғP5y�_?�����~l�K���Gg�d��^=fʶN(&Q��Aq�s�.J<��1��b����Hw�7!?��[�on�^�_ئ$eg_�02d4N9�p����s���f�؂)��E�Mz�{)V ���oQ���Wp8���a��q��a�W���;F؎-�SK�x�|綏(0��\`��3��>չH���fZvO��`�N��6�%7����I�ㄇ�BY)�Y4��"F��| �@Z�~9�'R�1��VƑV�
�e�{�u	�����t�MPf=�P
�^7Pd��YLrGU�I�Y?��[ܭ�=��vJ��S�h	��Io�}�\Ui�H�ڪ5ޠp*�Ge��G�6,�X6a�&כ�����ũ#�@Q$�� X~W�3������7���R���.�гN�s YC�4z�	v�6�8�0[*�)�m��	m��M����#y9�Ha�!M`��Pnz�&����o�=���#�~�4m:Ʀ��OB>	�f�N_r�|�Ճ^5��C����J08m �NX�95�(���Q]�����]���_�<�G��B#evՌկE�ju9�K���S"�6%����nͭ)��Z����r�baL�I�k�5���η�r5�7�s1>�����3���2�EA�shf�k��=�>����B'O�Kyx)�]49���w��=���ޭ�m#i�ƿ�Z�v���]���D����Λ����@7$X�!E+��U�"�nQ��}��- m��buuUu��xZ���K���M�c��-�.�;�O�e-Y�w	�3��)�����̆/=.�O<�&N��9Oz��T>)V,���E	pp�������a�R%[�	A ��UV�	5}����AF%zo��~YI�t�0� =�S�`�1s��*��oAK�gè)�T �xWՔ9<�U����pVz)���Z���E�?��%6�Ž\Bfy"!v�N��>E�iS,�(�U&�ҏ�1[�*Պ��1XF�,ߨe:H��$���n�{t`��o�;ۈ��vň���7�Ü��N�?L��ի��^�P*�KQ����hm�g���î�d��Y"R���g�A�\��h�f���!�+��_��A��b�5�/,�R�����r�P�r?�:����X:�%Eq��H�>�FGL��i]`U��"�Y%m8KuP���������s~�����-�0�3�_(!��S;���f��4_�c�/D�LI'o��F3m������Ei'��BA(�,6��6p�l
��Md^8�y�o�/>�A!Xܬ��h���H@'BJ��)�^�!��~ԎX���X�c$�m�`@�@�����j��`�_������]�+w'Y�َ��X��g�q���/�/�`��.n����$ ��(�<�|Q
��%+#��潌����l��.��L��	�2���)����۞2�l��_(�gْ~�qFE�G�f�\�|R^c��7J����0�F�8�<�_U��AJ�����<Ų�]�Q���=������֋�����A
ˉ�v~����D0��=EAhS,����)dF��1?w�A�j�����">��?�Rm�x����<�rq��}��;���M�!���O�Y_��mh�-6_�o�n嚰v7��[W_���2����_�W�������й����z�q^�r���b>3n`c����
��!,�#;�I]L7�$�_���{�͜D�fbr�Y����JX��a��
� �(k�AR�_~�,?.�xo��&k�� ���{��B0���}�\u�����v��W�9ۯ�p�ǩ��_�NIC�,8]?ʤSs��j+�Y�[�Pt!Mhy����.(��נr�]1ܝ�Sh*���;�z�rpE�U�>tu�Rڝ��hԩ3�I��� �>S�؏R:",�Z֎a�aXnj�*W�T�Ț�o���[B�}	�h/&y!�,u�𓃙Y�����$�R�P��͞�,��EQI~;�!�3ƁO�)��,�ܓ��3�D�G��3��D>,f��c���;6��_��!�F���Zϕ4��l�(���ae��H�ϋO��
[�g���)>    ����i�L�'	��DY_�˻bl�������[�Y˿���ɺ;u�5Iq��X4��*r׈Zøǚ"�p*�<��1���9����o?��/?�~���)��sQ��c�O�:b��x��3�ԭ����K�\�8r�&�$l�210�"�k��Q�h�ICXd��eM*�!`�ķ�B�F���Xw��k��#�zn���E��lz�?�5�!���*VR�]��އ�㶟�f��bX���Ѥ�J@X��,FM��r�9�����rl�� k�v`��l����됵k��G������}Y�u	��'e��5N7]�}����]��Q�W-�T�fw>K���!)#8�h�E�3Xe�6�_`(~����笽:u�)��`��i��AdA�$�Ef�t��6�i�*�4��_��r�h�{sd�ͮ;�|Xw:뜫\��L��NyR�1��:�(�ŀT|�C��8?IHmu�?o�1)}�2c���R08e?�i��,(L�."�P��-�<��,8�����	�`����еȨ
+����My������忟n�x�u��:e^\��h�S)�,�x�[1O�z�LH)�2E�
b0О"�<�A{A�4�p�QZ�[�-��4���
�̾u����E.6�����9uR6���=���3��}��y �8#f;;l�>9�bӺ�3�&)UU2S�ޏ*:t�z� Z+�ci����W��ղ�F����C���]q�K)����1[D8"H����EIa�*�u�u0�&l��[�N��Fp��K��a�jZء���v����m���O_Zf+����W�Vq�qƃ�����y-�}��p� .�s����Sح������cN��g�b	&<MR����\�MU���j��{]9�N�(	�e��G���%)�Ӛσ��QRe�H3��e ��G~���O��8NQK��Gu� ��6��`wzp����"X��J;�`3��cY�����c� ͤbf���+x�	�a��r>u��)�� <Ԥ��Ç�a�>/�K0>i�b5qX$�j�J6.2����H�}#��5�ea����J���~�_�o7X��u�/����r���=,e3A������3��x3�dM0>i�"4E10��Y5# �撉�����m��j[7`��nՂ|�|��֍���O�gT,���J 
�0�����!ʊ���N��fnW��"��I��ϔ+�����۱|ԋ�c'���A9ā�2��W-.ؚa��7ۡ,�y��~�n�lv_�0A�&��Yz���qsw�`�A$#�� �����'����^�ѲR���(�Eg���
&]l�����쥿+~>=�I����h`��Y�(rz�QMq����a���v��-J���n�L�Z?*F�>�j��ڝ��J�v-y[I瑕�1��x���g�x �_�'^���1��k�K���'&����P��ԙ��c��Z�$EQ��
�]UXpq ��������#sL�1����]j���M4��-ƫ"�D�nu��ˏ��q9�7Z���v�s{�M�_O����N�ߢ�X�e5ɪ������ܷ�klӆ�bW�i�mS��Ȑ*z��A�i6���g���y�rST��.�kf��x�>x�F+FT�Tm�4�_k⬮ 4�`����-ެ���,�������]1ܝ��sC<�"��$�5��_��$A�4.K��i��WEp�3 �����Ж{�}��+��C�c����GX�]�����Oo>��|�����Ó��I6��FA���gUH��� k��S2jV��{��Z�1�&)�U���,wGŘi�����T�5X��UeA�*VkAZb���~�\���ߗ��n��6'-���*J^l�8v�Ɂn�(!��YY3���N&�t��HUQ���y?�ƊK0!^Z�_��A����T�n�"���	�ue�4�(o��i����� 0N^zF�ӑ��Lw6�g�
���j+AP�I�\��	�F�t���7p9Vȷ�i+ok�Rܶ�xsۭb%F���b�>�Q"B�adKD���d�PI��Bm�:�:Τ}S���u��2A�I�ie��=+!��N�(���k%R�p�Ȉ�=�m��1G�A ���?�I	9ݿMJ{L�������v����l�jQw_��\F);E��R��솇��8RS�+������jo��VRۦ�v��=��U�E��FM	8��G��l&�l��f�J��00k,��?-	�}A�qp� ]�$Ÿ*iO��U��%����i�E��`�����%.��0�	hճȪ�)���sd��1����	YuVe�ʨdU�[ʩJ��h�ֹ^�~t�۬Ch��R�5�#m�!�b`�iUM����O��/ߖ���>J*N^�L�RB��6Q����m�ݍ�S4m��k�lR�T����h��l�k�&N��X<�&�*絫�1���ɶx}6�w{�!L���x�t��8<=��U<��a�
�	��|Nf�	����;;X(�)SҙJ�,����=tK��Eӵ �8l�c��,���Ҵ�f�N�(n��PovŮ[?����\5�b��:��@sF��	�ϫa�	c�Ԙ��)�Zx{��*W�G5�k%��	�� �F�(^W�p�"Z#}�q��ʏ�2u����8�Ϻ�(r���W��
$��4�`�Nx�9ͳ2�f�XlQ
�²bRFӱ��i&"��75ļ5���sP�꣖�F3F�1���?�@\��$	��/h�������w�K�u�~Z�����J����6�G�?�w'�eWt�ބnZ��Z�$�p�{�s�!���XQͦv���q�_T�[v^L�m��u��Xջ�47�ѥ��mIeHRT��������A�"�d��e!(A���������hK���Hx��ru󆋩�<�(QIS�V��(/eā��{!^i�{:x��Ö�`2�7�u�\����>}��YY�>|�˙�F	�����sgq���o��zc��w+2�KN����2�0:CF��1�55o���<�5�b#0�MrV��v5���wn�\�U����5Ȏ�X�y-ʉ��Ϟ�Uh��������l�d�]D��)A��1Y�F���0��#v_�Ĝ,�Ƭ�@��u�Ԫx�cp�<flab��g��zqHܝ��|�	�'�&��xJ��PD��Ҏ�jB�!�15z7��TV���a�� �G#4�Sj�w��?�/_��F|�l�9vq3RQ��!999����s��R1Y��E�Ev+���&c��`�JS
O-�}7UP���R۲oў��O����s��>��X�n�>�P+E��X��E?��`�mc�tN��i)����M[ia�m!ޟ-Ş%�U�$:c����t=v�PR��&��0<��è��"��&��&	�;M�W��4M[��������(?.~����o��֐ޗ/e@�:d��C�~��ܖ�lX��HF	�:MR��($TȆW8�7PXUs߇W�Q'����[Laᔬ�����~����/��2�G�ȗG�ŋ�69�w�����u��<t^ć��q�`��$E�ట���#.	�p�������ʚ�TL�c��Ӝ��]:�Y`&�8$uц\�zq�2�Žp�M��S3��3���SL���Z�uqt$6,���jjذ�2A@�I[cj� X��z��\�G↻b�˩��7`��6��fV�{�Z�s������4�i�'A1�I��ax��d����	X�)��Ke�i���F�-�Z��e1\f���[�}<1�5����Edb��M�.��.���"E`�_\0:
�*�T�k�Kɀ�?�jH�H�A=�/?~Z~�|��g�e^�\����h�Lw�{���.a�'�E�v������c�x���r�����%|O���[0R�����sf�(��fai�C�!H�X~$&fGbWW����v^|6���p���.�+�)/7:V�ij��E�}��f��Rī��y�և�T�#���w��xٸ�;�]��\Q�޲�    �:4��}X�G�����×��r�l�lC�O��)Ԝ�*�6��׶�τ/>�'�	��"NY�$
�2�!��G��o��d�E>!|�,���0�/����#J|Yv�[��D_����b�8�n�~)N,�0�j9-g'��S٢cu\� �@��l�3�:�8:��
�bc*��𫴮$x�L"�e�����)ݳ�Q�UZ�-r�ｌ��BN�.ė�U��)����T^�"Ӯ�e�l�0:b�2�t��>p�`R����V�{Z�(ml�������=y��eyHӾѿ�J�)ru?53�զ	�mHxW�tu��uaq�kN2f�u�pݐ�����jy*.�S`�������'�57nU�X���I�T�V�(�o��9}��D2�>�;����	�v�(��=�$ņ����d`u��'���kl����Ѫ֮�(��^�����-}(@����8���{|�~!0@/(ik�^�-���qZ�bǭ�	r3MR��(�X��/�r5왭��d-(�m��­���z��G��vۭ��z��ևۢ�=k�_Z����^ "ܴ�ևݗn�f�&�v|�-�X��N��#�Q��m�7�)W��E.���LS)�jƕg���9}88g�d���$��f�Oe�*���qQ��5C�k�����5�LR5
Ѩ��skUWm~z _��?���|!:�cXSOO���E��n�q�b]Uy�.o�
iU���&͝��Q����d�0pؔs�j!�"_�O���}M=v�o��h�Pz9���=�Px�1��`�@�+�l�/�V4"�L��� ���eY���û�������/�]���t��E�|�*�BN�-[�R�Y���s>���I�
Ģ�e����8�� �k�Z�V�o������QClpA�.>�o�]w]�EV,c!��/��4!��;NEg�_�1��I�)�O|uʲ�%��+jZ�4iY�D"B����ʒ�V|Z��tY"����7�p�՛���җ�?E�-&g���n�u��q?��@��L+)4[��>��3{ ��� �D�C�\�5D6��E匷U+e�9�ө�(�{0c��j����b��H�X=J�|����A[��B����i�[�pK�q'
��g|P��`���V�s�@8��jQ�*W��i�!*��1����3����R̯Q0R�@%�L����{���ux8�Ӣ�ϖ&)V�( crmoqԎ]K�Ӭ�W��(�%�/��0�6��~���S�?,�������������%�!-J�����OB�iQ�]�����?��������7�/�.?]�G���VHT�ג#^q����v���6�I��vs�n�ïaݶ{��丶>�ڥI��e+��y�K>�|V�CT���ۦ�e]W)��H%����U`��p�f����ȼ��������t��95j����`R�}��_����!�Ǟp�r�!�QM��Ѽr�'ny��]�v�.��e�u��]1ܝɌE��AFB/�:�j커�_���iS�+�9�g�&)�I��Q<��è����0�,C`;Kݐ�z�*��`-,j-�_�x�U��s���0��m��u���z�X�����������M��^o�æ�?�M�����W�p�$��R&�Գ-_rf���2��f�]��%HS���N�Q5��s%;��B� Ḁ�\C}-]�X�$@�ݍ+c;�ڻ�c�w(����p�jw]�7��������>,H�{c��{��-(���EK|��~	��n��6�y�)Hp��Kc�c28��Ε,��p�ӖI�)lD�������Ja[|���c�r�]o�n���\�
�p1��V�1��uM/ �ʟ=i�Ֆl�c���������P4lǚ�HEQ9D�y��Z��8#��Yn��ǪE�*.+<�3�1����q������aae^pQ�@p�sM���Z�|��w��5MP�i�"E�H�ɲ:��b<�4-�\-8?���U]{0����6@�V,1�\��=>�Ջ7�p��������?����/���!��l/�(|��ӛ�?������,�#RrQ^�n�s�z���RF���u7n�'��tkw��"$GE4���I��4�D���qT�񉵶�Ж+G���V`r�C�
,y5�mX��`"W!�K���G�pW³�[��#)��&]�7��&���cY�\�')JC)J��8:�Z��XX���u̲	�zV'�.�ڂ�������}��w���L�WS�M[����Tl�駃ez�%'��4A��I�-%����]¨>��2�s�r�?l���-�j�c����]��k"�j�
�~<z�a�9��H25�褌��
~�$-i�'M���V�f \��!�f}�����K���UU����ڀ�������P��G�͎�{��)/7Ey
of8ħY�a� c��y愧�j�G/�I�=�&u��q�j����~�-oo��B�����j=��*@*I�"5�W�>��>�]�I�x�B��J�i!lF����nU��� �qz�:ī��v����v�p͢�3I���o)����7/	0ce�j4�ژe6k!9�@{^�'g��D�WU��k��a�D����W+��c-(�0C)C%L�fy�.�����~w���3]���U-/�������/�b�o��?��r�������|��f&f��QB̫��ޭ-yn�f�Xt)W<E��2�J�Q@�t,l�N9���<�8� �*X�Ra�R���r�H��^��	�)�"����n�܃����v��w*�A�&)�T��eSeOK���1\UFp0k�@k�l��y$��|8#�VO�"��x̛g��Z�i���&�;���ك9�`b�$I�
��-�aq�QAG ���>nT��D * ��x;;��88����}޻�&������RL|���ԄTb��s��dƦ�z��c��\�$}*E���u�`����"x%�V�W�u�����28޶�QNo<�ܬ�u]���b:&)6�GMUT�o
i�f��S�Y�m�c�S(3O��8Qi��I�$'*��ϴmè9��H�C�aw��6K��dDW��Z�&Jc��On��I��'è�PL��\�V��kwak�.L>�%��d�����t�?6"�gIT�$�)EBk�??B2l>�ҵ���k�#vI[9	��\�j��A7����[�?b�%����C�Ƨ���٥g̷,=�{ӥ��i�\����������Xt)�4I
�т<�cZ� �<�}�E�"yl-le��%���6f7ʟ:���p[��YY:��[�XV3|��k.iG��r�'��4Iq}��@�4�G��Z�Z-(3�1h�?m�s�ğu�gK������O3��ma�����,'�!{pp�{�s_�����A�����!Jpll�ij�*��˸�r 䍨,,4�T`ԺxsT�v�g���oR����X�q>N�iW
�>1թ�&I��`'��,�8�FT.	Ʈ5�����+v�j�����?\������K�,�˜p��}�"/%ɔ<o����k���)���&8�4I2y� ���Ն��vlV��BӪ��C�E�OS;��ZK�6]�`��C�σ������^H�;

1'�\;�qw�M̉�1�C����$I�	5g�Dx?�FR)^3�鍈�4Tu�~�E�JD�
�o��+>v�]��V�i<[�R�.�M�(�ϛ�"��	�0�r��C4_�$i<��!�X�~T�1��q���<��kh]�g������ۻͺ+K�k����dm��6r�^����^�Y��0�0�TX�����&h�4IrV�8��6��C­\ք�U]��a���t��MQw���������S�t�l���t>b��:�hn���.\�m.�dHJ�S«�w�+��G�Pbn@����DMX Nao�ă6)�
D��>j<�|�HF�ej��2�|�CU�0N�I�ɇ�In�$%���,����|<��nRP��GȢm���e0��V�,�w�}����xS�7Yc�W3j�Rm�P    l��V��1��\��w����Ym����rbjRnO��!�f�]�+8 ���IZ���L���U�Ad�Ze��}����!���o��mQ|��b]~���W%���?9)8r�;/> ��76[N���� �7k�Rk�*�:�ȒLwI.OT#��l�G�\̈́��/�8=�m�6/q�=D�50����r1\D.�ϫ������u���ޗ�{K
H���~��/w���0M��Q��ii	�Kᗀ=yZ�g"���k�`��$���y.r,�qtl��ayh]��1��7m�'�U΁�/�.?����}��pS�7�u
fo�����96�.o��n�r�����v��Q��Gr��x��MJ��((�UH��)�� ��� "����qB���;E�������e��ͧ�%\����6#,r0j=t�K�Ű+g�!�=,6�5Q�λ)��&y��\�7 ����b�j�_�6���Z�EV�P9����'�uw�Jl�>�2==:��4Z3�_n�x����8�]?�������Ot��h����U�5��@8(+}�F�d2M�|������?���4�廏���|��xzzv�������lY����[lgt�&��L�V
 �&�;��]��s?:BNr�����BE<$`���M�@�<o���?�[��������]�ߝ׬W����UN�,b�ж��:�ةH��f���i������/EE̘7 �*��0�<��^���7R؉�P����]�vV�z|Pdsp���>��K�u���F��A/����گ�'5g5��e�b"�����Z�1��.=G�� Ԙ:T�߃�w�.>���h�Z��o�xS���s�����	��Q�ݹU�盛�M=	n���2%zl�b�I�S��cDeCc�!�+/�7�U����]9zeAD55���=����|=�87�2��D�������&��z��ǟ/?����w�˟���n�D��&�M������Q5��ڴ��R!::�ab@Z;,ˀ(����ە�~�ڬ6�iq����^�ꄜ�㪃 �p�G�Xb��3�]r���&�:AƲ\1f処�j���y]w�($ā��j�qz(^���������\�ୟJ���]"F*C�Z��ڭ�s�_ܫL��D"
�I:N�a �̌�r�Gfo**�=�K�V�����5|ˮOƃ�{�.����;)�#)�=۩YJH���Tj�cj�ZQ�d�Y�&��S�%�����eM6�����[�<l�A�.#�a)�v������!¸l�I��q5_�TX��F0=��,%)�`����C��Ͷ{��W]�Yuw	�$b����g��d�#Q�h�<1 [�H)|ɺnyE!̬["lۆb�����u7�.���Y�2�y��ɘ� ��=���_���f�,�;)�7�$�d�Z,x^:����pj�[��QXD�T�kjadAA���v���{��v�r�n�0>+���"`:�J��q�W�2#af*/�MF�@�ٙv0��;�.EVR)�1�҉V�E���D��A�)F{櫆[Xe�@`�	��B�ֲ���̘�����Kc}Y:
$n�o�bR9�&0�2=�sw�ժ�nfSl��M���$-'~*���N0*�x��*�7H�e�r�����ޘ60�Y�ؕ��"�+��J%RK'�B#����X"�j�ܮs\��q�׍&�8�m1	���f�y#Yc��[�6U$x����H�B�1�
��r��J$���,'/���3}L��6G�+,��	��d%��p����Zf�^�$#íl}�����ꀜ�u����2W|؄�[�ۻ��=�mqt{�+q�]KIGO�J�{ ���la�������'��$�6A��<c�at<���%�Ճt������+l�q�mA�4��ĸD�o0.=Т�17.'�64E�E�L�( '��@81:8҅�@d588����H���u�O��<�1jd�9jW|V<R�p('=�s��v��ܢII�!!�/.�C�`��!"�Eʭ��
��+���A^�n�&{ض��#)���x�Ff��Du�cND��W�����
͋FG�Q-�ըf#cq3a:�
���az�7}�<r�>'�E_fj��ՙ����I�&I��/�ϸ30:�Zi�p�k��hr#�%���2p	ou[�rb��y��ߪ5�����as���K*��Nr��'�����8�Y��j	I`j!Z��y#d�=4�XF����+�p���P=8o�N�'�OP�Il�Bb��$nsb�0�B)V6���9P���A?�����'ϴS��W.�K�������*`�p����՛�c���Yq�쬬�i�HBV\N+��3����h��&�SI���$�&Ȃ�3��'�#Y��a:���[��C\q"y�g�vV���~3��].����>��>��@oYN�>W)��j��>NH��P*�Jrm��3q(��PCa�UNc�'âp��`���5MS����*���e�_�לSL��l��{�����#�f��7���
&X%	5��A�9��8�G�i�ӎ*�#G�Y�dk��H#��)`�~�% �w�=v�b���8<8\�,/��53SD�4܀�&��O�s惌�M2j�,��&{*����V�U`�j䮁����"�W�y�H,!�w�G����D]㊤,ļ��qˊ���K�s�O%�h�h�(�O���"��`$��y�C���JO+k���h�FӦ��[9����/���pF#��y�v諾]��$��)<_�bS�I�L|{z���$Xd�p� d`b8ؙ����ׁ�ց��7�O�q�F��x[<ݞ7G%簐�<�.J�`�s��|,�G�?�Uw�`k'������CBuRa�`�٣`T���H��13�`c �`r=6�nxG�m@\�.�a׹r��/7���z��j�8����?sV�Zuq��ss$1O�f{��B�m���4�R椐?E2F�� 1</��8*H��%l�u$�1RTu��f�So%kC(���)�����ǿ_��,����|�L�PQ��\-ʷ[��"o�{��|��0ʖ�E�1�ۀ�����fQ~��G�Ow�ߕ��w��Y4-�2^܂�-��
f��B��6.���d
h����F��M�t2$���J/��`×#�T�!�6��ۆ�Cf;���+�5؂�'�=��L�&�]��O��4]�D��Ӎ�/�I��$�'�L���*7:܁�t
v�*�ӿ�u)vf�`ҥ5���'�=�.��Ǟւ��'ZU1s�8�������2�'�X�h��_^�g�d�8iO)?������M��Ⴅ��&vEGZ�no��欩쏾{T��3�� ��<+�'�� �[�����͓���h��^]A0�u�6i�P�:�U^�K�h��r��D�"���/��]�o�w��������.��syqq�y�x����~���ȋ�1�V
<T�m�����hV^I�.�EG���L5�"9��A��h��j����"��xf�-ke�WLy0���S�j�_�:�qnf�2v���ﾺ����n�7k4z'�i�Y�&I;qk�C�|nԌ�K5g^ד]R�2�T�����y���a^~�����m��f�hd}�yyѩ�o6�5(�7��{�����񩎋�R�4I�	�F�!ۛe#<���ZUٻS�"���!uèhu����&����꬙1��d�p{0��0Zh"��8��n��Ϯ���$Y<�卶,{B)��06a��ت*ъ�rB �?<���0rK�Y�囝ۗ���j�+?�ϊ鳌"��4
��aT��S��?Pq,��0�]�1+��eDS`YAYD��4�mնj-"�x��|�!�j����x��/��n;^�婹9i�yV$ₐ)�^��~�;f:����*:&�;Y��1��F�BGo�����uX�W��X��X2�Bm]K�w������m���������O�O$$��I�*���>�q���)�*+�T���Q0,��
��?To��m"m    ��E�F�tȨB̢�߸�v�v+?����*��ⓜ&�4�ޝ����L[�/�&y:�59�*6�c����4���c.�	]!vB�x���G��*�����o��挞Xt$��I<��|&E�6�I�\���D�0�'|%yA+/�򑌏xL`l!6֪
��&;���.Sd~�m�BQ���(�Â/�;� �M۹�*��nؾ�&�c�*�,�3�	8��b���ӝ���)�F�<�&��P:������0�pm[)�M%��V��!��F��v���]��"�cخ�>-N��0w�E��[u�[U-y� ��̩>�{�XJ���S��]0Ռ��-|?��)	!A:�Isw�c�&�L@T��|�2���`��i�a+�c��r���z+��хF��t�v����)7�]~(��L\�p�Ǣ�y��G�N��M�UfS�):=�d��W���X��&!!jX� ��{L��
6���V�\Q�-��������c�ƚғ��"��&�ǹ�$q6�JQ��$,�6�je�ec�tu-����I����&��$�<#N��������|Y��wEyv���\���H͋��Y[�z��PD�&�&YO�)��T�c��%m#}�&��
7n������(Bq��E]�ۭ�Z]�1�.c]yW��	�wV~����,?�����u���W�?���x2�o�����-�Uãg(`<w��b����J�c��"E�Fװ��Y#��a�dH��I�T�P��|B��;�g����`$���U��<�ƂK���U���[�|xW���#�P�r���a��{�l;̅�#����2�ܩ  ��Y��'���v|(Uyb�(E��m�k��x@trw{�y~yZ2T�K��>��b���j<�2�Xua�l69���˙�G�w�5ϲ��8:tn�<��=`��L��mhý��@��������������kT�P�#��Q�����r�L��L�»s�r�]q����T�6Hp9�Z�J(ۿ��\N�L3�z�d�Js��@ SR>/�E��b9��%6��+�u8:��Ԥ���!뢳�MQ�bw@X�R�߻z�0rB7�.�x�F���'I ����������<d=tY2rA�ݤx�쑲��}v���E�IbXP���Y��Q{ b!���*��?��T�b�/�ku�)��כ����f�}%?>*&�R.�z� �N�2a�j!V��L����iq�aR��IHQS�$,
D����	2T�`��H���w[� �7myhd�%�5n�Y��Ͽ�"I1배K!P&�����5�)J�d7e�D#sx��舌+@�V 3A�-��j�|�m ��Ƶ�E!�d׍?� C�p�����Ua��'g}kZJ��Ew�n��HѰ�^��$M2��k+��f��N�Y���+�@�U�oLe��o,p�E�kt�9: DK�wG��SM�9�$	K��-�9,�8:n]^H��Ŋ0�d�ԅ5�����LĆ���'q��eR����Q�s���ɹҮ?X:9OJ�(�$�"C�ؓsQ3.FÄ\�!2B����#{հ=/n�{�gc�B�5M:6-�I��C"�s�(O�⻣I�DxU!�@�8��Xр�U��v��
�E^1',)C3�vG=;�Ld��#�g1A���U���T�D谲�ns���v�����O<�?$9A��ߙ펇Q5<�A��h+��A��Y�+i�V��	b[ݨA�د[��oG���������q!�B��L��]}*ûǝ����_�[WŔ�"�g"L�I�FR�.���h��}���=�S��\��Mc �{RS��߾@��o!�YP,'`���n�t����W�a�N%��E�4� %�EP>�º��C���/#�"�SS+��[�	u12�������]�I�#}�����Ū��'xD�~��h����n��n���ux�-꫙pS>M���!���1N��c�@ j2�rUh��Uf%����Ax5�����3��X,q�PH@�������5�נ�9�Lz;���a$7:�?4m�ئ���ZT�	�(f놋�3X���I$�?vy�I�8�գ�GB��g�(S��$S&H�
�?z�ѱ
�6&H#l%�#�\T5�J�z�A��с�Ǌ�*��n�9zr����.�ms]:�+���&l���ƭ�m��b��o�u����z4�ߗf����^g96��`���ş�v�ۊ�~dZhOJ�=� O�	��uP�A�e�MQX x0ZQbHk�ݗ�n}sbI�F���n� \>e��z*�1�as���C�g�ٺբ��d�R�$;<($�&��Xbr �h�T�U�!�-���ȃg��aI�4�J���y�_'3��l.<[t��;�I�QP.0�"�����,�T��+#����ԤE*��N���M(�6��U�n���Dǚ�2Av�Xw���s:%�$�(�~0�=��1�n��oR�2���ɶFFa%d�"���4�nOd���}l�/��C��G�>�u���i�(������Q{`vr�Q�>"���m[#�	�4|HW����]�o��Ϳ�߻�va=yZ�ŏ��ѕ��U�P֠1eS��g��Q��kٻ��M�r7{��֟���㰚A,�W3?aU�6��	�Y�S\�H=ܖ�R��4I/
��Og�r�CN���p�*�(R	e`A#����pI(f��m�kw�]������m�ߞۘ9���,�3!��l��1�*<�e���0�Թ"<�b�Irx}�e��F��U�a��`���=�k�7B2�}�EƔ�a�t���X^g���x:｀-����L���u�?�OH%�5'�R�=��j�q�ŉ�8`[���I���J{ݴ�v��e_�������n��b��P5�o��"*���-��g�|8cf~L�beǒI�Y�L������d`T���������+�0W5ۂ1�M+I�\ݺ���+�KTs��s�asƀz��V��ֹ��Iy�I6H����f���ca� ��Ծ��F�]���y�����)/��5b�C$�ux�뮇g���yI�B�&$���mb�K���y�<W�R|�4��Ұ�T�Z���p+!̯��@V��U]C�j��/@��?Y�Wq~삿�n����Ӣ��|s�u-�7%��ҏˏҋ��X� 8�Yz1)2�.?|�ڧ'����3����>��lk����yhʣJ��Z��o���1�I<�b��5R���TN�g��&-l�r��f��~?��Qy�k�������6�R��A|�w�N[��#�I�L� �?w����Pd��BEa���������A�kD�����S���Z���Y1{vv%�38��!.Ĭk���dUx$���Ys�1�|I�̗ ;g6-�z�k	�,D%@T�{۾ ��D�iM���q��t�8ܥ��C�+�H�HF��5G���Z1,r�| +��K�$���D�qjptP%ִ��ARg������ԘZao`\��Tߺ�-8��}�t�W�#X�kO+�9���]u׋8m�􇥸.i������a#l�au]I�V�!��UK�9�q�"A`q��?�/)y����8ц�U��h$�9��o��#&�å�.i�M�!���6�u��j�ZYE[���#w�Bdǂk4��-~w׏{ߕ��z_~܄{��ӧ'K̘ɖ�#�)� *M�R�huj�mD%�Ӓ�R1t�	���g�	sՆ,ŤN�L� P�<�,��� ������X��Vu`��D�Z|X��n�������_^Z�0AΗSr�;3}�|��<S��R<�4ɘ
�� �VR�\�UO�e
f��*� �3�Y����p���JE�e�J��|A� #�qV�)���5�_j͌�RE.C~���I��U��Q?a��aQ����j(�ژ�RVJp1�UB����ͭ[�����v�3����+�YÂ6"�����9/s�I�)�p�G���Q�X��&�PA}��--�Xr���QB�Xظ\[5�c9H�����˟/�ߞ    �?G��K�s�,�P �bխ�ϸ��;!��HgI�Oxa��͋F�(oa���1#�@���ڹ �����<�#:P��,��%�2�tM�i/����s��9�f)&K�!���41/9�ՀwC�Vz�� �9��JjLk�K��x�]	��3(r�)�d�*^�Zކ5� ���MX-E�
tpה����gw�����s]!N���EF�b>w��j"6�6��a��v�Lm:�	9(K�]�$�#_��36��X���|��2�$+�4��ҹ���!��y���G2��}v��i1��v�(/IN�����Kˊ�fwխ���:�l�N��"U�IV:�,c�I9�Q�Dt��W�U�3*.���.�`��][U�(��d�(����?=gץ<�z�B��,;�F�%d��-�2 �s��� 1o[Uò�Z�ڂ�M-����	V�s� �_o�D!��������C9MQZfF9���4˥�"���S��n�n>T����sL��R4�4�
�\�h2��1׏�d���ރ�8P�V�QuKkp,kQɵ��ք��6����E��l��I�'n��֞j����ҳ"��
8��7��@�a��̤IQx�o3����X���Nh�(Oe�r��Ȳ������{P��w]�,�˔T�ט(�@&f��^�y�łs�d�wC������&��M�d�$�(���&�<��v,	f5���
1 %x
N9��D�V�&��ߕup���v�ó���9c�hl�Hh��Ş=���3y���>?�w���w���k��r���\?l���������O�������҂o|��_��������?6��_����|�6|n�r�A�Y������cp���w��C����ӻBԔ��R.]���
�М�/
FG��^��A<3��a�!D�U[3O[V�5�/��(�?���=^�UfMs6�҈�?�+0|�=�A)Y�ܜ@���V���l�h<���2)�H�$���wbV2��7h�*��Ƣ1��A@��t�����7^��_.��E/��B��,^���B�����f����B7��D��cw7EI����斚\�3��L��O���A#�󈀋�~B՘�w`bRs�?o��U��D�������� �i�Y��0�ps��߬7��p��=U��$;d���ZX8�Hɂ[3
��J��F$����7�>ʽ)>�mW�m7�ivOO��I���nכ/W���� �������6����*���_�~�����G*
ᬱ'�]����:�ⴓ.d���I�Rp�ҽ�4G�X",�oy*�z�����/�����}�uk�08���|���)Z`��P�	��;��� N�f�Y�%I�i�#D��9W|"tu�2�20hB5��u�M��v�KAS�+��}����EOCD�fG�z1mb�]b�9��w�ۻ�nV�T�zd���O�%�]񐒛\�C?*G���5�bͷMU��bL��.�,�I��>����y�+�?욮�%�V�iQ���*g��n�U����IY��5�'<�P�G�fF&9�<��`�Yப�D�RVcc;o 6�f<�������ɍ��t��FBŢO���b�����,�=ʒ��B��������a�V�	�I�,(�C�6/Z���@����x}6���Hd|�Uw���7� �{&Kr��<I= ��Hi]Sy� l�12�#5a�mt�@y�Y�o����{�e�ۺ�EE�$G�y�Y� ���l��~�ɹ�rKČ,ɣ�<"\�lD��Vl����q���A����DVNj���`���I$�g�g<���w���R��lv�:���K�hr�\�{2�\h9$��G�(���RV�	��޲ؘ��dK�s�{δ�bƍ�o��w7��cs{��f�yXn}B9a˼wLvdS�XJ�.G��y]�:!Y	k`��9h�h8"�����+GJL6U$f�ߊ��mN��$"�$����r��:�Q�G�gP��ְ*��P����X%[ث����C���O�,�tyY��Ya��d���iq�_�������]�T������4��o1�p|�!���'�oF��&h�1�<���#Ŷ��y�7.+v��RB,I�r�Be]i��B;�*�[�RfH5N*pt������w��e͓ݲ�YZ}����۝�C���BL1��$+�9�<w�Տ��&�
(�|Xi!��i�<іc����ݯ,AP��'����^LLk
��Z��4�ǭ_z)Q��[�ד�=�^$������� Ԡ���S#���<�{_6��P>K��h�/��y|՟�t͞��?��%IT��<��0z�6�xך���ؔ�Ã�� q1c����uS�����������{ʥKңȋf���x,R;�,Ӳ��-������1�eha�m�����=o�rM�������g�(K��s�հ:SI��`���XJ<g�b)F کL�ڊ��j�-�Xb>�r�u������	� 9V�ϛ�EH�I5|�r�g���>K�ƂX��؋���qi��Z�b���@E���N��^*��A9�"悟��7��n�t���P�BH����|���و��.E"	R	+=6��
�ٚ)Ѱ�m����]�q��m6�]1��<�DEdDTb >_��"��Xb^.e<���sy�8�#)&T�$�03��gF�RrJ���J;��u<��� ٞ����[�?w�|���pSn��Tq�
�kNlq �����<�CG1��1�_u�[��R�&r�N�K).T�d�	����u�G���^C|�.�����W�m��ʁ�~"	��|��ח�xOR��V�P�u�5��t�\.��ݧ�� ylR�v�s�tk<��JK��9>�Nq��$=*�a��1�ڑGP���n�)�#����7�7�2� ��߆����a&.��ݩ>�[_�;�d�MD��rS�zRЀ�8��Ⱦ�W���~��-Y��>/=U߀��,�~�`�����$;u�xP�m���2��@���nU��7
F#�����Ix3Q,�����b�α�1g�ؒ%)@1�����3"qRU��EtEeA:���zS�KQ���]�>���6��M1ޜi։fb��| � �©�_hp�.d����	"=�̒�����s;]y��x����dI�K��4W�ݏ��^�d����Xx�������儴����������R+/�~�QF�s�p^B -�	.��	�ܭ�
��L�,��Ȓ�� �s����c�������ꘖ����+��g�$�X�e���*V��b�� o��w�?�r�}���،Uëݗ��?KK���L��[ȬP�Y������Oֻ{׭��
���D�R�w��/ �fy�GG�g+�0��� ���U</��胶���YL�oNCD��Y7$�z�������KR(�kr!r��(�)��{	��QH�ۂ'e�do[Q{����ag����y�س�8�*��Mh����Y�|�$���@.��,�$l$G�ja��ȁ���(p���y(ب��`��m�����k���d�.(I�zAOx�A~	��gR9�6�b	eIUxo��\�y?*� D��X�O$h����E���������p�z9�x�0�1?�Ie�X�y���}�s��,R�a�1�V!)^V
�G��4u��<I��2�fU�D������7�8����~O/�Y�
"��P��Y��I�֓%iR�G`�̠�C &)!�1Z���"j��ʹ��޷m����{�8��G���t���XAk�Bv����qw���l�"E�ɒ����Y�?j�QM����J�����-e��G���2لZ��5)��=p�����[f�hr���c�6*C�X��$(s�J}&�`A7��&��!ء��y��ٞbkG�x�-�@��G$�Ծ��	���]uGW��#��s��	��'d^8��g؟�D`�ړr��$����>S]����    #����������V�f�3p�(wK�Z�ؤy]n�������`��d,.����^�յ�
~[V4IeI���gh��&	D#�!$����#0U��w�S���qa���]yq��I�Kz����,n�cjg�t�s8�z���1p��X0�� I���n,������5���τʱ���i�A�1���`N�-���|p�����)����3�&;5��� �=���',볤�AY�H^�V91��Gێ �{�"�ي||+(�.Ֆ	�򹮋�[�+!콉WE�:cX�+�MCj���� �H �|ƕJ�}S�XD��dY���#Ka�Kk���0��k�4-`Qjĭ�	1l�j��oDhX����17�B3���*n�@S��FO���6����w[�[G�����;�������l� ɒmɲ�� IPEW�J��e9�bbe���z�d?�d�dYU����D��z��%�I ������#��a� `��k��`h��+�����ʂ�Uq��X٩[���o�����9ג��1�9/��Oh�����MN����ķ5�	Q��<h'��΃�@�T�k���t�xC�������<���l�J)^٥5X���P����d��n�9��{Y������cĎ,�ir����RB�cȭ*	X�R�CưIA+����
�aڐ,;y� ��b��n[R��D�W���w�K8L[-��i���[� ����`�-�K]�mi��!F	¢4*)�Xڔ�^>Ԫ΄�>E�y�%.1��ֳ�O��~ݬ�x=�O�l>����v��!xB'2���"Gf����<޶���@�x���<��z��+�iȢ�� {K*d�j�YU� ��s`�����h#HU�8�w���!K�%b���ө�#�Ĭ�ݙE:�m�޵�����@0�c&#�&�f��y�6Y'�3dQ^H��L'nA/C���TU�!D�{�,x	����l������&U_�;4s�����W�S~+�
]�x�J�<�7������(�Ҋz�hz4��� ���5�(�EŨ��P�q^,r0���]��v��}h^!]��y�B^$߶�Z(hF�'�T�N�2Ar$��OL)n6��x{^��tK4J���fi��5�/�v�PJ��?A#�H�Arz�;p{�p����ѷ��kG�E{?�V}>}qv�����r���8�r����fˇs����+���'�'�6����7��r�|������6<7�!��n� �Pc�'V=�K��_$f�Ei(A�`��P�B/�}�	�e	�/ثBc��c��7ޒ+�a�AʰE��ܭ��h}���ż��"{�j���vUb.(�c��Q$�R�F��^n��>^�%�g1�D���S,x�dh[I�c!���S#k�6�Cn�|��"�	Ӕ�G�8��ҁ���]��/��l�vLq>��X�tS]�#����
�V��l�Y�=�I�E�v���89�bf^��9-��S�ށ����Q`�7F@s�r����e��6�<h�c,�<�k2�r(�:&v�0�1*� ���/�1d.\R�Ho���	x�*�($v�u�T�HLƠX�� �7ׅR����KY�;\�W߲�r � �Do&�8
��$����(�Kl��>�}?�v��Ǚ�1�I�߄Wה��X�!G_�.Pat
�^k=��xj����������?˅�a�@�0sd�x��a�xf�.��ŻW��������ś�������O_^��*ǫ�әQ?��������K��/�����%.'������?A��H��Ⰷ�������nlS̼,�o���5i@!'C��;���D^��b&5~dN���� Ej	�=����?n��A��]�����m3�)(X����x��ն���������>�m�6FBϢ��0M�S 
�=�9"�*]x�����e�+T�벤�f��߀��'0E�F)_�/G�1��:�7�n'bd���|6�����	����bԠ,ʜ
2��O�O��Ь򮲶)���	)\�m�`�5l��S���^���AHn�a�WG_�)go΋���«���>˾4ׯ�䇯�r4>�>�~�^�n�_,~Ο�ף�B�o�w��
)�Mv^���c�dQ�Q��7I ��w #65u�T��T�S�-�&)�t��6�{,$>�\fG��Xc�oī��:���	'P�_� �����v�g�y� B�����k����]��n6(�ɲ��m�(�&H��q�ܨ�w�a�^y���r� +Z�|A��vU��^�ND��������Tfm��ρ��c�#����d^~s`�%��1fI%��w7V'�<��s��y0�0	�@�ȺJ5NzVaT��]�cK�D�jk�������������ӿ_��˛�5���/���?�>��Ƿ�/}��}�������y�3�u㹹������$��1��If��'Y��$,�IQ�^; xۀ'�IQs�a2�L�Da�h%J�ϗ���7���s���������ߢ}�[Ĝ�(�J��ķ�L�S�njJ�`��W�+a�C��a��+���o���y��t��Ƿ�"���}�o+w�����*�����F�=)��%di����	4����F�+�,lD���H8�y���f��12��6�?�D���q0WB�!/�J�@�rX�.^�\�IR�;���Ĵ�����H�T�*�M��k�,�^f�E��\��ācnd�o�W%�"X���x�2s0׏�>��Q̲(�.HL�'d���J0�@�5E�7��Z��[:�J��Z����9?]�<=��G~�"�ɶ2��v�"��b�?C��e~1?ʙ���z�ʐ�n��(I�<@=�����Ms���;G*�s$.����z1/�ۡ.-1ʽe���dY���z1-�N���jH��/T�7���� �ro��³&Ma�=C0�p�����P�"�5�rJ�x?�������'+zv{�C^�	?�t/���w��j���x��׋�N(ry������g���?>{0/�O�_"�����͙Ԛxh*2�Y�[.U��1Ӳ(�/��*m�Z�k�$
�SI$/��A�����!�%�~����~qq|��~�G�Q������s8�y�v��b��YL7K{�1�Y���G��$wS�k�prU+	?
/K�w�и�V�R"p>�
|�0��/Vh��7�}��O��h�Fly�.��D����=̗�5y4�<l�G� ��P[1�Xe�	`z]r�`���@��*���7+��0��BֲAb���e6�}~����9�����.g{��@�h0@vsM�֖+���/�\ZQ�%>�4�m<��(��$�<	�#E#����`/W��L�5�DS�%�U��.�c4�`�[����},�H�(��eC��F�#*���.:�m�!��P�ۤ����6m�F�T��ÐD:e� jZ\�F��ְX����9	M�q��MM�3���/�2�ߴ%����wR�.6,@��TC���W�J�P��_%��]��[���Nt�N�ѷ��� ����eQz\
����!��^ysIJ
fKak^��F����JA��U�5����墽���kf���E���}���ܼ[��j���o����ݫ����y.���uq�y�xx�$
���������yQ�螪k�n�Q�D5���Ʌ�Т�� �'���o�Qa)��1-M�Ȑ���Jz*<�<&�g��bFn���������]$R��
�;��H�$�FS�23�5v��]�GYG<�pǢ�������CR��d��S8]�+JF<Xْ��Kc�ǌ��P��ױ
��
B���l鲍������&�$��.���Fq��"&�����2���#�A��{?�╒�����-k
�KW��uM�3$}[�q9�C,��[]w/۾wp*�vP�h ����?�����G[��G�����	s\�o/n�������w�O*�U2㎗��>ޞ��?|~�R�����_���ߞi�����y�    n�׳͉�K���ð�3�*����]�ɲc�aQ�!���OVc�PX�48�b������#�FS�������>�\�����ɛ7��};۴c�w��C|�/P$;�C��H4�9���I�V����̧rsx�b�E���i�sL��@��}`�b�� �6��`9[٘�B`��֖�]�~�/׵[,�@8����C�W�C�X6 ��mL`�H�'C� ����,�1T充����}��`
I���]QI.h!h�Ԩp
l�k���.pӞ�LP,���n���/6p���z�PL��hS�l��|R>1�&ʃ
��1I�c�l��lX{UA����W��s$&"
�'�&{y���d����|�GNηneݭ�%H{oU��ު{��F)˚vJw���f;o�'r����6TB���Ij'A7�	�&�����\W�k<Q�k����-�#�}��
V�y�N֓�t�d�q��ԭj+7[!�[>q��έ�V.^���d�/��-2�a����̾Em�B\��#M1� �����y�r.�Gb��,JC��fX2\e9��\4��`�P>I��b���U���z��W�ax���*Kϼ�Z�|���?�*x�lΈ����ӫI��n�a��oI�����2���Ǜc~��O���f��o}v�F�g���
l�Y�\��Xxr��Y]��_�'4g�k�x4�`bC�݁ށ!�W�a\��vA()LS����O�K"���ZA����yڷ����@�$�?�}�$:M릱|�Z�ř[�q�����Oq�>�N,���}|:a;U�v K%a�U#�u�F�"��,��{Dɬ�+��И�C�iR�<r����ј�­�0�Q;��3$�$�kI��gR���G���X&�k�5��h0T��$�)^nJ���e�2�9H�4\<��y��R!u��zFˆ	�b�6A�W���EY~�Y��J�#�߀d&kJ���A`�h�<�ź���	��F9s~�^�o�F�7��ö��T�e�!���>�g�� �'�=/��og���<Ol�Di}LM+��	�w��!B��.ʲH�0�r�n,�� ���������a[�
pڞ8����R7 ȗ��X_�Y-��ղ(�/<�}=B�w@.c���X!E���V����w�3�$/��F�!�]v�lhΡ�� ��t����DRvэ�wSI+<�Zˢ|��4��<�h���'�6�Qui��1��;�BJ;��A�P�2w3%��J䱆Q�u孖1�u�{�I�e�Eo�����z�q;�q�:gB}F܇ưK�˘簩j�`C*HSař+�#�д��k�0�dW�`�{�he�[�=� �&BJ�n؛�P�ǐ�T���R�������z5K�b�+��i�#�P��E���&<��M�RX��[�|����70\���nv�8vZ�6���z�>c�'\Gjs)�u�+�G�4i�/F�ɢԚ �J����pAkM�MV/���d�P�z"�&���|����ubQmR\���N6�����Ðx"q����Ed�$�Qd�(����O������lѦ.T)����0�%xIڛ����ݸ�/�^�0��� ��9��+�!�~zt�S)�<��â,6�
*�5w�3aEk�p�&+
2 �0`V����@�e���0	c�����N�Iw/۾�0�͗}f����.M��M[�Z^�e6���|6QBU��$���Wo���W4��	0�j�8q5At"��x���@"37ZY�J�g ��H���Ɉ��s����G�1Y*[���SY�>��I�4�ג��s�W�M��%������(a�����_����n��7���픟0dHh6}�R�C ��-̇'�:�����z�g�\�t) ��o*��
ըT	y��C͚�mY7�y�a�F�,�+P��L�ʃ��}{G�[�cQq=�j?H�L��&�a��B�K��[ؓhZ#Ō�(W*�%e�pZ�Gپv� uAo1��`���KMj�����l�����̡�E����nT�#;��+,�I�_%)���;H�lR|&��u?��V�2-+�<�VUD��;���cnj7�._��|��B��N2�G�'�Zy7�$K��J#�|:��v����w�X � �5s�㞜3�oR�9�M�<����LqGH���%sD7Fj��-0.�n��lg�Ŭ����+��J�,:�3y�~��W���Ohc�+1/�FG�ʴގ���NT`�P�crnQ����k�+0�K�贈�ȪhlU�%��uv��u���+�?�p+{t+!����l�{�m{���m�:�/t����m��U����9���/{� �Տ��7�=7�	j�y�c�Ya@�`���P�T4;}�ztq��*��})]lne�o�~ �{3� <��13LbL�&;����L�;�J;�1^%�g�C�e�W����#U��e�0фG�9[%�5����`�����y؎WbS��g0�r���O��|�/x���������Ǜ���<,��������闯��_o���O��|1���x����i�"�rV=�?����,&��me�)E>"p%�on�rF�@�y��E�~�2�);셻�4�ފ��e@q�V�1x4++��6rp�Gu��\~����
�_w#�}��W�zf�?h��ٓ_���e3�.?��4���o�}�.�ٳ���狱�>[R/��>�~���z_���.Ą. �{��X���`Yx��z���b^n��U �LU�^E{�
<LD�#5��c�5�W
bң��^���v�r?0�=hg��?K�Z��*LL�4�ɵ�bt�N������[����,>���#yz;�����O/F�ϣ���������}�[�(��_e0������pt��|V��o+%�=,�R<�\q;KK��H�K��m�Qhp���EURO/�00�ٵ��z2��˾���2]LӀ���󟭃��[~ּ{���IU�����C{1�y������~��=?�~��~����=������=����etX̞��*c`�tdmL����@���"��6齃oM6�0�TO_�^߃պp�H�䴄��l�Z��r�^uuY��l��2��O9[A.XJva�uL��+\�'�y���G�h��M[����D�YQz<���@P����&�.U�l�]��x��Ջ7�����5,�'�n�w7i	�A^O"tm�CX1`����6���#�:�<�����(y-�|P���w�N���YcI��X�CM�Ȧ��T��M������ɇQ�������hs#n�	4E8��f�7 D�'����$0����!Cؕ[9̬Hfeƈmy���`X�H4��!�*[cM\�2[XB
�Ab��u)|-����F^� ��E������ً��c�1��ݕ�ue��#0hGg���$�	���]�z�6�0�8��x���<y{���ߺ��p����sۍ�?R�Ɩ������
%
��ĭ�}�o��������Cb��H�?C$t��4lh�"�jO �Ơ�H��E�1���\�Wu�=��`������#���������O���������(�_㮯�����_��OM��p�?{?{��� �3��_���l)M$���x���(��/�j�|Ppy���e�QsW���}^�(dp���w�����|�}w��|�ڿ?�S��p|�x>&��������MT�v{^�����;|t����w<Jt2T<��z7�XZJ���7�<;�Je�&<�5�äe'��rW�L)��޲��s:�hL����!��;�����\"^O���I��лhПF�jD`/03�����Ҋf/f����G�E��t��3Y����@��'sP,*�h`?����W�:D�v?�67��h|x���܈��))[z1��(/2H�]��,�2��MÔ�)*W�BT��e���0uY�M�	�?���D���;���j�ʯְW�|6��?�3?ͯ|���3_�_������?��n����;S0C`��N,�����n������>�o����y��GI�Ah    �
�)��
��>LE��r����������j��2dk��?� /g]���'�C���1k''����|��W��l��+LnY0�>Կ^��k��G��f����1���	ghY���T�%�����Z5ࡔ%�=�g��~9��Y�0�����`���b� � ̽�bO��P���ٕ�d<��ΈMz!1�d�K��ǰF�A\5�/I%q��ƴB�@����T!���������f�l�p�u�)�����d�~"��{Nh��H*[�pGc)�	�Q�Q�Xxsn%M��b���]��A
�_���k`�y�U�`�xkz$��� ޺���y��u+%'�z9�'�0�����䁫B������ۻ~L�t�b��<�:� W>z�p���
���U�αp�����+��ͮ�~��u�?��l��^n�m�2���5^��䉹aQ�]xaIT
� �n�+S9���A\�4N���JZ�=��������kfC�"&�3/BV��]\RkܺPs����IqN0���.���$�~"}{�f�B���j�`�!�A�5ꙡ^#fC<��C~�g����WGg�p�f�s3 Q�B�Of�t2�Q�LxF��29�b�f�t$�m��=t
��vp�ci.W3�Ӊ!{u�B4ؖ/.N�O'��o��g�ӁS����P0�n'�c�����j;q�Ŏ1��(�.����No�6P�4�!�*A�<�5e�M��"Tx�|�������m(�V�i%w�NB�y=IK	r����ro';�%-�`��H`Λ���!�����Qj]� �:��c�愹�{����b�pNT�u,�8��ƛ�v��ŭ}���R��t*ȟHE��S]p�0i�x`M�n�\�Q�I�G�tő�����l� �l� K�i8�SW�E���㕱2���	-��W��}Jb,���Ĭ@�����=l�&#�1�\%������<1�^݇�JF(蕢��?���.%�Ba(��v�+x<�t0Q�!�A`:��f�w���ѡ�DX��w|��)R�d7ݠ!sm��X�0��X��	SG�A`�v���PH��[;�Ǫ��T%jUeW���v���E�t�{t'��d�;�X�"4f���e>Z�E��z��yNY<tJ�����ONʿ�\}z6~6������Ҷ�,?�;r:�=��my�^�~w���t-���|{�*n���c�c���qu������\l�2��s���[�xQ!��b��:<��M�����PE,L分ٍ�Yɩ���}t�d��M�HtX����65���!�n0'�˔�Fv�t�dG�R�����P�,w�E+��ݲ���޺�y:&Fͣ4� �����V3N�1e᭭�')>��TäU�aF��z�l$�!.�F6�+D��NZdAF1� [>�H�q����v
����_�|�3��̣���~Y:⏽�b�C�����+4/asi@lH�ZU"�מuq=�$�L����3��b�iT{��Im�T�1�1��g�$��;dY
���o��*� b%-lY�E��CԗM]�����<��~=:�묿NX����o<�Y��Td��Ffop?�[w��1�$)��se��wǺ��d�|j�E+���@T��6S�nc���f�װ��>\�<?�>��y�!��Ā�Sv'D�xl�߹բ�&�v�U�	z� ����i�-KO�^?e������s0䜀)Ä+����ʁ���W�7��W�3�&��)Lp��{�ֽ�g���@C�@Z��g�Z�d7~S¦���F5��H1W)ʋ�\�,�ޡZ�nJ���p�@7a�J���bE����GrU�nU�(�Ip��N�J���-ͺ�1�D��:�Hqy�W ���,���(ᅑ�鶅�f��%��{
����z2�����qD���@,�𺛮���~�S����P"���z{�ĸpy�ޙ�t"
t�a~4�֕C �ZVx��`�0Lm`���ر�v�N�r�Fv����C��tPÔ`�;=�;�?6Q�����s4Q?���l~~4K��~��;sF�����k;������5�!f�?ޭo^������?�������]*��X�k�Kb��fN�o�Z�1�]e�I3<'O~$��]v^�G �
�6��\vR��h��.�_���v�_n����r�Oog{�|)����IGt����������Ko��h�ܚ�8yy��"`!%S�N�$�C����dVV�$T�5��AU���k
�e�Ty�ƴ/��RV!SJo�N��VK�J�)(}<�jg7���^��l�(5/����d����!^�ԁ_^�A`�3�SE]�Q�D��F��2�ޡS�`�ʟ��"�ZO\W]��OܬDP���dt��E�o���'"�/�:.����Z��5s���ҽ3k��#��Q"_�u�֎Ы���`8�jS�`��F�[,����܍���j�W�d6nd�)O���<8����B�������������_������'�<�[�7��Q9u�$�&c�Y��ā�IYA��5Ӧ���W`�6�+`-��4M�q����J��M��e��|���!�b�ä��9���~z�Wm9��2�>�w��<�{�ХY/����mE�`�d+�1� ��D�o���-����S���#�z��ᆈi�&]��9F�a�"�&XuNnuY
,=RspՉD>%�u����M�v7�훏�'�8`~�q�^���90�����> �(,�XP<J�3����;�3q�����X�Φ,�A�9g���ڦDh�13��7��(U;۽�Zס�׵<t�&�7k������Q��L��?>Bt�[���^��� G��r�z0���R�)J/����;��t.�8l�~;��O|�[k��>�0a��:�D��`F �jz#�^ۻ
U%J�az"A�0s@ ����u�xUK��ӱ���E�G*�@m���M�50�� �B*$+Zb|n<JP.�ђ$��;�@�d���V�(��p�!�h���{�j
~��v?��F�]����>ΣTr���-�v��\���m	�U��'�DΣL�K�JN
,H$��s�,�*��Xr�e���y�<i�Շ��o<�`���6|'��TGoB�]i�Ó�Ѩ�点�kU��vc��I�'�LFi�A y-����}����Ưk��T�lh�`D�Q�S�1�jW�8mv����IJ���1C�ޣ�Ԏ�07�#���q��Z�������c8��8�r��(�MkW�a%����*�
�I�F���4�R�SF�C�k����`�q���w3͔���^��6Wd���f8���i"ӛṊ��3Ëk�S���W�~�`�Z�0р]#-"�.jk������Eg^�A(�%�����/���NE,+���	���h�X'�ecD�<J�/�/iQc��>㕦Q��0ĸc�U̖�zI)'s�l~�h��b��`ft��oܐ�	�4��w�8,/x��j�X���E��MKy��D\~����C������*o�f��ݰ������l_?|z8{w=�����狗����b�����/_7���a�D��,�/Nv<%��BJ�	���:<�w��M~���/�[N�ņ�6��Jp�YU�H��e�Xg�*AH�dWn2^��q�ڞ���C�Ŝu8#��䣘���tNA���G�rfj��һ�5!����*	���E#j]j�(o��&�l�/=�Wm�̆fR�uJ��fX�"v�ض��=�������������3�Ab�z�J&�m
�(�9�7Fe!%�L4����pvd��y(#9H���C�G��n�%lˈ�E�b��<ʊ`\���������6�(�a+I`z+j�Hc����g/0�p�^�C� [٦0�ߵ��2�D��R1zeR!9H-@�R$�G��#���\�= (j�3G��A8�l1B[%�qjdZ�|�A/�ڃ�ei��ˏQ��(����5�g������SOU��:��*��=�	`MLXxرS{�E�,0/a�    �n����^Q�#��T&mx���
旷��դH^� �`�ռV� �XJKw��㛋�V����-���J��k�4ؓ��h���tzT�u2�!�e�y���
<g�646��n�
u%&w�O#��1S����h}��w[��]j�][4ƪة"�G�E��Lt��"Q��&:�l��'͆*p���q<{X�?�^�����}�Φ#��-/��>OYi���Q�t�\U�'�]`�@��de?�N�Ĉ�QF��z�t;�DS�H ^X1��50���k�}�U��ߦP�&z<}X��xp�h���1�C�@iSH�N�4�0G�����UC��2Հ��a%���J^_Q�x'�JU�_��3p|��j�v;���_���2a9�{����&$-�n�U�E��nwB۰�-�>#o�Q�f��R�'�\���Ә��#��CRP�u�B.����tUv�b��4��o�VֵҦ �,0�j�hGGvw��Ķ��6�� �b���(I�%�	�|�  Z)��`�r߅��H]�������aI�|	B&�t�����8}s��0�NNN�c*�IY~��OB�?�g~�m~
fӦ�/��OS���j�����i����Yx�E�����!Z��þ�2��/��O��x�3�D�?�!5`#�&8��tC���ͦ��!GBd�[��	w��;	o��ɾ��C��]p#LT���3׬�0ݸ��d�QN\qd�~�z���+���U��-V_&�&��#���J�2�(d������:�S���?����@;D����Ϭv�(f�Q�)-����+c�79q���z�dN�ʪA:4� M�ˢ����W�?������L� �W��'�Xuig@�Xiy��^\h�>@�ޡ𶔄k�\���"�x΂��{�e-*[���,��.��'ǈd���7R�����i�H����ϕՈ�ϲ�vRb������Y�Q�Z��$}��`X����B3Lm��*	{h���-���K.S(8�1��э�����b�������q��ZL �A�@C�J�b�<J�
"���.��^�)�UȒP7�":p�#��S�B�uW	k��F�pz{�.��od]#��6Q7�E�#a�d���ta�%��.X�1��(��@2JŒ�&����I�H��T��T-������J�`��W	�أ��ۋ�����g��N��NJN�rz�d��y��ͬyG��I�J
*f=E��@ƨt^5�Ԉ�3"<b(�~v�i���)Y�Ü����/��gx���غz1��(����Q�%J�0�-J%�h5��_c0�o}� 2i~�tAD$1�'JS/mA���s��*���ނ����U�(�n�ʔ�W���r���9�u���������?�^[4@���vj���J֍x���1"�S�Y�Q�ӛ;�/Q�S)R��"�x$)��|���)���I~�F�*P���?��~�9-��n���77G���|��gs�4O �{Qf�6G����(���mv*+,b�1�ť�欂����P";�Nñ�x��K ��L��u���
]8�J�x�7�(��z�j������G�`||��7�0�"��E�9�^��(�"F�II�bl:8b�%؆�9(xSB|H=����Uu
��Ng`��g�_�g�v���s���u?�+��X��JV#�d3t2��0&ɓ96v��)*ir�a�@DTK�U�|/�<�CZ��[5Hl�]v���������*?>]�]�|�~t7{t7%���\̃
��ο+���y���1�j��_T�e��,/��yj��9Uc9�.jWzOx��'9�R�n�q S�oKw�v�f�����D"; �Bi���(
&V?��-VΦ��E���G)�A�Ғ��w�N�e�<mxQ1��� .(=�]M*��`ٛ��c��:l����t�<^J�먗�ػ����ٴ���wccg���}4��G�,�x$y�����k�p,+\C����3J'<O@d��i;�]�i=u�|�A�w��G����#�O�`��*���[�m?�����E�B�G)�Q:�z���JX׍CJO	��JS���w��������G��ߘ5�'�F��Ft�������qh��l��G���2�9nQ�h�әN�k�=�����I�V��B�_�ԌT^�O�/�k�v���]÷,p���@$����c��4�������4b�Z���!��Ҁ��|�B�^M�acg�.`���{��J�fUv��F��'�5����u����m����<ʂ�ͷy�˞I�6����o�ĵF��3#��Q�Sx}�mҵh��9��p*UE�p��)�4o��^��[J�dח�o�ף����u�ʆVJ<=�%�@]J'<��#�S`&`A	|��t:v��>�6U�/b��<J{*�a*u�z͠q�Ǘ����	�
GYU4�$�H��oy�p����K�	�GC��G���6.��X��b-��އ��Hbvu��^��Ni�+��Qv�8��!br �.E�	^O�R�����H��7��7R;U��������1Ʃ6�W�����,��֯�8)����@I0mH"���fuŌq���j�Qj��D]HZz������$��x��æ�T>�b�$��nYMȡѰYҀ�0�L�v�*���xR{!p��UUUh���A4MW�l�8�lP^c�я���M�V�i�Z���l�vLd�W� ��)�����t^? ����p Ͼ�ܚ�of�;`Δ����Q�jK�@��o��_d��aSi"ƾʣ� k�z��D���7̔Ԛ��r�K�ew0(�� }�lWm>s���<4���\�b����T���NЏ�4�q�O��E���G��$�t�$�^:����)�uV�E�l�x@E%jVњ��:��XZW#e;��
W��f��frӔ��ԁ�D����푕Y�����fĤ���g<4n5�*��!��P���m)G \B�1-�y$�`��K7FV�V�^�o0���=�uh5cf@�L���%�A�,����Y�o������/������6�x}�r^qzzv|�F���"�?V�WB^�����Շ�z��]�O�hb�^ug���w*�`5 �>���r�޶�\�$��Ҡ�DU����0���!�����k�V$�I�y�N?�8�D
���O�r���vb�3����ٝ����gD��X[��{;�Ï�y��BĘ�x�l䀄�s��W��58�`�CR*��^'l��qW[١.���Y|9_7�{٣{1���,�V:K�q.��`eY)�ʍ���iAEgSB^M,��k�Vό�������b`� K+����ǯ��^�\�'ǯ����_Fg'��l�^j�<2�>��O�v'�$�6BR��z��٢�����/7iG�"ƽ̣�� ���IA���K�󵥾���T��
�
��
�0�KS obц�������O9��o�78|.��G�����7m)I΋+4��B�@�:��v� ���p
%�x�m&yA�w�3-��hڴ�h��cx-��@�������Yv/�����͕���n�ϗm�g���.�/�ӥ�&N�H�4�?-�륭�JT�E;����\�'n�s��(�X�1�1�
reR����!a�!������DD����� 4��A��|>�߷�������vn�L�^o(ڧ�#�#~~&��S#�a�n���Jj���Gw�[ݯ�����@%�k�B�R�qeL�E,�����p�˪h�vZ0�%���1Lc��l��w���p�	
`����l�vr/����(��lH��)�m�K��E�K�pB�)�]�v�����kq~C�ߞ���=��.������������t�B<|���l�������.7$|.<��Rka
��@Y�kXu����a>IR���1��� y�� �z(3��c�7�f ���3��>��/(&_���z�:B+Z)�A�ᣨA+��@
���,��}���[    "<���-)�[/b<�<��|��J
z7�$Zs������۲���Z꺢��Y�����׳��m�Y*r߭���� �W$���vC�y{{��S��[1bW%vE�'KRA�w(�n<�*f�+���"�)�xS	Q�l����r]#�z�;̓����W�2D��`�zW��Y�����y;[�EwDz`��r�S�E�� X�XI����('+a�$�g�U����i�`)�:�+]�јdIi�'��a��&�gQhf��'շ�Q��.�n��1�$<Q��g�P��Aj\�y��s��za�6K���w1�T%�	P��z�(eӨ6��`��-�!&���C��._��ˇ���Y�f�[�Di�O���Q��99h��q Zy����/�x2��
}脲cx!�ĉ0�ʾ�^Z�V�;�s3Sn��(��G�)��:��Hg"ءU!�Ƃm�K�-EY��*-��)ؓ��[>�mhd}#�t����0E zy\{�׍F�A����i�G{A�����S�O*MH隂;i
����0����N�P�d��>�|{��EV$ݡ�8Nrp="��-^�4cp|1�v=�ϖ��b>�&��uE���-1<����ŃңT$RRˋ�8Z���%��D&6��*7�v�Y����Y�����m�
���#-�d�%e�)"�܊[�jrs�^9��oh*_�Bj��LFIXʬ1�,Y)@A�o��Nݢ��l�>�+��?��^AT7�gH�,)��ቍ��R�RP�]��� �/+S8؅���X?*���+1�j����|���#��sP�5���d��,;G���[Xi�<l�)@�"12��h����2��!�$ϖ�)n����E� H�XED)�T��.�'BY�k���X魪i[�J�^WUE�6���x�,�]l[\[Yn���=t�-ʻ��Q���P�L��w��VD�m%~"�J�	��~-��%/j�g�������2��Z�/�ʖ-�3X=�p~��f�c��?���D"I���n�0�f����]�)F>+����E
}#���l���k$*&�F0w�,�^��&�zFK���0�#-��c��wSHL����*���<@�b}f%����J��1
Y��i�4)+�՛�\����hLf�����xLm����v��u$���R3�������>�H����H�d�P�.��%b��"��)��S���B���u��
���q��I��*yeUEx�]��B@x���L* ڣ!�{ؒ�L��a�A@�r�a4JM�)�qm�(�&����=m�D�N0���ņ�@W�
�0Nk�t��J�eo�)��������6��M���Q����Lj7'ȇ��4d��
��o
C.����hS�iSD�6��*��ͱ ����c� ��2�&
k���Y���Fx�v����r ��������bR�� ���<�S�0��s8e8���t��͏�7ק��?K~���ǹ(?_ɛI�j|���������퇳���ͪr��{7�|݇��>�d�qo�%Z�F���o���d����}�(�'|�Jj<��\+�e�`T4�t��2���/+�kƵsX��6�i~O8ZY�:d�����9L`j��*�@'��qP4��X��e7�J&��8?E��ޞ�TuF׹A�,�z5�|M`m��7�X]V yX�B�ߺ�����v��}X<��1>�vfF#F�UÐIEͰx`�����f��jKV�L��Fc�m�M�|Ê�FIQ��Ū�_�>�\\_"�4�G����)��VE�~��X_�[)���ZK�M�.�D�D�3	O�ލ]�yi�R���d\%�7Ҽ.��6��>�6?kї����J��Dg����T����Uj�p&��˩���H�D$*���l�(�.�=�4��09F��E���M�
W+��`&]i�)�ф:�U���$��bۊ؁�	��� ��{�<;��ẌG��e7��'�tE�,WD�a�-5�=R��<Tꂄ*��iq�+
ӑ\U �g�۲����ף���q~5:��>>����6w6(�M�{�w�����/(�L\��n� ���X�Ϊ�R�
M�͞H ��!
l\SI]QP/hl�F%ȭ��������1@_���	�؁�B�
��ad��s�twxڴs�Oa�J��Hp\D)saz(�R�/��$!�W����BhXa�u�Ĥkp��g��S�?����Z��J��}yՇr�J6���޴��f��z�Of7�XrE�%^^+�bf�z����׺�V6����8[�ZUe]SQj�i��7w�8��E�]%�}̀V��D <�;Fr�s&UV�׎��"ƒ+�,���F�'T���^$�6�pe!KG
Qb�;Ǫآ�C���f�'�'�����凓�Ȇơ�Z�}�N8=v�B~cx߶��r�r�U2�)F�+���� ZSum�Wg�v��*X����t�Z��,��{m���\[#5��lh�����b"@#��9�2�爧;���)���w׷-wr�F��[�t���=�}~C���?�j��᧪~�j�������/��/���g*�};�N�/�'�>�l�ۿ-QI���Q~^y$�`,9W�wP��$�UUY��P�x�Z5ûq�����B.��m���&���;d8�lM S�c��rp��q��"i$�xyE��ޗ���j�@#Z���5F��r`DuP�US�Pa���n�<8C��PI�(�KxO(6�w�q�S0D���p_��4��cZ��ޛ�>���戀�I�}R�$��Q�Y�� �p�`�L�?�@*�Q�6fd�����������K�|!��\�/�	�O~���_Yy{}L.N�}���3��v�����K{;z�9Χ���r�O�.�,,&��$��E=n���Dv����Q�S��0�촛,n���{�1�����Ӗ5k��yn��[dS[��lh�.���(�pؿ�"��p��fİ,�`r��x>���W�PI�\�(�)�I
�>2�ށ���u�Ki.<lH0�a�cI�k#�%�2{�ֹ�w�PƇ�l�:,B�ْ�;��}W�k��;�k�
D���#Ɉk�UD9PAH+�ւ�k�ZG�8ZjQ`�"�4J��\I)�Tv���.���z��Ȕ�(���l��!�۰��l�����(�ۑ�l9��_�۶�澹� J�3b�"J�
r�C����PW<L�
/�ȓ�0�!3�����+2_�A&��r���p}p>q��@XHa[��[�g�.G���U	#��	p��"F�*��Z DgJ:�KU��ʪ)K���B`����mAT٘�8�u���Y	Sk����&��ņ�U�g�w[�\*�bB���W��K������eˎ��-�����K;]|�|��|�������x��oַ����×�+�`3�l1&l1z7J��?>4&��zz��1�.e�Y�4+t�5�bY{�ʺ[P���%x��&x��o�$'6{w������@o!|�ѴC��ͤ���KܨW].??�}ų��������h�������S}�[ui�K�]S��� �������n���MR�Q�;�F��s��q7�Me��#�)ł#�4�}���Q����*�zq��Wx���=#ۥz"\�����3ki�����o�͋%�(�<<{~��}��~͎��jI�yd���]�\�?&'�{0���Z��!����Y��!���r�1�>��bQ�(e3�J�j2iz�p�� �����6pT%� �����2�d��b��Bz�7i�;٣;���my�8��I�t0Z�y Nc7jH�Ɗ&�.�:�(��D�b��z�^��+ˌ/*�I!j!��a1,���6@��׃_��j�~s;K�H F
��c�w�d[����8r?pRp1o*���'-}��f�Zb�8Nr�a ��,]�6�.i�K�>Oj���uP�1^g�u264̬�|DD��m?��%�Y-�WmSf��YDI��a���Ǻ�!�(��ؚ"'�DZM+�����"P��S�l�^!gf�G:A�Ҁևʎ��H���(�0�f�E���    ,��JF�y옣=�?65�]S4�4$ˢ4���%�dE�fه���O�7��묿��p�߀��v��`h#�t��#)bk���*����}.�nb^[�_^]Q�4�Gu˰k:O�/L�V�`�H0V�ZT�!%�|��߯�u�v�lh%�N�^lD+����8�B�5�B����݋2�D���5�(�+�� h��K膰�1[V�+�# ����QR��d��q>*K�\�x���F(d�P)�������5Z1�u�M�>�l�ޟ�n�|�[�'��K~Y����˗j����3�F�����j&+�߿?S�nt�Vľ	D���������'�����R������{�]�ÊB�FCXk�F٪`�Z)�dD��W��rT���1�B�理a��R�h����}&S�k	��#nK+f�G9VQ6�l�F9�؅,A�p�ӗHS�˂�uE���?��s������������;L+��xwB�0��I��y��˺�_�@�J`�:�R��N	qI���dO��UD�YADTQ�L]�^=�bX]R.
QJ]VR0}]���.�s7[=�o`�Ζ��>������U�����x���FT^!&.�	 �LX�uV�ø��Z��UDiZAhݥ��~����0�MQSV��d�J0�<X`���M~��od]#�+�S�N4�P��i�v��V@{HnH�ဓu�DF�8)��eg	���b�|(fp��J����
�Y:��KQ�������n�g.�l�1��.'�01�/�%l�B������c�:�ɗ�
~�9���a�� j$�'�]E�Yd�w�X������an~&f�IV��>�'ME=�-�5����$?]���b�������`�U����j+W���Q��e>_���U��/�5&��Y�$�+����RZ7�Һ�BS���Am9�ޢ�XUe%����/\~�޺<��M�{��{��9D?�	L��.LX�x����q���E���Т�^�|@jT�I{O�޶�JR��[H40�;��
C���Q�P�s�x V��q����n&-�>����K�7f7��)(XQ��#������n���*���'�4Q:�Mz#]!�W��B
[b�-`��˔��\����ٺ�{9���6��͊G[^j���]�,�A���r�P�!�̴duC�PK�N �)���+�I�iE�ƛ�펐����#0S�ِ~Z��p~��Ǉ�O�;a�,�&�7OH������W�"�E���a8�Mί�	I��f�:&��1�mXS��&��˦pȋ�	�)fsJǲ�� ��d�V�Yhg�ڱ%�=���&�0��)�ʂr��_���]�,�ǻ��+���B��R8y����~��e���9��H���хǽN4J��ÂV���-�Dkf��I�GO�K���l�5�`��PGS�<Ӊ�B�(+�<�Xx�4��􂩩3��5��LQ���R!b�e%x�Uv�f�c��V�u+����]?z�4�Jڿ�ĎHAa;�@X6F-�� 
D�Ij(�՛:ZxpK�����U&��)/|�j���Xm�B�ޭ��.4��qh��O��o�A�����/���N��C�������L���^�@z*��B�����*Z�����Qi\�<���������p#{t㠠�Ai������`�U8*ȉ�42}��WD�kA��4>��`,�QJN]����/l�YA����c�ݖ�V���k��.�?b�v��j�	l�6�ɌA���-\�2u ��~���~�#%�]�L�^kM\%%X�P��q�>k,�;�7v}|��)���&��:���8��|Z0��o�`;ݹ���U8��>��WW[��Cȃ��Bmv�r���@�]H�������l��i�Ez\����^h�)�Tl����vu���ًe��_��)�p��)�$��.� B;�W�sU-I��K
��`o���u�J3F�*�Ԭ���?�����v{�U�6����ঐF¡���l��v��-����r�P���aΨ?��ϧ$���}P�߬��+������g����Ǔ�nO�W�y֬�ݿ���ܯ.���WW'?^����f��^�9�Z<��|��H�ޗTc�`�1Z�d�|x�/.f�FIc��d.L�8��E�������(��)W�F5�1��ࢽ�y��7�萺����o- ��1<:(	L��м��Wy�ÊO�c��"J�
R�aRc�d�
��]�x�wQ�$KZ� �|ӔB��M��?��g��A��<��I���a��&1Eΰ�I�A� #��j�Xq�W��#��Y�qVD9�����Um8j�J@�u��u4�e �k������`?�ZK�e�s�����}�m{x�u�HbO�Ḡ0���o"�qk���"؆KW$�[<���aq}t���������e�e����b�E����!X���3�ev�l��k��{��I�7�3k��پ▎�Fi㈏p�]k�)�������n礙X�;J��%�%g5b��/k)*���KK*2�I!+_��7��Y;w���~Ɲ�_�5��$�#��+�zy�t8qn|���I5��� D�O�=�h�����
��h�ƪg�u�r��d�t�������a�p����6w����9˱��r�X��?Ḥ�w�X* JvӁ)�n�B���t��d8%�&ׅil]T��K�Y��WX>�����lg¨^�l�xO��@���v��ɉ�	W����K��ZD9��ɹdi3G&US���D�e(0}�`x���oM�!��m(U���2���0v�`J0� ����!�=�1�櫵�=\?�?)�贉{��S��F����HYW��f98ҫ��ZR�DU:Nx�0m&�f�z6��#�e~���b�X~v�����>����x�;o�����j��Y|u�k�WZ���<�'K��$���A�k{�{���5�+��[�]:�^d�8[D��A��?⃣@~��S:S(�d��8p�*��r�֕V��YV�
��|�-9�����D�i��{��9<���Y���u��ѺH�p�{wÃr�0�U���52��r �,+��FDv1���s�e�Q���}ʠ+-�!6�^�+I���U��M�`�c1��-��� K�L�c8j���8&�1�:h�_WD4�sD�������+�C���X �����B%����+�(0>���L��;�wWn�����ǂK�5���-j8]JU����56�,rP3Hc�f�a������W��'���}-���0f�$pȄ'�;R)���O̟�r�����1�qt`o������֠҅������)p��=
�|����i~4��80̿?�_|���� �qo�g��������܆��"h��߼x��l���͋����������dz��Oߞ���������b�?��M/0�r;�^.d�!	6&C48+2[�;L���s����p2F�+��)~Mcqǆv�ۮC�}�0�)\�lA�T\	�=��¶��Y෬���X�a�%��X��:�%��m�:$I�-cT�"J���M�.��2	��`�@�AiY���D+^�:��,���գ�� ��W:��1��l*�k�f�p9��NJ%fqFi{���I����IU{p�YQ	,!�)��=׀Hj�Gw�=�^Y�L�����p��w��"{�l�a{h�I�H�"�]�p�/*U�.cl�"��2�B�Sk0j�U�4A�Z8D%��#�碎�%lE�f����_�e���dr1:��Ħ��J��$M�C;A�9�p��JL�d�pݵ�)7���*��pQ�^��%��jf�4��uUqS!��Ai�Ec7�����A�Ta���ce���{�B�~�۸���c�!�,�(�<�V&��Q;T��
 ���P� �!u��!b��f���d��F���լ]��p|XDm("
klܘ�̈
Qx�p͟�+��R��v�Ɖ�U�qZ&�[NY/$������y"�;���X��R���x	Jy>|�w�
�o�.Y���V븖��uؼ��6    Yqkc��>�� �?�^�Q�{D��_r���i�Ť��eQ�
�յ+M�VW�� #�z�^��pxh��-�31Q>b���]�8���A���+~q˫�f��^TbF�����b���t�a��y�S���G��/�u�5���������p�K3In�f�Ow���Gi���c�uZӂy�M+K��B*c�ʓq �k�����w��~��4�������0�G�`�����Х�qBx] �g� Ȧ2�{-���jB�L�u�Cz�W�ٺ���CG�HZHƭv�U�tY	�|ހu��q�(�\=�@S'
�c@L�񂬅9��x��ɲc�Qle�
I�j�O"ߠ� <���0������
������_\O�^?|I�]�It)`+�ؾ��,��򶯭���&���1\�(m0<���QR0:�VɆ7�-*�P�-� g��5�ZkY�쭻Y���#��&u0HOC �1��V0��W��՚�k&i�d�.XDy���Zb�	�z`$*=b�WH�K�v5n�M�DN�ݩX�ӷǠ[�N����g�>�{8��'*f Oa��f==��'�1�������Bގw�-�v�%���.�����*��0�@r���w�D�����ժ0H�C��t��������m?�ӧg�a�`���*2��U+�~��l�c1�9+�>e�;YD)z�AY���¨������vc	>�c�bD�p��4���#�t�:@)·����*2,���ȱ��Tq�Y~e�>���(#/<5�'�HUDl��GL������)����:m�����ٮ��f���߻�b��?��ΥU��G���N�J�F����a]*�U;�/u3\=)�����yh��u?���*u�ɀ# ;QQr�]䞊�æ���r3_�r�ŭ����ЦmD4��u9T&|h�XN4���< �
�IxD�b�IaG�������[!S�d7:�#X]Vդp��$�.����nJ[�d�u��ք9 e�g�8�F|�2��A�R7�)��E��Y�(pE��,n)y�� {"$L3��L`��*�4�OZ���K�A ���ғ,�e������'XE���*�����G�7�W��L��NX!Vp�X81�.��ϯR�.a�!艿�b=/l�0Y,O�C[6��,�f��l�*�<?o��]�GY�Y�|�K����,�zv��܁՟(���F=�)U�B݌=\7�J���p+�p'#F��1�7,&�.(�7m&�pT6�*0�)����^��������x{.�$|�D���*�lC��g��;(��P�ps�AR�b�Q�.�%,Mu����k�u�5��r�6X�QN
W`
v7PL��f~hCkķ'�G'������zl�V;Wu�`�qɁ��ϹV,���eoSQ�(%W�'D�[")(0݇���3��4!�ǻjAR�`_�N��\-�m9|TJv��N��-�^�
L^�1P9q��n����^v�b<I�%c�"���e��F��PIe%����A �"L�B�y�����.���σ�=Q�I��x�'h��$�+]�WL�$�E	��q�N�D��xw�q�WKf�f�r���l�)H�^j�� ��~����?R�X�U��ܔp�y�޸������_����q��֭a�<���t�r�E�������	� i���ոC*�`	�����u��w�=��<t�u��;�(-QI�Gr�tU�)A('F
����5�u#`JVu6==:{�i�HM=�����֫x>"��V+��ټ^�L{��j1k�d�E��YD���$ce��+��B.��ur39X'T��1Uv��_��o7e��g��,�z���j��x�-ު��/�I�-�ҽ���<��î�1���Sb<����L���d���N?��ӓ�������D"�x̊-p1�M�a�/���b<c48�!��L�~9��˯n1�e�B��1�W�}��N�p�WR�An��Xq�-l��)R�3ue�*;YTW0_�M��cp�s6�ʅ�,6ppG��<��5��6�Q���C������$�PK'kP��IjX���QjX�xO<�F%��w���[�����4��YI{�����nq�}�`Z�;ʆ��Ź#��e�D�\�gk�Z��w�$rB��^`���bs�!��ݤ�� �.2�`KŘbe��䠘�I�G��.k���z��� �y��p���ʻ���ic&y��ô��Dx�i�(X$ǲ�ë��.1_"����*䱱*���Ql�# D6^s[Tu�@��*,)���W��C�����Y~e��1�����F�%b2�(���pzL		��A�Qx{�p�`l���`�I���C!��B�=!$P;܎5�a!�"掌r��T+�zpt(�C���Cݍp�u�e��Rñ*��n��v�zPw�4������I�Â9���-!�����o5؆��v�]|�����d��d�A�'B�C���WՀ\�����g+�o\A�U��6F#�m��A�+��x�m�အǅ�ON�'�Sh�0�7
^Tv�_�B|��d
1JfgS��6)~�nt��%uM�eQ+���h}|Y���
����|�>��a�COV�[TP>����ް���S�/F>PDO�߮�	���,S*Ն�:
�^�s権�W��M�2�[]R1����:?����3w�q�p�Z�}j�#�ӡE�)\���a. ��ʮ����e9���8":Ӵ��r�Jy��*j�GV����8�p����dȔ����U�}��c��9�T�<��"D9���:5�|1��4���&�z��I���\3� Y�n�����W�A0	�8��$���,#1u�s�9e	I��v��oa����"�����B�li`�-���͇/�Ku'J`�Iv��uD`|�֤��z� ��{��B쩖�:�e��YFٜ����t�� �A'
l&v�$,J� l$��b�)x+w����"�;Ⱥ���S �z�&􄍃��8wɰ*��W�̓r��YF����!�'��bS��"�W`�[�!J�0���!N1��M�6�_��R���z�ew*{|*5��D�n��0�,5���E�����u�p�b_�PY!3�J�V�W�X�уQ}�FK�2[�h�h��U{}㮰 =�}w��
;��&��AM��;b���\6k���f��I�tcS�Q6e�l\�$u8���RWUZ��]Nu��x�����`�d��2?�\aV~�������tK<���c4w7�
ӓ_[��9��8Bɿ�k?�����A5�W�km~:)��b���5��1����ˈ�����ކ9��T@�c`2p2��
��������~S���b��[�9�Q�Y��I4��!(�i����aQTvV���K�)RJ���?ZD}�;Ȇ�n��rX�Z�ղ{Z;>��d;��z�1ꕟ��g=+�|G�o�� !ݾ@Y�CF�2�H1Щ�pg5�%������5�c'�#��QfV����M+Lݐ��\��	"
GJS�RؚzV˒f/��96s�]��u]P�f�g�y�@9c�����&��{�XZB���bom�����ck�Q�Vt�Kw�L�����R�Y±��:��7�(+������v>�� �I/.3f�z$.�X1Nd��s�c4�2J�
Ұ��da��H�C��C�h&�\��U�l&\6�,�[e��8�d��Ŧ�!s�S '� 9�z��Z_��{���Zv���cr�Q&W5��S�QˇZ�t�a�&�,��ʢ��/*��	i�Jv�e@x��#��lFל� ��86����0�/����=��
��I�h#Y�Q�U��J��v��7�*%�&��Q�z�4�s�,|Y�t��m9��u~������px��e��X<�1j3b��tN�	5ł�$��w��/9�\.6�l/��U�_Q`AJrŅ�\�4�ĉ��h�1�Fs�Lm�����-�b��A�L�r�=���i��Q��UF����L��Q#�]    a��I�1x��\WE��x��^f��]nV�Ϥ>�d1�uX(�=����P}npG��Qծ`CKN��]e�UH��Hr���a��.	2�fU����EVNxU���\�l����?��Xø��F���{��S��t�&F+�T�
)oR�a��ʤ��AW��b=Qռ(�&��-�.�.�l�>���!X����љ�?�e��rs��� <�[�S�0�a �%�O��d��M�0q9��?1�8bx���$� ��x3���vc6<�},�X,��gh6��
	A	0��Q�ń���Z�i�Zʲ�\�nXG����������~l8�B̏a�Bz@ݣO���6cS�Ƨ��h$���V]Q�jqT̮�
�
��XO@i����,�Zm2|K��֙��Cz�����S�A$|����5�V�ki$�HJ$6W�¸��sIJF��h^����w��4lEPO��Bs��_L�I~~���ɳ�ӗÙ��L�]/nng�:/��!�W;}N�����v����^%��F`n���]�U{��)���=X��Q�a�V$�����w�]�h�u}J�,�׍תP��tp�>{�E�yHa��}{﮺���d��[�9WO�
��G�ս/.�j+�V-xϋu��]&�1Fi��w%��è�
�7`�bҮ�Q���XT��iiLU��q��H��d�.d��ᷲߧ��V$X>����h����AW�s¿�1�ܛ�1�4JW�&
��t�G��Cei<�WP��t�X��8+��Њ+[qp	�?�}��Ӌ���iw���\
�c�B�L��=-��V��jOخ(����љ��`KMM�5��R�*�	2)c5�uw\g=�� �@>:^�Y��2Uź8':�\�&�q���('z�w2Q�t:����pۀ�m���+��F�ڤ�b>E��$�L�pt@���]QV4�c�BS֔��3ӹ��<�䮯�i�m}�:�ף����CN�C�HA@t�668�p���6����-�����x1JR�$�Ǘі����Ī����Rp��ECkإ�Ri]fs�}��Ϥ���/8�&�\A�p�e��)"�������sZ�N�)�����10n<�Y�,JU3P4��8qN��+㝞��xvv<=�_��8=:>5d{IQ�_H@{s�@��>&ה�Ѥe�)�Q�R�|,)6�0H�R^�T�+WT*Д�����R:΄�D�2����|��%�>�~EDH
r�b2��F"�-�"/s�u�y3F*��Q��X���� ��\�p�p�-RTEY9^Hf�m�ѵ���^/��=�e8ʶG�Hģw�1�m�G 	�Rۂ�#F	�*���H�l�8��Z:*��L�w`��?e��uCm�I�f�P�)^׎�Kـ�|�}���\L���t��Ã�~��]��Z�}-{6KBq����%��-K�'z�H�,c�� �r��V1R`�������]�)}�jQ�l��uw�ϸ�y�KN`�N,B�G����!Ԋ��2���_�����},�W軧�&9İm��8��dl���67La�"�^6���`��P^r���+\Dp2�;�����Bp'̚q�#H]���/�� S�|��X����`T�mCte��h,��pqK)���9V�U�Ѣn�yt��D�D�4�$���Ù��CS�M�聴�/�]��H��O�0XF	�Q g��%�?���K �܂�G��3�0�z_:�tA�V��֭�����0	�r��#)�//��XN�/�NF�e^����N(����d�P
��x#A�Pa�U����eAr�{yr�������(�1�BjOƫpt��Սojx����h��y%��W�VuS�ٝ�����ڮ�4e�Q���aۗ�_��Jmv4�e�0��z`2���/��/����(�1��i���@�A�
0(o
ؕ��J6`��Y�<_eSЪm��_�v���Ƌ*[ވ-Qv_7�-�؍�� A� /�򮻘�ɂ�e��RÓN�� 8�-�f���&(hp�JW�v cxSb}c��@qvs%e?"3'R��1�3Gca'!3\)\66y��x�e���`�H�pt�hdT:�*�\ǲgA}rWM�ց��x�oXm�Ƽ�t���8��v��F�'���7ۘ�绬ĹB�0(��l{5�L�L��e�%�`}*)#$��eTz�D�HH��i�9�G,�6!��,3a�=��Y"`��f�"�����ca�����+��[,�,D�Hx�UF	>���LM�F�J64�cƫHa�6���Zq-m�uy��Vw�=�=�J�I}���vJ�N�w*!���c�rv�}��H1�O%���"(۴��Ц2��'Ta+L���T���B�R�`�1u�'�M��Z��G�p��̀��9TYݑʳ1{%�� %��^��`J<1�O��D`]uZ<%�k��Q������i�Xż�V������L���;��C�n���������Dx��m��[�?�UA=F�)���jb8�i�f�dV=�Ȕ�@߀�F4����2�{P��y�������3����1
�]$�+�k���k�<93bvM��
�y�b0j��p!�U���z�M!U�jc��Ȧ��N�����W�-(�~(�!��$5�_<?>���"�V7���\��H�:Q����0-f��ν��N�]3�*��*�˘-勂�%���U��V:L��d�m��+�Cpb�I�)��z���֑��h��^�!7���^#�l+��
�}��o�w�Xg���Ģ,� Ez��Ԩ�6�%R4uU��8�\a�(1l/j&�J���pWw���A�]w��ؗ�"��Tƣ����U������~4mۅ���I����ƺ��ɋ��F��*��h���������[���?��]����������o˅���<�N[�oB��9rij�������`�.1"\����9
v�dvF9߂�+_y+j+��d�(�29CK���U��ݻ��"?iW_7����S٣S���y��J��1N����)Z|=��s��v�Ҭ�|P^\����ѳ%�_�>�?��g/�����Z\������w���Z���U���M�9��"�Mv�D"	�?��5��R��D��X!xڝ�����
vPWJ4!�U�����	�{�i27[��v�8�B�~�a��8�		٭QE
�=%�Цݵ�~�#�.]���§��2]��[zkpMJ�Taj�%N�+� u!m�a�$�l�l����?��r3����w�L�s&e��E��ݱ�E"b6�.�
�q�i�	\���@r�r9Q�f�$����P��ۚM#�ilA�L�v!��j���4�)�����&�I .}t��'��y���&A�^�8�=\��),H��T oC��v'_T�q��#���Q�B#J���`8o|a1�(d]�$�^i�ݯo�W��qPb��z������Q�	D��l��P3��k5�.W�w7_�8&�r$��OeN�g3<��g�C��T�b��C\ml�B�ך�����?=}���"?>=zq6�4�8��d�Τ�z�������G�`#F���Ns�'�N��cd�5I7��ȓe�<YM���&��Q34�����`NUh�,��S�ڻ�(�d'��j���ew���
�z�9��E쒽6ZɌ6<��
l��v��"���(s(<4l3i�@�f�vU��(\e�� OfN)
���z���ٙk�o�яv�o׭��.�����@/��d�+�����5vA�;�G8���-�Lq��<�3��q��8�-O

M�I�|ڗ1�v�#��:��2�	ho��`O2db���X�1$�E
���Q��x��%�㢨��=�ac���>w��x���._-|O����atu����-@F`����d�JGe�X�g�>���z�n\�є�(M)�Ѫ���"jN?G��{ ������ŖU]�?n���|s�����%�l{�;�(�gw���Y���ޫ�b��I�PTF	EᡷH0�Q3Ԙk_Sm���%�k���Ј�b�����[c�y�3eia�=H��    qqt@�����n�ͳ��>��&Y&��Q�Nx� �����fa++����;A�'�Q�)S!K��b^�";j��b\�p���(����^
mN�s4�M�v���(H�6?���(��_�q_F��SFY��J� #d�²�z[j��",�`�3� W҂�:;y�*�4}����1~φ��$sn��#Ȉ��aى� ����Nc� +����M7�-O��bH2J�Ɔ�AC�H/<��;��q`L	"|�B����l�)�/�P��x���(��������y��eM
ώ>"�7��^c\��_��f��_戦�Y�5ȂP��� �w�bMғS�Fjr_[���
w>�=q�ڝ���1�i�RHF�e��j�
�r۔UQPV��^�o�`��!��!�2"�j<��&�����Єe��������k�9�G�� ������\��׉��b��X��mT3�V�0:��]#}��(�@�h,51��Bz�+�=ͦhO���ٱGvg�Gg��6}�Տ�$���G6�z¦���E���	��%�ԍ��J�������Z�>���J[OB�����f��]zk���ߵ�x���:6���,1ۛ�~����]Q��>�=Q��r��Pr���
&$�:V*�_6�W��ar�M����P����d���a,�>�?�p�-�}j�ŒBQva�C�
R�{7:�`����-U�\�h��V8��BYK��K�����n����A��Eih��{)�9�K�1P��Ԅ����$gWTd1��µJ�è6�y� �|@�h(���B6'/��a�U�����qXRr`�1*����,��x��s�����~��fS�휚���bT�2JϋH��b�nt�73%����+���T20R-j�uͬ����&�|��_v��4�z;��5�Hp�x8.�]���u���b�� q�{,��ce�G����=�FŰ���6�F*���1�h!�x�k+,��i����v��(��7O��:� }Ӯ�K��!\s�.�~M����us�d�(ßP=3ҽ�CuS�F�j@M7��eSpf��;|���~��<� 	N��]������"W�F��vV;d�j��M%T��WFYm�ya/L��ѡ�]d�l|!j�,����N��F��2,C���;���{�@�}<K�>�l{$'�ή�9�αp���筻��ׇ��yq��J.��y�����^|)**/?-^\���ԷW��[}VN�W�����s��dT8;��vW�C�C1'��d1�(J2�����h��\g`ߕ���I��l���)��X�d�u�%82e�Og���������lb���'�:9)�T�`�
�emV.��j1�^Z1�&J������DV7�Z�OXIx�w���[�\Et$�IeTIjP�'��9&�����ֆ���d����� �'Y�Y!oԈY�P��J*2�\߁_�ݯL� RŸSe�;�u�]�`g����MY���8&u`@�&��R� �{W/��3���DD��'&�T&���}�CBc��
K���x#�Y{����Y�Q.U	m��<qc"}�4�U�F�D'ӚV	�K�wh�m��6O�4��8÷�{�|��L������
��=V�(��MEoT�YUF9D�-Mq�u�C�.s�	�Tq
k�$Ue��(u~���vw��w�eu�=�Q��]�조wb���\������AL�NL1s4�1��%���Q#�.0���80�-)R��L
f����͢+���~��̧�E$y��ЉF5�?��������`����j�n�J�|�ۘ�����'|76�*g5)k��P��q�e�='�e%f�~E6����sde�}8����6 (�ס�?R5�O��-e���7�%�a¨���/L>h�r��F�
p�7�)��$�ǵu>]�M;߳���i�t=��E������l"q �d�]~����C������գ)M	u���˕q��X�р�[W�wX��7�ֆ��V��.���{����O�J����g��ElY!pl�*��<����@�M�Y���9묑 .lw5���C�0^��kYk������%Ƒװ`���}�5۝�Ƨ�Qvho�j��ÍM0B5���	+���1�)�$*eT@醋�$����(90�VM%-���=�^�
I&J)�L�rh�#�V��2���� ����҇��D��f�ӵ[AD�>A�)�@�pk0��]t�_35�b��2J�o�����[�z׸JpX��J`� �.��,��zx�蝹��:dQ>�����������lw ��z�U���p�ʟ�L�n��37�70'���"�B�'\�@I����c��>����nP�� �b��R��e�a�Ȱ�5)e*P8F���h�cV#���X�$�+�Az��|�e#y��n�I�g��3����c����e1�I;��Ɩ~��� ����Ǥ�jj�ƨ�e�z1��HGU���CF�S������,�(!�v���f������Ż��ǳ�w'����/���"�f��z��n׋[�j��Ky�v��밌����#��Яk1�*^hLt�Rs0h�)@�9�=7NZL��'�Y���]��d�gy؈"�t���۞���%f�p*®�]���v��^v�"VF)bQ��$�J�F���/��#���NU)KS���E���矺|w�G���nLZn[挘��cz��\
�B�Н���j�>�?!#>�..�K)�D9aAJ%q��(��AQ��p
!<R�0���GjSZ�sev>s7~�#2�|�e��!U�-�Oko�-�.�X��� ��d�}�g3?�p��4��Q�X�VB%�$GD�EcA%��Q<m�C���+r>��m����k�.,{��&2b�z�t_L���E�������s��|S|8������􊼦�+�b:�<m����7_��+C�Q�A��8�8���;���eフQ>X��A��\��"h��pX�����ˢ�Ԉ�D�j�<W�r�?#�_߭�����.��A$�Wۻ�K��mi�3J����pV<a���d5�)%x�׈#`\��7�1O�
����L���-��wGYtp�s_�dj�����HB���p)�}�X'�3=�,gz��4U�F�
�4��S�@%�������D�0i*�X���n~��^<� �f�g�G��8�[~c�&�%��!׀'f������}Ӏm��rQQҲ(�F�E����F5l��iW��F}�禀U�
.*dB/+'�l���`�-Vy�|-�Kw����ہl4pPl�零d"%6��M!�Ϩ�`���k�SB��nE	�A,L�h��A5�
����B�	l � I%�L��Zg�2V�l�����b�yX$��3	�l�o��avՏ���"ܡ�d����U��q�(�0�K�1èT4i�E*���D���f,Ϊd�����rz2=��߽}�j8ʺ�C�Sl �F�-���X�����c�`�`x`�����ٺ��B���m\H�cp ���m�K�dSbG){�cqrʫ���*��iv�Ē�/�x�	��#�aw:�;}з��[�N�$#�� 1j�z��q��2���ٕ��\���u
�@���T����D�����p��M�=�,+��)��EMuEE	�Y�nJ�Z���*��4E&v\��*��|�{����Ⴛ�(⩨(3<��4�VЍ\���P����.�<�* CJmKL-|�>�H��%�r�{�}?�ʄ��e)�]�������/�E[����W��L�_?ؚo�_F���	 �c�I.`��X���浟_^&�i��QQbg��6����a֛\�a�V�LR�|���X�[kG��Mi=�H~�BƼG�s.V���Z"T{�p!��!*�Q���ϤX"���29Ã�j��� m+B�M�aS���O�X��wXrs�A���A��l{th�T�(��x��.�;����g��~vu�,�c��z�כ��_-n>�|��^��/��O����~|������������|��L��^����gdԏݽP    ��H%`��{U&+�6+	�)�n"����#����D�Z�F�yUYe`����^`�3�,����9ژ�dq�߻v���܏x�S�p��k2|�� �����V�Oo|X0��*�t���b6�Y���f�^�C���(!ɉ���D�x��*�A�G�\ƕ/*�,8[+)�#�wbu��}�W�=���ì��Q���,�,x	m;�����S�9��Oo�����O�݋���������W�_~�6���?��^��n_����~���^=[<�{���a��q�cF,=�j��,��C�<lW��qdT�/��NZ�8:�V,E�[I��j��Mތ#�n������y[���{��麣l8ʲ7�!���W�U�^rv�0��>�.���&!�0��v�pXM�w�O\���]�0�dK��rdd�40�>u����u3o׾��z$����r�$Qj�bB�R5�{�tS��˚a��\�/�Y�	({J��|����Q:�׬����|��&�	���.�ܐ��,�H�WKB^����r��#bZ.&3�>��0닺�SxC��TuQ��`w�	3�㛳w��GR ��u(Y����1�2��`g#�T��t�z!��1F��������t��2��G w��eQ2�D��.%�rFU��}&�k׸e�3%�m^���HT���W��XF"ǽ�k�%,�T
4Ɛ����̓$sa�6b]y[)M�Jz�FZ �!�ֲi`�w�R��ͬE�K�}��[�#�s)�}��Ȇ<�%#��(��t6s雓�3��r^��"Tv2`��j�2�d�u��F�-f�����4�%HP����WW��nOd����^���$�1y�Δ�Eǵ�^�q�%���qln�j6iD[���%+��e���L$,�*�����޶+$�_�������1q�=�=�X�%�gߛ�J�dO�a�Z��ɛ��?N��(���:�\����;��=���p�n����#F(`ig=y$`��4c�,ŸF9�'h�Pma����,b~PS�Ac��P��?Y�:��َ/�Ibmv�i1�1e�����J��j%{qX�k�v� 'RI�84NJ,�a�:;?F����!=��j��Ӕ\�H� "�����]#��݆��;�(�3<%6Erԍ��4��\�:sv��T<z#��5u��l;%f.ީ�(�-9;��P.���<#��E�p10��R�9:Qg�|�6]�$9�*bH-9�r��!-�5b�n[����I_�y�,(����dgL��ht�X-co�
�@����f��ߺ�Mz?��Q�f+����5䀳�K�lT]�B2l��M�5u�aCLI}�앻A¸�㐻

e�0~����D�����6L�`�e ��{_�)Y��U���V�f��%���vR{�d%e��@���ц��R�����5��6w�v�e�[T�� �	#
�ol[��JKc=ɨ,�Jp���6��6[����b�B�dDb�Q�X�ځ������� Q��v"��Ӷ�DfI<�><z5�ϧg�����������Ŵ;��?4������M/`�Ř��*���]<[�ְ?���Q�}WE�wA �H���0:Ԕp[U���;Xl��P�"5�FV�ן�<Xt��7��b���x:�;}Hkӧ	���:�b:np1��J�^��Z�b�&i6T��WE){Q&�>�"�aÊ���+t�@[KpB�����C�T�D�l�g�Eͽ�/�p&�9��#���rBX��g!$�o�v�|�Y�H8*`%��th��l��I[�����ܫz~>Iǳ�~ �p +)EY0Y!Q/h�2���a�/fT����w%�n麣l8��J�v���ѧ�j���1Jz(C՚ ,^�`r��L�(�*�	��ZF�d0���(�M���T���(Hc"�
L�Sp���uW-��a�p�Z��7�>�@�0�v#�ƀQϨ6��js�6��I!�,�(�)��'�p������6���H�&��%Evjjo�0���-��M�
_��kb�m��~��`_���dL"�Q����rI *�UQ2xr����U� �WP�eY��rq(��p�2S%��"l���f5����W�5(��0S&%T���`e�1�2УT��ͮ�%�p��d�&�D���[ ���l88��[���жP1`R־)�/�Q��$�<��Ӯ��ǣl{�R>�����QXg:�a1���E{�no�N� )��%�E!�'�08:��JV�[{�ZS�p\"(aixY2��&;���1�~�u���$���i��A�ўE���@���D��3�F�u��]���$d�"leӀJ�#�H��Mᜣ��JW��������W�A��68ȶ�`��>�{տo��Я2ZkK'	���
�Ԓ�(&�(�/�eA�&����p�p����"�T�֬"��N(ԑ5��K�jaE���U�|g�m��N3
	Xؤ�����^�|�$HT12_l#�N$-�����4J������#^�2|��5���=��.��/fu���������8:��x���v�	�C*` �� q^��
����|��_���2&�(�1L4���F� ����NjV���)A��Q "�U����Zw��l��q�ڲ��g����?k�P��j���:'2?��)���A�.�/�,�ho6�uO�����J)zTXI&vO�hw�qZ�b�"�կ����zrӮ��0��~����`n�@YE	�A���<�n��+��c{d�ƪ���T��Ͷ�^�. ��K���Kx'�`&�������=��A�����Y� ơ����%U�C9���`���9�wC�[S�m�4�1Zg�@6E���{�}OX���db�X�M�D��n��X�pss��~����oʯ\�ϋ�z���A�7G��??��>})>���e/������:��x~\\�&P�+�q�أHs/@@�k���Ԏ�d}u��YE��A�?��|��DW�����8/兄���
~Kc��ܡ�#�������4�<Q�¹ �<C���+w>5��3�(;*<,Xa4���i�A]s8,@?`��1EY6��#*+��U�ɵ����5��t��eȄ����ě��jU/�X�x}�a�����~u��.����d��:&��Jf�ٲt���{s�]UE�UA����xat� ���dakv��D^�J�H��k����̎a�Xo������q�s�r�=p��v�8hny�{�]
qV���*)����'E!Xk��.,^���$��^���)��D�.p�xvX�yvy��ܱV��_'��i�=0����w~٦�<1FRe$Ň������w���YEa�h�8@]��{�,m�^<���rs�ʑ�+?۬ց��?��Mx�[Ϝ�_P`�?�����c��+뮻�J�[ŘJU��$b}Iy�a���0sa<8�x�a�J(�4l�V4��] N�~Vp��J��{�a%�=���mf:͉ђ�(-)<�1��%b�\�5���������m�T�)jF]Y���@�������W���6%iH��a�6��!|'QL#US��]���Db�X��
�٪�%5j�P!jIc�-4G�����D��V;��g؋p�V�σ���^i���
q�Ԟz4�N��*�g1�6����3���8��]|�ܿ9�����oo^>�(_������t�������{�R�����b&���:"g�C2sq��7ne҅�1�),���Te����j�Q˲�
��n�8越#�r�9V"�_�9b�]��l8H�{�%��c9ûeAò�q0�9�������5�*�R_�!`�$���:3=�K)���~X+C[�hj�����C�>��iM.�vrS,6��e��1�zU�~\�in�y�9�|�~������{v,��n���ћ�W��lq���x�9�,�wBH���R2ۺ�����%<��f�X���btZ*ʋ�E���J�Qӻ!���H�±�ehǣ�	$�G)��+���m8Ȇ�ئ��l�!"xÈ���o�����q�����G��=��ŕu/$�BN��[����    �����d7������_�-�;i��ωĂj1�7��/
k�*�_�]_��2��bt�X�UDL�tG$�5��j*S�7�-�_5MU�^sZ;������#���� �QZ�	-����q8�1��H��f����ņ�#ر�P��� 3R&�B8:�b�>-�S1-Z���/,�5�u�"B<#����L�@��J#9#�栙�(�s��^��Yw󜝿=y��?��*yw������?�惞��������r��:_��<]����S��m�n�9����H�K�Z)	�>�����~1�ke���1>ȶ\hUY9k-j�h�؂�L�S�H,������js�!��q�踏a>seh��/r������"Ö�GL��7�fv�_�����h/6�OXV2V�@ �X�`m�eX�cL��]��W����4p�>�R1m�I)*�L�F��L�I��W�R�u�J�kZ�ԕ�,j�݂m~�p����*él�T"hGt�Tfʫ���>+�����_w�JM�������	,�U!��@��i��f5��9����0�-1�q�����4�8;Ύ�G)gk(6bςnQc���X�i���b��dcKebT�*J5�k�������EI�rJ�Ԩ=l�d(�`�rp)Hvv��8G�����4eۣ�<��NB�l S�����l��i�g�g1�&�%�6:��-�l2�� VQ�Y=�0��܍�O�Z"�I�(�#U���[r��ޗ����n�w���5뿦��D�(S�)���}�p��栗P���v��O�I�ͬ����ck� �C5^c.����(��d�1iJ��ʎ������#К;e9t��~�����ׁ�Ϯ�|����;���=���x���υQ���o����~^�u��9'��u9w_�w��7���<>v����V W�rtw���hI�����n�te;�֮��'f�G�X�0�Ӊ�F���&N;O
0��A���T
�%�JC�U}ٮ��M�agG�p���h�w/I�!� "*�Pi8L�9b�ί�[\>!��e%e���<Y��c�")X�Ҁ��э���MA�8V���Hlܜ�U�� �7a1�����c�?�>Ч�I\���d��o�ݥ��6�_&���� 10��FMߚ	^��YK�uUua�a
�0]Q�k�=���0���3+z�9���w�1�>�1�7�C~~֑��'䫬�|�;���/��������?���u�������ӗ�.6���o���9^�i{�2��!��AG���F��բl����F2���g��4�)������Ȃ�Ѕ�`5Յ�ȇSI�@�v�,��*��Е�K�My8��>h�q�+�{�`[�R��K_�m���RQvaXӈ��V�0*� ��ͩbe��݊W��]��Kj'�����Z��>�}p�2�QF�ى��7���]�¶f�f��Z�[�N�&�x�U��_��c��`����#�O"!T�}��c�Q�M���?�Ɔ��/Φ�L�s��2��+[��)���H��C%�+�<��9���l�Me�G�x/�*Y��Պ���u���V�tUs�OE��4�����(�wa�
�t	��bb$X۰�b\5^6��{���fkw��L֝9�ȑJA����b��pܚw�A�1n9aYw)���]R>��e��H����1��4N�,,��wA��V��`�=1PF����_���߭��ߴˇ�;>8��'�/���nT@#V��br�I��e_7p�dIj��ZE����-��<��C�IΫ�!5��5�0���+K��]v�}��w+?�����o�f;gJʆ�Y�	�e'B���h:@ý�핻��&��p�,�fB�ť֍��j�\����b9�Z`�a��^J����kVgǫk.���KZ����:D��ұ��G���hf`kY�_���N7�Ĩ�U���	��J���eS��xL)W*Ux����	ڨ�v��GR=	VK���8 �@pβ���۬Vi�sh������¨�g�ڀ�Z��*�ޯP���x%��&{�j�W��"�PE����Ps�_�߬O���nw�����]��WC�l3B2C�r,OUQ.5�I,��?p�IV��h�U�F�&O�f+�Z6��it��ہ����Hl�@KckBev��2?�>����ΚnN�C�zo��ӹ�;Ƥ vPw�^.��ߩc��*ʈO�H
:�x����)�mR�����bN
/Y�s�m0_d[ȑS����Z��&�w\�Yr�W��ZKJc��+Ę%}9a[bzRa�K_�JY���/K���N��	λ�Q��L��㰴�C�W��9�MRa�ɾ����j�&�\�����X̦�r��L� ,��`t��=qV�N�)A�Y�
k@�۲�`k�X�ҡ#�H�z���Ew&{|��Mc����cW����y�]Me%j�8��{}m���nS-���2!��ue�E:0�WW%FͶx�q�ոҰR����\4�S��ˎ���~�M���Ip9fX�0c8S!'��ޕ������ک���(�AZ?����F����)����PT����6UV6�Z>��˽O�j����U~�h�D2��{�a�mπ6��ӷ������P�v+����Ju���K��?�Fa�ފ��M�}���K�U�!R�Y���e�b	:s�_��k�	w�������<?�+��c�	��\׌��l��q%��W�}O��I%[�4�������wƇ��7K��۴�|�KJlc1�(�.")3�����>ځ�\YV � �D��L���E����_��ˏ>a��������G���2�䈥��O@�����l���lq��/*���b��ҿ������Jr������]L�㓏gOr-Im�~6Є
z����b�0
������^c���b�ؕ�B$#NO�QePCt�S�0:��`fY��=V�,K��0�����C묋N�Y�0��E���Gا=�V2a(L=x������m4�MNK��N�<�d���L	B�3���@X5�h�T��Q��-Iv>=���'_�#Fd�AB9n�f�,awBM0��ӀP.�`Ew鰥_���4�ʹ�2������j�������}����*y��㻗'���}��/N�W?�-W�7��ճ����?/�7�������| �򨍗��fr�ɲa��DI�� �toq��o�v�0�
f�"́�v#)j��Z�R���|�l�JP}������c�6y��6�}�M`T�����͚�֕v�k�V��oӛ��u��!��!���q��Ekr4�q~��IE� +yߪ����%�D�M�'t?�?�n5�2ASX[�]�MA��Ĥ|����������4�<V�q����`�X�!>�%K�R2]ٴ����o����~�tG�:kS��.PKݶj�"���¦�����)Z�e������r�/r�D�cK�Ұ����hL�s��$F�,SSr����)�Szg�~��D1�� ���o#��]dlDc���'V�7��~|����� ��p��u��oURX]�@�3�'�ȳ�S�Z��{'{.��;�8:�L�ݎ��Ŏ��8�w�?������T���������B�z9�2�y�
����$K!�*��id�<����Q=l���8�i��?� '��!�b�ń�U��v?��!(_���:�n
�t`O΍�_�����Վ�����H�)����[�\��Y���_϶Bz{ݹ�x .2�&�l|1��6�O�㧽��N�v��]���s�׳�x9A(��l�l���9x�O����!;hÈ��ed�H*�A�W�:�o�����k��_�/���+kd�A�� IW;�T%8�c_$V#$K$�D0"�WQo�N�����h��3�� s��n��ƒB��9,��a駟ӟ�TO�����&#O'�����c9<R��ޟ=��<�^�\ї�@��omo��l;,    З��u�`~�� ƁY5�����Iz��5&�L��jF;���VX��%95Hl�L�#s$rC��N������㝾�i�|\�2XNX��]��7�oI�bIc�t" �K�������H���(p邶F�|:Y�LQ��!��Ak�h�8����Ikx��:,��������]	��]���|�o#��nV���W����m0�w������?菞����=T���/?�I~Ys^��/�W��3�4]~Q��,�:��?=�]�nw8�/Ȧ�Ę��j���#_�/��2��9�e�/������g`�$L\��׊&�.�XY	p�����������S�H����K�X��+y���._?�����>;����rh������'9M�����U�-�����n�i 1�#�zd��h?�Wb8�`e��� ���$K/A2
\�_)8�]�$�M.J5�H��
����(@�F׃�c�՛#��c��o�F��]�f�^�QlE��-��	 ��"��~sx�:��|��Kq�x#�n�$ĊK���
4-v�anS%�T`q��
�h4��\<� m�G�������@ȅ�Y���zQ���0���$�8���b
N�g���6}�h���y1}-���w���'�O�����1���?����|8�o@�|��&/MQ�oL^,_%HY˛�t�z%>.elk����z�^�F0�6�`e^Zk�8�Mfm�IljJ[U�(��*Zl�i��'��\]�6����F���r�43����IlS����S{[���`(O|=^j��R�ڔU�~+3%�Y���hƯ�%�آ�Ţ������w�$xw�g��g�Օhue�Ԗ�WC��R���޶�>�Y~g_#��t�d�{�XC�x�]��������G8�H4}��
���9�㶖^.='���	�k$�� �;�F}�#�y	��0e,� m���_��`��]8����h��n���:�{��l6P�����kl��NF�O�������8t�Cp�nԤ]� �e	~|K��
�F�#eUZ�Z�֬�6�󵣝R��=ܹ���`K(nwoH�@��[��+W���d{VNʢ������A��a/�7��H�p���%��*��H��Fr�G��	�N�q����$���^ms5�;'!��!�_��?��[�p���r��_L����i��k1�c�����@������'��yu�������]�g���/��rvs:��R��?>}y>x����$���ש���b2��0ǿI���|䥈&��9>0�N0��c�^�g��B ��ہ��@S^%AYfS1���٥�7R�胝���ϑ�iڞE�ٶ��]��w����F]�
�?+Qu=�o6�!"����ք�7IR�uf]H��Kb�w�
GM;�uA2���e��]���B�&\�p�C�ъ¾9�r��f2;�4
G�#���� �����>L�E"0T>�h��F:��w8�z6Uj�L[6��<��)1%L���(�3���=���E����y��|���o5ŊM�.?ےN_ae��}~w�<_�J���<~z�{�Ë������}�|��n=���������f^4��b{eS�I��oV|��c�Y���ܳ�`�㧖^~j���� t�w��%@���X�L'YniBH�p�-#$����6��r�:�ϖY=wע�k;_�n��.q)Q�5�TYm�BJ!*�@�
�����RK/-�FrW)���0��(?%%#%Ie(�S��UeB,~��?�Y4�?�I=|�}�F.��P�'߷Nz�yy?)_��K�z\��g�`���a�gzj~.�zG��y��7L��q�n�h��������9<>MP�/Syi�A�
~���hg{��#KQg����&��e��e�s��2�9�/o�/?��n��������6e�ߎD�#Qt������4��;>�t{ݿ8���>����hr��ߘ/�ػ��pqܿ�/?]�_9>:<���N{��w��8���yHoք	W�.�Ì�r����r^۷�q����4�^�ǅU^�g���� ��,H�[��4��V`����"E�՜�Qo�u�� �Iԝ��uQR����� 
���[C]�pì���ǁU^Rh �����k�28��F�WN��")��*hE�G��:��4��	.�n��?]�<�w,9L�����~������:=:؋�{_{'�� �h�j݁�U�+ll��� �����L%o'i��ץ�q<��Z�q����8�MݮLF˰]��8_9� RD01J���m��w��T�6���i��qy��bt=kES��^��� ��1�G΃8��ֿ���-�����bt�	����/�V�/�_�{�����e��Gz89�8���Ͷ�\T+��c���W�C�L	�Y�����~�wf=,�.WU�4�i"�|�̀��	�RkK�̪9b����l#u^�6/FэŞ��|V�C���*!��\]��^z_�|G%uh�XL�I]�4��_��|����o����$$}�!I����1o�y@�=��@�k���K���!�Gԋ��p^�q���_-|gL�}ĝ�����u�#�n���4h"/B7i�u�3-��'�N�lXN
;"4X�F=�c�ˏ� �I�-\�Z9�4gy%�U�l*O���(��<�%7Et�@��s�p5��h�ʮx�c�.�����p�a���̕B$���?�<�~���Y��v+�v�L���8�0"+v2I@�"͸&���(a��͏�	)��~'���,�{�/�N�LU>� �}��8=Vg�W���>��yb�o�ק�����!�g/�������,���<�V�;V�od�	�=����!ԣ�|���K��|�]��rQ)ä ����P~%O��@P&�z����7�!�m�`pw,m�DQX��Yc�0�x°��E��xCL5�����Fz�5�n^F��L%9-1FE0]p�%-�̔�'�Y���,�#���!A��
CТ�z{���K����ڎÝT>.l��gVR���CA�b<e�M��1�%D��.h�m�abiDT�ϗ�hgxu�!#���S&���F �'a��z��	��`�����*n�3P�a�FW(�i����qC�X�[�`:U�֤�0f�(��՘հ��h:i.F��w��=��~|�)u~0Z������d1{��N�E<[8�}��H���4БЖ������a�Um
{g��n!H�O7=zt�v���\��6ı��#�)�I�)/9��OE��bT��B�����I��<I�����긇[=�q���(k��wF���t�S+vPA���4֮4 n����}d��KV��������\u��0��iRH��D�d�#HQ�"W2�����@����u�e��\�|��⦏14��+���!j�=5]��ҕ�=���:��.���	�Ȑ�ۯuV�^V쾪�Q����h1�Z%��f[���d��� �,l@��
C*+��2f�c-��`�t�ʺ��2��9,J��<���:+dnJ�"�j��s���2��$�t׺e+`B(�����b�\,T��>�n���S����8*[SBe�YD��(5���_�$�`�d��� :�r�fuY5�Qs����5��#��8lW.E�ꉝ�wo|���ፏ���8��0�iaA�$D�,�V�QC�
	.^�5���vY�d�p����.g{J�A{O3O�Kz/8O���޷��6\M?�ғ�~?�y~.�^���7z|���O߯�3�����uv.�O����7O�M�l��*E�W��ё}���t|^��79� �h�3#�w�/J�Z�2�9��*ߢ�򴈮��W?�.1m��.^^ꀅR����Jj�10���af�W�*��,����D�Ŷ��0#E�?îH^2��E�g�RA���2�u<�_1��N��dg���J,q�n�����S��欠<�ɘO.^2u��p̋�n�2�LE��J��3s�(%bQ    8c^TB4�_HU_ۧ�cu%ꮬK�R.�\/���=�=�kf��� ŋ�M�����;���|L��˴��0*\z��sK�������Q�*�i�%�j�Φ�.첪�ݏݪM�0��Qa�_�;6B[����i�\�y9Z�쌇�Z��l]yy1A**j�F)kӔe��UQ�$�V���i�s�!�,W�j�S����>��m+υ���s^
���=�	8�6�/OdJʻ����������ӧ��n{��O�w���l
�޼O��_�����w���A�o� �"�MsZ\b32�n5&�+�G�����zO�F��V`T��O	�[����@\!R�h�]�JY���0{P#�b6��i��4��V�t�n����Ǻ$��E��ıK��܀A
���N{��5�c�p�"�vY a�h��4C4浊�������܋�}/�;�+����5�+�����k�#�ˢ�i'�IdG[������5��|rsu��5%'�r���?\�>���N��I>}5�?�/�ˏ�<�/6����e��iI�������f�t��ԅ��	/gi�/z->��K��g\��z�Q�:�CM���Х�=R������bq�T(�<��x���=��
T��#��������0�;��H��]	�csð�9�^�wxz�¦FUڪQ�W�`��� ��V�-4Ch����2N@��̜����q?���\�!�HU��&��U�8�Y���2~��'T �%���zS���gY
��_J�𢑜�����	}��������>zx奇G��z|G����Z
8�(.bJ0��L�)yi ^��zլ!��	��Յ���k꩔�V?�.t|���+��̶j�0�nRFڶ_��N���s �t� (I�	�$�s;` ��Jn��/�����DF8`�Ee�l9^���?��M[�2��:�
qX�IH����+\��_>�x�%����;��-������N���ᴤ	�#"�6�aYt;����6��;��Acj��^���fZXay٪�$wS�����"����h:z$�s�����0C��h��EEY@hW&����)�lf����YZ�����nO��d�li!��@ت]��bZ`�������{G'�b6����s���	�8�����c:N�?%�>6�����>���������ݎHu��"ō�N�����gZ�4z�>�z���[3!�Y�wlc`fUa�cZ`ٌA�T!`v�T@�S��[�sǽA�!��>�ڎ��=�|0+�>��Q��\?����C,�����a�W��*��aW8�s�Kx59�D����g߯���^|x����J�D�ǳ�������qS�x�)f��������g�eA�����A�bۼ^i����K�0�o [	��$�o8ɕ�m0�$K��`��Qѥ"�܇*�G���[�m!��JeJ��7�f6Ə���NK�l	30G[���l(`�[�<}��%���)�s�/�j�(������g��f��<�q�� [^U�_�R���_(h���E���mY�<���bY��]��[�ڳȝ����p��xӯf�g �B#��f�K���y~����#��G�
Ӗ���rY���J�J�<Q\;L?�Ѥ6���|x�1Hd�{@�|9{�qaH���v$��i������#��w�Q�`��u���� �����ڷ	�_������޹���\b�]p����F���{V�C@�Χ#�[W?w�3�{;���I��	*6� ��ؐe��L��@|A��u��n
����jU�Q�ަE �<��ٚ���r%"�_�9h�Y%v˺K��K�"�T�r�#kퟴV�7,�ɷ�8�a����Ӹ7H_���n������qcw�OQ?�g�i>L������]l�RB�H!�c����j+�:|��.�<��?�P���d��4�%&2���6A�������4Ջ:~\��k#�m\��V���t4�D�~�ע7��^�����A�iD���؎F/�`���^y	�AT�*n^�V5�YAdY&T`Go�>B�I�`���&:%S��A�tJ���Prz�	5�&Z���k�B4���e��\�����3s4���)0
`+q�͂$20�`7r��IDG����q���YԝE[U�������GUӺ�X��|q?(6e�1��Xd��X��4����~���&Dj�]�����=��*�%�F�XաU���0��<1$���%iFrQA�Q�k������{'�vZ -�ysw���A<KI`2�l%�������o��?�����������Ƽ<���ȏ�?0j�=QNt�c6<Ox�=͈�S&�hV,:_f������G�ugQs�6�� ��Q��R��F7�����@,q:�uol��M-���^yi�A\�4�y��E�d���ʓ�B���t%��J�t3���$�s�'9qt��iԝ��)k���y��&�VD[�B	�MJdT�;ΛL���� �o���� Z�BlC�U�$R9K�m5,{Ñ��F���<�4�3;��Yԝ�ZhF���-�����n	�a5X�������$\�c�W^�s 
A��5l���	�r��)_9�[fˤ*(v\U�Ew{6���s�<�o26��a`�B�_�n��P��Hj��j��Tb^P"�}旈cK	f`Tw��j�J�a�h���0���i+����V��l��ۓ?�8�+W%�r�+���y>�������}��~&�ק�m�g�lS5H���ͺc�@�R�0��+%2��ǘ� 3��^���o��|g�"���ゕl$�����t)���d�k���7V��z8�!��`:��AS&�5����U��Q|���a�P0�o+ qA�����hn\�ҷS���Î�04 ����ZKQ*��/�����H�F@ln�R��d��O�}f_ ���qo�	[Q7�c��uPX�A�߀�4�Ο���*�u������>������ErpqyQ�E�tq}uq19��n���G��(�uD.�������t+׉��!��&L0�'ʐs{��~�=��u�S9�^a�%iį�Bp��+Y��d�����¸"�����R�[��s���a9iN��ī{��de�ln�q!R:�s���p��dv2���F���Š^�wxtCe����R�"R�$��`��$Y���L���JY}(3l:���z�,��������"� q�-��pfWsv���O�������A���_g7���$�5�,���g�p*��D��j�);�}����sz��+����&����Krh4�F"�x�(/�i|�����L
�d0d�Ѯ��b��%|���Ld	&)�9O�Z��G�u��v�ܼ�8j�w�	���!��[�e�sV\lqYa/��O��S��_A���a/i<�ji��>U�u��+ɲ�~��B���XjrUX�Wb[K�(�w� 0�6�aN�'�֥�\?O�J���㕗<^#w��A����5���XA���ƿ��'�V�B�DQE�J�|����t0P&�=O'V6p��A�}w���la�5(8A|���&V�)��8j�
���dUS�-�IV�eRV�:-u!Ҡ���|Z`�7�D�I��#�B]#�� 
m�`����_�lҒ�����SE�bU+����L�S$��A�gÄab����Ă��#��w�u�)	��ЃP%a4����+E0:+
�j̅� r�aM�2�Xw4i��ýQQO��Y\��ms)zs)d}YS����M�Z�#"���+�����$���B���#��b$?Ĩ*��KlkCjX���m|�(�۳�=魶$�Ү��4���I�8g��ݪ�T4X.�c�W^&x��&<L~��tςTYV$IU��&�*�7�2�YZ�eZ_,g��a��R/���s�E����l[8M-�[��DK(�H�s�+/[6v��ʄg�IuǖM�*e�@x��8G�'K�D"�4�2���wlَ�'��sLM9���+�5EӶ�'/%�@aLi�xG�3X�=B�^U��Re�=�2�HЌv�j@�a��m�Ƚ    �j!M��VY��n
I��u��8��';+���G��������7X�^���rQ���h�`���E��7���&͗_ěn����ɺ��ޖ���T�`U=��z���!��*�E���I���8XV�R��C���6v͵3�^����������Y�%�ԡVo�yb2�~e�����lw�P���o�����1��X3�1O�L�$OQ��s��HtY*F<1��(�i<�ng�6���4l�vâ��b��t#Ər����Rp�E�4^�������X�7�:���.*��p�t�N�d�Rr�$�����[����s���z��m��p��-0آ4�#վ�/ǺA22jY1�Y�ե�B�$�Y��0��i��(0��TU�Ь {��P_�Ǻؼ��w--�ؐ�'�s�[+��G�?Y��i�3�Ǵ��L� .�;2���C���B��]!���:�� EYi���1��#��v'Qw�+N��7�� ��
7�r��f�pfn{��ɯ�E6���������<��l\��%y���ߎ�Sig_.z�������[�0ͫ��&W��ԤFtO�a.b��+/�;�[h�XhF��rQ��,-ML�����%�]LY�B�"+�8����k��g�f���<�����a:�*�i��+/q;<�욍��#�,S�Z�u�k��ynebK^©ȫ��IU��y|R�f����_��OLֶ0".�b���pc�a|�>&xX�ʢ^�3;�A�Ż�R�c�|��u��+�4�
�Ŏfr�4�Z����c�H��T3rC��$u���[@���4DEO���u:�|x�W��b��#��@�ʍ��X9+���K�9��XV!r]�iQ�ʦ��Z��o;`�4�NCjw�����6����HFys�n
?4;���]y��q;C�_����i�UIZR\������ �R,_o��F���wh��k������'�Jq���������z���
���+Y�8m�����*`7�z��eX�m�O��ە���`��%l�ѮUH�W��ΐ�7��kʤ�F�,�B��6�lV��mum'����]ta�MF-�"��.0;[�xQ��ɫu.����u�@(n{v��S&������D�/w\2	h*�%�s{����a��aA�JIW�
���&ME��J�$�ƪ��Qo6���k ՚�_-��jpVh�ؘ���溧ΐ�-��3%���Ⱥ�}xR���������i(��F��OK�ۇ5�^Z�3*�y��)��`�_���⓺��vўF��.�*�o<UҒĊ�����G��w��������G�����=�����;:���t�z�;1���u?���d"�o�mo)��ٛ֟7�=�J �|۷AJD��������o���y9�A����(!�(W��'�bt��X��4���ȟW�ʩ�Ȱ�f%�⥎��sR̬�������<��=X���huJ7����L�"s��,��W��J��蕗��?��T4��ձyb�L�@��a�'�R�p���N�|
N����,���l{���H��&�4�"p����V�i~x�_����_$5*��L˴3*5�az�[�9GV�
���9�436j}���yY�'Qs�[,����&Z�Z����L,?�Mq�����x�N���O���5�8^��ŏR��#>�/u_�}۫˃�U�ܦ�ކi�����+>�l:Gd����y�^y��*h��~�T�-x�uB2D%$)hXkyR�JiY� ��^6����hw�����BMQ�ܹ�o�K����ƿ�������|�/5}���V]MKV�:>}9�r�8�JΓkzp�t5=%��[p�?[lqf�P�K=�o��w���@Ĕ�4��oFy�Y+=�fy�*���"�x�T���5��F�����I?>�ڏ�{H�[]��/�����X���2Wl�;"d��K����^�\�o_H�����3�0���*�J]:Jk���$�3�dUI�I�ëkdC��/�8ꎣ������ߞ�o�ظ�Xb�o���f��f�ޭin�(W�A�G(x�R�BO�I=�'XL7|�-6(�u\e���Sf��!R7*�XJ�%�V�u�V���JlB��4��p����U5Yzw��;g��=nv�q�t�B�1F�u�J��&e/H�U��啗Zޠ04�Y�Q�Q��ҫ���#�##1�*�Y`~Z��?��O3;��xuǻ"�wLRy�)�[�F�	��p��Q�K�� ��N�	�e��l^y��A>�KXz��.��[�k�%F9�7~Niu��2�e�D=������Dx�S��h�&���wbl���sh��㋐"8�|,��K�n��;�\ͨ�6�i�%�E"i�,�M2��-����Ƭ�_Z�-8�^<�[�z�'\�b��q$&�XG�M~�.d<o�|!�C����v��l� B�̯ntd;���*L�2���/�i�(X��U�(����a����ɤ�d�N4M���N�4L��56Y�/� ��A������ ���+E��qV	�� �E��Y�����	ɤ���xm?���8�;W�l�����:4�4��9�c��_x�`�]��Ǖ�x�Iva��X�z'Ǹ8w�n9�zGgZ$S)-������r>z��o���S������Q����}�b?��㩢�쨏�[y���	A���G��]�<#��eAk#�\0��e�,ʲ�+,���\��t���To�v�Z� ��ٴ�w1Lb��{�c�&�>n����
�L(MZ'(K�J���,�B�,K�0*!�[^��X�_����iۍg`Y�|�
7��8��̅���׿ίs�R���������#y<&������~u��i����������}uw���&_ؑ��(���t�<f�D�k�к ��g���V�����JZ�yf�]ID!xa�*��N�8e�q���L�Lf<�>����O}��,����!�ߜKrM�׫+�����ׯ����}}8Wuv��q<W���r�%i���N?zO��l��<�!��gj�9C��Gݭ���Ʊ�]��a���6OP�� uiӒ$e�A^	S]���������(dQU�fV��vϸ�~l���a��kQN������[y9�a�a�:��d�>+����dࡂ{�1'��<OXIr�J�r���}!�V������SEp�;h��B P<���Rf�n��ϰt�,ޝ�W?�~��_���󧟿��ϟ��������O/�s���N���w�o?�!L����	�\'8?[��R��{�{�=����������&a�֎b�b��In�Q`��2�ҤM,g�3��&���l��Ǹ?5�m|�=��iߎD�G|>��f�rL��s[`���5k�]B�w�<�v>qS".ö���I!�Nm�U�oRb�"���\bY� �,,+!^�t5b1Bp,�竝CH�\��^ܥWk�-Al�y+)�Z�5�m@��r�9�e�0���^��]y9�A\�`���V�eZ��@܏98�H"2�5g�ACM�y��c���N��Z���`����`u��,q�m9)�H���!�����n�W�3�E�X���Fz�n�R�\#k�I�[�`L2NDɬ,
����ɹ��[5�]A�r��[�+���{�Gk	��r�o�!.H7j���ɲ��%M�2+���"�q�(cmU�4O����:~�M_��;������Y�D��Gj�XP���h�jo�/Z��SX�A�FE[�R��Y���J���'+��P�Ѣ��]��ݒ
{+�f��]�F��S��h컢�Ŭ^�q��i2\�%Iq�Ւ�ʱ�#�dbHV���hQ�����^���9�~��v��G��&@s�K3�y��x��r��������Y�H����IYF��$��q���PN���G�V���G��T�J|8	!���!�9�:�ܧ}l�����t�Ą-����<�
�w�m��L�#�1U���eS4H`XW6c��W��    �VA�pz�� y��氺��������b�
ʉ[�6���I�`�t�-'����#��쀏�[{���qL�C�/�h�.in��	�3X�U*��I"X�\��)����Uη.��t\NA�l�gv��gK{ٺRh�6��V�L�̖�+3W�iyyRT�yi�������-�]��xg�K����������L�T���y��<1�"MQ����*�xp`���2��\�Is)Z����S�����R��m�q��A�rBU��Y  ���*���w�0�g ���A
-CU���HOAA�V��DH�e����	|�'��l2O���;:m;���o���拖�X�^OͭBIo6V�{�3�#�h�����"�	�J�y���@��
���I�����7w�yԞ����榔��ޖ�'o�1X��6�&�K��A�ēi�^g�X�thq�5iJJ��A��"���Ɠ<)lIs*���Q��`9Br�z֞D��N��يqX�(�]�̇%"�^�T���՘'��������ӓ��<��/������R�K�|>�|s��|}|=x��~>#��t9󥂐؇mF1�J�U3�Í��*:3��2CdA�6�ݦ��
Y"j�L1w�3��Ej0�('i�:�G��n���O�)�0]�Z���|����Q������~?�ίg�U?>���|�\e���Su����>'�d��<U�H���r���*��Ƃ����Dr�>Fh���EL���&!	Y+�R���T)"�g,�"�6vl@fiUe<ڿ=��' ����'w��v�\
��A�p��M2�q���&� ���n�`%[u���x/5��s����US�ʢ�<�86�
^6������S��W[@��u�Z�V��ߗ|�l�Y���+��L7fA�I�.$�ww[����#%�J���]���p��a�,���r�d��8�Ã+��&:,�:�:�<̧�8j��W�a�3�7A�`�Px�n����~�>�<��c���N��炩ݶ�A�H��<�A&fM��z�($�|��Jk��w�S���-,7E��>���$�N���y+�Y��c'�k���l�lʧ	Qk��q�k/ݳAR1#����c��YY�Xʐ�C&<���o'�D^�UI�����;������a|�l�aP��- SP҂�'Ţ�t�dͧT�~b�cw�^zz���w<�vKl���d�h��[1��,%	W�÷���|xx���7Y�Yԝ�>�A<���AL�5��F�EՊ�J���ܶv��[a��}X�FG3�����N �j#ͺ�|����"�'PW��,��B\��N�Z��V�8��̤"����U�5hĨ=�=��z��ҿ��l&�͔��`�)x���q����R�͛�E[{Y�AVT�,������� ��B�	�Xݏ[u6C�=�@Y��A�9x��v6oϢ�lw�����=��q=0�!�`�f ��iqp��:y᏿;��'l3`�_&���6&娘��blv^��M{��A�L���(��U�
�A3R!F���nibs�+xh�
���u�'f�ꎿ�=[�6���8�{+�j�o�2���m�,��D�� �Ȫ.e���jk/��AB6���U��
7YU&��<�T�¾m"dIL޴�!�P|:�U���]%Nڂ;M�2r����|l#B�K����d9�[�����T� �(�A1	��ڮJ�~W��e &�s��p�K��jD��'K�s�Qs�{U#�<�{Ĩ�0������#U�Ǹ���>�����ײx�~������J7�x`����[�/݈�'_���e�	J��a���]��"�̕H(G�_�R�
��R�w���*:=���n�����yw��@4��j4ֻ�A��M�n9�_N!6�6��&���(���*� }�
1�6�D�ɲ`()�H�u�X������`U��z��ڃ�.�O�a��j��VjH<.6y"��uG�����|��X��w��*�Wk�u"�K��_�xB�ؤ�x�"�ʬ����K��Ƌ�K�"w�{��m�Ȧ�N_W�.y*]{�7�.9��_dG/�d1���ǇwEr���zz[�?�%��^��oIݷ�W��>�����x�i��1m�n��j��5�ۗ��%����mtx)��
r^ɺC�]D�dy\c�s�dy�!�]��U�Vh���Ď�va�s���G��TwN�_��v��Ǎ"/A��|���/�~�]�|�#��^�n�V �%1}g�A�f�Y��!+�����i^h�g�[߲��㝪O���&u�[�d`t�1�����^�DP5|�`l���ms��|�[���$�����D�3a]tlG� �.4�n�is�>�=�Ԫg3E"�=Lu�Xۯ�\E�[�������p9��w��=��q������y�������q"��#zċ�/�8�G���ӭ�����6�9�0;�i*,���{F�3�&����*b�;X�oFM��ɔ���4��G�;x",w�T� Ut3(g弶�Y]�ڸ7_,�^�u5mD��r��a|UΧ�E����Y|yu��,���+�#��{7_-b�����E��I����_�͖Ovj!���x��}���E�
D�^�#��V�`	�D�ڞ���}���׋���7B~=_|;��XT������Y��'%>�*�^�����Ō�y��[|Nd���*���D_��b4s�l}^�B`/�;�yNe����<�?$3E����Nsb�o��D��K1M7y��>��,��vz.�m"W�B�ԑ7o��"=
T��[���H���[^�u�`$�<�FW����"�M
�C�E�t~�Y�M-��5�쬨���	ҪSG����,0R�����>��_�C,A��_To�g��� �K ��[3p�%gf�a���m�^�v��DĠ�a���(	�(R��`Ee&#3<a�冘�XS���f�9v�h��и���`J�Rv������I?W���xv���������T�l�����a%_��|��RiF�����xK�+�h��jfG�BL6�zAQ|���9/�;��p=��+U�-!���J��TB�9A��\D_�������wg���� �`e��������3��o�����I�O���������g1��Gv��{?~~~\��?���U���W�q/�nF�:�aY�>`��	����ⵗ.D�(�[�K�۹�I�Y��#=/�J�,)x�%�����,�j����B�,����(�玃��`{�[5�ܮ#���_`��71�H嵗T��T�0�ݨd�~��U�j3du<���"X1�D�E��z�|�I�H�PP�߻f��?�����������41�鷙��6��qK�ԃ煼xx��7���~y��/�{�����{��iۛ����X���w)4ႁ_M�3���u$�������f����)IW[�4�!̒�v�2��� �$�H˴���'��s��� �+/!)�V��-�赑�|3+F8������l�|���㵗Z��fz�]P(�q.�	��)�g�����d���ѹ�
�w޻�{�W���4Z;�-������qm6��Y<��(�}\�M���5��O�rxD���bz78?��������6;����������x�r>�˟?�O/_�'O{0M'��4u/��M� J1l(e��o7+^��`�7v�x?�-�JhT���2c��e��fH���teYBKdb�\��5�����+���k��j����5;'q�ױEd��?�2�"���V�maK�>ڣ��6	7��6'������Y�
��J�n�~�Qo"�TS��z�X�vt���0��"!
A7�r�ӂ婪4���^�<�W�,��<�i2���!�c�;���PF����SD4�a��F�?�»��D3��m�'L���ǚ���� l�m�J0Yj���T^*ݔ*RFM��Y�׺j>v/�BhI��9���7u����ן0jX���/���;gb3jp�d�"V`��`�f4����",R��G��'rL�a;C��se��5�    �-���c
����Z�G�/M�~|���W�.D݅]��*tm8t͛4<�S���ټշI<�N���A��+tc{w^����ltzx\ыrP����ͧ:��Ç��~��oӏ��s?3S珏����jz >�8�ֹē5@U|Y�2�������p��߳��+�E�^^Mx)\�0��Ү,�ȅ�;Y"�;!�*@d���E��<�F���4�]`�2F��n_�}� ��Y����(��0	ˈC03|�;}t��K��9�7���J��'O@S㖇N���5�X,ZED�>���8j�����EL`��f9��V&�.'H|>C9���w�Y|=BB�X!�1m����n?۪� �θp��ţ}�NＱ@�#�]�>�u��iI���Ep��Va�������jms�M5�Ԁ��\D�����t�"<��Z�;6!۹�7a�4-(�K~��2��щ|l��KDm	�W�h�+L��tex�����E����$�"���T�h\��.-���\�u�v�ɦI�M����`�e�$����Iqz�&I<��I*?�v&�v&�)��2I����Q��lk0�k����^{��Q���b������ʈ��	͌I8�8B�HbZ�,-�("W��~�Vlp�=!tз���zQ���0����?eC����pR����}r�e�����5��G��u�耰��Fl�3ɸF�H,��l�VK��*Ljt{FM������(&ŴUؤ,��p��2:N��i	�:E�Qh��h�ȕ��^e��Um�r֑�n�DB����Y�~��i���5 _p���7R��SE0��B�L�(����O8:�Y)y�@TT�9���%ā��ig�����fGYv#��{�u �c����a>nn�0>����nC�;P�8�;6ݢ$�d�r	��0,���F��9�p�DG�z?�In_�v���S��l��*��ެads����>"�y]ՓG��*h�ρ�~ڀ��!�Q��x�AV��*	&S�Y��w�=jm��3��ڇ�6h��ש���_�i�l�cZ�Q��?��O�Nw��0\!����g��^]�Tr��4���m�@��m��]���� t�K����?f��Q�"�:a�t�9";�`:Rd3�.����w�\��x9�.��\��.���0��ҷ��8(hDm�}��������7�G	}��v$�ʮ���UVf`4� dC��HS����yVg4k(1(���Qw
���^|z�� b�C��y��9.�T6\���Aǹ��_)̮D�C��؎�>���T��L��C�]ףf�9�S�>}���*�(��4(diVD%G ͊&��y�UiR��%h���"D����� ||���{4�-7��ك��.t-%�b�qT�����x�L���d��yQ���?G?^ Xyy��/�`V�Lk���ֳA9��<Lˇ72�X�����I��T��7�+�v��B���k/�;���������"�U�h!^B�g��	)
���2������m���}E���F�3��#ʀO���S�������m�v�O��A,�j��F[h��3^�J!�u�C86׊̡`�t ��o�^����%xwzy6����c_�����a^;ҍ�.�Ur��y��B\�e窔'i�%�r]I�vH7}+\�ܤ�.��UĂ���=F��/��fzl����50�;Nr��hUF�d�H��ȱ�Ѥ�%�LV�h��A���������=�����pke#��:x�я����`���RoS�7��	�-�Fk�E�5�Ҁy���0�!<L�,W65���<����?��qf{������&�J�w���/̱~��?N��0��|T�ٗ{��n2.�|;��e���gy#���a��n���C������`��Mǀ��@�61`�F4]C��r�gK��A���K��9b+�qb&�h�3���8/���xn�I�d|:V.KH����wlϣ��.7^Ѵ���{X���i�\��C`�xX�N���k����pr�zVX;|���b�t��~�_�?��-�}>���x9��}�[��!�_�ǎ_��� a|~틭�VlՈ����Aӱ_��,h�Z!LA�gD�LKW2^���Ɨv8]4�Qsr���!����G�M��j�J��������F�+͵/[�}��L1/o�j��Qƒ|��<#00�F�T��+d�(�F'��d9��E�^}s�Σ������r���d�g��]�O���������Ml�]�0�41^�ͤ�l"L4p߭ͽ�6�͚d]�>g^l9��8��t����� �"!�D�"[����2Mr�!3#gE�G}�.�-�x���2cȻ�s�d�K7z�6����R퓻�������E���ʾ(��%+QҲ�T���j�D��gn�
�T�1���q���f�1���s) �U���A���.8��$G�0�mf��B��ַ��+-��6h��oRp�tcU�+\�Q�c�~n�!����[ǽ)�!�Jz�ZWҗ��X�H�/	NB�xǔ�����uU��� �MR"=x벰Y���bݒ��h�DkW���n{������"�-�)�g/qJRЉO��}���Ⱦ.�5�C;������LD Z��#���>`3��1I��"���{���-��xyo���o��e����sW_�$���ˠy��n�9��BJ�J��DM,�@���<� �����M|��K���4�N��Q/�����/��������&�D���.}�}�������v1���o��p$�o����`K$���Ȏ���h��J��j]�6�I���2/�b7*i+Q�iL���i@�\
��"%���t�`�4�.n�x�N���)��t��h_���M�F��I˩�(�6�l����(aF���˗���jɦ�Y��wb�n�m��l��X߾��b���,m9A��ɷ߸�*�_�O�Ht
�0�B�u���3�s^��%�"6aZ��Pb�̖�`�n�����z&�,Z������d�*R#|��m�0wj�l���Tr�Hn[�X��&d�/f���<��w\��ƴ���@��Y9�%��6a\�qKD�8+��l>�<�7b�������
+��5r����l:�ܯ0��R��J
� �1����ӌ+������
���¾�*)S�kȲ���.��g�K���64=XW�i�M���0�w���\��	J��msz���\�`�GM�U ��LD�	�ibD��l&	�����'j>w-.�1..�������>�aL}P����o�}�_=�B<<����~�.��?�������W��ė�|2J�~��ۻ�����^�a�%ҁI��οV�H�F��Au?a�Q��P�h|D�X[�r�x�nW��w��%��{a�
�؜ �-AT!��|9BP��!�ug]0����M�4�c{���\Ep�M` Au�BFHd��A�Q8�`|��63� �/�J7�:έBQ�/U	�|�]Z$J�Y�(+�e��JP��c�b5$�,V�-r�L_J5��������/��u���ȸ�6qq3@����a��r�3�Q�6)���Hb��Ѫ�T��щcx�_���B�wy7/h��\(�h��J/��|�lBK���m���+��'jGu[>��hQ)mMhC���$��p�*^�"'����ŧ��.+w��!Ѱs�}�H�qv[k�AL}
j��Ӣ�����]�^];c�FΟ<����:�Jg�2�)cu���M��M�tV������v�\Tu��/3W~�.Dk������F�6�X���7�ۉ�^���Uo��;(�
1�;�4�<y`C��UL���LuQ��=�v|fG������|Z�_��K�,#Y!�a�&�&�� [��瑼�s���_�+zy��˧���E�Y;��������a�2|�|��{��,�9!۴�N̆�����K(+AJւZ�X��83E�T��PؔJYD�G�W�_u{��u��G�m������r��Ll�a�m\�÷�\� �Ǣ����ޢ��z*�4>^p���==K�]�=� =  ��:%A�eZ�$���P$1�4I�Q�bX�|`�Y|].j�b'�i�:��%pk8�dG�X��Cm���뤘{���4�^�;^�/�'��'�[��� KM�����!1�5XD��k�{�r�K�g���+knI��̯P���N��M�����S>;6b�(@�:�ö��7���h�gfb���AIVޙ����+��0��I!��ϱ��j��0���dm<���+�J�/؏,�%܋,1E@�"�\�?��|e@Ul!w汏@��m�+��P-��Ą�X�0�i�b�=�����u��8�T��G��>�����<,�D7&8 P�/�Ɖp)����۳��4�������0�qw�nZb�t �RfKqЂ�F���Pxf��e���^vZ).�a!|X[�WE9�1!�q��6��(Ep�H�	'��X�&B����β����������� giU~�+�ᒉ����5XJሷ������~�ŷ!η���n�����ӿG�bfLU��v�c�N�+^q�WE���y�CF0X|�,����W
:=�F6M��j�'���Ag��D����,����6q�
CX����>�|����U�A�v�V�*����%��'� �/��G>ƾ@�gd�Ts؋��t����!���t�_�j�ޯ�y��Š2
�^�d;2'*N�����h�1�3��r��v�a�}L��t�&�B�k��:'	�H���A�0��������℁w|vѪ�[g�������x�m�$�f�T��8�m�JӐ�sv~a@p�_6����՞nRmO��-�b������SL�B-<��f�lܛ-GAULS� ��>yN_���*�<��a*C�^,��g�Ʉ�#�e$ ���8��16��'^yr�9�eB�,矐����nI[�[��t����{Tǒ�[u#d�#�>�0���Ƒ��.|Z��l^����h`�Hx`�11�����(?� �z����Èx��:�U�)|^��+���2aX�T8��W��Ev~2��������K��^7�ӛM�@�?��Iُ�x'��xJ�'W�>=�chp+2�H�~��
�(�[�Ā��b��m�P]�GlugAs��ʔ��>`�0*���y�?I�f&*��f9�f`���_��
��+ќ�S̺�d���w�~r�t޵D�os3����Ǟ��ҿ�7�/���C��2Ɣ�(_T	�.�z��__p���n%�K"պ�K�8� �i>��?
(���Q�Z���y�f�f�����x<����E�T.^����^���4:�^�g���>�X�L={���u�;)� �;^�k����i�~!#%�L����F�������*�ܐԄ��8��M��K�����B��H8|�d��gF��gw�9&Y}uu��tNw��d��v(`C*���rh�=.�@��-V���B �V�G�U]:vX�ob�M8����&ul0��8��_T����&/K$�O�l����d��P��T���g�qyx��9A�Vš�ղ��0��4J}E"_p�$`���9kiq�z�����3,��.qH}~�۾tP��F�W��E9���RT���=V�N�ZuѾ=�?5�8�0aS�y��x�fO7�%����k֦�:�>G?�"n\G����m�<9�X���2�nS�[G(��i�%瞁�𢃹��]f�>Ly��2�A�,�ղ�]����Ć�S��QJ������R�����?�ܴ__V���y��zz�_mDr��ާd��㗼�mێ��+W(��Q�V�V���T0�-NL���/��iHRK�@��;�uA�}��~�(���t�G:�\Wn��5�(D�c�k�����?��\�+�0|O{��A�dz��F7�f�?\�g�C�o�/n�˩tiU��m疵`�+P��x�~�_,��I��j��Pn�#(Oed@ �Xi�SP�VǾ���+��0�O�8�:�1X�^w9�F`:��_C��K��#�m߭ɋC�!
㢂m��8."Llx�$c{�u9�-�F#��lQ�Hs�hci��@87�"�Z����V�0��E��tB��-i���88�6�f/݉'^yrP��;&��*G�e{����[����,z	/��Ud�7+���f�Κd�r��\���F��Ά�_O��8�;�����|�ph�Y63=3_��p��+"�D��:(�+�m8Ȕ@��0	([������$M��xs�gj��KÊs��� ���r�:8�#<l;������*��=�Y�L�aC?�HT�|=��>����&7�����UE'��>iNGIH��c)WI�E`���F`;bj���V�O�� �Dy�`�.����A��b�T��I�鵿�����&B�7��!y�o��Ğ��ϴe�ۻ�?o�\�����m�uq����l�N@�������4ܕ��Ĵ�7h�;S�#I��މۼ�XXP��kX�D��r�b���}�,X4"�|`տ�&�Y�"
��Ǔ�e2Kƽ��V�M��Ĳ�b�s.y��c��t9�m��F�?���,����K��o��~.l�����C���0�0��0
o�ϛO˷R)��p��.�I��H�qZU���Տ���&1�{�Q���0�il��&#�̫c-e�l	B%?�����%ן84\��a��
thjq�Px�zG�bu%��,R�,@D3|��<L��pY���E��Z-����бM�/h|�n�J"�	���ԛM��laj��0C5�>��sϑ���0 �(8'�og�*z-��Z����'�jO�N l����n�S\>V��^)A�CA9�]<�ט�!1X�Z)�Wc׵͟G��r�ª����r��T��$��J��WS��_R��D���Uh.�˂'�RUY[���Bs�&BV�R��3HJ&~F��I_�t���4�2��7�L�pX~ܺ4��+�9Z�t`Eo��=�D�u��߿�zo�Պ���,������n��ӫ�Q3Ki��U�ox8R����yט4G�3��r�c
m��
�B�q�h��y�JC��zh�����*+�g-
hʁ�U��H�_����A��$É���)�����%AK 7L�!��w|�l&�m\#��l�;�<(���M�N�m��z��\����#�,����h:;���)g���D.��ǀ�P�s3����|^�����L�Ri���4C�����m��Z��C6���I~k�sy���s$�t�v��:���a	�$@5���4"	��Nb��TE�6t��ޱ|z4��yx��D�x ��[|s��٪7��~"�@��'�n}�У�=~�]4ڭ�4���s��d<{�<����l�����V]���7>��T�|�GRWs��%8}w6Q���
��Տ9<X�,(��H�t����Ӑ��hj�H�E+k+?ޏyv"/+��7�;�F��Z6!s\D
�NQJFCl����#͇UYN�Ժ��7_�,���ȘS*��Z�oB�}+�2R@X�.g㼰��]f��W��ޭa������Cw��4Bd@��=���=A2U�.�v��r�"T���b����0Cl��v#F���/1ז �J#�_-�儁Co}�E�I#�4~�澾�����;�>��������V�Qv��zk���9\6���d�ښ����mҼ����l|	!?�-�F�'��gfn͐VW�B��'�)vJWҟ��%4Yi�Sk1���q�G	����<����H�ߖ1�YK�j������A]�ԇr�
^fN����/�N��,}$�����c!P�\`�X��$C�YI*F���a��X���
��c3cd��A{�82 U����f��o�`��_��H��[r���ݾBP�"^�r}�_�gO����?��KҖ1            x�}]K����^E�AX�גqV��#U%[.[���ѕUɴNH5�?���c������'�_�Gn��GchIA�����X���o�������kG�}0UA[�^u�T+�4�X--��}�^�9W�ZkY��8©|iv�j��ﯭ紫����RTU��v������?TǑ��U��{,� y���7�*h,ѫ��j$���0�]3.̈́i�t��8�c��@qX�:b�P��]�*��BtY	�PMK�U� ��Ǵ�g$��$��c�/U[��*�>F;�
�-��*��Qba��>�+�dW�w�>�P'����ߵ�2���+��ؙ���?��+��^K� K`�5�T���(�����Pͽ�}��ieZʫ1��5љy����B��<!f��Fxϫ��K������m� ������LҀ�q>K��xZ(��'��1�����z?-[�'K:�Dhh���zX���K�CU��}ִZ��|(�(S4��]pd�.�Y	Z��ڥ�PpdUiu>�����_G�4-�� E�ZGV��|�RЏ���K GV�-���Д�>����N'EKё�{��5�#��Y�!�(!�]u��"kH]ʃuX����3�W�ZQh	/$��a�D�ª(���[X�e��ZX���k�-��Ku-��B�x�
>T[|O�_X���!����S�^X���Zcm!�]u-��B�xҺ}��vռT	/�V������^�KE��<i���t���c���J%V����u��FB+գ�vh�=�k�6[R^#_Y�������Fb+�xl	Zæz��Fb+��ؒ�k+��Z���V>�Gvt�W�^����ztlc�X�TIlU��5 �^�<��^��#Rz�� h$��l���j)�}�w��j�L��;�3:���R�����{V}tY�w�f+*��X}tY=1Х��]u�@'��ca�8��
�N��󘂡}Su!�I`����m�jt]� ���R/mT=�g��ϸ��+ɭ'�ߪ>�:,�0>TG|�-�#�"k���*I{W]�5@d)/���oUYD������(�P�T�� ��W�[&���kF� �e<�V���� ��������ώ�?Ck��2�4�<
�X]l[)�����n�eq{�^����6��u��^Y(��/�x�á��X^]�@��<��XM�o1U�ځbKy�A�jϭ�c�KŖ�d���1���) վTQl)O��-'��>c���R^��X��z���v��R�<-\�'����*�-�ՐHlM�׭K5/U[�����^�.	4J�i�O�l��N� ��z�xR]J�.Z�(��4J���Q|�T�Z8��l&ɮ�D}͊��UlK�U�Ei2���so�U�<H�5��_���,ŕ�k[L�,��J,���Jd�e�L���PX)��5�D�6V�X
+�PI��6V�X�I�%�8E�N,E��$�?TC�M楺K@���>�kK9巪�-����a�D��v�5����,��u]�%����bqU)�qW]�5���YRW͡n�y�Rš�5�����
h�Ԃ<�����H/U�Z��x#���'��>֕[�CyA��|���]�~V8����˷���ԂL��X�}+x�ޙy0��Ɖ��Yݙy0&o����q@~��̂<����e���U]fA.���Z���m֥z�+	�P�F��u�dØ<�^{�=�]u-Wd�0^-�ceղ=,�Y��h��?�d�m4k]�$�ґyn����<miȆa�PY78�_�>a!��bb;�����u%,d�0�L��j:Z�U�@6��kiP���W����x9�՜ۮz�,d�0^�h2O�NYȆa<��^@��W���c�*yKt���U]�B6�J��O��]��W[�+i�q$0��Ȇ���G���ҟ�k�"����Q �.����Yȇa�>���#�U]�BF�#{ǉV��v�Ȉ��Z��a���f?�s1��z����R��1���A&�ު>"#��{Sx��5�4�5d�P^;�G��Ĵ��=�$�dg�QmqS�3!2b/�������L���K���N����3"'��rc�����^�>"'��J�h	M��L��ƫ�ሠ)nO�eB�Ę���,�Z."#��Z�P����<�|���k��/�� �amM��y{T."��5����Z�{��җ�������un�e�lȅa�x�R��U}nE.����,��#�̓�0��{�1Q_���=ِ�x#�,�h3p�+�+Y����hn��[��x�H4(Z���s+ra/GvB<Ѻ��ԊLF�gEE�˷��R+ra�zm�P����JBK�$.���Kt���P^>��m�9m�ʥV��0���x:6U�[��x������p��0��
����a��l���XeZ���+�a�썎���.Օ�#�ԭ�ޒ)��ԩ�J�y�A���?����m�J`�$՜���B+��0�����bs���@K�V��	�k14��m�_�ڗ*�a4ݥ7v<6Q�M���RE��~%D�OԿ�������f �0�O_������خ��cPl)/�]�����S���}�����jh��kO�����b��J
,��ܵ7;tk�(
-��G��T�>4���ݠ	CYq�M��)���Ci%�Bh��{!��P^�G��'C��;�`�Si|��e�Ǹf`,UW���j��}��^�C��{U:Ѿ�u�Bz0�72sKLt��k�:�`�S����<���u��0s��-\3ԡ�x�#��;�K�,UƋ�|Tx�����V��Lz���-b�n�C�}����}��c��zwC�0����VE+PmK��V+웇�>>~�T׼B�}���I�������:�aO��34�m��;b���Z���:�ݻ��'e1�Ca}����5M�Ղ���﮹��m�s�u�2Z<Z,Gz՗��P^�jd�o`�	���V����j
����w%�6���\C�6o�T׺�6����`��@��ja�`��6��@��teq��{a�J }��pl��˾TW�F�u��|����@#�����D�^s��J ����y�4�m\%�N�����5����*tb���O��5�Њ���x��+	@#������ �އ-�\�F��4}Ā�u[WZc.UY�w�#�}�D}�!�l��*��񓒕�o���Tt����U�ch?�ٛC��`諦�//QX��I��;8�G�in�Ȉ�<�J�D�����/�Ȉa�������+2bo�Z&����
,d�P�T;b8ѺO��V��0Zd�6Q0�wyE6��8�)���R]�l�k�87��oY�DWuE.�Ѹ:��~T��"���Q3T��P�����񱎔C�UWfA.��B�&Z���\uE.���d��Cu��0�6΍?C����LǑ�= }�_���"��$���*���"��"V����"���An�h�P]qE�v�t�u�+�Ȃa��xD�����KVɲ��*huu���0�Ȃa��������5U}�B�5^Z��P{_�֑�x��-���/F�ȁ��r�{�NԹ���iE�eET����0�Wr1�D���h��@�L'Z��V+2`o�����g�+2`(M|�j�.���=�$��gDEl۳r90�y#(`��R%Q�J!�b'����+d�0^c/�N�lcu�
0��1c:ⱍ��+d�P�2r�z������ƫ���}ˁ�b!��d^���
NUW���x���y��2�`!����Qx+�h�R�+X�a�B>Ԟ`�۬j-�D1O�>v��DK�) ��E��By:Z����T}D��I¦����.�XWD�5�:�D3��5�Ȁa<�E�����5��}��*�FW��툛�]���x9�c���=��"���
s�L4����"���k��ׂ��ߪ�
"���$��Ģhݞ����}a�Q�9Ӊ����2��ʓ��S��c[�"���B&�}���:E�����Y$_a{Z �  �"���
��O��m\!D���Ȯ<Ѵ�W���x9�^X�ƺ� r_���i�q�W���x��(R�Ö�]%D���c/�mǞ]\%D����/u�u[��"��:����{	4W�����]�6���J�jY֮��+z�A�u����g :�K���J��aZ��[��*
��^8��غh��:�����+�	��_����a�A��':�P"+�d�r��D�vվTQd)/�D�*���>��2^b��Nt��x� XJ�&�c���r����#Kx��r9�TW ���
{�:Ѻ=,�bd�0^���д���bd�0�,����ίß�e����`����z��/�7����z�S�n1�_(O&�������;���F���	��mZ�c ����A.���	g���JB+��苡��,����yT��1ջ��a�Ʈ�5T����c ���F%���Vs��c ���b`��h}W�a�0^�U[���u�/&���N��e�˥J"+ˮ��-�>v/z&��*��~�J,����f-V����M-���^�,��U���Bx���5��8�#��*�,��ĳ����u��ž�l�f���Rr�>�|7��!<��g�D'AU$9�܂�«Y�U���΁���ٿ�RE���r��P��m]�+Z�!<��ĉx�͋��@��I�!��N��G�"+Zua��D}ѾT�gEx�1QU���c4��]���"��Ԥ@�:Q�d�a/4�=VY�g~�����xغ������^��Nq��I�����"��ZE&�ꮺ�0��Y}5t�W�Ku�+4`(O�m᪡�50U��.e@F�EY�l�6Q�#'z?��i��R55C|�ƻ�B��rc �h�K��hA��za�c�qW]U0�W:��x�է쨻��Xqh���2����k�Ё���gp�ތz���K?:0��";4�=V�n��@��Rf��DY�T�' GVT���X���U���j�V�����m����BF��պ�[����s���x��5ָ��x����Z��>#+���Rő������1<h�P^�/	m�x���6:�#�r̙\�0��[�_Z0�W:;p2���NU���Cy���}�V|=-��^b�!M0��D��%���s����W��Dt�h�Hjl������5�W�
-�+�q�h˛�[W���^p���]����KEV����S��F����n�7Ѕ�E��`��Su�c���޼@FV��Fu��]�#��:#ܪ(��J���������Ғ�TQdeiϏ�<S�昊��}4]�>qgN�g��v@�]k �0�<�PX;8Qo��a���ІQtۗY3`���9۞(�ӊB����=X�6t�B[����Z��7Bdw؝�/ZY��a��R�~��U��}��z��a�E�����OF�>�w-hè� �����Ѭo�[Z��hè?i"�~�D��Xy�<tb(�Q���է��2y��P��d媏��Xc]{M�Ĩz�}d� X���@'��"�d��o5���9�Cy��'Xv����a�y[>IX�Fy�<�a����h��bE��4� �ZʱM�{�m�k�kZ[�֪{�]J��:��EKu5Ѕ!<����D�h����Cy�����w�WOЅa�N~��D�g�^=A��xj5�l��_=A��u�N�����Jy��2���S^.�M����a=���ry��0�D�D����S>�Cy�#���py�<�M g>CǾ֛�|@��!]�����z�z�4a(�f望�6���|@��Ze]��-蝹-UZ=��!���emQ}܋'�$���go3&��K��ye<	>��־��.UZ=%�њ�h�꽲Hh�|�����O��V��0ڹ�&����R�Z�|@��~,�R���K5-UZ��K[N,��� �0��v�:��^�w/���0^�(ۂ��i�f@TYh��Q�d��nD���)���=���(���PSt��T]�����RA�ϣ����Q%�5�A��?ѾM�j��"���8���-w3 �$�Ff�)���Kteh�P��u^
G{�*����Wh¨?�1k��iW�
@��
����з��V z0��� ���}+ M�����;��V �0�7�]����U�	@���m�P�����	@�����m�j�' z0�'ٓ�|4��#���Z0��/z�s���]@�����b��`~����L����_+�/�V>E���Ͽ�D�ڳh�R��z�Ѐ!<m<��6eaW]�
0�G���@u�4`(/ЏH&��U�[@��b$˜h۞��-��x�w�����
��h��mW]�0���m��Z��������>;?�h�P^M�OѺͫk.�Cy����|���=�,��*X�.�� 4`(O�ҏ	�{��4`(o��2�G~�]󳻀�I�ᝠ�m�V�^@��>�0�qSu�4`(/���=�m|{ʓ@�AP�ڲ���t`(OO⸪�i��Ё�<	I�^K)�Z�������\���.�*��3��E7U��j���]���zͯ�,35�q,QYE����j>x4ڦ�x�lh��?;J��]��u���BY�
�r��tC�����h��RV)��x���QVJkԃe��	�T]o�E���ze_�L�ocU����ª��4v�>�G3ܭm﫺B��^ם�)���c�jn�zw-��zY�&�j?�?�D1�-'C��l�e7�ŀ���5j\5T����c@���"��L�oݯ����ƣ�`(�v�V�{a�ʼ�N���_�
����19�}N�-�^��t�� �+UA���y�C}a�TWa���Uv��D��ͪ�a@��F=>f`�mQ��^�_���m�'Z�XW����%��Q���R�W+�.%�?-E���v�z��ZX0����Tu;h�P^��L�ЄTWs�ƣ�N�mQ�v�z��^�c��{]�+@��Fb߽N����:/��C�'껋��v�za<�e��-l��0��By!����iߪn��ʓ��K_�U��/��.s?���-~����� ���N-~�J�~��mK�~�ʫ<c��;_���^(�5���Xm�r��9�14z����ekw�B����uY;A�C�.��PQ\	-HY")@��J��o%>T	/���b�J|�����REq5~YJ6�r�����wL��Dʥ��Jx���J����ő�V���bHc.5�>,E���~q䡊"�x�h�x�<Uuė*���������[L���-Ӱ����!�elC�Al����o�-��?�!k���2�Gh��>T��:yׯ��_����Bk���������k�����B���TC�"��%ܸ.���j�p�n�5yz�$����.��3�[/N^���6Q?����i�U���_���ߍ'��S������oq%��ӟ��=�B�� ;�Ы�.UW�����
0�qת���PEq���Y.��:p��N�?������!��            x������ � �            x������ � �            x������ � �      �      x������ � �      �   p   x�u�A
�0Dѵ}��K�HK���c����	6��3/Pf'�i8�c����x}����@��M;�̫��I����S[�h�I�x^޸ �J��儆�gM�5��Z���;�      �      x�}�Mo#7���W���!~H�r�q/m{] �g�Iq��_N�I<���}�= �W(<�#���ݍ�����/.�V���2���!�Z@����|g>�:�ɾ���џ��??=�����ǿ�8M?����������K;?������	��L�9��&��'ݳZ�q�"�s
�=;u� G՘��c���TZ��A�F��	A�Y���+ё������D�`�޽��Gɿ����7�j�m�bړZɱ\n �2q�Q4�����(�BR���E:V}�����D��h�y~�D�����\��|E��s����m�!T���u�q��5�o�qh��q�?�O�d[�Z��٤�8�:��񈐚��Xk��W:Y�d�Ɇ�־��]��-��f�a��E�u�4qḻK1�k�_����86n�]p��KUx�u�Mj�Q :��mΘ��M}�խk]XtaC'����F�]�\��ȭ �9e,���-{�:l�RW����E7t�t[��O�cJ;;W�-)�2)W.�E��v��As�%+�K���Z��N7t�~+���QL�s��:�Eg�?�r���&�%E��b����^��Z�]��͹�5Y>%o՝���r�wb���6��DKu\��n���i�E���v�s����x��;߾=sw�7#R<9��[.۠%l�[�a7��j��_Ƙ|�G��3m+\�Z<4�QZm��x�J\���5�h�'f:�m���sv�n$X���+��*_����mP����`�e ���5:}�����s{���N?��s�~:���d      �   D   x�u���@D�3T��,t�Z,���Z����!ȁ��y�cXg�����#�h��tY�m���E      �      x������ � �            x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �   d  x��S[n� �fS��]*Y�1)a-R��%��Į�����������tbJ�Z�a�8fG�9E��#3F�C!��wȯl�ݛ�yO߹{=���98�����V']_�)`��.R�<����:N���0�+�I7��Y����+z��	����Rj}r����N�1=ȝ0ޕ9�?��)P�u�i��ҐZ͘3���FΈǬ��16w�����]2�JJ���e�Z)d{��!Pa�:��6e]e,G�%O,���g��%�+7"^��vK�r�Yg��/P��$��Ò��,摪Z-���|�}��L��O,n��3T�ƴ��|�����p�P� �=�      �      x����r�6�����}g=$��g�����,������$m��R���;�,�  �!�k�~��<���#�P�0�� |#��?(9~�|O90��$�v�2�?� ���1��\{
�!C ��{�n8b���i��-������27ܨ�w�30κfCo�:w����@�e(��%iܲ���Ɵ�ޝ|ũ�BD�Z��u��ُ�0M1�oO��|��UEag�(���u��ß\�R����,^R�GJg8���p�X*��!JD�9v>`a��~�\h�d�Ѕ"���\¸t7��ƞ�!��ZB�㩮�|w]h�<�S:|?��hO~��q�ܹ4���P��t�9���9��#���/=z
e� &��E�u���)��@E�����[��y~~Y�@Of@�i�PV��'��(���(��?�	��<2f7����q�!B��_d�6t���r~"Lj����5]�Q|$��p%�IA��+F�R\5^��I۵��8��w��ջ'��h�z
|�$C%�T[¸��p����`�����L�����Yr��N�(yRg	m���`���i��85ﾽt���x���>�55$��Y.Yj� ,1�fLb���F�K,+�P?	�C�P�l�t�2�[j����Jk�X�}��FZ(��c�X�(ahC3��M&c�?+8��F����𛯸w�Z?��2Ҍ�;Ȇ��^�4��qxY�N���I8�!��;%h	�����׆�N����u8y��z� խ�E�E�����P<U�R��a�� ��m��÷w������Z����z���6̿+[D&�Z�7�A���jF�*��B����;���M������VF?]����� ��v�F
$�JǝnN7'��#�S�2���VJ������Z��u'F��Z)p�ql(�f1�3��ts�\
�H��/�a��c���Q�_k�4Y��>ӌx���۫�9õ^
���y�~m�����!_���8�c��n7*6T%��k����M#����Zwz���r�B�vSi�(mRnb[h�E�n^v��:��#3��]?��-f�{�c�I��!�=w����q�6�=R���5���i�ėH7��
� u(��DYP�sz ��q���&9KUP�->Lv�Lg������iEpj�p�m���������[��<���y`�)�կ�j�]8�'P���_{�⸥w��Yd�=��u�r�6_�a��[��F�S��@��6�b_�K&��S'�ڿ���K���         �  x�ݕY��H��3Wq�[X��fl0��0�F-Ỵ����͛��Tu��V��|�D�>̧b�0��tFLפG�E=й����"��J�̈�f.���HN��d�G2���0�)pպ�@�;�nϱ?#I�# � ���
#����l�M�x�&59�k[�$C������-�o�{Ċ9�Ke܋�.%
f�D��/��x����O(�Cr�P$������q��c��i�ٱMU�,Wsk���o���}���o��� �Be��n��D�$�V�~\]&��?T��b�������vq�"��4���q����?��|�DWߝv����5rMs�&�$sV�n��鯶������n0���u�r��K�	.�~i��AL�!�`��mBe��s�M�V7"B�M�|ޛT��(�����z!;�KzP���嘛����@Z�?;�6T� �S�)d��,� ߨw��TX<�����:ڿnCu��d��ް�(3�>�E��&*Ϝ��)�/'I�#lA����D�D*]^�/E��_&�5�O�_�<�lD�-zǴ��.-$s�)�7����<�7 ��"��?S!�f���7t]d���*�*�_��g�=.T���Z��Ic���P�J��˼K�����ME��1�Sh�h��5^�����II6�z�Ì̽��\7�uA�*f�YL�Յ��r��ǀSV���o
s-ϕ(Grn+[���Q����;�j�g�Z�g1ˣ*���lŁ��`Y^�"�� ��;4�L�ѱ�n���.g ��;{E�����A��]R��L��$�X��v���n�40�j&�4��1���XZ�u}�S��v���b�����x8��B8m��X�ɿ��t�H��n�8�2_֪���)������$���*���˚
~��2��t�]6S +3��ڞ;���9�ȵ�/�U��{���_bcR
�v��/����1`����Tdf��O�|sǒ�a���K�j�]���q�y��Kzr]U߭�h��%�\ݴ��R�vJ��j[��n�d(wv�w�����i��J�7**6���j8�E�P��(��([ө�ہW�ߎ1��v�2��x�n8�������	����U�*���fm֕yc�k�4�������T@5��!�T'Z�˞�l٦4��3�N/ϯhw�֌�����<"y�7�b8�kvq�)�K2�V~BS95�ȫ#���Q�_"͵
������~V�c7:�;�o���c3-������H�SxC"H3_ￛ�߿�쪨      �   �  x�}�O��0���SD�c���ϭ��=�]U����n��MPH�����.qbH<����7�ɐ"��^#́����D#?P5�2Ƃ:d�ng�alw��mvG_4�0��r<dO+�[V�&�B�rQ�9Q~�:�X�m�6�L͂pj��H.��I�IU�O����6n�� ��Z1F@�IN���϶�X[��G¨��%1Q���ci���쾫��ޖΏIo���%���&�"S"M<��]i�|_�/������ϛ��M ���zF$	�$GU�b���zj9�!��-�	C� =��
[k�ڃ}}OMU0}k�*��@%`�\�OW�~����f���{ί��:� t��gU���Җ6�þkˀ[�n�	CI�2ҋhؕV:��j;x���GM֎LA5(�d�T�8����=t�M�Rg@7��,��6�t��hc$}?���B����6l`5��x\���<��Rޚ
�&�fxyV9�7؟��Ɲ�?Y�u��E�$�XpEH��;��A�B`���]X�%�n�?�;��IJXAʸ�)Ï�S�p�1��v��;�0�83:���Y�}9D�+�ý�����ۈ�~VU�n�7����'���
���B ��9��W�C��Z_\���\��
��Z��'�Z���p�E      �      x������ � �         r   x���4202�5��52P04�25"=sCK3s#ms\��� �μ��̴��Ē�����������NǼ�D�T Y�X���������W���XTʙ��B���&��\1z\\\ �W"�      �   2  x�u�I��0е��,�š��F�	rD.�/l�v�+s%��~�����o��4h�n��XF��b �p�	�bt��67�Hx�����}Q��+/�l��ꑚ�p�4�C��j��SǢ2)�l�l���뷕9�4��=�8�1���R@��E.кS��|�y�ru㶲��>�{��dS��A��CRa`�U�>0�l�����5#�?�{���fF��z� �6�J��"�Nm�槫�o�\�.�Vv&s{rW�|����#�%� �P����k�V?]�+˷�#�,?�+u<�
+%�5ݬ����~eӚY��8]���r~�Z�{��R�4�j�:�����2SĦդ�g�����m�d}ē��z�r)�Y���vY�:\���uv�\7��ͷ�3��Ë�N��p�:O��	b2J�.9J�瓑��޽T������l[�;j�Д�:�u����n1#�d�������!O7t�r.�<Ǆ�t-��d�ٯ0�(�Ξ?mNW���&L�;:O��s2^mmL 3u(�Ф԰�\�~���y}}}�=�B�      �      x������ � �      �   �   x�uͻn�0���<}4��c϶+�Ҥ�6��B�� 6���!��/��jD�е&\�^4u��#���_%o�j"#H��3���8$��vY�2�Ji羽�X�}�����>��N�"�f6)�\Ak�;\	b�P؇�sH�)T��W]��u^�7Y>�6LO?���lp�өT6���J���8����go�1�䪲�6L2�A��:O�c�dڞ�{�4��vX�      �      x������ � �      �      x������ � �            x������ � �     