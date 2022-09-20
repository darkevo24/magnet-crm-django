PGDMP     (        
            z         
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
    demologin integer NOT NULL,
    cdd boolean NOT NULL,
    create_ip character varying(32) NOT NULL,
    medium character varying(50) NOT NULL,
    campaign character varying(50) NOT NULL,
    term character varying(50) NOT NULL,
    content character varying(50) NOT NULL,
    gclid character varying(128) NOT NULL,
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
    source character varying(255) NOT NULL,
    source_detail_1 character varying(255) NOT NULL,
    source_detail_2 character varying(255),
    created_by_id integer NOT NULL,
    updated_by_id integer
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
       public          postgres    false    204    205    205                       2604    36291    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    36292    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    36293    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            &           2604    36294    client_client id    DEFAULT     t   ALTER TABLE ONLY public.client_client ALTER COLUMN id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client_client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            +           2604    35944 "   client_client_duplicate_suspect id    DEFAULT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect ALTER COLUMN id SET DEFAULT nextval('public.client_client_duplicate_suspect_id_seq'::regclass);
 Q   ALTER TABLE public.client_client_duplicate_suspect ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            *           2604    36295    client_client_followup id    DEFAULT     �   ALTER TABLE ONLY public.client_client_followup ALTER COLUMN id SET DEFAULT nextval('public.client_client_followup_id_seq'::regclass);
 H   ALTER TABLE public.client_client_followup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            )           2604    36296    client_client_journey id    DEFAULT     �   ALTER TABLE ONLY public.client_client_journey ALTER COLUMN id SET DEFAULT nextval('public.client_client_journey_id_seq'::regclass);
 G   ALTER TABLE public.client_client_journey ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            (           2604    36297    client_client_schedule id    DEFAULT     �   ALTER TABLE ONLY public.client_client_schedule ALTER COLUMN id SET DEFAULT nextval('public.client_client_schedule_id_seq'::regclass);
 H   ALTER TABLE public.client_client_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            '           2604    36298    client_client_staff id    DEFAULT     �   ALTER TABLE ONLY public.client_client_staff ALTER COLUMN id SET DEFAULT nextval('public.client_client_staff_id_seq'::regclass);
 E   ALTER TABLE public.client_client_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    35633    core_history_syncdata_magnet id    DEFAULT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet ALTER COLUMN id SET DEFAULT nextval('public.core_history_syncdata_magnet_id_seq'::regclass);
 N   ALTER TABLE public.core_history_syncdata_magnet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    36299    core_profile id    DEFAULT     r   ALTER TABLE ONLY public.core_profile ALTER COLUMN id SET DEFAULT nextval('public.core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    35606    core_sync_data_magnet id    DEFAULT     �   ALTER TABLE ONLY public.core_sync_data_magnet ALTER COLUMN id SET DEFAULT nextval('public.core_sync_data_magnet_id_seq'::regclass);
 G   ALTER TABLE public.core_sync_data_magnet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    36300    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            3           2604    36161 %   django_celery_beat_clockedschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);
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
       public          postgres    false    267    268    268                       2604    36306    staff_staff id    DEFAULT     p   ALTER TABLE ONLY public.staff_staff ALTER COLUMN id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);
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
    public          postgres    false    205   ۤ      �          0    35492 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   -�      �          0    35502    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ��      �          0    35510    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ��      �          0    35885    client_client 
   TABLE DATA           �  COPY public.client_client (id, created_at, updated_at, is_active, uid, nama, first_name, last_name, middle_name, city, address, magnet_status, id_verification_status, legal_status, magnet_created_by, aecode, demologin, cdd, create_ip, medium, campaign, term, content, gclid, magnet_created_at, magnet_update_at, umur, gender, pekerjaan, domisili, phone_no, email, birthday, is_registred, is_locked, is_suspect, magnet_id, source, source_detail_1, source_detail_2, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   ®                0    35941    client_client_duplicate_suspect 
   TABLE DATA           �   COPY public.client_client_duplicate_suspect (id, created_at, updated_at, is_active, is_checked, client_new_id, client_old_id, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    249   0�                0    35931    client_client_followup 
   TABLE DATA           �   COPY public.client_client_followup (id, created_at, updated_at, is_active, uid, answer, client_id, created_by_id, followup_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    247   )�                0    35921    client_client_journey 
   TABLE DATA           �   COPY public.client_client_journey (id, created_at, updated_at, is_active, uid, journal_type, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    245   F�                0    35908    client_client_schedule 
   TABLE DATA           �   COPY public.client_client_schedule (id, created_at, updated_at, is_active, uid, schedule_date, schedule_type, status, notes, answer, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    243   c�      �          0    35898    client_client_staff 
   TABLE DATA           �   COPY public.client_client_staff (id, created_at, updated_at, is_active, uid, color, client_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    241   ��      �          0    35630    core_history_syncdata_magnet 
   TABLE DATA           �   COPY public.core_history_syncdata_magnet (id, created_at, updated_at, is_active, last_current_user_count, last_user_id, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    223   ��      �          0    35611    core_profile 
   TABLE DATA           �   COPY public.core_profile (id, created_at, updated_at, is_active, uid, is_supervisor, reset_token, is_ib, full_name, no_ktp, phone_no, email, is_verified, verify_uid, last_login_ip, created_by_id, updated_by_id, user_id) FROM stdin;
    public          postgres    false    221   ��      �          0    35603    core_sync_data_magnet 
   TABLE DATA           �   COPY public.core_sync_data_magnet (id, created_at, updated_at, is_active, current_user_count, last_user_id, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   ��      �          0    35570    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ��                0    36158 "   django_celery_beat_clockedschedule 
   TABLE DATA           N   COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
    public          postgres    false    260   �      	          0    36087 "   django_celery_beat_crontabschedule 
   TABLE DATA           �   COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
    public          postgres    false    251   7�                0    36095 #   django_celery_beat_intervalschedule 
   TABLE DATA           P   COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
    public          postgres    false    253   T�                0    36103    django_celery_beat_periodictask 
   TABLE DATA           '  COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
    public          postgres    false    255   q�                0    36115     django_celery_beat_periodictasks 
   TABLE DATA           N   COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
    public          postgres    false    256   ��                0    36135     django_celery_beat_solarschedule 
   TABLE DATA           Z   COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
    public          postgres    false    258   ��                0    36197 "   django_celery_results_chordcounter 
   TABLE DATA           \   COPY public.django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
    public          postgres    false    264   ��                0    36212 !   django_celery_results_groupresult 
   TABLE DATA           �   COPY public.django_celery_results_groupresult (id, group_id, date_created, date_done, content_type, content_encoding, result) FROM stdin;
    public          postgres    false    266   ��                0    36173     django_celery_results_taskresult 
   TABLE DATA           �   COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created, periodic_task_name) FROM stdin;
    public          postgres    false    262   �      �          0    35456    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   �      �          0    35445    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ��                0    36272    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    269   ��      �          0    35850    followup_followup 
   TABLE DATA           �   COPY public.followup_followup (id, created_at, updated_at, is_active, followup_choices, followup_choice_code, followup_choice_head, followup_textfield, color, font_color, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237    �      �          0    35839    followup_followupselected 
   TABLE DATA           �   COPY public.followup_followupselected (id, created_at, updated_at, is_active, followup_selected_code, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    235   ��                0    36233    notification_notification 
   TABLE DATA           �   COPY public.notification_notification (id, created_at, updated_at, is_active, notification_type, notes, is_opened, client_id, client_schedule_id, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    268   ��      �          0    35681    staff_staff 
   TABLE DATA           �   COPY public.staff_staff (id, created_at, updated_at, is_active, uid, is_locked, created_by_id, profile_id, staff_level_id, staff_parent_id, updated_by_id) FROM stdin;
    public          postgres    false    225   ��      �          0    35717    staff_staff_history 
   TABLE DATA           �   COPY public.staff_staff_history (id, created_at, updated_at, is_active, child_staff_id, created_by_id, parent_staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          postgres    false    233   �      �          0    35691    staff_staff_level 
   TABLE DATA           �   COPY public.staff_staff_level (id, created_at, updated_at, is_active, uid, level, level_name, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    227   7�      �          0    35709    staff_staff_salary 
   TABLE DATA           �   COPY public.staff_staff_salary (id, created_at, updated_at, is_active, salary_amount, created_by_id, staff_id, staff_level_id, updated_by_id) FROM stdin;
    public          postgres    false    231   %�      �          0    35701    staff_staff_salary_monthly 
   TABLE DATA           �   COPY public.staff_staff_salary_monthly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, staff_id, updated_by_id) FROM stdin;
    public          postgres    false    229   B�                0    36283    staff_staff_salary_montly 
   TABLE DATA           �   COPY public.staff_staff_salary_montly (id, created_at, updated_at, is_active, salary_date, salary_amount, bonus_amount, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    270   _�      G           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            H           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            I           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    204            J           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            K           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_user_id_seq', 157, true);
          public          postgres    false    210            L           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            M           0    0 &   client_client_duplicate_suspect_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.client_client_duplicate_suspect_id_seq', 79, true);
          public          postgres    false    248            N           0    0    client_client_followup_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_followup_id_seq', 16, true);
          public          postgres    false    246            O           0    0    client_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.client_client_id_seq', 5011, true);
          public          postgres    false    238            P           0    0    client_client_journey_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_journey_id_seq', 22, true);
          public          postgres    false    244            Q           0    0    client_client_schedule_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.client_client_schedule_id_seq', 20, true);
          public          postgres    false    242            R           0    0    client_client_staff_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.client_client_staff_id_seq', 4094, true);
          public          postgres    false    240            S           0    0 #   core_history_syncdata_magnet_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.core_history_syncdata_magnet_id_seq', 1, false);
          public          postgres    false    222            T           0    0    core_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.core_profile_id_seq', 154, true);
          public          postgres    false    220            U           0    0    core_sync_data_magnet_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.core_sync_data_magnet_id_seq', 1, false);
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
          public          postgres    false    202            `           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 64, true);
          public          postgres    false    200            a           0    0    followup_followup_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.followup_followup_id_seq', 26, true);
          public          postgres    false    236            b           0    0     followup_followupselected_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.followup_followupselected_id_seq', 1, false);
          public          postgres    false    234            c           0    0     notification_notification_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.notification_notification_id_seq', 7, true);
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
       public          postgres    false    3396    209    205                       2606    35527 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    3401    207                       2606    35518 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    203    3391                       2606    35547 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    3401    213                       2606    35542 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3409    211    213                       2606    35561 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    205    3396                       2606    35556 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    3409    211            2           2606    35947 B   client_client client_client_created_by_id_a8280477_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_created_by_id_a8280477_fk_auth_user_id;
       public          postgres    false    3409    211    239            E           2606    36061 X   client_client_duplicate_suspect client_client_duplic_client_new_id_2ed995c6_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_client_new_id_2ed995c6_fk_client_cl FOREIGN KEY (client_new_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_client_new_id_2ed995c6_fk_client_cl;
       public          postgres    false    249    3494    239            F           2606    36066 X   client_client_duplicate_suspect client_client_duplic_client_old_id_bee2d272_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_client_old_id_bee2d272_fk_client_cl FOREIGN KEY (client_old_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_client_old_id_bee2d272_fk_client_cl;
       public          postgres    false    3494    249    239            G           2606    36071 X   client_client_duplicate_suspect client_client_duplic_created_by_id_9da4a207_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_created_by_id_9da4a207_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_created_by_id_9da4a207_fk_auth_user;
       public          postgres    false    249    211    3409            H           2606    36076 X   client_client_duplicate_suspect client_client_duplic_updated_by_id_eb786622_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_duplicate_suspect
    ADD CONSTRAINT client_client_duplic_updated_by_id_eb786622_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.client_client_duplicate_suspect DROP CONSTRAINT client_client_duplic_updated_by_id_eb786622_fk_auth_user;
       public          postgres    false    211    3409    249            B           2606    36041 M   client_client_followup client_client_follow_followup_id_fc5601fd_fk_followup_    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_ FOREIGN KEY (followup_id) REFERENCES public.followup_followup(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_follow_followup_id_fc5601fd_fk_followup_;
       public          postgres    false    3490    247    237            @           2606    36031 T   client_client_followup client_client_followup_client_id_45370856_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_client_id_45370856_fk_client_client_id;
       public          postgres    false    239    247    3494            A           2606    36036 T   client_client_followup client_client_followup_created_by_id_57569ec6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_created_by_id_57569ec6_fk_auth_user_id;
       public          postgres    false    3409    247    211            C           2606    36046 Q   client_client_followup client_client_followup_staff_id_04b7a4de_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_staff_id_04b7a4de_fk_staff_staff_id;
       public          postgres    false    247    225    3453            D           2606    36051 T   client_client_followup client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_followup
    ADD CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_followup DROP CONSTRAINT client_client_followup_updated_by_id_20a2ab61_fk_auth_user_id;
       public          postgres    false    247    211    3409            <           2606    36007 R   client_client_journey client_client_journey_client_id_2e449a98_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_client_id_2e449a98_fk_client_client_id;
       public          postgres    false    245    3494    239            =           2606    36012 R   client_client_journey client_client_journey_created_by_id_88c21422_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_created_by_id_88c21422_fk_auth_user_id;
       public          postgres    false    245    211    3409            >           2606    36017 O   client_client_journey client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_staff_id_6ff5bed2_fk_staff_staff_id;
       public          postgres    false    3453    245    225            ?           2606    36022 R   client_client_journey client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_journey
    ADD CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.client_client_journey DROP CONSTRAINT client_client_journey_updated_by_id_1f07dea5_fk_auth_user_id;
       public          postgres    false    245    3409    211            8           2606    35983 T   client_client_schedule client_client_schedule_client_id_e3ee1cbc_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_client_id_e3ee1cbc_fk_client_client_id;
       public          postgres    false    3494    239    243            9           2606    35988 T   client_client_schedule client_client_schedule_created_by_id_9b078863_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_created_by_id_9b078863_fk_auth_user_id;
       public          postgres    false    243    3409    211            :           2606    35993 Q   client_client_schedule client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_staff_id_92fd05bd_fk_staff_staff_id;
       public          postgres    false    3453    243    225            ;           2606    35998 T   client_client_schedule client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_schedule
    ADD CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.client_client_schedule DROP CONSTRAINT client_client_schedule_updated_by_id_89e26ce0_fk_auth_user_id;
       public          postgres    false    243    211    3409            4           2606    35959 N   client_client_staff client_client_staff_client_id_196dca78_fk_client_client_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_client_id_196dca78_fk_client_client_id;
       public          postgres    false    3494    241    239            5           2606    35964 N   client_client_staff client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_created_by_id_ef63d6bf_fk_auth_user_id;
       public          postgres    false    3409    211    241            6           2606    35969 K   client_client_staff client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_staff_id_2a3b6b6e_fk_staff_staff_id;
       public          postgres    false    3453    241    225            7           2606    35974 N   client_client_staff client_client_staff_updated_by_id_35a02e55_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client_staff
    ADD CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.client_client_staff DROP CONSTRAINT client_client_staff_updated_by_id_35a02e55_fk_auth_user_id;
       public          postgres    false    211    241    3409            3           2606    35952 B   client_client client_client_updated_by_id_12f0c54f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_client
    ADD CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.client_client DROP CONSTRAINT client_client_updated_by_id_12f0c54f_fk_auth_user_id;
       public          postgres    false    239    3409    211                       2606    35667 U   core_history_syncdata_magnet core_history_syncdat_created_by_id_d178392e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdat_created_by_id_d178392e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdat_created_by_id_d178392e_fk_auth_user;
       public          postgres    false    3409    211    223                       2606    35672 U   core_history_syncdata_magnet core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_history_syncdata_magnet
    ADD CONSTRAINT core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.core_history_syncdata_magnet DROP CONSTRAINT core_history_syncdat_updated_by_id_a7d3bab4_fk_auth_user;
       public          postgres    false    211    3409    223                       2606    35648 @   core_profile core_profile_created_by_id_d0c22ea6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_created_by_id_d0c22ea6_fk_auth_user_id;
       public          postgres    false    3409    211    221                       2606    35653 @   core_profile core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_updated_by_id_f1bd9ad3_fk_auth_user_id;
       public          postgres    false    221    3409    211                       2606    35658 :   core_profile core_profile_user_id_bf8ada58_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_profile
    ADD CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_bf8ada58_fk_auth_user_id;
       public          postgres    false    3409    211    221                       2606    35636 R   core_sync_data_magnet core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_created_by_id_411b3df8_fk_auth_user_id;
       public          postgres    false    211    3409    219                       2606    35641 R   core_sync_data_magnet core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sync_data_magnet
    ADD CONSTRAINT core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.core_sync_data_magnet DROP CONSTRAINT core_sync_data_magnet_updated_by_id_44e7c6a9_fk_auth_user_id;
       public          postgres    false    219    211    3409                       2606    35580 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    203    3391                       2606    35585 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    211    3409            L           2606    36164 U   django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce;
       public          postgres    false    3557    255    260            I           2606    36120 U   django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce;
       public          postgres    false    251    255    3538            J           2606    36125 V   django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce;
       public          postgres    false    3540    253    255            K           2606    36141 S   django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce;
       public          postgres    false    255    3555    258            0           2606    35871 J   followup_followup followup_followup_created_by_id_bd33bd23_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_created_by_id_bd33bd23_fk_auth_user_id;
       public          postgres    false    211    237    3409            1           2606    35876 J   followup_followup followup_followup_updated_by_id_aeb66564_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followup
    ADD CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.followup_followup DROP CONSTRAINT followup_followup_updated_by_id_aeb66564_fk_auth_user_id;
       public          postgres    false    237    211    3409            .           2606    35859 R   followup_followupselected followup_followupsel_created_by_id_d6e0a19e_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_created_by_id_d6e0a19e_fk_auth_user;
       public          postgres    false    211    3409    235            /           2606    35864 R   followup_followupselected followup_followupsel_updated_by_id_f571c189_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.followup_followupselected
    ADD CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.followup_followupselected DROP CONSTRAINT followup_followupsel_updated_by_id_f571c189_fk_auth_user;
       public          postgres    false    211    3409    235            M           2606    36242 N   notification_notification notification_notific_client_id_56858ebd_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl FOREIGN KEY (client_id) REFERENCES public.client_client(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_id_56858ebd_fk_client_cl;
       public          postgres    false    268    239    3494            N           2606    36247 W   notification_notification notification_notific_client_schedule_id_cba97593_fk_client_cl    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl FOREIGN KEY (client_schedule_id) REFERENCES public.client_client_schedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_client_schedule_id_cba97593_fk_client_cl;
       public          postgres    false    3509    268    243            O           2606    36252 R   notification_notification notification_notific_created_by_id_66da0796_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_created_by_id_66da0796_fk_auth_user;
       public          postgres    false    211    3409    268            Q           2606    36262 R   notification_notification notification_notific_updated_by_id_08647d1b_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notific_updated_by_id_08647d1b_fk_auth_user;
       public          postgres    false    268    211    3409            P           2606    36257 W   notification_notification notification_notification_staff_id_8c97b845_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_notification
    ADD CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notification_notification DROP CONSTRAINT notification_notification_staff_id_8c97b845_fk_staff_staff_id;
       public          postgres    false    3453    268    225                       2606    35738 >   staff_staff staff_staff_created_by_id_750bb59d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_created_by_id_750bb59d_fk_auth_user_id;
       public          postgres    false    211    225    3409            )           2606    35804 Q   staff_staff_history staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id FOREIGN KEY (child_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_child_staff_id_339b898a_fk_staff_staff_id;
       public          postgres    false    225    233    3453            *           2606    35809 N   staff_staff_history staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_created_by_id_d7ef2079_fk_auth_user_id;
       public          postgres    false    233    3409    211            +           2606    35814 R   staff_staff_history staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id FOREIGN KEY (parent_staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_parent_staff_id_a548da9e_fk_staff_staff_id;
       public          postgres    false    3453    225    233            ,           2606    35819 L   staff_staff_history staff_staff_history_staff_level_id_01fbd862_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_staff_level_id_01fbd862_fk_staff_sta;
       public          postgres    false    233    3462    227            -           2606    35824 N   staff_staff_history staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_history
    ADD CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.staff_staff_history DROP CONSTRAINT staff_staff_history_updated_by_id_0a1a85b8_fk_auth_user_id;
       public          postgres    false    3409    233    211                        2606    35750 J   staff_staff_level staff_staff_level_created_by_id_591009cc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_created_by_id_591009cc_fk_auth_user_id;
       public          postgres    false    3409    227    211            !           2606    35755 J   staff_staff_level staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_level
    ADD CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_level DROP CONSTRAINT staff_staff_level_updated_by_id_27db31c0_fk_auth_user_id;
       public          postgres    false    3409    211    227                       2606    35743 >   staff_staff staff_staff_profile_id_f1607ae4_fk_core_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id FOREIGN KEY (profile_id) REFERENCES public.core_profile(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_profile_id_f1607ae4_fk_core_profile_id;
       public          postgres    false    221    3441    225            %           2606    35780 L   staff_staff_salary staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_created_by_id_79ac0491_fk_auth_user_id;
       public          postgres    false    211    231    3409            "           2606    35762 S   staff_staff_salary_monthly staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_m_created_by_id_6b50431d_fk_auth_user;
       public          postgres    false    211    3409    229            R           2606    36315 R   staff_staff_salary_montly staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_created_by_id_f9fa18f6_fk_auth_user;
       public          postgres    false    211    270    3409            $           2606    35772 S   staff_staff_salary_monthly staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_22beedbc_fk_auth_user;
       public          postgres    false    3409    229    211            S           2606    36320 R   staff_staff_salary_montly staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_montly
    ADD CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.staff_staff_salary_montly DROP CONSTRAINT staff_staff_salary_m_updated_by_id_c063865d_fk_auth_user;
       public          postgres    false    270    211    3409            #           2606    35767 Y   staff_staff_salary_monthly staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary_monthly
    ADD CONSTRAINT staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.staff_staff_salary_monthly DROP CONSTRAINT staff_staff_salary_monthly_staff_id_9d6d9629_fk_staff_staff_id;
       public          postgres    false    3453    225    229            &           2606    35785 I   staff_staff_salary staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id FOREIGN KEY (staff_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_id_ff8bde85_fk_staff_staff_id;
       public          postgres    false    231    3453    225            '           2606    35790 J   staff_staff_salary staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_staff_level_id_1864b0fd_fk_staff_sta;
       public          postgres    false    3462    227    231            (           2606    35795 L   staff_staff_salary staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff_salary
    ADD CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.staff_staff_salary DROP CONSTRAINT staff_staff_salary_updated_by_id_35738d50_fk_auth_user_id;
       public          postgres    false    231    3409    211                       2606    35723 G   staff_staff staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id FOREIGN KEY (staff_level_id) REFERENCES public.staff_staff_level(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_level_id_02e5808b_fk_staff_staff_level_id;
       public          postgres    false    3462    225    227                       2606    35728 B   staff_staff staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id FOREIGN KEY (staff_parent_id) REFERENCES public.staff_staff(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_staff_parent_id_3a0ea1e3_fk_staff_staff_id;
       public          postgres    false    225    225    3453                       2606    35733 >   staff_staff staff_staff_updated_by_id_ae4985b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_staff
    ADD CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.staff_staff DROP CONSTRAINT staff_staff_updated_by_id_ae4985b6_fk_auth_user_id;
       public          postgres    false    3409    225    211            �      x������ � �      �      x������ � �      �   B  x�}�]r�:���U��[���6����$�1.����~��>��[_�n�#N�Ŀ�����j�߫�-�B	}}���R��}���Qn(����4ltCl-�5f"tΞ��9��8?Dm��yBs$w���c� ��h���#p]p��̯�h�A��T4��/Bz��!��V<`]��&8x��"Zk��)U�ϧ��x����p�Ϧ�����9<�6?6��U��sG뀆̈T4��d���Jx�|}�6��e�
�����'k��d��{d�g��j����YW�+�m������i�m�]��7?�e��}IFvs%�����J���Ά�U]�N\X(�Ja4�d��*y�`bY6unUc̡lb�ߏ۵��[�>��ǰ��-
sÎ�aٰ�*��Bɤ�ڊR�x2)�aQ�T&��\�q�ޓ��.e�* �{z�U$p~�$��J�횞��1�ۼ|_m(�I���'��ZV�?�CYv�b���Tww*���'�odw��#�[��&����ٲ��_v�aU����������V��5LB5�����!�4:�����:1x���&u��So~�O�%��t��B�I��-�)L�b�s�
s����,ra���� �1/���І/d��n7�����a'�dI�I�	�b�:A����,D5� b1���r��A���4�^D(�ewW��j:"�9"�Uu�|KD�ud\#DD������h8rk�3�^�r� av��NM� �{���>���|o:���-� U%��4 Lᩐ	d,V��d�ͯ�1|����hT�/�\�᱂�+��e�C�	D)HT�(�d��H�5�ԥL�⡢�)�B!��m�e,�Ҫ�}��9��^?�Z_�S����1c込jo"�0Wa�؛����\�>�7���<q�y���f���]�c�c�M�Sz�`{M���\[M��$��z	�.~Ϗ�*j�$薽#�R���G��K=D�g�'����L�*��]h��D�[�����UǷ�����|߉�_�	���Dܭ��{ͨ��_��IԮW�� �]y�^���%d� ��6@g�^�|o�֯D}�g_vЌi:=��x����k�Yj�yW�31�r
��.Y�U*~T�K
A�J�&��B��w�XM�(`�ugZ��2tWU���? ?uKx_퉄W:��O$X�\�j:����o��h|7a/M��@�oO*H:� �D���"N_��m~�j�״��5fȍh��s�yƳZNx��x(䄶���Ǽ�җ)u�P3`iLӼH��s�ҧ����½~�'��!1�r��M~�8zE~�
<��(�x$N�����K���      �   K  x���Y��J�g�S��ȴ�Bu2� 
".�"`&��M6������3i��O��ʯ�O�Z��	B��&�x�s��u�]،�@���Aσ
a����[�$�ց�y��1=䤓�����ޑŇ�tx���9����o<���8��W,��,GZ�V����/ȓ�uU��������*�7@��7�A�
0$��� z��p)����"��xRFe/;{.`��Cdj�d6(R�Ѱ�(e�ջ͈��`ّ�X�8�{�������G��6����}�o��J��t���l��Қ�K��Z`M<s&[��Ω������VE��Rg���'VUR�po�M~+���R��(^��p�A�ހK������9�Ki�R�)"zb�R���l c��sSfqO�閷��곐���W�c�@�1p�����w�яS���E��:U������#��v���.�vE:�����7���Px�)&!}ġ5#k��lf���	�ޜ2���nS�-��� M&7��Y�8������o3W��_!���D�c �����2
���4[S°�s��a�t����5�S�<��I�u�Qߘ�"/-�6�[ ��G��� �Xx�cPc`穑n-�	,���"ч��r�ը�?;��Fݧi"n����Ef�یo��3����W!��E��%:K�w�*���PZ�d�j������VQD��+m@��oQ��)�LN�O�n�Y��R^@�U(<���4��A�t�w���`����x�ݸ��R^���p���d&�V�K�g�H��Bt'D��v�Ï#����LY#G�ޔr���Y��h�\�J�lCy���^��e�J7�q��dY��n�5��g@A��'W����Yo�K�_M#��&�8���h} ��U��D�J�	����ƚ��AiF���	�3!�(�;�/�6���^��&��bI����!�A�
���dvQMlpi�Ϧ+ЏQ��	��X��E���P|&Ĕ��
��'^��`<+�@���vKÍ��6V�FN�|��:����͝�(r����@[v���o�	��gB@�������?c��      �      x������ � �      �      x������ � �      �      x���˒\7�-8��ag�ޏ����H��dI�d*�	��3#e�M}�]�#vֵ.��sPR�(z�����/�\�Er)L���/��_q�s�7w#���O���6�*+*f�m�,��Y��	����.���������i�W]���n�?^���7��_�ֿ����I���Kr!�>	��W#�aUJ\<�<H�rc�x\����$�1��b[nS=>�~�O����|ڽ�χOq҇P}7%�|��
q�\��Dr,�&����d}e����紼�?��c<��8��n)���g�W��4��Ģi�i%"�[U}���6�%��e�O��}�s7}ߌ7F=7�*y�,����BY����Ѿ��R��e��1Or��rJ���NI�.�S�HQ2c=�m^�h}b![���z7��޼�����woz����7�7o޾߽���������O��~X��|�dSl��U�����'�B)'>�r����~���x�q�߾��I;��]�vgU)f����=E�cm.U�7��8��qJ�8��In��o���m�,1*8j�c�IT1!�qV��rYn������qN ����fT`��_|�-���e���tq/{;��VkK<.7w����w����M��5C���u��^��̣�w�-�G�k5�d������m��<��H�ϝ�h|�C�a�r���'Qs%z�E��	���C|y�����p8���2��~Ɣ�z��auW�"�*�$Ί��bJ`�#��j��u������eN���|)��xo��{[Ŗ�� X�]�Xr�0��%�[��{<�ww�X�7��x�O��s%��sX�K��b�30�ȍp�U�Ő��ǒ8A1�v�)�#��7e�Ό�6�W|R��R��E�6���P �k�]�AV�n>O�}>�zKV���!5b�3�#�5����
K���O�Q,�ϓ��'E%�cw�9��]��&J
)��xDr��puI��/����;�O��I;����a�����v�H�68V�C�NF1�Ɣ�9#0�j�r���~�]<�x��9T?-*��0r���zi28�bY�簩�5�s��X�^~<>�a�?���qR�P�����C�a�"�-p�4�u%����^3��(Y�\~x<L�֪��okX����N�3�8�uV��Z�0�>+��;b5�?�{8^�=�ψ�
�DV��^kc<Bs���K%V�*��AFވC~O~�����I����^�o'<��'��q�fV@��hk�a�/E���|s.���ڇIn�ӢB��'�n<���j	��(��� 4�B��yp�ǰ|>?����Ӯ`ŏs�gF�k��[V}��pt�lN�:[Pw�k�[�Blʘ�u=�����m�0z����� �o��� ���rmQ0 Qj�����I���'���gC�a��Э�������e)+�#�1���)×@'������IR�KGX�����DQ���� 'Ț�ɤ�!/��������ܓ�~��D���d�ݑ*�J�W��g����e�\"��妕;������0�7�s��?Wj�:;^v#7F#�k�Ѓ�M8o,��q2�Y��Yw���4)]�~���Y]�N�k Q��H�)z�%7,,�{���W��|���9�Q���vڍoZɺ���
� $8y�{;q0�Py�N�&�rs�w{�������	��d̐�5\��^�bb�D�:l����Q��|�>���������R#8�*��4���3.)D$��
�'���M*����������>b�L���i8��	�*ŕ>J㰵�!)�\$�R�z��.и�j��Q��|��>�=Ļ9�| �E��
Z�%�L���F0�+�wR����UX��9�ݩ>=�/�V��*��n��h¶��T2��Xb�d	!�U�����,�w� ��|�v9����(����$�KDQʵP*qH�	r髩��hR_������o>����M?U�)��k��JT�A[$gǢ,�)�R��֔��u�a�w�[M?A�e/�ن����2`�k�;@m���HhЅhؤJj��~O�w����H�Y��k�veZB����5'X����Խ�ڊ��eO�s��gI���r��[��<��ZA�S[Zs@Y�A/y����z���S��I~���޹�Y���+��#H�H"�p���U3���֨�?^n�·�~���i��8X��Kl1&�4*�%�MJ+�+1�Ma�A���OqP5���&��g���ƗTvt�h�Йf8�R	% Z�s� �i��ݟ�e3p]�Y�����K�<s�#Ts˙��2|�2x�$j�r[��\`�~BDd@&���[g�(�T�0�e�])���ن�A��A����O�{6!��\ô1z����S�v6� �iNi |����e��iR����h�uc�MV��Z:i,1�,9"Ї�a�X�ģǺ�}G[z����h�����[�H5�d�g1�0��q�r�TEZ��L·�zE�0�j��#N�Tc�a��}"@݁�"�����K���m4@�9�lB�}>L"����$Y�5���&�cB5�4��!;�U�L�H��(����aw�xwf���q����ە�VF�fYk^��D,��rI�M���o���ǻ�þ=�;������9���0�p\�"Y_�.Uĩ���6>H�@)&k&*c\�|���/ow��~���͇�9~����N�ow`��z��U�
_���'r�QL$ݸt�p���#=��O��ؤx��W�9�^^�Mʦ�,�(���5�]�ոd�1mY��zzz�}��tJ�����x��oW�ZVNՆ����7[`!1�/my�X�������U~;��~�t����+���WB��dr�̂���B*�Ȫ5�b�u�.��;��O���O
ꮟG2�����ۻ����� ހ��x�53&5%%o%����>�և�9~��(�qt�3w%ĩm���!�ʂ/��ߠ��)v9է��j�Ϟ.p��� ^���LU/�#y��Xc�k4v�BHe�{8�]'�d�~����q Y7Py�t�	Ao5#|#��H�r�ɺ��'v�~��<x;d���Q� r�c�4�[3+�� �'����8X�~����7�gd��eS1H�=�3� �"�w8�_�ҵ6����$����+l�a�&�Ve��!�v�w:akN�
U�/6-��˓��~V!�x����u�#�I)��WM(;�+��"\mȲV�%Q����J%%s��'Ho�Wj��j�k��֛a-k�@��HO"�mlΩ.�Td�����y����j�������]��Q�`A�9�4>QKjO�J�\���a�t�������S9�b�8\�6�Y��q8�y�`V�GpR�k����}���?���O���A�]_���`�s-�6�
-5�K���@,>�*R[>>�?��a��=<�������_�؁���x��'�B�q�(���,����~֎��+}?)d5Md�zK�j����'���$U/SVŇ\���?����J�8�/\F�м��5�V�J bS0^Oե_>>����ݤ��O�Aj��~úm�l��" ^ȁH�E�V �J��@�bRy�����a������c�GV�U��\*OL��e�C厉��5����.>ǧ9\��+�X����4d�D(�.��ܲ�eF��*"��\����]^#p<N���d��r�ΰn�0P͸�D'/����[ Rр��B���w��Ŏ�Lj������z�F^d���X����h��'��7EGЄ��������c,��K��G���C�*_	r	Gx���n�ER�p�@*uh����L����~����˜p�)2�0ӐU]�gu����Kض,Jz	I�9��~��5N�_���+pF3�	Z��e�y4���"r�YԖ.��Q� j��|:����f�Z�^��g08��U�-���8���2���rל�O�@��������ː��
����{U,�֖�J!VE�,⠉Z#9F��<�9�    �uc��i��%T���6�Um�0�j���US�Tf_3�`�T�,ݞ�/s _�I8���f�.����1��k����N�,+S��iU/����iҽjxeU�_����E攙�v1]s��� ��'�(`��?������0��)��%��A��%/Vw�7��Q$��������"[,{�8���C=�N�8�&'��$��R�2�X�O�<W.X����KaIz�+�r�2����5r����f��{9�l���u{N���$5_����S�v�~w�@���M���n�?=�9`[�^v�l����z&x�TE33B���y%�}F�4��o�)��'�u`��N	-�q�������d>pN7�%n83-���΁�������{�I�������@���H�-�8������"d���G�˹Y*��P������2�� �v�5�8��u�IH�L$���V�٬5 d(��w��{}>��Z�~v�]_KV��6�t��G�S���h��^�tL)�b�o����ϐ�J���b�[�E*)G����p�S�R~�p�9���N��+ ��lX�4Ӽ��I�|`�yV�W�&_C.��s�c�K-L
���(���4º]����Lc")`?�w�mS\���T�م����C1'�#v�]�+䀬[U�OL�D]dB�!*)� �{I*4��?ϻR�˩>�������<���O���1>�$�!7vSuj.F�<��H����l�N�v�G��02�U�	�1�I�X��pgJc���R#-�, ٰj@���x�|�]{�*���I\Rt�w��������m�;>�&�c���T3��Wfr2:P`���Rw7�Uf���\)��p��u�!KYe�U�$C�]�<>h�N��2f��_����}�#�1�㈮�<�ҏz$Wkؘ{nE�h���a(���I,8�#m����;Pɜ�:�UفK�vz�ꮸU򖝣��H,A�{�=d����E-���|�O�O�I��s%�F�)���G�A�h;$��aۃ$�x�H���}�{�Ӈ�7�����>��3*N�X�5�d�U�ʳPv�M��V3E��)���o(�ݿΓ��EWd�eG}��PT湙��t〄â�9`,X��1,��~������aR�����fvx^�f�*�Nǈ$�HQ �y�x�4���޼�߷�?b=M:�]��%���]����p+Pjoׅ�+���Y��֢,�c=�]�t�S�$EWf~I��0��Um:;�%�F���T��K�&�HI�������ӧ8��Rtev��rCщ�*�-R|vIø�TM��HHi^ƒֿ�oHI`��1>��;��~�T��Qu�ź�6UzJ`�Eтs��԰h�����y]~�cm���>IwBt�v����j���)���Ȗ{&�jY1^ZY�H�.��E�d��=����&���j9���<ϡyŤ� �Ek�cu��W)����2������O�x7i���rjdaԛ��ԥ#-K<^W`�X�BT!jM�.���S��EWpy���B��[��9s���[�`��YQX�q�܈�Y~�����M��Oy]ݝ�J��/���q_r
�0�MQ&�,Mې����qOW�p�:����x�ϕZ|�]��[�T�9�Dl{�H�#�C �(˦I1�4�Dtuw��Ӥ&����[��ul���}��ZC�^���TRp��|�ݞOOs�DWu�!R�T\W����p��ӘMp'[�̲��[��zS�VA�}��u?M"��S/�-��&\`IP��$���rV�[�j��?͢�]��d������S� 8�f�R-k[�6����M��j����ھ?!^Ojb]ŝ�J3�4EW��t��/��0�SuW2��Q�=��I$#S�hq�������=>S�I�2�QGtx�5�Q��Ū7�&�J���T��O����y"ޖ�o^��n��ͻ���x�O�tu3�[���ç�5I%�q^�)5��)%	�7|U�b�פ�tz�w�z�DW'�2\�Q_�jݲO����z�w�GIz�7"i�q5v�(%mu`���9n�s��a(x�nlǶ�x+ �t�X�$(��� D�|w$�V�.�@lW������"��/�4�j�̥���/ͱ��Kz'B(��X�w�O{P�9�w�x��5BA�n��!��
3�vF�F��t.T4��P�������'jN��8�?O��]-����v��a�z�VE.\c<[">��dH`Xˌ � ���4��Զ/�r<��Hk���[�~�.�`��N'��b�Z�[OM�]�V�<���Ӥ0��gx��a��swY^Yj���+բ�*��b��
��R��!��O�9�w���לc@,s�֨d������ ��F^�)��Z�F���wǸ�s��U�oިQ��ź-yh���Z� qz�0�5|-R����O$�p�w������%���*�&��+V?#U���Y��%W�q�U<.?�z��I7�]5��ʒfݐf��E(h�S��3k�UZ�HXK%��V�w�i-��}��9/j]M�� 9j�[�/�S���%�7匄�X����Xx^A�>�U��݇z|��}L�S�KEW���q���zMC�7n���z���,%K��UD+��X�9��<O�|]a����:����문�N$訴*2����y�&>�w��?>�I�]e8��W�a��k�.�� bL/�N�<�xQ�C�6�(�8��Uwo�O��:'�t�y��1a\�G�핪�h�E�ώ��$�,��_�q`. ����O��z�2��u5z��5_�+0n",I�"R��X�Vˁ�d�dͦ�U�>T��G��v�M�1�*��1g�Uxd�v�>M7C�JZQ^;�Z�Z�&2Q���w7�9>�!�*=p���a�!���&;R}w��� �E,�#����	�/7�Z��⪫���y(�z=�/(3.H!k�X��-zA&%��
FQ�ƷL�)-o�h��gѕ�	�wz��d�b�
 �[�U�0�f���"�b�Ep_���C,����<�Ytu{�P|e��u��H�E��!%O��V�!����D|���|) ��Y��ϖ�J�����[@����(�%s����
`8Sl��=O}�����:�b��]���d��keGJ�~{��
�p�ZH��Ќ���E���S������V�+��p��|V��^��ĳ�z%z����08��ʚAز�t�'J5��t\=�pX�˘0�����!��H��9�D�̓@-�Ds"L�J��1��r]HVs��*��*��,�����<�LH]I��./��X�gU[u�{��S_� �F5�1ɼ�@ub�Z�I�.�R�f�o�⿟'V�w�z��G�/�ێ�5��EH󰑴;�R~B��$x<�=]I�x���ݕ�g�b��A�nj�l8q��:�[�7��l��Tm�1���bٮLOx��_�/�d݊e�1)$�C�#���B+f��l�����Z��5�i������[�Q��]`KE��\'�>pz�ת�D%?tAW?��������H�B��W��.����.��=3�I���5X]���M|ڽ�\s��t]��F9����b�̪����~D�<"��J�P ���v��r31'�tEz����M�6E'e���z����#b#�<dc�V`�w��Hns<�'Jo�V#��[=�1P�� ��u�@�=gE��"	ĮO=O����IФ���=w"l����,8=�RÀ�v)N5K1�����P��y`�+���t|^�j�7��U�r�F��f�f���k����}������jN��*��?F5�ف�Ӯ���5Փ�j���Gl�&��M�|j�,?�Él<���+�nk)SdYDW�'�
�U�.֍: �%��`$1�����`QQjB"�y�Hz�}�
�a"��J�����\�b���2�i�*m �9£��[�p�.7�q7�X�+��$��}�Դ~�Ƃ�D*5��PP*,�R�P��p��R\^�/�B�pΈ���_�C#�Ջ�o�498�UB,��lR�Ұ�Ɋ]������xn�����C���׳�=�j>�_p��X�6�GV�1    �5��N�*�2(g�`�ː�	v�y�v��ۛ݇_����͜G���|}w��u��/)� r��Z�Jݍē	Arl޷�Lwy��F�9Q�����P����S�-�7�a�(KUL�5��-R�	�Ѕc	���x�S�IEW�n�=�8���ˀ�"DT{$'�����j���Е�Q�Ί]I�@Zލ��4.�	k�%�����,hP["ḠC%����^E������s��g�@ �MB�6��6�P�MR����,8�2��I���Ԝ�?�Oq��?-�w�}�7 �q�52/[R�S2+��!{�]�0��KŤjy�|��J������<���X��mN"l�%c�V4�|�
�S1s���B�/@W�Y��=q�ڏ��UW�F�k��N�+���γ�3hg�Y�j��m9�]���u{�>�W~�Gz�n-ƥ���)�ӥ��!���m�%p���>>�݇�q�UO·�Ra4�b}����Xs���Ic�`I���P�^ޭs����:iL��	��gа�.֭� � l���H�[P�q��U�uhH�V����i�=fO�g�(�����0ATG���ڽ�5�Nk�뜯^��ǵ��O4��N^$��烂ӋU�b��M�܉"Jܔe��J��ղ'�J����Y�'�C�9�����jL������ERط��H5)Q���b�&�fQ�Y�`=��k�V/�`�Fה�$�nI�g�<�m��Ȏ�:JX>�<xRJ����)�ŀ�_�W��`�<�C�h4�xX!�$au[������I	�'�z�@T�j}�+���+��#D�i��""�h�^�.u���<(�4�j� G˹�J�P%I@S�}��h��Iާ�V���ݻ��x e�Y��DO���S4Km轒/�8ipy0Ol G�/�.�W ���C}��NU�=��Ls5�m�Z7�q�J���Jc�4��i�P���M�^�����e����(t1��uc�>7�h�ZN�$�h8G�UQPX�@��?G
��|k3�4lٓ�!/�����{�"�$�\�.�MYLte�#Xp����n���q��C|��{?_
����\�z��*4:�����kh�#�To��������*�C��ϔ�(�S�!=׃��lJ�"EK �N����z}�YX�=m�/�ϓh����k������u��vZ%�}&m[������Y�$�����%�������>�?Or��Bq��8L�u�j$9���� �"����d���Ht���Nrw�Ш��jܤr,��n4��P��:��K�O������@MH$\��<'�ʞ�9'��оZ���,o����� &���}��Z�9�����}D*@��>?=1����4	wɞ�y�6���u�D	 � ���#i*�L��F=��HCז�U�5�Z�qN���I�����?�׍DCŒ$��*,�&��f#�=�ҖY~��C<�L^;ֲ�m\�.�)9�=% r�He��V�5�z]2)ǲ�3M6�y��� vҘO-.���w��'����B�s��[�%"�_�/�5	�7;��K�)J�{�x�/E��痷�ݛ�z���Μ�%{�@�#5��G ��m��2�=i�е�s4B\1���9)�\>��>���+����}�
P��i]7�Յ�Ԣ�2Z���$���V%�9���+B�H�_�ۃx�/C%5Ns�� +U@�\�5@�iy�0��Z������NJ9�V�2p��b((r*���ށ�r�Z2[Z�K=�My���+{B@�f|��}"e�c𻐍��i��$kdV8y�?�}�(H}'��	eO����d�/��h
��-9RO��n�������"dC��<.��;�!y?�(��(	�d��-����I�5��	ҧ	J敭&���ؐ�o޼����pO�\�v�!�"릺�xBfz3�A����	��x�9֠�Z��v+K��s?M*�G�kW�Vxe�	�V*��L�\I�X��W�u6F-�Iʒ��D�dO��sF�3$YͿ3!z��dJ�` XFXKbr1PIE^n���Y��0��~ZT ���f�n����:���T0V���@�V� X©���ͻ���~��q?)� @1^i_�3���?1����ʒ%�\4P���f9]n���;��P�T������w]�/`6f=���p�E
��J�������ax$����/1��^����EA��� �� !�s�2�����yU$�ob34��,��aJ���)�C4�a��q��
�3E[��S�� 1k��4�C�=����������?N�(*{R@���p�ø�r@�f�R�4!t�O���$ ����wo�)S����9�$~���ڭ��V^=~Q�y�L��A3+b���9p�����[�?��{�u'�S"�5��MX�6sQ%�D��SE����4!��[j�nycX~8�?�j�$���R;kǗ�d���y��R?�ձ���_jtBMB@Y>ƻ���)��݇�����'��O�O��;>Ќ�Z7�(�t���bD4l�5�X@�H�e`�e�&����g�{?eb�*9���m:�L20 r"�k�1����j�U,����ä+۞&�2ܨq�$�v�un����tuhȯ����D�M�e���}�c�Lb;= rN7��#�tTKګ��$�O@T]� �68�r��M��mN{��)�g�����u\�Us.*�hD`
Rf�R �ƘhFt.���}N��) �.�0�p�ne�����Z6YN�U��`pN�a��L����6鮶' D~!�}e{hj�FE}�"1�8='�L�y�Ѥz���2��۷��o>�2�dS���+cܘ�����b��N1��C�Ｂ���#z �dz��{����9�y���C�<��	�n{�II!�O�<qI�2l���TZ~����'����~�'��`V���ovcZ��jV�Wh����tI{F�{�H3�3ݷ�@�椘����Vz[a}Y�JC@s�����P��6xq�H8 �����{�=L��=����1� �X���  �^˙�jZ�t�葳�1�eY���t�}��}����Ic�eO���[���j͆��n���<�rQ��g�� ��G�~�u���a���C��QE�ոEo�H�9!/�뎶T�D<���U����<�x�{.X�9�E���C�)0��n'�V�� �����ƪi�w��t�]hB��A/�������f/��'Ł{��cK�-���I�(�T]��H�>�Fy�a����!>���I��Ϝ�>�	�Z��@K'E�(�3jl'�B�2�s�`CT4�.~���$��!��zx{B֭��s��$M�T
iBz�=�|)��D��޼���͇�?n޽���͜[���9G�Q�9V��V[�]�3Mud�
jD*�-J�n�֧���x_�z#[�v?Ƈ�i��hٓ"=(��X�˽O��<$���M<k����ɀ�)�X�T2����ȩ��W?0��=]U߬��3SM��*W�iR$����ǵJr�p�����N�&��= ��5����nO%>�G��d*��fkj�����4<��m�;!���yF�'D�!��w��6�$R$�_�R#5�8��A�P�����zBF:=�'�����5i�@�j��}P���'�H�['B]�q�Ǒ�������ɪQ��D�i>�od܀�7Π?��^��1`��8�Ω���z�}�?>��iVAYO�|�^���b���BGM��R�.�+�"@�L��!�ї�=�ե���ո����5xI��Z
	���6Z�l���X��# K��v?}���2l��(>v���s����+ �#Mm|ؗݯ)��~��F�"�pcp����1\Z��ZT4�I"�gJ>&6��*�3	���V����_��E�	$�\-�c��I�P��"�7c���Y��^O��|
!�N��M�8e%�񵂼Rscm�)�{P���e"Z���q��"�[`�3`[--�q�5E�IG���acx�8\lD��i��A���CnQi����/ohI:)tC���t5����4EI�]i��s�4{�?��W��ɶ�*5�y1��l� ����+    usɶ叻9�����C!;�o!��pӱ*���qyP�j	$�*���KD���*G8�L�'�C�!z���֍���tEU�S��p�bC�A�l�r_�?'p�#@�~�X�<��4�7|�9��j�-��
�B"y�U�+XG�ѭ��b�}9ƇGR�H�ݧK�������`�!�'k؊�Ri>9C�V��}m�f�n�y�ְ��H�h��=��F^�#���@��F!H�Ռ�3/2BHSM�%�2��)�>�g=�D~ȯ��@��jݔ�i���:O�&�J@�����x�+Ɏ,�Մ�B�t�����9�i=.���l-Ҡa�+C�����碑<F���h00����c��k!{Z?� B5t�ď�i=�`@��4hI'T�L���T-叱��$���V�
�=��Nj9����M���lRty��h ��Ճ�d�L�X|�t;��~z����_X��A+��55���.����ݤ�K�xzl���dO�����B�wJXݦ˛W��QU	"I%�dl+si�fW���#Ἇ��Y�<=e���k�Ⱥ�i�а�<,�A@�A�ȖZ&����biq?E<D�D}�!;��d�(W��&�s���d�L�V�a��Fzy�Ϗ���/wuμk��!Ϝא�(�Ft�n�%G�>h��Z����vX}��f ��I�=)r�k;N{�n�Z8۲�z# ?E8�F�����x����|�}�{�������S�!���J�.Y�2����4bօ�i6mҁ��qL3�v�X�Cy��|>�9g���#�+d?3�йX�A׹�ܬ�L�����c@o����e����||^Kw��\-�D}�9a�=�v�]|)�"��PWUa�u�0Ǳ�EP���xx�k��i{��x��9ڠ���CJ����ud7ܪ�Չh�'�� Ył�����[���çݩN�b���oʎ��W�ބˣGf��1�6z� �H6�� i<c�Xn�)��9���$<�?EӋ�o�Ψ�c.�)���1�&��Tl��)���x�FP9>�֔]i���b�u���y<�ʪ�H�
�mDG^o>�f����R?͓��]m�f��߬V���A��Ê�����R���"�jbZ��G��;�v����3m���'\tҏ��ź]�%�Z�-�9=��k��8�r���<(��"��e��x���_�*a��wq v̆
eJ��#�&HM�"��������V��77��oo~�y?�r����XG�T��`��48e$�'#�\��v��JK��}�ߕ�U�t�����y�#�ɺ�)De��a_ˎ�k,J��.�%7���T��$&ӥ`i֕fW�	'GW��Um�.����>�,O�>$C�iȪ.�)uO��*�Ns�mW ���Z�/�uS%tS���c$uSA�l�ȹ�,��z����j��>���O��I|�����W����Ғ�6�;WWRA^��,��V9O}����;fɟɮ� }����j|yӦ�_I� ֲX�pdI��,vP����w�q^>�J�7��@��b�z���٪@
WlB��pB�aոJ���r�_�H��O��q��+ǰ=Ge>�V?�t�Z���4ρD/ �Y�Q���u�.��~G�~_�m�~��u��/�M��f/���M� .R��
���EF�|����ۏ�n~�������ݻ�o��~|���Bu%��f �� ���Mo���ɘ�� �3's�Z�pZ����<�CMuՁ�+�9�Y�X��h�� ��^���
i���2��*���.��˔����@��rt��n~+�-�X2��A ����� e4���ER�&��)^��&���zt�{\�T}i�� ��x[�6���=`4R���@M�2���8e�u�0 �-� ���	f8(�i(��5_*���O�ئa���v	�-�@�y�@���D�jA��Z�!<>���a�X�e��w?UJ��oiCnGN ܪ1�(�Ӭ]Pj��Ȣ�������.���<��c�~%������J��Ʉ���JR	�|+�D�"��� %m�7	���W]�xFC��n�h������`�H���	V�����$�G[{V�����/o�`T�Ū�Z�ڀH|ttC���$YgǙhJ���,�����\������[��q�uz*eJᎹ@����M���E-7���C���7��i;V]!�
GU��Y_��A�|�nV�� r���eͭQ�>�v��sdW�n�)=�b�������!-�B�5�2)��P�+�<O��?���F��_ ��^�`�#i$W�ĥ,0r�	`��tjv9��ݗ�,qV��cZ)?������3)� "��i�H��\֖L3���&z�ϑ��K��k��Y	�֔�8�	R���e�թRi��q���Y����Ϭ�_�$H0�.u���*hz�:u�jG-��6��71;�_���u�ǜw����cN��f�j/��M�c�M_^������ b��v��Cyd}�Ο��wshBW�.z�Ǘ�d���k.��;w�&/�����D͛L˛o?�������n~�ٽ�y�����iS17u��hk%��<TU���,�M'EC�ڈ}��xdU��q���J��W��L����mu�%��83I9� �,�X�3Zŀc�\��6/wԣ{��5��>pM�`����[�Ru�8^2��� ��oI��U-�мY����=B9��>_��'y�O��*C���j^��[�Z�v�gT��+�x�MEDM)�H����)?>�Q�������}?�"ߌ/ ȸM�LH�f%�UX�&�*�$d�	�}ؓ�`���I�+�#V���sM,޴-�^�1���(���E�O���y��`����XuDF(��n��څDn��~#$�B�����f�zǷ�������x_�\⫮���b$Ry1nض��8�R�u��c�<�U�j/@1�o7���ѫ��y4��X7!�"���Yf
	*E@C�~͢��9⣔��:����t���Ҧ�"?��B��!/֭�I���<=�(����&�3��H�3�VW�G�چ�]��`b$��AηBRߋ��M�Q�`�b6�����'�-��y՛�+�פcrOVw�*\(I����	9Â���-[�S9bk�!��1�z�W]�8G�yC�EV}�
�2	J/R�
Ό��b��*���O�D���<2Td=����d$��+L�bWinH	_Ȩ�A6"���)����s<�ȩ㴲�����:7�)����eg�����,fm*��Ԛ�J��z`����j��q|�9�D�����p���귤�KY_][�ǆ�+�aaN��S2����i-f�x~�QN�h?o�?�5^^/p�d��kM�48�+fRKѸ�5,��kA`yO�9�����ς�b����(�o�
	u�Hm�A2�*Cn�����t�5��S�o��#�~�S�&����ԳUflJ6sg��Y+����w�W�� ��؏ �7��������kE�0y⑺/yu�"��������
q��ܗ�pD��J����$<3����F⌈Z�C�8���w�F���b��ƴ|�9�Lu���j,]���x�t���}�^nwj�0,4��E`�eӠ���~�8l����oڄ�=Y78�A�5�<Ku���������#��J���9���Ô�Q�����!��dݮ����?A�7Z�:�"ߐ��-�D�4C�ϻ[��w��`��?�8��1����"�z��eE/�*Q=Jq����U����eo��w������O��ɑ4�Ÿu6C!�WI�]��CBj&,�v�xyh�V��?p�9[�J�hpQi(u_���VA�c9y��I���e�x�I�hJ���*�����H���Ou���&k*�f������GhL&d҅x��,�^���wb�3Y�K���Q׿kk�vv��d���H�%���Z������).T]���m�����ɵ$g�elL�D�gʛ52ѨKZ\E����3�Fue~�I���.lwV����X�t�FE�P�L%��0
��|[��Sľ��A�]��EZ�Cn��
8k�Y�VXYd%��p�"=�Q�j��-}|z    �����>��2�0�8J�an��� 4EB�$��Z���9��9_~�9N����ّ�BG�kx�̗�[�g*��aZ"j��r��1���u����"�<;t}���r�������8t��@�`�2�C�6$�d��%߭��a�L�v�S��)�����'ix����z{��WXA�"�rlE1�M���by����q�{=��iR����A�2�`ݪ!K�#
�dHRh��59s4MSǁL�;C�>��|w�D��>╧���Y_����� ���
���$y�u.����׹qSE~TW��}���[�l�ZU�f�ҫx��4���ɀ=%��,(�U��C�{�W�za�H��Ѹ�HM�4d0�+!�D��a,�/t�CJs\�gM��_��u�����hZ����,����M-,�?~�Ϝ�>��8¸a���Px�B{aXIyP������l�������i��+���У!���ă���-+4l\{j7i��l;)m�*�&m���O��4ە��o�kɺQ4]���_׮����9�5++M�R/�����S|8�9Ъ+��ܨ��b۪��+��ӘյzIc����"�h"���~���Е��[�|�aɺ�j��NA�ˍ�M<	��ےJBh��x�Y���Ij�i��G������|y�jUI���R{k�]��䑁P�x�&b??�9�ê+�C��q�)7	Y�I�f��x����PmIQ���䗷����ؽ���������;a�h6�źI�S��Q(���t���O��ш�|,.��|�D�>������sDTW��Is��=�n��1E�ɬ�J�`���������
��=I��<�{|��Y�>]�A���o�Q�((}�F2@*E�ݑ&�H���[N�b��_4���|�`��?��z|{�(JZkG�V��2VW�
����^Z�O�����?p˄�9�j�	v5jsHM$���Y6V	�D���}�qw�۷w��t����s��'M,�2�M�Kѯl�{g�T��yD�5]��Ǆ,���������ï���y��O��$�@��;��]�/��`���͑�rt)2��� ���fϟ�C�o�������V�����/�.%[���
;���Ɗ��lQѦ.���cm����9Օ �$u�Gc�V�x�󀀕j%���4���`�V!@��Nf����U��а�j �1�oR��E+/U	D�4���m��j��#`	9���,���xz�t�U�oJ�Q��j�[�7�7���`��I-Y���� ".�#���jk���{W����(��|H�V�{)6��gN���úN
W��K$ِ��t���{S���7�?�<��@p+7*�\��E�!�U�Fn4\��ӓR�J�.�٨������_&Q�4��HJ�ݶ�*q��HyZ�>���J��y�ƨ7id���9��UW>y>,�\�vS���	���D�@(-e�u2X�z��zh���x|�<鲧+D��0���X�[ZQ��
�&C��#M�m�g���It�{{������_��QA�ź5��⬒��-P$��*�9�V�M\& ͢k]��Jp��a�&�&��I�6Dj�V+���JH�ꨲ�n�x.T�>������p��׋��D��T�e���Pr�PN/�:������s��8�v%��3|�ó�{��ڤ�TcU�vQ��Km*���?=|��}����7-��8��҅nc*�[I2y������UR�Au�.���.���z��W�R���W�|�)p�,��J5���N`͛���5�OUM,������$Ʈ�<������ź�ʘܬ�20N-�:�*�$�*
Re��LO}=ϻgP]��F����G�mB �t�ì�:��R�QY�)���E���3�����S���K=U�:i
|��i�a���^��T�[���ok�6�Du$�?����-ـO���$�\��d�iԖ��L�"m�����lҒ���[a�ȺՁgm4=	�P�ω&!hV����������H�<�>Ü|����o�e����Y��X�ɛ�p�LFT(�x��rz�:�������<Sr8�b}�W<��` (j��$�3�ֆ���v�$��^��|���r�?-�ˤ]�O��0#�������ZBD�$GW��!����T��������77�s�xd��ϫ��+�A��Hv��"`�cw3k�Ɩ��鸴z��>�99������������5�+À��E�0 '����<�������~��Q�r?��N����o�Y#k,���H`;�X<�����-?�=�4М�)Ew�}��W|�(a&��E�$H�I
q`����ml�����p� N�s��gM�,UË*�ڍ	;���"i��'\����il����
�tWᇼA���-dB����P����[b�:p�D�����Z9��<��~�T4%s?Ⱥ�w���$�SKt�f)�U���=N�Xnn߮b�?��ri��?�K9���X�Fc! J�J��PS� ��\a�lE��z���޺+���pf*��B9��*��"�qaOIC�`,L�k��2K.^w�}��	f$�z��Mx]�hRά8M%&$�U3g$lo��E�����ۛ���o��|����G�9>TY�/*{C"��Jz����j��+Af���~�7��Py���az�
d��D�5�G+ ����*��k5�v�C{Xa����֍^�/֍IƜ2@g�j�t��EE3U|��r�E�˻�e���I��+�#_�l���b��y"hWdźF�U�*l���h�6�L*5�]=8$\�Q-^���ei�D�����d2q_"�N})��H�#���e�j��*��A�G���V�S}�:�x!�i�(��g^ ��P���g��8>�>V@�9G�+��H�e�``UB����U*�%��4D�H�U�9�OC�j��|�E��>p
��Q^��j !�(�K��;j!�XK	��v���ݷ?��~����9�+��p�F������b4��7j7����5U��|���|��T�}z���s��Gm��m�u�&ֵhG%��4w�[
�%"�T�Q\Y��E��n�0�BJw�}����uX���6�3�JJ�G�w��5��
>_h�������}��Ǉ8+t��$)&��`�Ep�9���D"%��YAҀ:pvY��-{Z�������gT0�(!��%��&�U�!�*KW����+�����.=���[��>�O�9�e�+�#_�Ԙ�ê7�u��敡�wR��H�\fR�))�|���ش8��[w5}�ݖW��[Ƕ������&@E�jT�}��璗O�O��]�t>|�H�pUV�����>�Q)?�S�X7�B�.h� YИ
 V߄�{cY����H��z>��FW���!�j5L1�q�HGXQ�7)��BK��@�~�ڬ�����W�$e���>p|g��CƗ{�ּl��V)CP�t��ȁ����_���(�×���9ɨ��#/����K�	ɲ�H+	h� ��*)By)jHƅ���hm�?>Ι����>����;]����7S���f�ݖ�8�,����������v�MI�$r�H�d그E� ���<���ZYHhl:�/f���휖#����}-�t�� (]Hȩ��8���χ_߽&����X�I��ܾs``]�K[R5Uǒ��4���KVyTf�5z���2�bH��l���N ��Z���nY�'^SÁA�eԊ�[��s�����x�����^�>\��ŷS��*�-1.ָ��zo�"Bd*7�+�z��^��:GT~zI����q��٤�QdM0��AǍ����E�(�ܳ帠VV�y���ǅ*x�z���W��>������`Ke�w�$������I9\���>��&�'Ԍ1G���$�t����[�7dm��j6�~���ܭi��9�mG2�(@9_�E_(6�Jx�O/��:!��a����9��'��B�DM)�_�c�?��L�T-;�9e�"��gc�I�HG �ۆ�z���!�k�ŝ���Pe����HsQ��Lw�������3    �K��At�f��.���cXZ�O�>��K
��-�I�/	P ���%7��{7dP�l���+Ľ��^6V���Ÿ�(qe� ���DHL���j�_{�������8������֕�.)�+�r�#u7���km�U����&px�Xru��ӧ�����7�{Iv��(l$�5���f�U�gkAN���v��J}g�V���t�$
E�V�
p"Jcf��߁��/m��xw������C��$�������'�w�� �ZQ�Gc����R�֝.�ٔ~>
3��>��P4n�kCn��ۘ��5�9��ʖ�@IU�,�9%��A��xww>}B���v��o�x�ȟ��*���I�1�6l�絉�"�ӟ�����1>o'J�߇ɰ��~��̕�5&�0�<)U!Z��zz}s���}u�>�Z97��>��T��Z�+JB1�g��>6�j�W�J�κJ���ۙ�ɗ���2��2��>pe�~�֕EEk�Ѧ?��ؒQU�7�e� ht�u�f@:�Z�3��>p,R$k��螛BZ)m��^��Ĝ
��-�H
~�釥�p�;ߤA�f��G� ��q���jW�c�� PsvY�o~�٩� ?ۜq��!������}�����{�u��g�Qb��w�DQ�i��M�g3��vO���!1.�:��4h)�$l/֕��#�s���44-�9k�Zbආ/������i ��٤��!��Z�n�J^��l��87!�	�UK�xE��+��-�O��96��?p���#��q�!R��t*�GЖL�}���:{����fQ�=���1�\@pщ�@!Z�"�v��ˡ� <��f��R�����_W�������c��N��?�m#�Ī��u��a@�
�-�E�#2iR�N��޽|�����޾���j����4��$.֕�߹�$��_�#�ъ?醜�[�@D�B�xsx� sMd1�ngT^���[X��5o9{Dvi��Q�P<*�Z�qP���M�������>����0��?�E$��կ����Ћ�.�v��i�ّ�+��йN�?�������~3�������ߟ�q#+.Vm�wJ =!
\.C����l	1���N��1�M����ޯah�+G
��U.s�p�������\��N���8�u���&;���%n� �C��~F�ume��`+�G՛񷃑~������,�4顎���@�Ȫ��'��+�D���?%Q9X�9��x��@���tj�i�����WN���,Z��(�L[(��%[�.rN�y(��K͔��y�z�:o��?p�n7��jպr"*���,�6ap�=���!�{��NlO|< 5���yi�� ߢ�^��H6��VG�'�K��:�yd�E�B���RϪjj�~��ָY��y�G�ʚzY��#�]�J<%�V\/�K�J.c�fƑN��A�H�I��i���ϋ�� ���%<���=�]���r��43���S�Q&���Q�G�<�#��or �)��^���$�[��TR������O��J�T�=����>��t1�@�L�7 r��5�d.؅<�N�LC�PԬ*"6���|zzҿ�����Qoo�@pϐlq�y��_�U7���m����語k �o��}���p���k6i�����\kXw�#���}�=�U�9h&��n�4�E9��`�0�q�I��\�{}���ֳmI2G~�8]@���f?W%����u�������vw7�!�lr��7d���? ���䓞�!a� o<�����q-��7*��_���I�������U�*R=&�>�)?�8z�	L0��"������af��G��B�=F��u�S�^Y1;�sr�(�`�Х ��\}	ӻ�Wo���'��A�r������w[�gv��0(s\#3|�T{OܣnΩ�
3�}��U�T�l2��3|����b]{̨����7���F�����D��)}�1I7��˛�?�K�<�{�#8kLw��� ���us�Y�TB2�!�};�~>��u�:���lR��;��wN
��_�AvNwxé�����+3)���U��>��Och��&���f���b]3n5�x'IrE�q����K	�cp~�q���ᏽ��7ؤ��w��-��ۻNW�:뛞m�|D!����
�k�1rz8YX���M�xE��9��7�����b3�8`J����3���9=�dx�:�����������2�Q�%�0~Cs�Y8�J N�M������j�j�٤��/��D��״���c���:j64c
*W@���8��8� �d��K2����Ū�qq]|�H�����Ls��������ݗ�l�*!�~�p6)�rzo��b}V�D�A
�Yg��q����NAU��u:� �t8�"{6��?p���ź�<:�T@�j��=wO���6,jY�m�w�=��?��bv��º2?���jp�Sޫ ��$LɩX��uV�嬌*N6y�r�a�*�L����� [�z_>x����2���������]����1�o�L�9ȳ�:���ni�#���y�w��"��U�]�J���G3������SA�}�F�抈BI��ڨ "YT�N��!�s� ������e�L�&�|�*����X�Y�Q�wv���D���bW��I�jMn�����=~��?��)]��7)���)�]�i}f��%!@��4����Y%e�2ο���N�X�a؁�d �gR>��Y��x�2åMr.��{�N6Q�iE���}x���,c˯߽���~��ۉT+����/��=߹H�������|���s�6��{�z<��om�7�N�ȝ{��_�<Jk铻�8*F�9T�(C�9g9�(ٹ�>ޤ�"G��6)���n�GW}���DҲ"�8��F:5#�&���[����Oo�޿�0�{��N��u�i��S�ԩ-lEDf��c�?��5���[U�����x3������/�#�[�f�	�E�{©���uN�8�� ��z��]&ƨ)�N���v��^�=�����0�Z��bj1s�����[糨��RM=��9���Y�M�8��i���b}ހ((B���
Kv �.2im�=i���p�nr������O��&�Q�[�Q��3��|@*�}$]�o9O��z�����c<�N�F��|dZ���AZ�s���.����!߄�R�:Oo���f*��t��ᘾ�ݤ ���mF ԉU�����u"C�,j��ϲ����HC������i�I �40�n�6��V�I��,=^D�4%ԅK�GXQ�����8iz�I ����=6Zצ�t%X����T����|�E��-ӛ��޼�zyxs��͇�c<�N��"��=]�ԍ����Y"6�c�����k��tS��M zw�0auB<�x�RFR삫��r���Y�Т�aѹ(��|\C�q����=�r�ⲽws	�>L�ԾQ�3r�'"���-���:Dn�n2 ��`�� �ź6�[B�d�9&��P>#�K���A��Ǡ1����r{�j����Ui57A�y����tU�n�(ӏ�������Ɣ�v��G���V��KZ�ņZ�+$&H7�CS���U��F�<�vG��3�v� ���n�m��ᣬd$?Ĭmħ&qX,|�QE��5rJ�>ߏ������`��b\���+�g��8U9����+P����Z�������àD�I��(Y�,`��/�N�iH�f|C8f���������Gr*=�oCָ�&�<��6����!׭��k�$��M�|�$Q�p�-�|�,���:�Sz�`�׷3�u��?9�n�)�
��\(�l��e\5Ż�Ҥ��t9?o%�M�:���źR�+*F�&gى]l�2(���y]H�:�����u:����\���v\�>�Ia-ָJF��M�>Ǉ��Q&	8�:&�7i�����)�h7��[��;�S����q���H�c�ԙpzs�,@o����q���$��/� �=�>���Z��JP钅G-��N��رgG�ݹ~;����q|�����ޟ��խ���"��x���+
>���    kR�V�y��ާ/�1�d��^)��@h]��O��F�w��P
�^ȔS>x�]t�O\�5�h7�}���r?����3(�[���D�;0L����Dm�:-�P��1>ogJ�w߬a�+�t7�l��T&$j
��阫*Vf=�O�/��&��&�����X�;2�U3�F��O�b�]�nm϶�	���h�r�u����$�op�;�;��SOEq��C-����&��D
��SzuD�S��(����Ga�,@�BqM�=�e�N��/�HgB��fYI�q�
��㠶����g��n=/֧y������ �:w+5���-��#9Fd;]�������z������"������	2y�<�6���"@D������3�A_��t}xӾ�<���7i|�/����V�\�t���Z�� ��fQZ!f�NFj	�>���n���!�	�^Z�~d�)��H��Н��a�)�ܮ��:�5�l=�H��{�_�����h�5�h�Ԍ%��z)��Dj5�������p���b7�z����O��g�1=��qߍ��o_)��7c� �iy����vX&�d�W�l޳��ڷ`��LT�8ɮ�2? ���p���~>?<R+�)b�J�c��M�x�jt&���i:w�s����c�cpQϾyǗ�HJ��t��d�[^=ij�Yב��m�9n�[v�k�s�B��: e�e�c �2�I���_aW�r1�gM�=<"�2��� ��@2��p�l�(��9��nЧ��+rf���E2k��]�8��gaD6��;#��k���e�B�vnb_ r�>k�yك�͜�ึG���	8���iS��=���c��N�����u}���XWE�!�\5W���@����S>���)�!o2��'J��Z�igԨra��-��ݠ:/�m��b���u�O{�>p��v��ݤ�sJ�-�a�j�n#f��m����.\�O���R�)�;���y�IУ�z �i]�'���2�%�8�\X��1��V�%X>C�ooQ��.�v��L����M��hw�>i�Gä(�qm��5��g��f	����^������y�I�N��y�G$x���5)��9Z�8�M(!�J�~=� Q�~�t�!=�o��ص�?6�P��W_{�gΙ;�>�E��'D٧�yo~:!�� �M�������T"�#�$Ϯ"'�d��ӎs.65T�G�������!:v��n��� i]����k��K0!e��V�� �B�H��ͺ�4,n'̸l���L�����:UN�T�I_1x�q�!eͱ�E��	����1E�I��d�{`�ڙ�:b�qO
>-jX�u߄�9�`�67���o����y��dꁣ(�vS?�q����!犀�l�$O:��RT�-ኒ���yx�>�1-�M�������Һ�Z��!mv_4sM��(~*D!\���;?������t:ỳ�=p��߈�u}EӶ�sf�-��YECI&�cW�#����͘%D�I����{*�kX�?�t9�S��M�,}ڹ����(�
�y7�~�n���'d��5}Z׸����$I�#7�*�^Pu%�TK~"�'����x:9���1�_v����w݇լ�Y�ꤛE#���ӿ�Fh:M�_������.c�r́��mw�Q�HJ�/�R�D��,w6�����L�qA��$�1/���j����0����1��i?�B�c�j�.�������H�&�#����R']�W;%�ź�� �����c����Ϲ)?7�0ꦋ�-8�4���I����w=Vl@<����#J�e'n���9�T��]��B�xwx��Jqj�m2��A���*�^)K3L�a�"͛�OO��ٲ��#y�����}�G?��B�5H6�nr��=�P�Q�[�|�2[���s��0DkKi�<N�<�;��z��@.�_��cN�&E���{۔�sC�fD�sU��b ����}�!'x�P����GrO���1>o%MC�	����X�ڢ��Ɠ�N72�����\���	�;]�����������1noeN8��.s�źN^��F�ns�,��qT<W��=X���Gqc�MF�D%��:|�>	+?N�yA�!���A�8�ʬcu�;T�:N�Zo�!��v��Ǽ�@�;��bO�_s�j���u
;A!��{�)	�5P����lo���/Ο�)��ZE)�����銽*C�7?|b�l{1S�>絿�޵�<<�Li�W^�+_I��n���%���/_��+R#�/4�=}:������/��w�i�,Vi��=yT�,�d�FW�x׀/��AmaU��7iy���{TB���g�E�͙��(��9�p@L�\�H)_$g?���������>���T)�"۳�{N&K�D�s%k�q�'F̵W����śE���:�y;�j���q�w��R<pEE��R�/ 9TWf�����S�:e7iy��GX�޴�
R)v`fր�$jElR׳
�rJ�fz��p~h�69y�VpO�9{�u��h��%�XHy$"x���	ZA��^?|�nc79y�X�fO��b]��D����HCA�UBE�T�dC��燥�vxE&d7iy�2����ź��W]�ؗ���"K4"�.s�w��0��B�MJC�v�	_B��n"�ժ# f�rd3d�L�Y�uG���?U܃��v�d7o�k��I�Ѻ��TÍ��g��n.	ћZ���_�w��p5
�l���;#����ź��&+�l����>@����as��]4���m�'�d�g�a��[)��ݪbJ�]llA0��F�ܻ�%J���*�sBEx�K������x��܏���D=t3��a�+��@A"-�e/�&�kL��"s㛽%�iaj|�-}~6M����\{���JȜ��=�:���:GV�D��`�JL/�Wj��R�~X}�I��PA�c���ue�[��i6��|��V��X�6�v.7�o���N��67�z�3�^�b�kK!�"s�dE|��@m�.,�)L��)B�8b?��g��ǐ9cO�}1����;�O5����j��YA��3N��c���'��z���bPy�����3�M	XW!U���c�r����A���q�������S���v?����S���U��P��5�Uvޥ�z�6��/>��*x)��d�czw�r1>oI9�-`���H��3�@�)UK]9�Lź�z;sjc�ޞ�źv%�*��럁y*_3Q�_ga��Y薝FD���"�[�2���n����PcO�b]_%r�M�s�d�� "���k�^p+QX�I�����k�&?�B�i�^�+�����#9���@���բr��T��O�T���6yy�Q�����4��nE�PTA~�xA]��Q�6i:z5vJww�A�h�L<p)�i�a@u��U�{؜A��\�8!)��j�ZSϦN���Q�v��Ǽ ���-��Y{&"�p�.V��-*�LA�f��R�6��e����������X�c��6�x����B�b5����O�?.b�69 �\Tʗ�Ȣ���~j����?c��&Szw�l���w/���!P{�k�|�oBVG��e��e���x�N��� x�)Z�(�d�S�f��+��l���m��*���I���A�|;Cʵ�LC��U�'ʆ��_�>�#B6V1tY��o��	�y����d�o�|7j��֧��]��n!�.(���-g
EG���������P������������zH�w�=�M�����4���Qͪ�2M�E���#PCL�����s>�y�q�4=��۰�E�X�Ȅ��E�5��v8!�L�s�(J��_������6#v݅u}ypH!K�@2�*�57���+�O�e᜛�>�vִB<���Y�Qtk��`��>@�9�O���H�*�z}��N���O�m����6��&K]�q�l�U�%�Z�K�p8������Q���=�χ����v�����k\3���KH7��g>����
����ׇ��������^�\����v"���V/����ࠬa���     VC,c2��z�6���\��^�~KC*�盎r?$Һ�/i��[TZT�4v���<]�\ uB���L-�#���IFn���Y�V/�5��sP�:e�2>��ܛ�R��������S�>�>����
�m�ro�l`]ل}�M)\�Sp,(�1Y?wՁ�s�$�8��\s��>p��GĻX���t�C�b�v3^ ��z��4%�f���=>~�,���Y1�I�ς����CL�e!J�s�ּ���R9��P�s:�����uzx�Kc��n���E��ߕi]J��x�4j[G��)���ᕴ���M��ER�&���"*u��?���?�b4kO(2�8�i=��ܖ�d&#�E�oV��w_Z��c:pn����w�7�~���k���Y)A����BŃc ��^K7�����#�u��*�M����٣��Xם�,��l�q�\�pI�%d��Ù�y�N�X�t�����-��^ú2��d�|��$�6 �[�t���ב�m��'���1*n���!����^��������[�D�R�^�a���[Q�W�䠇k�嫟� ���'��k۱�� 6u���A1s� �T���I'ٽ�rzw������){�M�x����?�[ra���V���<��l%��a4V�6Y~�N0�co4�%�@�8����Rם��5�#�ܲ=�v Vޤ��_Q��V>���i���&�(�qS���k�5x���^o��tx?�6�6�~-�>��i��@��o梨L�L�����j� )g�����˅��v��J�=B��?%y��l
	4h��f�tPW�!��ۤ��s���u�u����/�Ձ=-���m���Y�f+������$]߶>�l'K�:�;NG����T�t�ڝ�
A���OE;�W�F-Ҋcު�&�!��ߟ��u}���5��8ց�"p��r�F�����S������p�&�6�~���~�
�����"���pb2�@U���6$n�n(xz�v�E����&�I��<�{v=�u�0�j���㢣n���qֶX���O�6�������ɸM��"�����^��Ҡ� �4�"�e�D��D-Y=]o����+���7I����8�ϛ�=�Ё��11O�z2��Xb��{���AE�&|Z�܎1���B�**�u���/�g!+��������#��&�!��.��źBC�9jW��P�� ���	W<Uj~����˫wo�^���v�����J��k�{!����B�~l��d8�o��s%w����d��;�6Z�0��U{d�*� �*gRE��9��to�	d����1Ġ�Tt�3�D|�@%��(��<K��c ��	�N�������c�6�ܤ�1/��f?x�j�W�S���������j?�m�_������q�g��Lq�h�o%�:;P+�|�gM7G��%�\��18nӟ�n�p��d��Gڄ=m��Wƈ�Ɣ����9�KQ�P�.(�]����	`a���$��oK�u�s2#�[&�!=��"�z�u�F3��l�t�#��X�H�_��M �Mn��� �y����mN���"=�{�,_��|�YO���Y�M����~Þ�g��e�Q�p��H��̡�����2��y8���!]��Ǹ��"���Ŧ�I(��\$��sJޓ�M#�K�O.���.+`���V��/ wǬ�+ÅA������t ��b� cFas5%O���p�L��q�n����}�um�iT�UZ;�,�����\�7�˽�L�����>�����%��"�q�\��^}
*9�  �Z���lҧ�qp�sK�?��p�B}�6�~�֮����,-�-j=�G�(��ٽl�j��;���N������u�|?p��;9�buO��⥭�W�.�H�lߝ�R��*���@6�v{���~���p[�M��h����źR萩�)�gM`lj��]���!.!�6���Da_|{v`��/�|;����7=b��o����EZ��un�ȅ�;��-�ήXWBĩ�iJ��p��M�x����X��� k�,+~t�4!��(��[���ry��|������&���fw�~��u� RE�5��T#!��4��s&�=�7Ӳ�9r�j��Ǿ���u[�
`�eEA%�N}B���kup��9�_d4经7�b�&��SfW�w��3Y*mK���( fj�ϑ{�F��K�t/��L������N6I����qO�V'��}�q�{ 8g܂��G�.�$T�az�������^�Q�t��?p+Ƚv�����ّ�9������<��5��J���ӗt��3~��O>�ko�Pҡ���\��34��샜{�S	ǘ؅��'�aB�X᠙�M �B!��QB.ְ�W!s�S���s-��I���1�.��x#����F}������e�z�ϰ�@�Rn��+��<}�UT��Y�Κ����M$�P�J����n���vw���?����;�vn?2�����Qͅ>�ڢ�ͨjf~��J�� T��t�W���7���*켮-V����*8��X��J�sʸ��T��T#;Y����w�?ǻt�-��F��@p��=���q�bo-�����dƈ����@6#6&��o�˯��G�M" �����4�k�b�R"���"�P�88��	#*K��׏8,��ܿ��σzq��@p/8�!i]���0ַZI[D�^ ���m�6p-/�4������k�Ⱦ�B}'Fj^���Kv�"R�$v��}���^�,p
e�ģ}�k�]� J�Fn2�?i�^O�b]�c5&�d�\H�f5�Q.,��7�����叇��x����+����˫�cFj7��,WwW�hbMR�d]��҈����t�P�����P5���^g7���"�^Kn�ڵ�B��̭lUp�Pp����HYc/�i����1��n�#�>E��!�ueӮ���gĽƕ^,�
j��w��R�+����჈��&=�冠٣�_�v=ޭ�&k@���%�Ը�WJ�)����k��cJb��r�N�GAZ��{8-K�z~���ȪgT	�B�%�]��Ow�����͠��d_�S~�es���h� `8��zC)*�����_,���nR�7��,U����bU�:��ߊ{f���L�/u.H���l�6x%��6����vq�������I2��dSa�U��v��<h�w�� ��wRh]瑃��'Y���=���0��������4?��=v�\@p��'�{����=2���U�g��.�ֶ"�����Û32��1��{;���3R=�:*?P�� x-$T��ܶ[� �5b�]����=m�b�&������0����V��J�ѕ���ʳ��@l9��4���Ώ���d�M: x�B��VQ��U�����QP���C!1��b��E��������󳉵Ju-9�ͯ����3��̀l(��tE��7#��6Y�,��ި�ź�~To�udp�S���s�|:)$.RH����x#�&��B��X�XW�68e_%�̫3~O}�_	|�����!ݝo�r�8&n��X�B�=ћ������E�w�ML�u���
[Z��=��N�Ocv��&���no��b�+�L�Nc�����	�CI
)a\|/�{>��\+�9n�IY}x5.�l���G�s��a�-|���X |��V�u�U�<����ۉҢf��PQOp]�%��RO����)3�+j�f)P��E��3@��K��%��q��b}�c���PH,1=BJ�1"��ʤFDr�컏���@�w<R���'����z�4���wW	re��Q������1�>��_���q��&���j���V�tC)0 (�)]��/fV���9�X���ow���	.� �����r�M 8��~�L��s�6�I�r\�4H�3�qU?�Q�DR52���$�/ߣv��+�P-U\S�h�-ʤx��P��J>)�>��O�d�W�Pq�gX��.ܲfDY�Fɸ0�n��9HupU���勿d6����ǆu媉�    ��b��P�1rY��T�Ŧ���_��ݘ	�M6 x�ܲ�ʳX���l������ܕ�~�ã�j�P @L�ێӱHŌ	(��@p	ho�g�ڕo��&�>�VN�[>���8D-�� ��Q1���4�[�I�P��w�`�y,B5��8G��8��%K��Q��	x\������s�D�Ͻ�:�w�8�3CmFW_PRjn�l�����H⦷�rx��2���=�T@����;�/�OM����Fͽ��H����U��L���	Կ��mT3b����G�h�Oq;��L�zV��$pR�Y�Du'��Um������v�ĿJ��mZ�A�ҁ&%2��\D��A:���Mx�o�χ]�vx�H�7�,������wkOPJ��j��Kȍbf��d�����^����W�9��\K���C�⮘�b5+lhVy�Q�VGj��-5��VVk:,�e9=�������c���7)�,ţ����u�Ґp�qb���F�:̬U5F��MHG<f��o2 ѱh��v��#+�W)�Vs0��a��l�Q4YR�S:�|;<�>~<Y<�?p a�&�b}:":瘸1��X�V�1�쬳C��2��^o���)��"\�?�̋����JVi���#���Y�Ѷ��VVg@�`Z��8���e@�S�σ>�v������\O�	2��:�u!R�0Qr��A�V;��������c\�q**�?2Cii�<��|�;i�u��眙e���^�e��X���~��Ǿ$-��괮�9�lsH3>,�q4� ��=F|cU;_��������緋�����Ӱ#��,q1��='��5ç^[NNβQ��8��,$�J1�t����#)��(��D��As'~��.R�b����vbT�k$��/q2�A�=Y��H�?�-\'����1�|����5d��xm�IU�#��l$9E�mL�{ʮ����Ƿ�����1S~��~!����b�Y_y�n)S$2+r�)�έE�#�y�eb_��0�7�},��C8�+�Y5ݡ�s��@<ɢ���YZY���ݑ{�CU*�&���J��k��W*NQz#���u����C	s�J$x���击Q.og��؏ၥ���k�i�T��2vI�>��.�-�4��=p�o����(�����˪�BTi0HesN
�Dcs��<��&>�a|�~��Ǿ�B��9AZצlA7+�-(1�v�TNԀ�Qd�h֛�>�Jk�6M�D���J�E�
���Z���!�d4*����*~w��dT^��X�\�p^��,�O����}���!��G/T�����w���I��t�U7�kfJ�+�E^Afs��i������/�ÏGrV_-8�Kפiӵ��4?p��]�������W��ng�8��D4s�n��
%�1^�[8{q~�Y�d��w�;;10�g���9�`���Q�GS<�'���iԐ��ǻzJ�c��~���y����.���uS�WV��s�C�-'�qG��N��s:�Z���>�)8��^��y&F�I |J8��9tD���
�6�д�����-���.�u�'�(�7����1$��
��ʹp@n�_��L�^p%ao%�b]W�b,�8M7�)B� �Y�2"�����8���DM�A!|���I+��O�А�U9*2�g�)�O��9 �'�L��8�ۯƐ�|	�ovJ��ull����6�d��2b�˪���_{���t���t��\����?��D�G��Xͺ�n4#*��S	�8�Z%xC1�B�oA����ʷQ��~���Yd��sn�^�}l�8N�S����8Sj�KV�]���w���\�1�r���-��{�r�ڕ�ر�^i�}os��Y���a���Hթo.c����ۘ��&�������[צQ��L�8	� ���� ��?�mf��h�������1�z-��|?�.J�S�\��b8Y��0G�(ld��<{գ��	U~��*=Î�V�t�4�D�X�?SK��d�Q����dj3���ri �8�?܌ѝ���?�,���H�zP���_�s��3��iN87]z��vS(h�ʹ�1cm~��nɠv��Ÿn��$�i���E)��&�yu�DM�����;�T�o���C�ͽ���*���;yA��(g��sd{6�䔪ɣ̝ޓ`��$��[�t��Nn(?��V��^MED�ޚ� "ZѭA-���ԇt{�N��4������=Ɂ�*���h8/�|�q7�&��	 �˴�"Bu��|;������cΪ=���j���c
Ih9�uj �$z����:�P'�)�}�èQ�&���(�v�7�ޮqЩ����.�em�\p������X�+6
�M�x���~���*�$��d(%�Ɉ���oVg�-�������M�E�<�v����7��^b��x�J�<�	X֤��M�%�s�j5�{�R>㠌!Z�?nQ4�Ӭ�X��WӬ�>��"5�&D��fkmJ�#8�N5�����M�8�����j�ҎĽ�֧�-�\�"%D����
f�\��{����6�lgM�9Ͷ�?~+��{@;�Dr����|U�U������c�'\�1.�8e VvC �f�ۧ✊H5:���x9S�a���*Q���O_��>�����u;=.[�_��ҷAg};u*k���b}N���Tk�H��y5����: ��H�EO����?�/�n4�j�n���A����
�:r�}M1"}jU�� �#;����K��<=��6�F|���� r\��߳��K��2�*����FD�m�TT����v�u'�җ�?C&8�&���<�n(��Y����;Rg���m�0j����#f����;��ǔW��?p*R�p��H�'���O��L�+��7?��4������~X ���q/4�Rح�a5�
f-&���;r{���YdSU	�6���tZ{Z�0V��o���I|��PN��j�\<�����Ȳ5�Q�׆����x{ih��>�Qs��?p�.��QZ�xbsО�s>O�'H?���Xs Ji��m�R����P��A�o�P���n�b|ڱg���2)�Te$G�X}E	��5+st�k���=�Nl� �3�n��QXW�!]����Q����)pc]�8���7���&�\�����.��qKW��9�k��p�j
k�$+
Zyq;�??F}��Ti��{���:����5�&,�ۍD��RW0TmQ�����������M�x&�4��7��� ��@el���:I8�V�j�$�a��N���ߩ�h7�}��Rz���O�Q�&u�i=sU9(H�fe��O�Zi�|~���՘��&�\���ۋ�����T��<g�	|������\l�{%��z��×�� ���Ϭ�{T-�լ\V5g�[Au��œN�3|uN��h�)����~�Ic��Mz8��������4[q��j:�){Xm&r(�\s(�J��Ƅ�MF��$w�H�+2&\`ݪ��Q��F���,Blš��W��#g�6i|�YPb���b}�����\�������sjG#g�-%U�G"(�q<�$�kQ^�냃M(�s,sc>7�s�)ɹ��r�8�LW\�-��N���v����7i\w�s�5;��@�9��J^k�
xBO����a��=�^�1�MF���د�h5j-��H�w��9��}
��Z���8'�4J��or��%���H�bu��߶M��>�V�#��C+�|D����A7q��>�.����ɧ��"��	��Z�
�b�����6�Ȏӧ�n��r�`Tv�·�E�7�w�����0-��<G�N��c��BY(�ˇ?�޾|}x�����1~o�E�������k�
��u��kA
3ñGF@��1�ڵ¿6�?�:"�Y��&]�q�����/h��e��d�X�&]�-q	�H=?����>�,���^Z��s�5Sq�23�MZ�Y�b)D�M2|�x���$�qTl{\�5��h�Qv��'C�t��9K�gu�������W�O�?�k�����s"|�sӺ�(ɢL���`���,�� �mJe�"�D���G=.l���3�|�)ZW��
�B���F��     A1Փ��ɪ��¡���v?�����4`��Y�խ��ڀ�0@sM��L�d�+ w��l 1GuX7�|�r�~�
�^���R������P�����b�66�B�;���?��oٛ�>p�:��fh]'mV�s�2�N��s�(���>g\J���al�l>p�᷻���S�ԥj<�1��bISH��1g������fL/{���q�\�?�Ѻ�9dm\��5��EJ�-?DkW�J���m�M�x��c�XW��d�%�f�]�:����1_"�Y���~Z()ܰ�K�QpL�ۤ�q/�ro�e�>Ȥ�����v�~9|�T{��fd�j^�v{x|<niР�&���Jy��u�q1G�Df׌C��T��3(�b��5���۷�����/c��6I}���J��LZ�_�D�n���$���nΚ�2��n{�I�v�BB�ae;QX튈_�+��)�
y���^Gr��Q��R�N���1�M�xd����c����֪�A�i�A��4�l��i1��Χv�HB�?����~J��\�M�xh�����[]��N�c�.�zH�.L�qA����X�ts��p�=~=�h�L>p���|Z���� �-�wz�$>N\�wB��Loa�;*��O��t�=?�����>������Ӻjrr�j�4���hK��2�,*:�}��Յ�)�\#/�idnr�����ź����*�̲s O$`c'fT1U�����~���e��^�p�`����q/ e���ź�Kj �jfE��*���4MAꪪ)s��@]��yPz����wQ�Q,V��J�Rd��Uz2ʖe�=R[K�O����GU2�L?pI�ݩ=�ߕ��v�;Q�!:Խ�Gw�!��"��p���s~�=m�>��u�˦X������Mh����^r/55�()Կ(?1���J�����燴�rF�\f!�+�m�E�@?����o�S*ףF"6�~׷�s)a\՛��1��g�\�E�HNH��xѢDQ�k:�a��>��}�d{��<a��J���C�9�FE�\C�zF��<7t|��(�Ͱ��C�Bأi�X�I�32I������<aF�_Mˢ窦����8��6I~�Ev��b]��J%�j��2�R�/�|-M�s�� �ah}6Y~܋(�ܟ��������ʅ�.�{�:�G��'`A%;�<��C�r�Z�8�ݏ��a���I�˃�X�J��tp��_�_]�S��K
��Hf����W�4&�&��RF��^�����J�S��F�MQ�'s��N�ϧ�Qd;AF�r�n�u%-oN��"��W�����jF�O�2��� 9cz,��aP-��3V��W*<S��Y������JZU2���=���M�xd�5�� Z׵ۭ��qe��URZ��EE��r�LW��}��p����՛���WW�^]�>��N�����jB�JPp�M�n�$�����AA.U��)C{��n��{L,٤��o�}�p���pUոL9�V5��	kPJ�$lk]��<oǜ�MN����?��^QpN��me��3����c�[�e�kT5�I�㹮��N�[�z%�"Q�Zθ��f@����Y�l\�-u[����xxw|�yR���V��sJ���ۊ)% ��y.� ���P#��"�}�<��D��A_z++�%�vA�b}������%%LC�T�t�*������c;�$[ː�O�d�c�#�ns��Y}����Rv�s��ˊ�-~B �p��t<���̾��6	}��un/A^��o<����z֒�����IQ>w��*"� �w\r.�m�����g�G�W�6I��OyF.���"��ƽ�WǛ��q̣T���kA�=~��u]�����*�o#Y�=��#�U�!# ��Ӆ��x�|N�Ǟ��3�MJϥl�w�b�e�����lb�	�m͈�ȝWk��0U����N��Dŝ/�TG]�Mz�B
TJ�g��+K�����ge�i����9���Wo��6w�'�����MN�&�n��ĉz�'�8�� �s]!Wf��c;�No7��ow\��i������{�$�^(�6�\f�� ?p�Z�;k�	����p�=~;ޑ�x��y8�Q]��>�1��9؋u�(�-!�p�N2ق��l&���)Qr�M����Wo?\��7���݇�?�q;�J���&��l�vdϕ�l$L�s�<D��2��l����������I��l4�92��󎔱1�Tʐ�s�5 �|gjh.�:=�/3�7~��wj�A�b]?�L��a����Yu;SlQJ�c�uzuJ(U�;�;@�����?�����y�sؤ����Žٔ��>����r�V�nDx�\�/ev
p��R�w�����i�S�$��s(O�F�kX��F��U|H8�leW(�\�e�Wz�N'2�>���A�%a��ǿPR���J�����L�IW�-�����(��Z]����կ������N���܀M���^k��UM2V���7�ʤ��Cç�XQU�8;�ϝ�Ahh��>��j�a����"�7�M�]䕅�k��l�i�md��-~j����vJU:�=��5�����J��
]�4'����N�^�%�ܸ/��B�	�)`U�*��F#�ET�(��EY��_dBL����#��%��������@�zF �>�f�~ܙ|�3��D�����z"{��2R3l��x�=�\���eL5zsil��p�����]��\�sR=�t"
���x��Ri����U���5mL�ͨW�C������'��5=�8��N�Sz��w|�jw�}��g͕$Un�²dGB�T�@��䫰@w��p$56)�-�0����8:*���s�7\8�}�s֭_e��O���5��oǑC|a���I�+��Xݺ�-[V��q��`�x�"Y����.e�%�D������?�]~x����wC���&��S�;1�֧��2���v���k�K�����L��O�Q,�a��~�]���1<��RJdPF����pR ���)�F�h>��4l���)�N�b�b%a�8�olF�V֤/���墢�Vg1���t\����c6������yHVT��kP���H�t�$K>&=��b�ܤ��\�7{�?�*���M��NAw���9�jPP�g���9=��oڗA{;cj����]qE���8�t�Q�ƌ��|&� ��S=�����|�������z��~1���>�K(z�]s��ě���H�ژ��ױ�3�6�~�"/�{i\Y�R�-{74��h��]���Pd�U*g��c���	���{��>+f��\hzv���&H�x�A���?]�S�>����,L�ỹ�&�|�����V�yT%U�,�z����;�kNu�<��]�~>���'���xsϥ�o���S�zD����o����-��S�%K�6�P,�s�!O"Q�8������0�9�,��M�8Ơ��A�yr������qP"�ƿ�{�Y���勞<�i�8������?��_��i}��SBQՄ#��}T5�N�r�&�:����_���M �F���j(��T��5��Hs井J���_���g:�r�q�>M�$��_��=�ً�<���O��2L�D���_�6�˂/�������a�{;����U�]�v}aɹ Ip���:&��8�j�R4��������1�ngN��Ӗ^�때Zu���Q�С�?��V|��E-��n�u�8&�oR���j���uW���#�<hQ}K��M�+JYT�^��;ҳ�
����7[��ȒE��/�x���c�LY���LB��Hl2:��&_U}�G�t��P�K�i`eIix����RGO�D��Ъ_��E��ȵ���� ֢�Mf���ݧ�<��Î�8XZ-���V�:��=��fu�R�VQ�K ���y�.���ߨ�<��$#伝I1�}a0�T����I%"H �(�}�jі(_����Oߥ�<�c�����0��0��R��l�m��$�5[���Ar�<[������������ �szg`5{~%��ɕ�    �)�P�_�$.eE�erd-x�/��^l��?@�c^�Ѻ�n:ۆ��Ȯ�vM\cE-�q�t�&����p.HO��ܟ�O݂qشU��3/w?�#�K��j=���.K܇(ޫ��%,�9Χ���1��1�	e�CZ_Q�Hi�ZÕB�5{�쭬Y��R����c��c����6.V��Ry����@u�=WM4#�[�@�_J;�ߧ�M:QO����!��ſ9ٴ��8sGbh��d��'�E�V">ٽ� �\�� �$�9�jg#.�K�;Y���]��i�U��ž|���!�P�
��?nV���ӽ�	r4�/�F 5��'�B�.����N��9ݟ�l�\�!�'!�T��b�㾋ȳ\�kw܎�\�H�
j�u��r~��.�c�&� �F����H�� ��j��攨+��
�ۢ���s�}<�l����0��X���d����m�S�6$ݨ�o%#�ċb�'���G���?@���h�W���9�E#R[��]����k�u�=Cj���N���O?�^H;?.��D���۱+
�#���'A���ʓ� )�o��G�GH/b�g��2�z����c�Z�N�_t��7n��ɺ^6�Fv�i|~���!/��H}�m�\���}�쪩,�mޘ%RZʿ�Pf��\.o�5�{�Q}�L�BY뫰Pj��Ȣ�]�zXc�v�w.d�.��۟?�=��R���T���/<�7����E��PƧ���K@�]],�.d�w"�0;��0Ɨcᚲ�n���(1%���f�H'xeR�������E����ڐݾ15��_7�s��� ��܏�4�Lt��J�?��r�=R�SQ��j�A[9cSH�g�G�=Y_6i�*5]���ݴa.;=��GKDC9��uO[��"YԔ�$�>�C9��٦uQ5��_�u�Y�1П�RDCf  ��o:)>�}-=4����>�û�Aʌ�;�`n��Җ�ҧ�Ў�#�Sf���u�?�!����&����\�/�e��������z�qdJ������L�����/�LXEo@�EL�#������������_����������y�V��nc��Z*�<��	e���XjI�d2�ߞ�=_��c4� ���]���I�fzj�|�|w29t���֦{i����<�%��:;C @ۚ7S�<���-T;�D���~E;�;�G�Z��yy�>jmm�d.�y{���H#\��;92�����m$�>�G�F�]�!���?������^���k�c^e5|��,W���I[dJvA�����0��$$�3ݗ�U��Zu�⾯%w��"�Wr��nSeZ�|���o?�������v8�8:F��6�Դ��1�V\NR�g��t���[�B�9�L��w��Od�;��3$�6��L�ø��B�(���I�_�X�Í�0���%M��X	�mR� �Bu5}���*Ha;n`��	lF-��� JJ%��C�Q�
C �j�:`�{��򾧾����Z
�+�r���Q�:}z�,�mzzN�?�"wCJ�3zJ�Y�>ר�w����6i.2lE�|��_�'�)���CZ@����vX_	����?��g͉�ߺ�B5�R��˹n���D�!�P9��	��#�:tï�3�72��-��J��$�������wWO?�xL8���ԗ�J�^�;���R7$��V:ǸO��U���-?<?����#`�!��!���77�ܻ�YË(��\e@َtV��4�̅��w
1�q�7���>�����6��e�SP�
����ñ�Ϥ�ZB���,����e���̀8��!���$��X���^"�kG�x�����NƸ���϶|����c���q�8��	G���b��A4
�xR��t���RRY{q����잿?ߵ�C�_�� ���a��j���V�S��T �k��Q��L�2� w{©>�Ӷ�nN�}~|�>���g��|����uWT�(fb����Zp���5>�w�z�#�F�=�}�!�O���l0�b�8}t�Y�o,P2x.t�}�>tї�����]�{Ɲ|:�gؼ53ڈ�u�1xT.0�%�A�̇�]�ͼ\q֫�><g2&~��1�G!���it_�{�e�T���0��qH��N�_��ےӼ�b��Cr@�]\���*P���UDK%�[5��Lm[*� ���A��8��	o����lV��l�w|e�RHb5�Eab��$m�(�C����7�o�A��qH�h
�����\g�y��s{֌ó������jiww�׃�,��д�b�i��纬܉r�$}�jrßH�tY�D��˧g�%�c�������=t$ ���޵ĸ�4�\�f�)����c�!�O��y�Gt�v��,Ųm�vǵ��ܚP��T�-۪q����0��8$�,����f{��"b�<�A�,kk���}���E��d�[��"�~zJ�}̣^���7jΥ��>.E�x�6*p����ҫUҷ����Z�C� �"�.�O_�^F����$��4J�����6SR��-����*iq��xڋ�[�f�{�U�L1N��QR�n�d739�fk�\�(����|u_�jT5?!��WZ[�PE"�kep�\�C���$qYM�K��gv��<��?���Cr�����nߐ���ܤL�����j����,'ߞ�i����u8����>���tZj��
�UR�:mP�Q�L3�Q�ZlN^�R/˻s:���� R��W������4BIP}u�k�l����e�.�)�s�t.�3<w�R�O���|����cTE��'P�:ζ+i��U�0%�4�"I��Pk�> �;#uϲw	<�c�#��-��q'֔�Kd�uů�4�.!F�%�f�5���ۯ?^S�| I�G0,��w*cGe'
�Bɣ�DPkW8�tN̵�A�:q��Lt�s���{�5��]K��&J�h�*���&qE�o�7�����~֋C� 28����f5�T�� �s}U ��Xt(�m�ۓ��9��?[;}��R��d=�f�TE�b�?t����\)��89XJ^��)ඨ�����7�o�;F�=�z¦������}�J�<�ڂ'�wE���X�ҭ"��d͒�m&�0نK_�L= ��ˉ�Yw��lXA�H���TZX��V��V����|w�t���]:R�-�{����]�b�I�*�<������A���c�i�cQ�-q����l���!����U�,���u����%9nI>�ȺUU�v��^�:)��hD��m���j%2l�)�8���5X��}��/�|j��;��T�:�<wJƑ��8կ�Xw�"E�(�,5��%%��SZu�|�$�[~z8?~J�r��g�)>d�(�{ �̪����UFkq�G_E��L*�m�l���_$�׾�v���G�U7��;������?��]��� G?��\���j� �B����J�v�HO�I(��ɮ�֖w����!�O�B�d�b�u�lL>�W��lx���d��A�`��Gz�c ����%��Q1��8_cfՑ�-"1��tK>�,�.z��q̃�kC�`��o�(���=%$܉�5Q�\��"׎�NQf���A�����i>�8Y{ /�Ԛ��`�>0St�	�>߶����)R���W�������	��1��qH�X�6���u�Iۄ�{U5�B��+:{�2f�_C��Ǉ3�)?����nϟ���j�Ng�i��Yʪrq!�C��Z�䙒F$j���}��O������q��p��oZ����}2�1r"�2�$l��U;��cP�.��?�H��=���'�V�?����$� �-�7&Y_`�B�����P��Sߴ^OW7ǰ��!��UL�@��;2E�m� "������_m�"��,���T�9l�`H�T�E3?�Ƌ��X���3�lѾ�5KoW%�g�%��#@�N~���tBQ�N��y�� "
�y��}
/��Q�er$"��1)�'��r#9��i�y�ǣ��8^���3m��U��dѨyܛ�C��|2W2��bb\���3B��t������NTS�|�1�q��j�œ�    ���{K�t��n��h�?u��������=���m2\��+��Y���3���{FF���k��^JA�����H���Ǩ��!uOxㄙ�Noְ�;�T"J$z���Wp�]DJLJK��1)���餞�4�er�����o(�ɭ��tM7�:z��~���Ø,␰��	3�5��V�ĉpH3`k�9��W�m%�S��,��3␭�@�W�֝#^%��֦WLN2I��`�SG|G��󲽙<�uzs(Ϗ��6~�c~�q�t&����źS�)�[� ��ED�u��.r�-?���뜮O������Æ$>�gwb���_�J��I�3�v҃Y�1�&�Ia�
���Kzl�W�<> �� �q�!���)r�ҝx��(�����D]�x8_���ˉI�^���t��FR� '��E���	�����p�D�X$ǵ�W�������'EG���?����i��R�在4�qV$���%��7�d���������7^�En���A<�F��+��G��RDU��)�TQ��r~�;�s#�| H�v.�}���DFUl�f8)����J����Q�|x���N�]}���o������}=�\�i��^��G"�-�E.:�m�K�-�-��p�q7��~�����.=����� ��1hoƸSp(�@^EQ�F�FG擾֖z��SPf���������e�8��&v���'��U�4լ[�یŗ�	e�ȒQ�,�~���ݻ�/OW��~}��yR� �ur�}���)��9��>1�5ܲ�k�:�*bU>�����������_�=d3} ��8#G�X�K��$$��j�R�{�Au��9\�Ԟ��?]�vz�?����|[�����|W�st�5������t��On��_�~���1��AӇ��q��0}��%�*����Xg�-$��=��ݛ�՗_�+����W�<ꨏæ��E�`b5{�w6U������(�eo�2�j3j��P����0��8$�	o�ta^����D�l!L�29�)�i��n|�2)��O���}�I�̄�} KY=�ki�W�Q`�#� �Q5�fWx�n�_���O�<���m��>�Ak-�֝,�T��Ús�ܤ���)��E��dѣ[ޥ��|}bzL�r� ��n>�K���Ǚ��wd�B vd.v���Q�FB����w������mH�(������V�����M��R�>HT��D���1%ې���W3���uWj�Tnl&�����U�d�'6'�E�Y﹇��1�qH�Tޅc�f�;�-n!~�����f����%
6or+^D_���{2� R�b���^'�M)"��:�*i�?�PL��,��˿}~���1�5C.��&
=�¼X��N	ّ*_2ź����G�]��U\h˷��c�������b�V�fRh�Q�RI>�X/h��������,��occC��@��� !�{�ۜ��I�Hn��M"��ȵ#�:ߑ�.�O��}>ݦ��k؎	�C"��q�.�Y_u�T7���HN���!x��lUZKٔ�\�����c<ǐ��L4��#nt�/_��PD-<Ĝ3�" [�]I���HM����~:lYtH���g���NE�r����J+XF���x�B8�{X��<(�r� �w<|ڞy����5P��j���́��Q[a������qͨ!�`y��4���eV=��j+%��m�?j���Sz����p�%���q�lV%^����W�RO�#����\�Rɀ�}���r?<?ā�>�F����ޭ�R��e�O�b ڷ��Q(Q���w��ܴ���{���r����jvYbV*�Ց�ӈ�����^�m7ʉf_��/�t��EF SzZ�nV����k䒶��)h�࿢p��M��?y�qr� �v���b|I�B��NP)��ˊ�#���YU��*-�!=��g{��9�C 3&̈N.��lP"J�B�����59�W6�����*������OG�E�!��MI/�}r�fr"
.�o;�ȩ{	kueS)�P���������z�n�#W���Q���\>�餟����kE����ڢ�qM	�ժ��W�)�ߵ��9߽���{*��$��c�}��%����Cl�<A�Y�R��k�J$�����Hywb�<�Ȍ�e�μ�sW�~j�������Q�!���Q%����|���c���e���l�q3�I�<��k�����U!�{�M%'��c�N�(�gK���{����)�qJ��,mL1�R�f�֖����O���:�8<J�����źO�D8=pJ'+�����ը�_��Vօ]�ϧ�R��WN��i| �H3w#��W�?Q�7��h���(�����S6.��ߝ	��OO^�12�г��f{c�k|�v��l8��רً�B��A����|>]��>�~�>�cz$�>��HbgZ�ш�:�k��A��*	xn���؝˟���p��Rz/f�P�~;eq	y^\��ܚ��A�Ҵ��8�T8�6m�mw��uB�RRVc~B`5{[U�,�]3w�;�t����Y��L[��?�ۄ���M�tľ%��#���Ycf�I��G�mdFb��2�<_��Z����u�Hx��(��^�/� >�(��lC�b}���a(�׫丱)��8'�{^���J�.O�%�Ϗ���=��J͕e7��_�.�(=��w��6����ZI�W=���a�3�A~}�� ����u/\+�;TS����z뒈܅��������\�?}�×�>||{�1~�q�Tv�a�Y�qҌ����2�g���G!�s)m������M�Nl�I�V��v���Nx�8AʙW��nd���6jJn5��/)Z�2Z.��c�-��>������f��&�����\���1�0	.=���{���^�1����Җ3�؋��S�E�<ʳHQ���=��i5V�"��� �8X�L�?2����[{l= ��JT;�$#]ҥ/g�����:�Kr��Zkkܯ��5J_����z�4��d'�>�"��ö����|�������X����1��!ƁSK?�3�X_�=)�ӫ����ޑ�m�E��Z��˟g?=��!8�MƸ�G���F��z��x��m���9�ʘm�Uy�QC�v���C�q���eϘ7�z��q4�
kbBQF��O�	�m*����m��\�[=�t䙟@4a�	t��a
�BO�{�A�QB(�6G:݂�}�����.�����Ɂ�y�u�I>%U2{V�ej-�R7�Ya��)⋮'L�ӗ�q��Tg�X�'�9��&^N��4��W��
.oZ>|��o�~x�����ޞ��꛷��2� _���=�~�X%�j�*�?�O�3QV$+IxN�j��֏�?�������QdISf����'�^�)'~M��.o�R]כ��CO}ۗ����|w���!s`��?�����ӺO ��G3ђ�K<=�Y&K��nM�F�ex��׫>�xz������8�rQk6ϻY_�+>�P��;��e�T�'��@��Q�?~N�~ha1$��TfWaZ����H�d�^
�Q��<d���b\h8$p������ �+��!i�f��K$J�C�DQ�0�UJ�V'is	�mz|x>�g������i"��,Di�r]m�o4�	b�(}l�)ɌJzyl�|�� �P�*3bދ�u]�C���h��Q����M5f��$��q(�Oߥ�������<K�)jO���E�j1�
�Xhꀜ�H�+gx�n���'���|�d@�#$�9�`_�s3�!!�$����3'��!�C9�m��@�A-�$?�Q�N;ɴ�P={����l���R����ؼ�[�.������<��8&ZNMN3@Z�������ֺ�+�5H�Q�T�C^�*�ǻCF�Ȭ?���7��/��mT ��Rw�BJ̐Q&+�Q�襒��Du��CHa:�q���[��vw����"�jS�rpEX��8?��ٮ�q䔳��:�\i�]�L��gR[�dɣ:F֍�(�-W7��Oߤ����6]��Ch��~��d��eY�w    �Ul2@�;<uQu-��$��`������g��=�º���ϧf{��N�(�D�i��cnȁ�P�u[j@�\�\�L�\5T���鐩�� �b��|��񆢳�o��¡<��-r�ZTnE�B�u\I6��� �|`V�w��7,X�rkΩ5;��ޤ��?�����13� <��6�S�3�ZgWk���o��ϖ.���B�
2�����:�("g-�$>�Ŝg��뾀�m�:
��$RkE�Ƨ���C-��Ne[vBU���t!���%�
=�Yiݝ�GR%�(k�5P������l�Έ��y��܎���q�ćbZ=Һ�휓���m�O}ۓC�.Q���=W!�Oi;~w.ש� ��#2�`C��n3�4�^RX#�M��u+(�
��S%yH��;��f�{~8�v»�� ��f��0�p��6
�	^�U�=|�sM�aN��r/wp��z8�LO�>m�tT�I9_Ҫl�4��q7�n)J���m�@O�C�C x,�Ɍ��V>�<��I��Em4��e-�cQI Y7R�����)���C��tsP�=$�:�3=��vj���#Ijx���綑�g	�}�l�r�!��V5�u���M?:�M2��!�h�mX�|�5]"ju�z���̶�+�4��G�RTZ�$L���b��6�nߢ�l�q���޹����K���2Y�\=P=���������!�O���m\��ŗD�{ɦ�Rs�'ee����j��r� ��JQ��= ����Ѻ�כXE�>��[
r>�"o��ŰG�ۧϧ?1���j����L�=��T>Z���Yu��0�5Ħמ2ΏKUJ���ϣ~�,>���rzi��STLJ���^6��'�=\c�?I�!-_����xH�H|���qѬ��&����n.�s�o�"{8��{��/�Uڇ�O�G=�i{�̫��۰���4FG�=YU��j�[)�Z��"(�ڇ2� �8R��f}�{��)X��+2&�Á6��X]����U����t�"PO����X�.���I���й�([]yfVTBRƪE���I���;��?�8:���к�ֻ�%�UHBtKـ�W��ymI��(����\��}�q�ҫ������dku��U+oTe�W�c�"4ή~�����YA�Ő�'r5_��Z�2G�nRn�!��I:�	<d�%�.������N����?��A[?�����Fb{���ۊ�&(��������r��|�&`�����;��`����ިP$�`��Z4�J¡Giz�ary����#�4�w#�j�O�Y����%S�(���d�A�#�J���q.������w���q�^���f}���/�)�:�
zY�5%���.�ҵ)��V?o��ʢ�$=������S/�2T��jY_$�kL	%�����y���%��$Ҩ�;���/�ѺKp�U[�GwӜE������'�~l��������f>�M�ί*D�����\�Ƣj�<~���/x�z��8�����2r`�#��vB^-j����Q����j�
�r�^>�XO��1(��zzNh}}��7	oWZ��%��])��]��"�F������i��L���(V��c&��E���ˎ:�7�"��d+2�YSE�S�\l�mwO�Ἵ�<�k��p-���:�{u�.��Vg��M��r�������	����p�� ��ݗiz�NCt�R
�
�ݗ����Z�)�Z��p�m������8nFφ�6�r_�z1�����b�J���=��f���('�����	z + �����ds�e�ڷM�B�Ҍ��QR���i�l���1ag��@1���f��A�eם�XI1vMV'x���i�(����ﯾ|{�A���N�L��źWg8.���oC�^q�[m�IPq)ɇ���u���z�K�d�I.V�GCv���C�,pE
x�hb3��.�OgʈRi���<����M�)n���o��xO�c_H��q���B{�Jd
� G=e���]�{I�lDz�0�d��БF	Ƙ��-6�E���OG�����i5�3����E1�y��tp�nĊ�J�mۭ�@ԢE��0��՟IMvJ7���1��Y�I���pZ��/��q���%�G|���V���s}Tc~D�CDҙ	܋U��[�\��"S%����įrM-8��$m�r�� O��?��p�hz�Ly1��X��u��_�W�;���e�u��e
�|���"��49�HB4RMF^��@�n�����I1��
xE8�.(�M��Ô; z&	�3�LA#��)�o�+���i*���KZ��J��[��~��?�a�#�"��N�r/V�3K���K#�[y���o�ӯ𭩅�Q��?(��X{�Ii���ְ?�T])��y�=)�����d���/oO�PB�tE��/��Qg{-9P>�|��:�![.��j����U��>��ܫ����<>p?�����r�In�x�>׈Ƈ ���L��4��ٖ�������l��;���n�������uz��?�6��XT/4�3�}��e!�B.\C�qS��ت|M",?���^GF\> �qT&m��5�o�)��zAy�����#��
�����y:J��J�q��8t�D��Q�5�]A���uYќ/mQ��v!L*�P�c���=g�?ߟ�x>(v��{�i7���}�_Ƥ[Ur��l��l�����mK>����v?�s�6}:�G4�O�|35��yN��4�Hk�~����q����w@�0@Y��Fo�|��}:��Q� �B7a3�X_W���6ڪH�S��Fb؝[mM.i�{��i�����Q�vz�i��E�Y˨1%�L����eU��7^%^���7��������}���0��iݛ&�'����6C9Ԁ�6g�f�uꩡ8��-�Eڦ�z�q�4ιy�뾝XS���KBs��Oh��9��J���������C���y8�q��ź�#D-�R�"���H��CN�d���Q�������{9��(��q��y�����K1a��ʹyj,�C�wٕ��h������:��������M�^�����B����K����<&ԩ������}���9�rD�Ch�2&������$��$Yq*<wjN�J���*9����Nw�Pw�8ZZ^�\'��J���x�h.3��z�Ĳ��w��+Qjv+�8	{䀽q�b�z2�q���I�p�e��%�
�e��-�Vg<�o>�>���?�{2��OsYX��kW�$آ$>JI��(5�Tt]�,��'a�Ǩ��8d��ɒ��jw��w�x�9`��Η4��j�s��k_�����C(���5q2�Y���N�HL��k7�#���MHǩ��Lƕ�a�D�o�k�i7����%:9b�!:f����Bm��yIʌ:yxj��>���/������'��C�*9"�!.*(�	��@�K��oLNn�km�6Ե�+�)�������۫�Y�# �z���ugÉFd�z�%��N��N��Kb��{C{��|G��c�Ƈ���'�֝}H%)��n��ÕQ�b.���H���.������}~{~8*��#bB4j~�i�sY�I���"��FpP7R������T[�����I�#�z7=Ue�u�������g���6	k	W�*���cV"8����#�7�Y�����ҿJ�ά�\A�*�\،廚��ن�i]w�h)�m�������{�q���Ʉ��b��/,�gS�Y�%U��m�CM�fqI[l��}>�ν��
���#ߐ������|$E>��5�����W9��,��շ߿����Շ�?���69��� P�LO�q4���f����05=�^�m�t�E�P �4z��#
�/�zf�ߨ�
& �Bz�ET�ڮ��g&��E��f���j��sa�suZ���)ڇ�Z>4r�D�׈"���a��˧g\�c>򈬇�4y���uT��lD�E��H��<8>��k-Y;�#3�uzLw��S#������}�'���Д8����9R"Og�Q��    ?�X�m��Gu�刧�؜Փ!���^�5�Rz���X=G��)�8�|���������\E�?�V���G�=�pҺ�X��BHe}�3�T[���6jM�D�l_�6�ď���9��!,no�A#��ILc��V���S���A)$)HM�a�6��uډCUu#F�=����Ջ�������=G�5\�4����/�T�O��W;��IџyNH�+�Ei��`/�Tn�G����f�|.E�Z>�sU��� �!9��!.�rm�iݩZ��P�@YBҖZ��k�.���v�?wF$>���t�h/.QG/�@LϝDZ�pk�R8 u�+|�@B�ŗ?����������p�A�8����} O:o6���[�3Nw��;�l\!9l޲{R�����AE��`$��ξae���}����=�(�)��bn���	�?�R�t{u���h�FL��_���"�"V�I	�t[c�u��[�},��/������aD�Cdj��v����&Um�k��
R�*I�W�euHf��u���/��2�QpD�Cp��ً�ź3����K�Q�l�@��iϽ��B��,������?PΟ��#����r���Y�o��i�p�(�/��5$�$j�����mk^߷���(Z�78�3^��������m�	f8�k��e�`�GR+�D��|q�O����ME�E������؇���v�6���n�t�a;w�Q,�5eG�a�K�ϱ�/_�Kf���o������i|�IV{��=Q�mq�n%3����ϲw/���,�����P��Qm��CL3E�۾r�m�.�m����_�pgP�.t5���v�y.磂��҇�,��Sܰ��25��lꅲw�6\�N%�TBZ����(S﫻�-���A����m-�)z��u+:+߬`ّJ��Y����MT�������ݟ�P����m&"/��X|nǞ�d��Q�s��Ǧ"E�K"�����p�I�	!��U�+���m�����&��̹I�jIpG1�M �e���6�2��f�V��%EѝM���2#4�*�)ͮBL6 H�pB�K����qqrf
Z�ڭBJ�p|M��ңZ�ͬB�fm̵5�|��~=h�J��|�K!��惴���8�����=�Z��TֽjSY�}�ԧc�C$"��0��Xw�9�.�N����y��Ջ���|t-�s+߷o���!�;rD�Cl����ź�Ak�}��¸"[�_3I��A
A��}��6凃f
F�=e��hr^�z��s�)C_]�Ƕ����ˬ����԰M<�v��|�y7k�lV���_ �(x?��urEfU\U�(��r����s�������\�w��1�!R�Ya�Y�5����ѵmґ�T��D�˽��n~�鞃��w�<�%+#rb�RMT^�n��-�mG���l#��~��@�������O�~s>}�HL��1���;�n��i���h��r�+	���ĭ���)�0.�����������l�s�G?D'��P�]�r�^J�)�o3�$����Q;1���w���Q/ߠh>&��~�N�LΌv��0�"]��Mr��˂�͊�Z�]vg�Lu�l����Snj����XaQ��Ȍ��c�h�D�7�Dk�%r]~���oO�~=}��Wo��=��P�l�ƗB3]��i�V�}AD[S��ۖ�����%���6��N8��T#�tl�M�úS��XzӅiK�z*f寁/�Rج��wt{~@��|s�SGT�͋t��j^e�BџT	�H��l�\{U�tؒ>���[�<b�@|�8�o4�e^J8W�,Lk{�W��}�j#]i�)���>�*�)G�?Dg��H�X�q&�R�Y�ժ`/|��
����b���U<x�G�?�f��!�Z�A¶�j��_�dIMli�F$s�ۭ���8:9b�!2�d��i}R1�7� ��z$�OXk��%�c�uyw�%]~���G��qVi��=����L�W���J��G*bj�"����}��Im~�J���Ypv6�y��SK���1�W�Fl\������k��<�����Q�Lw^:��u͗�HŘe���C�R��S��Πů"��R9�>� 2+B��)�X������ �'���:>�khƕ�>�勷߼�������?�����}N9;�y��kA�b[�k���|��O��޺M��\$�����A�z7��zB�|��l�ÕH�轹��V�;�+�Z}F0U�ZYe)�����ן�O�O�.�	�l~P�ٷz�l�Rѡu�u���K�����;u��S���#��A�4Qd��	��ꠕU�/�����sV&��=�YJߗ�ל�;����~�#��:Z�M��dGN.q����w'g�]��5�(����_xQ�yi��߼����kIn�$Q�k+)V2��h�O�3(��C9n�T�h~�/;[wج�u�<)6w6��贛\t���\�s$�r�C;�O�g������ :�lj�к�%��(�̊x�i��5�vW�p�%����EZ���xN������iI^��Z���T�l|n-К�z�[t�Y��V	IN��b9�C
 @�Vĩ�s�`�;�ŢF�z��<>�S�%
SRC8�w�C����������]���J\iS��Z��'ү�W�R^�j�dC�v�����q'|,��j�{��#��ehվÏ�D崂��9��dynIqP��� �z|�Y_�d0!YE�3��&@%w��%g}�&.oo����G�y�!�p�'t�b�5�7�i�,ߧdl1Td��u��trò\ݦ�ӻ���5�o�g��#�x�dN#<�{����r���O�ښ3)�Rv�s�+�����ϟn�Q����ߌ��"���P�Օ�W�'��A}��c�N��}- M"�?������<�� Lo�|րz��`^�"�����1�Ή��X��Qc.�>?>�ӷ��ꇴ?��_���sF�����+��b��a�@��DJ��BX�ķn7�rN����� p|���v�%���R���<'���R.�0������m�l	{$���~oZ�ݩ�D/�ګ��F��ªb�U��S,�Ϩ~O�J�!�qm�L`U�sC���j�J27��.�[l�]��ǽ�x{�������fɐ�Ш�7?(���{�=�`�P���^Dnr����L�O ��t}{>��x>���.2��?�M�j��{��WJuS��k�EeF�H�Rz�|��Y�勯~x{����_���!���? �����к?<��d��6ɤ�o2����]i�8')j_n�盃��!� 3�X�>�8�t�i�� ��|Ba�Cn��z�O���%%����(�N9��<����a�'8m�h��R��+��>
x�c���)�~=�IV� i��>�Ѽ�Z�JEVRo�K��E��Z�}������t@Ƒ2r z��Y���hA����o��T�A6%��GD�/O"��}��ϐ���2�aݛR����A�����$>I�5�Aߖ�;����� =,9d�Qo%1&�7���(q{�hU�+��ǵ,:KDz��]�p8��_�9?���_��?@���I>�Y_g�Th��*ϑ��M�����o;~r�~�9�'Y�����r��?RE#(4���q�6�R�3eD�R��_��T���33
��f��Ui��5����)Ό��kS�&�b�F�.�L&'8.wGuNԐ��P���6������^{#y� /���i�LUD$;�7W��������>����㏧W?����!\jH��M����u�d2Rk3�8��v�:Tν���������՗�o���t��7�w?�x���;��l@�H��I��Y��s�oJ�4y~j�kFu�|��&
E�����|�ᗫ��h��!`T�s���=+ϩ)Tj|�f�J��&��{�� $E��=������=�������6����gžOf)a�%6��Vas��t�\7$����7p�3� )Yp����M]�M\��u��ڵ��z�o�u�����1˰j� XJ��źk8���6q1�����m��|�/�����3    ��;�}�	2�<i�Ph�,>�
9q�tX,�t�Uz�=�������������ɬn���Y��ڃ�!����Ս��qW:����B��Q�?�?ߟ�<����
�!��Y�X��H뮽ϝ�"�`�1�;�#O���R@|�:n�^����8�^�;Յm�o�(FrU�pL���������4��Wo�{���_��.���P��Sj�b��w?�R��4�֌c�D����Q�sKֱsu̒��� �
r�}��2�ٷ�>Ȑ�8�(6�W�5��g��no�;��J�0k{_���xD�)�8f�W$Q�,܂໋[�Τy>�CQi~��9���X_[�2T-7 s��_c#��_�J2R|����SRCz`rR���u�0.���(��rY��^�"TrZ�Z�r��x	��s>&��} ��sذ�n#��K�~U�	6���d���	����ջ��?��A������;����Ufd�xԜ>�o8�#Պ`ؼ.�w�}O�\�!���保�Zw�,m��P���\rE��ʲ����9��l�^�������qH����Ex�ʝ��א����e�	=��D�"̽�����O@PH2� �B�Q��Pr�,�܎��ǥ�5X���ܜ���}�>�ϟNO��茪!��)/f���(b9V-��CQC\JD�dz�*W���OϏ���aU����4.ڴ��_|J^��V�I{+)���]��5XC&��3��C�>�ON	}i�����b݃c����Z�]�cBMC/k�Fƒz�>=�s?�u�N82	2�!� � g#�몚O���֚�K�$���j�_��e��t����<��H~�+��� ��4�����_-��u�ْi!���ϒ�.S���]��<���,���"C]eWO�hSqAs�?D�-{�1ݖ�P�m�8�h5d����l{�b}�?����.�ִhԒ��'��Dn���_�����ӗ��=�����W�P��!ˏz�@��97�{���^j�y^S���m��UJӳy������|�q̄_sv�YѺ�\í�,�Y�ME���kD�U�J�W�|���M�T�8�i[�~��kD�[I�ed��8̆��d9#�6�X����m����q�DjH�PFL)/ֽ&�H�\z�.�hG� ����cP֒s���5��*+���'���ʴ�W��:����V3�]K-Sgty�>��O�AGK�D���]�{��_vZW��̵���g�Z�hh��1��#<_�?}uӷ.ɷ������iCr�57�٬�u����U
�pO�pY$��QdmB+Ri�����|��s�����8i�,���{��.��}F�l����6��6�.����,W��Ӈ�?�8��By} ,3�^ج����*+��[��\�#%ucuBD�[�q�텷���3Y���Cn�Ɗ�g��N�`���Ƶir���Kͭ�,HY���T���Ր������lV�S�x59$�����7�YjJ�\��v�����TgLq�!��jH�|:���ź*edO����"Rf�58�y��0�nk���o�����+9J[@i~�θ�������9Xo�^��VN��5T�N_\���،Y��Q�TCr rFʩ�u��Ϩ��E�6�"3G��\��@QT�pH��P���〉b������e+��ۡ��*C䳂/L�j���5!	��n��;��6�y�G�`�>� Q�NxC��dA�)�� +���Ã�z�N��ҩ���v�]� `43��ͨv��$��6�5rAx��Մ2At)lhb���|�f�a���c~�q�t�{�к��d}���+Ym3w
ߟ�z�ЪP&}y�b�"ju	�<?��2w�%�������mF�%ˆNM,�J-#�Ujzw�"��?����7Ǽ�Y~�S¼���u)��w�W|XV�������\��g�����Y�ts>]?���c��!���`���ú?	7t���l���"��k�B�j�p/"������?�d��N��h}��D��a�9��IP�W5dX.��1=]Ƞ(#}�K���Hb1<�����Ƨ�vE���)J۲��䫳�[�����)05��Q�ĉ��y-�7a���WQ0�Rn$]VC�Ġ&�$�:�C"@bM;����/$5�T���Κd8=��U$��hSeY>�~����N_�~X�3��6��ْ�f����EeT���md��2����sI�T�ބ��5����_[�SCR�Ƌ��f�z��t�έ%P�v��w�N��23ض���S>?l>�&�Cl���>@�gf�=��p��l��s���V�|0�d��R���O���?��>�^=��ռC$���#y�75¹�r��v����O�iw��^��c��B�=[�߬��dEĂ��V �pS�[j�.j�+іMt�燻��������1��Cb�����f_�v����T���&r粶�
��R�Q(/�3�ӻ�ǧ��=�9}��C�S�0�S����Ho��>�.S��V��\�[|v�`�¡��>@赞'��]6PI[�&�L�@%��֎dFFQ�ꗷ�n���|�q0�AOET7�߅�B�5��qGnNy��E!�{˧��SPa�����K�%���c��GQ���־.֝7���4M9V�Ԅdq�.�����Q�����Q��!��z���woָ_P�M�@M5s�4O���aq-��س����/�F�1������?kҺSE��$(����m�k
K��|/��Ô�O	����ɽ�y?�ֽىs�,7�D qbMIbK![���]\(�p%��1��!3hvi��5�(^2.U`�a�\�Nr���	@RȞ[Z�_}��������~̛����
����_�Q�s�Nz�/%	�ɚ�i�mz]TA5=�T?��QT9��!�{��jl%g8�Dz����g�&B7*f[�r�����K8���vF�y�����V�1i��֋ \�\y��4ߺO�/7G1��!��g
%�5�cJ>Bdm9�F!I��\hT/Ҙ�$�ץ���tC���4�Ր�����b�$EB�������p2��ۢ��JW�����N7<��EY}WnżԤu���Gex��g���]$ݨ2K;R�/��A�C RJ�hY6��\z	�u��U�o�3u-���¦�Y˗t�g�P��=��a���^�ag,7�*J���)i�Ԛخ�];�����o�oQC���8ϔ��b�����rK���|�k������=�P՜I�y�t�:Ը2� ��K^�;��F ���oГ
��681M��'t���Zb۾�?�� �7ALh���"RӐW��Rx$����(.*�lJ��qH�!��x�ź�K��0�p�\Ohj�B��8�t:�nuZȐ�mz<j>f��X����l���㙱&�P�PH�'>�5�y����l**7ǽNI{�!��1�nV��hմT��W�
1Ąe�Yk6g�2H�������鰫8��0��U��*͋1�*�)TG����+.��Ҫι�O׏�!] �5��}�/�1�c���}�"�t�qE��]ҥj�����7���zԻ����r�I�X���*��o��|Q0��D�+�)��8� �un���M���8�f��=�f����mV���&_��8 ��U�lzZ��
9�M�ʅ�#�o��ԣ�H�ɿ9 ��8㋲p+���֜�Z;�s�����x��7'|烆Ն<=�p���}yA:��Z�jҼ��m>���5/r�y���yb��A4 j��XQ�Y�G��
�,����\A,p�E���Z��-���%=���o�� ?(�)z�	�6[��U�=��u��DT��)\A4d��9�n��".W���~�|��萙�$����a}}�侐Uf�����a�����M�n�'�pP3oH�L�O�@.ֽ�P��,<�ޔ�RZ�'�kW|��%������?k��Ǒd	��_�z�	��K�H�Rdiԛ>�$� �L�8Я��E"��t�sQ��g����U����]s�{�B}�#t!��<�K:�['�g�	���bgF]��A����W������K*��3d�v;1reY���Z�)�Y    ���B�2�*I�s�\���v)s^�tG/7�^�|<p
٣�D�Z�&���,U�����-�C�\����O��#=����d�Q����٪��l��Y��e'��I1�6y�^O:t]	��x�Ά�SF�cG��O��<m�#vxy��M�TY5-E��:���~ǿM.��m�@�l��B9�z�.������`=p�dC�F�L+�r�m��zy��d����DiD�\i���9-��u}��J�>���Q;�M�I[�ݦ�ٺ}d�]tJ?��(x� j�M�ӹ z(�p�k��q�M�I�Ժ��z��MB�ND�K�*
͛ո�
�U8�$�~���ɵ��)�����?�e)���*9��fZ��6�1㏹������&���ejՓKZ�zk�2��g��h��V����N�I��p���h�v�ӗ�����(��:��J�{�8[��bH�3XV� F�r�K�$Si$����[�vO������]O��l�xeH)?.�E�D�d<G�ɀ�5��.���Ke�H�l���8��G�x�>?�Fhrr�e�^t�֙n$�;�Rfk��//._]�{w1%�&��⤜�u�M��Ź `�>�2���M\�&��<b��Ǆ�1���鑶�{4o��o�&ՐG<a�Ɔ]dH�H�s9�K�q�������ū�1Nwܢ���uI�!����&s�����S��5�2m�]��A=��ב���E�uK4�%�5ʭz����8o�A`�ͺ�1��vn��u���֍�0�.$iFD$4qk�"YU�Jgr����������qzD�3�-��:���}o]�l�V�t4��ӋL��=*��K51\;�K�~����z}x5m+��:��	���|�ٕ��]D�p)U.��ӛ��^]��a�þl��)�~�!ɺ�8^e+{+ͩ$\D�sZD�F葠�������O�o�(�;��8 ǰ��&�|��t{�hg��X�"p���Τv�BX��	\q|�����6�I�τ�a���<�!'��Pq��j�2��׈D4=�Oa]oߍ)J��;pL���7&Zj�I�uEWSֺ�Dj!�����c�+���^�Y�x�Δ�Z�]�iIuۯ�Dr�%Rz �XF0e��E��F��w����V��,�&���}�u{�"$O[m��ĂZH���*W�
ST|����ן/�8�N���|?��>%8�L4j�@�p�2T"�ґv!��%\���a��M�8��mήV�����C�qYl��abX�Bs��2ZK��
�&������6Y7je��w|[��Z��h-Ex�2�Z�tq{s������rw7N�T69w����l�n���̂z�$�C�9"�]�
�&ޯ^�Fd������U�6yw�uɺ����ȴ�Z	F"���'-�� U"�(��Uѷe��a�c�d�yG�*2�=���[�2��ID��E��2_Δ� �3����_O��0���U%�{8�yZ�M��'mo`5�-�uWlFȦQ>:7���)���R���;Q_̿�~����A�ɻ#iY����֭�ꝵY+�K�O���Qe�o.m$��qU���4��|qx8��~����.y��M.x��rȺ�� ѻ@G ��� ����dK�ϙ���O_x{9����W���_��u���*��/IU��al���Ԃ2��X�^j�EL� ��
����'����n�.�lR�H�c���a�Fx��g�4ie%��}��f<Q�fVҤޭHt����0d�A6Iz��X��E�m�'0[�C��k�6���� ����@lMӫp�i'��<��s�S�<[7d�=C�͌�N+ �_P��
��-/ӛ�_�tK�y��l2��5"m�r��-fE^PkU�Ym$�%�N�gu��M!��a�Y���Z����\=�O�t�`}&@L>!� S8��V��ͮ��%�����#��9G-S�&m�SJ��W��� �0�	�+��F���S��6E)�x3�{=��g�������^���k���yAV��g�i��`�cD>Wo���o�l˓��OO/n�o*w���&s�4��+`�۷�Iz�S^P���Ԥe�qXqHU����ׯ.�~��=pɺ���j5�xAE�hc�Q�֓�����.L�Rb)��:]|x���j�狷��_�rq5���w^�~-L֍q�ΕTA�ʚj"����/�{����x=����$�/��D��[cѢ&��q[y3���y��s4Y�;�>ΟNwa��fЬ�l���9d�=�dݪ`�j�9�z����#}2p\֢����4�g��I*����M�x&���"X�Ê����0~Fg�GP5�.����$\_�lW�Q����Ǥ��T���h���3��b	p|i��N�9�j$^*�� �};�o��n�J����Uޙ�/��ߘ�}���~�8R/���w��xQ����}�_��ú�<h�V6�|$��-���<-��JeK��"9�
�`��s�B3�;��i�0�l���#��'�j��Q�&�, � g$~A�Z�qv�80^̨/�3�,��=��p���=�� � Q��/5��D4]�,�2%#�����u��?�s��Q1٤���o��ވ��F�IV����"�ɫ/(}�a�����v�1gz�Hg�z��p�rzV&�}�C9�w���T�)��M�8$�8��º�6��Z�AHb� �>!d��S��ud�p}~?�!k�I��$�j����>�s��M��Dl��u�*9���ޟnIFv���z�lr��5�	=[�S���jZ^� �?����7�)�bX�yЇ���LsA�y(9�l��C�Y
�����@��"�%����[Rqc^�B4߄6��wC�Jc�n�Gg���.�?��w!-�+j*fI0--:q��L���a��nr��%�L��l�V?m��)8�\��Z�*(��� ��C*�X2��L ����c~�v����)p�njsպ|������H��df�����|{8��p����H���&W<�^��]%b���r��}%,��*�A�P�0�6�$ �tys��a?j#M6�z�ϙ��M��*���Y��i*\)")E�G!EO�?<=�V��A�|���Cn�4����J��4}@2$X�8M7Y�ڣa:*/��>�n����OR�%?"�D=��U�B��l�&g����\�;���t�j�B�M���� �S�$�Oʨx��y�z� H��H�]���8�=G�ęhF��J2|��b����������&?�$��.I�ٺ�?����\d!U�b��j�D'�6���ޗ���wl_NǇ]��@f�ni�����������:�HR>z�m���%"1�Ő]�����������Oc�*M�I�öG2x�n���=�e�dN��갲0@�̽q��i&����&_|C�-���[:B�1���bx!rG	$�c� ����R���c�v=�ݨI�&e�z�Pq��nW����m[iQFWN�ZS�G��ň����ÙĂ��nq�ǌ�6�{�����nm,m5�"��S��xN�B�8 h�+�u��DN>��kx�-<<�a?f �I���ƞ�r������޾#����� VP�U������q}����d��cҊ<Z�rc�����0�)D(E-�Ri^;�R�����&���M8����c��[P�+,��5��/`>��RS	)�U�����J�G�s���$��>���Eo�m�n#�M�̴$�c�M)��xӫB�ɗ�(i)�$��c�u����m"T&�b�"0h���.��p�����Xne��N9cz۰g�WHJ��T$Or�\[�`"�^�T��fǦ�N���44�9�I�Hn��z�g���/j��y�I��51 [�FJ�p����#*\���q߻�6�����V�H���:�0���.4�#b�&��?���_|z��������sZ<�z��)}ڒ��AAN��.�ś����ǀV�h ��1�q=��Z6�}�r9���Ά�D� ����(���o�U���Q?Ҫ�>?λ��L�L�oR��7�I=��>�n���,,6    VC��$H<��ɂ*�8��ww��=ǀ�&�\�C��[����.$�X���u|�D��+
ˈ㓧��p[���n�:)�\	T�pȁ9�&�ɳ�x!q�` N/CZ��a1��tu��r�q�����O�_?��M�xhu�z6nkX�0�pf�J$P� �|���%h|��[��vwC�n���5��M?��m��a�'i�D3�P�s���%��P�^��!�_��\?�
y�G��Z�3u�e�dn��f��.��H>��l-�aw��W]�3�YRN�G��i�o ������ٺ)JV�x�XA��.!��γIUh ����C>(��?���E!Y7�%�q� �bTe!���Rͩ��}y4�[�減��5	�ԺR�#}\��y��!��I�B+� N9�
�=�%zzw�97nqK�&Cd�N����(_�$�M"b%>����9Z)ILz�9��p�W��T�c8}�};�
M�2]����<\������ pT[�h 9/KU�b���y��x���X�[o:[�GD'��n9�\e���KA����oN{�kDlgO�XOk5��1������������?T���0?}�� 5��2���|t1۩Sx�e�kú�il&x�4�K�#�K�%��,��Sn�g�H���j���dU�%b�Ekz����JL�+�P�>�����/7��]8|=�a̐MV �ŭ�=L���`p����qi�M9�-(����-��ﻇq�)MR EZ�����m���FA�^2����D��$W���� ��c����0��9S*�
]�a�4�d��V�8����V�.> *z����t������^�q��0�V?:߰*�A�L
�H�UQ׭��3��(�J��ek0���~�or�5�i����] �y�J.I��[f���SX�$�Dpj���}�?�ϯo�<tZ�=�4��ࣕ�_��3�3A5~��}"�x%Y�Sc�{+���/��aВV�9.9'zl�g�� ��L�ٴXOW��}W��X��%�C#��/��`��c�ogOI�V}�a��c<�~S�\T勋�vU�*,�,D����+
����@��&��z��U=���ubq��X]4%}b]bA����*&n��M�N�۲?^��!�F59���Lo��l�fˌ)Յ����
��r͘W5K5�����nTWK5y��Mvkr�n=�\g��M"���ng�KUE�\j��w�ß8�7����A쭪I)�T�R�l�Oa%�C�U9i��(�q�2�(���kŲ?�)`�&�<��	��8_O���R
��y��%���k����PJ�����~�1�TC5)����N��F���:"z.�z��H9�x� D�2WN�����]n��#�&�<C��?�Ĕ�IK�%>��m0��3zc�Ah"���Ȅ�nѨ&��Z���oˤ���p��\B�D�7ie��Ѳ0j�2ݝnnw�����1�7���]ꩳ���*6"g/4�|�%C�Rd,�>F'�7a���הA���85�xȺ���$�Hsс�'P�#y�L�W�>̟-�r�s��픩*���$��c�b�e�0楧o/	}�&���"�|)��	�|�&�j��1�MoAo�n�A:��,n-ufz���[�����H>/q;����iu���ekxVQQ��NE�[+Q[�T��&��=<��+�xSݪ&�|�]�Q?o��H� �&��e:Z��9$�cv{"�[yi��4U�_�D�n\�u{�Ȉ��H��FK�p"�%'�,�9�m���5졚�B��:ݣ-^����%MS�.Nд
�CB"��)�H��x:��Mr!x�P�t�YX�Ľ���"�h��������5��>Ҭ'��̿vq���j�����n��uaB�'�Z���zaNG6�ӹD5}z�K��è�U�g�q��odU�!�y3q:UO��vA���������j�AigM#LW�~�:�Ԟ�B{K̇�Y��!��+�4FW-�F�8��_{���8TM�!��:�wӽ��k����O��tD�hȕ�
���W����������0����כ�Cpn�!麮��t��,�J�� �8�(\�A�fU�f�:P={s�ͯ��ޣ֢��/������&��4�����-�R�)�X�,�)i+d�I��鬴.L��i�/�Mȃz��I<ϬW�%��uv�3�fb*��A����Vg�{.DRNW����1���9�h0��0M�?��²a��e���9��'��3�);]~ه���0��n�հ,դR/,���^U�n�9+'���ֽ&/�~��F^�^ZoM�~*�"K�f!�nH�Ջ���9�� (�Y �II�sYyr��W�����;����?����?���,CpTr�ϡ���N��I��d ��_��:W��k2zE�y�0�j�
�/��Y�'
_���%�U��3�,�Ry�*���c@g�G!����W��z�*�@����8ld��Z-\��﮴|�-��3*���A��H�>d�*����-��j� jY�=��-%�F�����kz �o�כ4BpU_O��l�RN�Q�,���v�z�!��M�)����_������I�z���zL���q)zO{mT�MJ�4?Q�����4������|��f���i�g����om�`j�aa�#t�� .[�2�-C��z�z(������M� ���U7S:bIy�ey��'z+�lI4:{��*������;�H�^��|uz�ݏ�`VM� EѼGs�n˴L�"���$	���ԏo����t7
�5���%o��Ud}����BYTS�^{�d�ra�(i*w��?�3���%T�/�)T[]�F�m�3eE��s�IГ�L@�gL�J-AL�6�ǰ��&Q��(�����ے��8�H`��'��b���M	�����!���8��|7��d�{���f�ٺq7z-Y�����U�K�����(*3���
��m݅�UW�aL�o�����d�eME�'�T�s��4H,�'��5���rE㝃xT�7�y�z0g��K	�JK��^S�6�JC�S����"�tإ����1��I�^�-ۇ���6�q]m�=�V!sF�TCLq�I�j�*7�n+dRM� x�e���l��=���4�"uZ	I;�ndt:T�Y�=�fw{7&�7ɂ���]����9�f
�y�jU���8��fK^[}��>�|9��T5	���t�'��Z݆֤ "Oj< ��3��N�]B����T]�r�������&eS��ؼV��H<x
��S�O$-�ǲ��
t����%��Qw��4�Aq�m*��T� ���H�֖X-v0��ENH�d͊��ױ<SyTM� �f��񩟭��F)2�_tL�b�]i7�"��5$��]yx(������2����Vm�Mn:Ta�Ϗ�e�ܵ����q����0I�%P�<+�%R�?���f~�nH�nFuݚ�B��4����o�-2|n�9~�Z�>K꺑d�Q뚄�S���.���~�OH�@-�{�g�l�������\��XM"iD�ť���qX~Ǜݠ����g���7J�m�`�;͑:V>�i�P�њ��&Wb��$扟��ݘ�ؤ�[8ۼS���[���ծY�s�WqeY�����*��v�G��_d�a��*a�u���ms6qN<uq��Q��KT��}�RD��k�^�C�o+mjښ6�i��u�<�$�\JX���r,|	�eH%Q�_5�?��nL#���Hڶ���rϛ��U_X]ʪ0���a1�h�T���_��q(Ҡ��Ap�)�{C^�v��j�KZ�ZY	��d��L #;��k���bꐿ�������߿]���G�J%��
��INMD��0ӧݑ��v�a����_p���)��֍������z�Q��J�EX�Z��!)w�|Ǹ1�&���K�~�n�!CM�mA���$u	�T�+�|����@�aw�\���?>�ƌ�5���L���j��J&���p���[���r��F�    _��i��K��8�@@5	��5ozS5g��,NK��6f���ï!/J ����Q	���׵�ޓ�j�g���fl	5�)����\PXTS?sʛ������>��RM� �g�ǡ뽡�'h��^�j�%�IS��ŰԈ`(�T4�y�,�*�dA������[����(jF����uҴ�/.c������i7ߔ���|�9��8�d�o$ ��V���1_�Y1��L:斈��⋬	�TUNǵ�?��v�䀓=��Z�s�1�'`�%:�>�j^|�b)�a
P)j؋��t��CiMz �����Y�	�
Nq"iҸWIjF�xA��B7��W�6��v�D8鉹�ƿڂI��)%&'.���"3OFZ5.OG��:lEd�+�ԗ�Ay��3	�w�7�|������UHʕ �/�&k4�M���;�� j�d�S�\�idu����l�؃�C�&
K⋜��x`�mol�v���1�&I|�\�^W�3t�U+du"aD�WL����U�J2����>���E�sЛDA�e���Ⱊ-s2���q�3UX*Z�I���|r�������0�+H5�����/�����38W��K$1�"z����=><sr:�w��Σ��T�3����-�V�����jЅ�8`@�E1N��qI"�U���CELy�קAM�&a�~!���j�[2�-�䓦��G��}�*2Ʃ{=���t^�1�q���8�H�[!�PX��<1�)Z�u)�E�¸+%:��TZ�o��<�S5	���p���`ԛw@]U�ά�%D����# ��'k������v;Ҫx��l��&�5!��8����!E5S�%)�9�<�t�s&��9�~տ�؉�2� �'�Z��P�\�DE��"g�ͧV�|����n�iZ�}����h{��aJF�9+4O� ��m\�b��1n���$N�n�'���Я�:䲠�"�hAoʺ�#�h�O�ܥ����aw�@>��vʔθ��j�ۈ[P��PI跢���.x\���y��Y�x��8_���~����I}�LV���IW�]L �P	?�fK�>'��@�ٯooigƸ�N��Yޣ�Z�b�豖�"���ħ[$�e�Gǟ� ��(�{�N��sl7a*���j�y����Ԫ�O�#��QK �95���Ә%�&!y�x��*�Y���4d���BP[\�ʜ'[Q*"�i�q�|[�!��@pLz��1Z��?�x(���K�� 	|f�v�!��S�>��}���p��i��=ݛZm[%�|e�E|/k�Q�k�χ�&���K��0D,B5������I�p{��b&��N���CPH�\d#���v�_�R��{�t@�$dz����{�s�����cG�b�d₵^k9������r���􈿪���U���N�>�RM�
bpU�,T�&�D-LO�rDz����8h9���p�zsJ��o|�gES�Z"�DЈR��8^���#�s=�T"M�����$�/4s����g�}z[S���u���RN^J���(��tM�-w�ۯ�^Y�,@������Mb�OE�ѥj�=	�Ӹ=U%
��I�'fڜ��U5	����ׯ�π�[o*w	Z2άAMmf��edg�v����H�������~�]�0�+��&��Ό�ٺ	+�JdAV.U�𦤶,Ù���+�V	�/��7���CɻUo�*A#yMJ ������<n�d'<Jb�H�t-�(� �'�}����ښl@��(�ϗd��DP�ʌcIH���j�Zta����$���J��w��y�4@��MO�u�>m���CN��\XL�>}��I�?Q�G	$�*�.<̵ ^��&�s�����m7�����D��*a�J��Q֥� �s����>�����M: �����m�%��s�A�3
U���BN�/�t��A��I�l�o�Q�����7�J� �c�Q+C 3X�r�
��"��3������tW����@�Nh��=[7V�B����gh2J�4 �����d�ӫ�;�_�GDF|�1+'��
��S���ժ7yS⿐�j�*`"i�{�����ى� �����aʐ��n��5eL�I��[['�(�ȨMYP1J1�Ȗے|a�L�!��D���t�0�n�A���]�Ir�z���b�	����e���.\�$�sT��I�?��Xh"�����0�랟��b�Z��!PU�*�t.kǙ�DI�Yr<����ʙ�v���&_�r �o�#�������T���#�.Kې�Ma,������ǻat�����f?ȸU���Z��)Kkf��0ZD�HNO���x��U"̇Qͺ��_X��zO֭�^�&ĘU>O��[�DC*-���`�tq�'*���~�eʃ�u�3�qe����۷��(�h(����/��d
#�Ezr�XHY�~�>l�Z7)���p�u�w��{VQ�F��`��ǈ��Q��ɧXKFY����5���u�qi�V���iu��Ϝu�+UD�΁S�����G�ʍl2�����i?
��&k������V�,G�]#�2�S���%�D${ګ�O��ʒ^���	�RD�q��g��h�/��J�&./AݗH�?6k7_��M� M�߶?*Dk�[E��81u�9��#� .�n�j�`U��v�~���ޝ�p`�&a������mÀ%VJ�Љ��{T��R4wkmD�n������}w�F&u�9H�p�ֽ�d��(�1([�<R�z�]ѐ�HYD7��'��0��Kz7h"[7���׶�6Ȫ�[+�b�Ґ *mCr�˅g��Tb�.D��i?JQL7����0]u۶� ��W��� �� �s�������aw܇��!<����&[|���8UȊ����l�KH9��i����$ΐF��*UZ7@Q��̢�LA�JIJ�gXՖ|T1B��8�Po�jL���(X'G֤�3��v�$���;Y7�q�)Q�+mK��<.�YC(.2��U�o����~M���1Q�I�ϲ���F�aIF�HM��� �j%,2eSaջ0]��d:쾇�A�Iל�n���[�d���Gu�����\p�B���tu������A��I�<�]�J��� ��|�-qф���a1�q�	Nu��g��A��g��ku�n'�[I�vI.	���
R�w-�����{�ӽ<�?^ߏ[�M� �'8�#�n�!0��aݢ�Yߚ�V7�%P���/��J>���L4�:��v���Kօ�d�[���6�F^&�T�A'��`�k�]����W�����__��x�1�!]�����m��ڠB���i�`�F�2/<k��+4���6��T)�������0�5Y��'-t�??��JJf>'h����"MI�&s <s�^!���!��&n]�&��3�t�u�H�mb��T!�H;�i��$�e�Ţ̌�w4��
h��٘�M2!xf�!��mpHE���tK�e�hm�����ڜ����k������j2�1�\�#f��mI�8�7.rU�)��Q9��V�T��GZ4���0�ݤ�o�����T:9�
�JN�4lLC��)^��ӗ �9�wa7��$2$�mz�l�$�J�ӦGQ��DPp�E4�g,�c
�������?�|=f^7�)l�
:[�G.R��h�X�3�	ET\<-��"ERJ�LdS�Q��&��!qmߛ�<[�R+�l8���j>�N;�KV�����6M%?$���#���Qǻ�C�2�G�s��m|_0p��5��$E���R���;�ZN��?�������m�cE�H��R��g��v#�"ݠ��O_�V������E�p䧟���Ó�~������z�j�
�G�m/���z��)A�(�Ѵ ǐW�S�8��T�U�Оb�T�9&z��l�ZE�s��W/�D/q�H�աCy�j�9�8]DZpz<�q��B�)TX��ٺ�+ 
�$G�����U��2�pM1S^��g@:��V
5/8�]���j7�_�wK���,�[DY���Ln��r�q����:�=l\7��� 级�x�nϨ�Ȝ    �x�.J��(�E�t�'�<��9HMB7Ʌ��P����Z�6H�J<{d�E�L:l�`Dt��yYq�%��i���� ��$�_Ҩ^��l��9M�&K�B�Qi.�2�#n*�[�߼�����O�g���4�:���W�.�F��9 ��D]��B�%K(��J�Su�~���k��aзngPn6�Оu۬��R�%�ـ: �D�%�y�7���X��mO�n��/�L�[��u�/2�;�'�tL��?�5�Kx_����)��q�8M� 8���;3�g�{
��)u��ܼ+���.����*H�{�CI{|�����!ø��!�hܶ�!���{i�<S#�Sܠ'�q��%�F���/��=��[��A���ْZ��s��T"H�(M+��/0�>��d"ĉBcj�&}���C���%����-��D��:.~Ɂ4F�U���}�w��Fl5y������t��=k�4�10Z��"�&"
�ɒ�q�Twæ@u�A.)����7�A<�%�%UGBsH-9*cs�$1�������|��[�)�A��� ��.����%ڌ�,V�)b�U�f�
Nv�Y��'6������/��ˏ��Ƹ�Γ���D�Z���IA���R?��e�D+N�Q���7Sw'�,w>*��S%M�����Y��`�f=��NPo㜇�M���t��~������럗�q�Idh��3<Y7��}�D+)2	���,��g��>��.?�W�M� �D��#��j%�Ɖ���j�z�����j�`,�E���r���)����d�R�1�rjk"�а)nK�S��ڒn��?.�1��v^D|��Ҝ�[_P���<�#)ew�,D��:�	���c\ngGZA�_?�n��JJ0�F<m_	�M-��G�����~yz�����DApP�7U{�>}mT|�Q/��@!;5�_R�,ג�puz<�2�Y����u{m���Ǘ�B�앜���(�0r.4J�����Qr����,-{uF=��UMb�R�J%Η�x$�O��Xf�8�o�a�g�����u�(���?@�d}�����,"$3.����Բ�耄3=IU�����E��]8>�ߍI�M� C�ߖw�#d}SB��h>Bh�T$��CXr6f�5P�N?�V�[��Te���AjJ�Id^��O�	N֭������dئ%O��5�@S��c���;��m�7N�`�sX�bK�k���.Ȱ�p�8!c���R\+�A��I��w/,�z+`����l��CF�Zvc��xH�NW��2��k2�'�x.�u㢭5T�rɊv�I��Ё����|W�{���e�BB�<|=&�7��R�G;�Z�����"9� dDuT�NQ��RZ��5����ӗݰ��&aCa��򧛙W1���D��LQ�4j����,ӫ�^�1�����ŧ����/>��e��A��8ћP9[�b;.bд�LK�6�%��h�æ�V���a�	އ�����A�����=��I���*?C;8G���񇑕M�3A�Р��I��d���>k���\[������u�\���b/����]�쮛�A�f���5Y7)�b}���(z�S� (�J�"������n�Fd�/nq���<[�3*,�����/�%�-<.yT4�Y���n���&a���p��?[��8c4��P��`i��zޙ�x�q���������W�c|n�J$m#�q��zkv#VҲP�D�+��O��E�|�7	�=�λ��
�9�Sj��7��z ��V�8��~�@J��rq���VК;p�����1^��$�О��ٸ	�ĺ`��K���dH=NS�f�&K����?\^�~�a�����oz��g�6K�`��fa)#�0j�ɖS����}��_|�z����������W�o�x�Α8>���G��{`���$������eP-*/b��ә�q}��$�@轙��u�~Lx\{�T��
(P�G��1k�I,M�&���;z !�s�_��ڹ��=�EX9��{k�ň��!�J�`�"��Q1�b���ݷCȃ<ngM�nۛ�<[�e�<&ℑ��r�]�pIm��2 ��A��I�$-�tFu�1��t-n�K��DYb,I�8@�dC$���&���ٛBpL�>b�mEcUO2'�K4��܀%2�5�e�ZTWu���������V�iTI��2������h�q���I�D-��C->�Hk��W��Pyd���z�M
!�d��݄i�f�@���C]�Z�"i.̭ӏ��������h��P>��դ���:տ��n,Y"�	(G��O�߁����,�zܯo�cX�u�K.9�zӽg�F�n���5$��W�bƖd��Jɽ�~��G4s���S�+��̳u[ڰ�>������e���c����/#S����W�g�1Y�d2/,sO��u���EvD�/����F/�)��-.k�ބB����mS�6	��G��ܰ>�+��u���H�� 5�j�"I���x�:M�u��<<�Ϗ��6J��A�N2ߟ�&�6K�E�R�2)�m]b�z)8�d�c�M��Ø�5�$
�SJ�~sV�Q_0��̈vd]I��b=�"-)��׈�@Yx�$�OZ=�uw��:�5Ī�j>ԁ
��x]it�IZB����␮�i2Z<w�X�vg��I���3m}�Xhc7֐L*FM���2:�Y��w�W_��A��iR�K��!0��mt:F�C�Kp:��L!E�U,L
�t�]�>����1���I�<���@��g�b+�VN�i�_^�p��VƊ+2}������/��^�q��"��M֍�ˆ@R�zA�G�ʁ-���RR��:Bӻ]�#��|����4�r��	Y���F�Zs!
F�;�n	��YKļʑ|�%9��?#�1=�$7����uk�xT��P�,~:�R�O�z�U�^��������v~5���4)�����?SO�m���b�g��]��5(W�H  C.q:+`��t;K����wd}&��D�RiCUAG\/�$� ⮨���7��&�|�V��d��z5��N�F���i�1 �'�z�W��Un�q�؟nw7c�{��ǐ:��?��U>5��X��%Fj�%Kؠw�C�Fu�:�h�h�c�i��ݺ�3ƶ�����%'O��(�I�"��] ���:��w�����I�#��[�dݸ.I!�;��G�����X�=���cȃ$�M��.	m���vkEe�jJ\.R"�@y�*�~���`�8��O�A��=���O�>l@G�jD�`k�� T��*�*���n���1���־�J�m\�K�u�na�&3�,��K�>W�"��N���(�^�J,C�%M���imz���y����8��EӰ?n��X6s�h����
�1c�}�G���&�|���cY��'�r��_V�k#N�#'�l+Q�x�Z9�q������_B'�&�,�\F�.^*���E�!A�p|h�J��><��WZ%���q��MB��pa�HO]�����D�vi�ƕE�R�A�`&���1�4�|,	_���ٺ-�e!m �#&�����4�*��R����>�R����q7�4)}���v*����3t���lceD��Q�e'��M
�E�R&�ě�?O�N��,�&�|�����W+��`�Vh@�����"�G��l�`���r����y�~�QEk��*kD�qy���BJ9�J����T��E_%�K���?����ts�G��j8B�8��Vڴ�ܬ\�� �n�H)�@�H�#f46h���Om�
;jM����[�~Y���z�~:3 �!��I�'y��L����pQc��M>���r���ˏ�cވM���9�{�1g�6)�"gq{)�vV�M�c^�y���:]��0M�$��[�t	���-�Z�R�9�)D"ٴv�a��	�1��^I�ַ�1�I�c_pF�Z=�ɺ�	N49�$
��~�A��,6�L?���q���x}�v����ޫ����x!q+'z9n���.}�K_���>=��Ⱌ��&�|�+�Z��zV    �g�"*��" ��Ik�X��e� @�^�����&�<C��{Z8[������$��*����h��r�X���ӧC!���u�`����ɕg=��Պ���{l�Ց�Z!{����H.�*�b6NoNGZ��Qp���ci�Y�Nux�n�$+���_�e6(��gI��IV���I{r�+�i���3 ѿ�VJ�Tce�B(�-�$GD'8&��Ţ@aUR��*���4Mx������ѓ �Q�%ZN�� ~�6�hx�N����`�����vK0�IV�m:�}�4�zR��#N7���kV�v��y���+��#2��_BX�3��-Qi_Q �@��Fz�:��1,���a~�J�rP�h�F!<��˝�[VNf6 w�iD�f��L�e�*E�6O�
Nǐ]�d�K
U]7��u�	~2RSjU�[7z	�9�J/���9�ڲ0Mj8���L�V����c��w��H.8ں*�H���,���6|�lR��;�EO��l���(��p�G�F��)Z�S�9�M_O���9���_����v]�n�pX����v]���f3��Q����!d�������q�0d��4yz�*�k�V�M3Z%l6e6#����I�E�,jJ�&g������7�d'L����N��e���XX)8�Ih�3��� \#|�6E����5m��?�ZG��Β�Oo�a�>�eHU�G�xe#�&����+��R9��� ����g�fS�Sm�%�]ԕ��c4�9m�]ՍQ���2Mr� ��H0�x�v�*�N�S%�/%�"�Y)��*q%Q�]��mə&9$a�<I֍,۲\�(z5��g"�j����լ��U������n����!�&G�Ӯ7�x6n��G� ���4Mj�����1�$���y�!��"6M�8e��mş��L��uDO���;*O���)3m�a������R 6�y�)�u�$�������D����BRӉ�"�c���o.�����rL#�����{�$g�ƣ���������z���v92{U�[��˲ߕ��0���wC6�M��Ǿ@D��M��mS;�h~)$�j��xk��|^�)V즏��~~C[ڃ d��ǒR���垭k��I&�����z\�v���Q r�<}��u�8�z��-��&Q���Z��\��}b�U4lY�dA=�P��b�Iɪ:p���~�G��^�Ǹ�q���O#�3m��D/�D�!S��|AF�E)&Jtp}��?����A�&E��B��W��O�K�l��W�"_@Jo��p?"���~
���pq7(�7�y�m�w�X��)+��&,��Gng��wU���D�����!�&������s�v	�W������yZ$�#1
(Ku����U�4���4�z���?x�$��R��h�/���j����"��k�|��?�>��CvWM��ny���4�n;���uX���'�2�<Z��6V�iHvs���nP���c_hF��=�a� 7�k��Ι���9Yy�bH@���ø��&e��]����UD�d�o�t�;$�6=+LЧ�$$qg$�Ӡw�&c�����uU�ߊ��&/1�Tꬡ�"b`������4t��R�3M�x����7��۸W��
*��¨������aO�d�M1]]������+�����n���;mz��g�7�
�$(�Cl�������Y�^�ú�4_�Mn4�{��q��
�nTZ(�>�V��q/s	��F�%����6��#N��W�&q�%�h�߰z����x�iі�ix������V7���A%���w)܌RK3M�x���O`U����𓸥1�^��#�L%rr(�y��F��3�I�7Y{�7�t��i���X���ͪ�ꊲ��������闋��>���0_��/������1޷3����{��m)�D/� Z�����3 �`���H�!���5ߎ�.M�x%���n"��0��D�D��
������(g=�Is�����x����|I���O�?���0裷���B�nh�U�M#2�wҔ��lQ޺���r���3�O�� (1�vؑ��Y�&��%�h�$�ީ��E�82�&�%y_�]L�<p�"�~z��G9pEmf��=vՒ�c
zu�&Ċ4�3 ��G�TM��U���mY5'`����q�F�ir��9$�o�ٺxŐ��Zg��y#�`��VN��T���������w�����y;����]�I�tS~d�>�E�K��D��uY�F����D�iy~v�ۉ�x���A�n>Nz`��ZH���J~�C ƓJZ]'R���פ�/,?��U?kv�����X���,*}Q�<���B�W#ɒL����j{7�u������P�@(�x�����NKK�m�M?��[���3I�|�u�!i����Lp�m{X���iM�U�v��Hh�͸`�8O��[�K��>�LJ���d�����ӣC���	ğM�p��(x�ד�S�y;aZ���g����I8ƨ	3i�(n��,c���m.�O���⬬3����j2��=md�.d�����T�&�	�|%�=HhΪ����{���}w�Wr��i��f��"R�_�Ⱥu���*J�"}\�-g��sK�{5"��Q�è��&��r��8@��g1)euѡ,�)r��\r����7�h���5��(>���S?�#�6c��p�c����pH�y�
�+��X��^����o��w��O���)M��1�{{1g�z�HTGj�A�I��˰D��Ԣ�-�Ey>&ĊCo)4�=���1MVxȅ�Yd}.�p�s�y�v]�#�q�2�:�} 1OZ��}�$�OB�ۈ0��x5%_���N��%�'nu` �j�>��r�F:&{6�|����O
Q�l���T[����訉[�{e��!��B������p��|���kJ�|q�O����=/�]LS�AQ�nA!�P�c��_̟�Oc���>�J[�o#�u�ޡZ^ ���'R{Kd�u�&&���S��Gji���ʿ<�7�|���?��l�W�i��R���(f �dȮH��/.�6�D>�������r�3���(����}yF����CU�|�ќ_�a��M8�uW�l�������4��%M�U�A�n�3=��݇A$l�I�c_��q���l}戭2�J���=K"=T���\� "r3�t!�܇�amM�&p"�A֧ikҟ^&��I=�3���$䎲$�L�L�aW�g�vE�r��m2��A)��fdݘ{�0�B2� D�yd����=�S���y�s�s��m���1�ڹ�Օ��yƠ,aф���rq��% UF@}SR�>^~��ӯcn'IoP�tA&Y7=t��EPW�x�_<�9��-����;���`�D>��
��
d��	3@��X�{jFJdgI{��Tgq��T~������}�@�-E�`U�Y��_�Y�L�����=Q�r}{:��9����8�7c\o'I���ɪ�k�$I���KB&�$Ҁ
K�Mo������m9̯ND~r��w'Rf:������^0M����Z�x������H�Ǥ@����	����o�[�ϯ�cm�1���A�Uo�H��B�;*��\e��A)|�)�?!��@@|�nn|��a��>�̺��j��0LP)��|�k=��@*�iNHO�e�,�/�aOU�o(��_O�/���i�0�`�6�~�g�G�t�n���"�T$�#�?C]L.�G��C�8��(zm��ǽ�L�ޮ�jݠ���9�#���GP��th5iT�\�q��a��I���=M��u��+^9hxv�L����t	 �"��C��y寻���>��1g̖�mr��A!]o �l�$�"�Aœ_L��=����Ps��J�$j���o�_|��\����b���m�8Z����Q�oWT3LY��(g��J�I�3يaz������&�C��[�^���NZ��ĻU��L�@ �Y�JL��� x���m���5�m�a�l�s�PKV,ү/���$�hVi+IY������	��~�'��wj.�1�    �k9mn��b�69* � �3�!�x���ӻ�o�x_�39n��?p�]c�iO�>O�Rf�b�r��p+I:��SJ1檧�}�������)��N�����(D�"�B��6 C8�0�:�:����7i��H����/���KZ��򪨁I�qh�j#qE`��F��H�٫L-�E��E����Hw?��ܴ��ۛ��-������#Qt����źG�K7�z*4� �h���@o%������|wX��@e�I�ה�f���uUP�S�|�9*M��鬲���G���u{<�w���9�1/}��io��K��Y+R��xf���@���ٚș�u���2L��
����M 8gV���si��*�^ ~�3w�TQ��N?��������1���t����iq�=xXU����L��9��fr2��Ske���[�����W���yϸ��Kj����{G��S��^/�"Ƴ���᧏�?߾=���|?�,�Fݏ���$���ˉ�3�JFu��*������jѹ\���U"�����~���7��T�OV{ֵ�,Zo���,�gB6�)��\"�P��#�����t_����|�l��$ ����EeH��f)i3[��Pf%|���Yd�|������_�~|����׷��?�P�$@pM��)ՋqEk�c/��%1�� ���HV�]��Z�>_ݞ���/ÿ;��;���Ѯ�ڪ5j|���4;If���N���s�(�l�� _~Kc��$��G��
�\��-��U,������2���k�)\L��?�g��ߥӐi �I��l{�U����S@ �Q��� L̼����=�Cb��X���7	��7�7T�խ���Ge<�=2���>�H��ʔ�s�"B�K�J��ޏ!����?p0x��¼X�y*�c�L$e��UVsh���V�0o�r=_zz3�7i�� wC�k��5��~ּ4�8GO�K�B�ҕ��������S?������	�.�-/֕]�,��
b�2���w�80��*cf��L��8 u�]���zP��d�s�����k{�3)�0���		��d��T�' a�q|�fC�����C�+f��������E��<��i��k\Lγ-�H[�"(�����?c�N���'�źf��p0Ψ>5�F5,;W�Q���³LoO�����y.v{��Ф�M xhc�����UJ'�a�4�Z�#��*���!u:�w��>��n_�n?ݵ����!�{�����@������j� |�:��UrQ	{J��A��0�t��J�9}�i��&3:��]�am�8����[A���gv٧�8}��9^^ջ��e��
����v�b]��(Y�mD�2Q��ޠ�����eEd��B��9��<@���H�������g)��� ���8'r�e`����[����_���x���`;oZ�v4.�jFaY�k���ڨ�9N��"�Tq�߷�[Rb����2w0�����Eͽ����=�� ���>͹p��L��>#��^Un$k}Ǒ��A7���@�;�Or�;V�+�l�f�P"KP��eMt���1Y3u�y|�ߥ�1sn~�(P�U�]x	�Y����.��3��Oq����P?�^�M���+r��'��ϷӨuF�w9j��7Q���>r� ���d�*9>Z�O��?�r;�=�or�-���&�źvStˈ:�`�
̖+?�R[.�"�Vᇫ�8���o����fT.�geesTJ���0�n�In^���M%'�͐�A��
��ۛ;�׮�/���z�z�������u*�l���@��#��7���'��cZ�k�38��3"v�,P��z��Y�K����܇Dl��#�wuF/�g�?ԁ�����,�ܜ�|D�A<�gy���&<�}�����.PX���Ȓ����[rYz� 96���RO�^�vBD���Aְ�nZ�sL�L�^�4�Y�(�ry����1�: <�	Ǹ���_0�,V��t�n��(=��غ�x�6H�p�K���49�1N�o���3����a]3KJ�W@�Y7���F�:T�2��a�$u�ޥ?ӷv�e���ߤ��[���J���8�RU	�"iLi�!�CK9i]B-@4������o 6����&Pಥ����uķ _����(�PH��z�B�Բ/O �|}��M
����za�B��Uh���ј6�J���t�Y���R���;n�=�Ӽ,e��m� �9)��+�umi���T�"v�/���ia�ZC��7?}9\���P��tuԃ�$�w��e�wXW�cE�8Z���+y�紏��{�t�Ӈ����p����b�I(��t��g]�/���͌Ѣ��fʈ�%9WdH��&�%�ա�/����{?_��ca;���=:����	�$`���������)E���������_���$�c6�=ٽ�u	7$d(I?u \S��W�#�f�t�	q��Q��v�d8�o���e3ܷ���q��I�2#�����S}�v8�O�����<�����ʮ3���&P)�U8ǁeT�x�[Y|�!r��������� ��}�N�>��tXW����A �f�H2�Z�TEN��L�,j+�txwZ�:Ƥ�MR��"D���B�ʂ��%�L8�r�'�XT(c�M�]�X�_�����a%�&��ݟ?!�\K�fM�� 6�ȣlQZ��Pd��M����n{:��yP�d�g$��M����ܢ
�%�,ݹc"�/S�nVM��B�����T�"�M��d�_\�^H����.�=Qt �pN%\�g������ȷt}E6	��Y��x���@)�q�@�w`�@-1�ֳ��^����3��(��I�ǐR�4/֕� ��j$}rX�r����>'�,M���HRb�I����.X�uݣ�T�9(N,�a�"}h�s��K0�Lǯw�kƽ�e���E���u�q�Κ�c�Ӻ��qL@�:0T^N�>1*βV�S�R6nz8�= p��u؎�&�|�a�/�b]�Հۂ�r��M%I@�66�:J��M}<�;ߏ���?�J�b?|�E&��д���[n�$����:��.+��?�N7�~�n>?�΍�%c��N�T��Go�>� 4M�,a��,�U�.�4y�>N���>�� �$
����{XͺWZ����'3uV 	WP��d|kɷ���T�|9N-�o� �1�:u7��ֻۣo�<�o	�n{�(Y�F	��ܦ��I�^�?�]�m2 �1`��y%Z׶��];Y�gK+U�e
���\�^��>��|oR�С��G�i}:�
��G�K�Dv(�2W�JG��RwW���T�䀾c3e��$��g��kR���F�B.��e���%A�J�g"�������fg��d�	���k�����Pr�9ۘFT~PͲy��Hq)����´t�ڨ�q+W�B 씄�U���g]��g���U��uڀ�V%уU��ӗ�>~9}����n2��3�����V���{a�b*Q��P�U����W���L��N.��U�r��~���&���J�]�+_��ݖEӤW^�0')����s��Sv��" ��x+I�'�Ia����*�
_�T�'*Ur��$	*�����՛E�����M��H!ڰ��q��>%�B�̶.,��*f�L͍���t��D�M�x��+\/�u^�i5�ޖ]#�Q3+Q^���K��N������۲�3,�m������|�bz�.��G��^�R�5E�gkЦH�K1]�LΟف���MDH�7�~�a���ܲ
'XM�|����L� ��.�P�t��N���1�~��'��r�~����,r��%9#"I.��)E�DWYZ�����ë����S?=����?�o�q�ŕw�ik�e���'[9g��dR�	��N���t�X|?�A����?����!������i ��b�X�
��������p�;|>�=��W��{��b\k��]��/�^nR{H:���#P��~���9LD�o��D
��u_���$�F<73��Lvm�		_#��EkMM.4���cv��ۉSR�}���X׽Wh\    #R}M�P)]⨤���uo:	�Y�1��Cm���Q2�@�c=�I�֕-�Yl
��3)ig-+J/չ�x������]ù�.�;�L@�0�`�;��W��*Ҵ6����$7+�)��Y���~8�c�
�t@�B\�p��r�Rg�N�K�(�n�*�GA>�������n�n����{5$<�MZ ����[ڸX�����H�Km�N~���zפS� �Oק���x>f <l��/-�~J�u���tB%�L'�g`!�m�($x��7����v
%1����ź^��Q<�0��� ~�gۖ@�Y�����U��Mڇ17Ua���Y���m/�`׏��RJ�JP\(��*A�Hy-YO�� �wmT�6�y�ȿ��7�neWn���b��X� �@:H��`L���U�w�Q�z;q*�#��a5�z)H]P:jk��H�f�z�J:�[�.G��.�>��ĩ�����XשB�9���\�����8k㐅�����ӱ�=n2�� 	ro�f��EXo��TE\�p:WJ:@P��܄I�O_���A�n�F-���[�~e�@L���(Z�BW��'^	|ߧ��[Ԃ)<|y�Q�&�\?�Py��.\���'���ʫ�Gj/gw�l�6����9_�ތ��
�,?�J�]����K���B�������iN�g�4�P��>��;��!3�a��'R���X.V�*��b6�3���7�Έ-9h$!�2~���ܸ���C���N/ָ���=��x�f�a�|�FǪZ>L?�^��_O_Ǹ���o���O
�8bi���Ğ7�UH1FH["�����>�v���>�<R��?�.�'��X�^��஫���"z ���qT�W���E�n�b�d��kч������4GE��g�� �d�&���։:��O7� �1.o�F�;�|���u���甏3@T��&Y<@E�4}9�����c���&��©�cK��mE�$�*B5�Ldm]U�l�"Ԫ��/(�8����hH��Ah]7j�%x v僧�Pz�94G� �{(��
�����������tK�&��,د�h]�#�j��C!ui;�J����PY���E��=6)}��5zo�n�>e5J���{������ʽ�L@`�o���q����)Ok��2�a�|��뤧F���(u��2�:[,[��?ޟ���Q"|a����ۇ���@h�dB�K$���g��fH�cB��_ɥ�÷S>��};W��+�~1�P��KDjdya1�d���XB�8�U2��H��1^o;f�����YئW
�)93����qC�K<@@F�"ޟ��i��Mؤ��{���(Z�iCr���6+;$u8ϥ�Ҋ7�)���~J_1&�M����o�êWh�� =�Ķ"5���K�t��r��鵟җ�n^�S��>�M��\�렉v����"�� �baDFDMM7�p��p}.c���&�3n���b]#�!D��0'1TἺm-�.�/mz}�r�;��Uf��۹�:����L�Z9/#W,�& �CȨ\CR�T��p;�� l���!o�ސ�ź������s����B��R{�.d�ُ/��"���������&�b����(��(��k��$
H
z�'��f�t|��o����~x�j���Y�F������U��$�;�͊TU���^�|:�Pg<�k�L����Ƨ�I�_8��b��кf�s���T�Nj���NA�X�X55 �����&���N���_�+�OF&EN�3�yq�B?ˀ���(jD�|�����ǟ��x����__Qp��>pN�G�X�x�F��I6�ĲG�S�f�2D�6���:]�ǅd�Q$[a��'r{��GoX�s��0�wcf7�C���6�
 b�.���M��,�w[i]����������۝�jv�X�J�B���w��O���s6�6�|ࢳr�����s��0 NP�Q��S��)W�K>�^ޜ�������e����`5r=-�'�,���^Mj��[��"��,px�N&{���o�n���N�.j��Di]��pj�(N�>��E�L���V��M�0�9]�=�t~��հ��_x��=�=U��Q��L!��D��jBCrr9��:�0��L�r���t_��:}�z{�6�	��)���G����yw���.=��
�'P�ڝ�����wdܺ�t���ݤ��!t3a���)��ﺾ���)9]}ç�ɮM%LT�.�(%�ÑO)����ݞ*��n�h�M�8�۶}���}����i�K��S��9���I�˛9�~3;6�}�׾�ʿD`�HJ6�9�L����m�	�ڜ�ӻ�t�8,+m�R��M����S���@�xCf<o�e8E%�jAM����@:�QB�a���y�������:�Hg)AE�e) �b�>����,�Re�:}ؤ��W����%o���B9w)Pt��z������Q�$Qr7�qC�ad.a�����}�j׋W��FP��{�&�ln��!y��J���t�\z���ݸ{�Mڟ����5c ��i�1�l�GOb���ꊃ�2]
�F�ӧ��\���p]S�n� �C%����b}~�6�H�DS��o��@�<ƿ����iI�|���:]�P��Q1�|@�PK��F�X���&[���O��Ly�T˜�nYZ�]��ٗ�1��a�^���gϺ^K��cp*�ByRk���<�������*}�	n9!����O�!׳�U�ٓ�����T|��-T�����>� &���%"���M*���'�s)��S���)n�$1W�Qr���'��M;�YF%Ƹ��DC�bO��b]o�CD�@ �ƚ��R��h�Z�w壪jz{�i�A�FeL�����R{�(�U�,���R��W: )�K�0d����,�������ygx��sB6���(��_J�u������|�e_t����=�k�1O�� �=��������m?����$�2���ҋu]+͂��F�
�?rJ��fZ�-RK5���ֿ�*Wb���MB ��� ��9gR�+!!r��AО�R9'�\�Ժ�ܩh����������t�y��&<48����p����Bx�x��\ͦ���݉d�ʮ���-+���|�o�&^Bf6Y�� ��w�;��J
5�^�\"�v�
��-S�cIK�w��?�>�Ք�d�c����.�k�bt�IJ�R�#�s����o�P�(�A�ma�y����i][]��K�:o�/ R����H��Z�ġ���8܃־�&#���ڮ�)_�B9>WE���N� ��,(�3�M��^~|}������1^odO#^2�m�����˽�Z��F�]f��sNq��.� ���24oQ �'���|��*&>E��<�$�6j��E�y�o]խ�0����ï��?�~5Fu l �/e�N�x�Ƶ�:��3Q)5�!DF$4����b��?�9~{w|y|{<�����M��EDu�;���Mȍ�Z�n�������xE�����/绛��޷��z�[�@t�İ�f�d]�;�tR�yV����rUSSҩ{|�Z�`���|�;0�Ҏ�E	D���;w�O�uv�6��l=��z�d
��EJq�����/e���&�&[A����-���T�J�עܐ* ͪ�9J�U�u�&M��F�;2����7�%�
�>��֕э�1T#�:ᴳv���z��f�h��g���ӗs�!���\��/B9U8�.��Ge��]
ɵ�Λs����޺��W�Kge�"�WR�]s�gnQ��3v�s��t.m��{�$V)�����|~<�>����	[L@�L�=��'�惱��L�E�vN��֥iY�i�����n�J��	��z�B�ɺ^��b�Hm���?#�����2M�~��?�~|=����)�{�]رƵ�Қ�Y�������9�����U�YQ�w_"S�_�z3���|IAɝK�'�Je��M���fn���W,�iR �5��}���-2 zF���s��^{?V�T�W@h�xA	 ����$"	r}�5Op�����>�as|    [�@�.��z0��4�[�v\8~e�3I��mP��TI����9]��`��D�"^�簮L���������M���ѹ������!��9���E	ߔ|�n,?Y�{�ȫq�<u��8ٚ�bV=;e4�&b�U٣ݢZ��{��Oֵ��^H3Dp��H���c������r�(�<��۹Ri�wO	Y�VU����<�ū)�Ρ�����{��� �lTJm�%�5;s��\��29>H3kMŒ¹Z��Qt�(M��Ȋ{x�{Č�����;+c\G� ��Z��t-���ĭ�k)�W
Ç�o_���폇�޽zM�	�����?��f̈�A=�d��qq�xD��P\^ C~��Ӑk��5Q��~��t����a�U�"�gA���<a]���tAaH2�N3��5�*����M���|�?]%��1�p���Emw�;���3�z5ׂ��z��;)dAݛX\�*�L^���EB�cb�=����)�\�a}��TB:5,D7s�M��������ǿ������޿z����wc��Ο�k��ӓ�YlՅ�3������tK�^.I��D�~d��3���>�
6�	T+-wz�Oֵ�Y�((rq�[�3>fN��͠R�*�������'8���q�����àou�?���Xׁ�jU�R�%U]�s�zF�z�!�Ow�>��?�îݶ��蘱f�l��V�72aY�Y�r�T��	�d�x���m�GI�����r~;�j�����ȯey��#~�Gl׹���Z�b�[X�������s����vgq�bu�Q��_���Q8��R���ga���;ė�"�U���`HX�[�@t,8��k�um�L�M��
�E���S�f��H�{V�DC��:�q���E�v�#����0o%������ʋ�I�xUw��p�������q��!6��4\����ԭ��#�0��9�->�^���������ӡݑ�s�<�n�z��dj$��ۧu%E�ҳ. ����8�)6rs�M$!+B�t��>L�-n1�1Ż�]�UT�Ȫ�X�m���`��A�]��`+>R����x����Ϗ[A�Lǰ�B�3=`ɪ5�Q���	P?/�)8#��љ<�=����T�ݟ��N��۠ò㟕��V �>w�T1����iN۠�K�P���M?�������W�p��PԿ�[�At�Y��L9��^�Xcd��u��A��sM�r�=M�jz*|�r۷t?(5m'T����&#�j՝A��ȂI�9�CYg��u�l�z�h>
0[�At*�M�_��㔮���͵��4'`m��N&]��
����J���K�@w���k�J�U�(�J��U�@w��'J�XR���:Q���ngO+�δ�q�q�(��H�ܸ5Y��-s���#w�
:��A�ϸ�D���n�uE���ϖW�&�<'_��m��(eH�^�q���v�Dh;��Oֵ��pd��vJP���?Z�o�N�^��ii���tws#��(�����u%��Zk�g�Y$r#��9��BWȫ~��>����1�*q�7��9��;`}dCZ�,	氬KX%)V	�c�Et������?Sh3�+��h�������ָ�ٮQF��Q%�P�"t��BI��,i�~<~����������aH'.n��3�����խ|6Unv?I/�����=)Z��*������_�_�Y.�Ƹ��q�nb�̅Z����b����>5��Z�?>�~u���ߏo?����=�:�Lx>YW�la�|*s���P2��2K�6g����	T% �?�>����ӳ�阇�N��ؑ/x�>t4����Z�}��� �(>B������ǌ:�-B!���~u�H��T��,�ץ�Ne��*^�$�Ф�NW����������yPD�"�g�K��~ú�5w_P�yr�G?g)9�B�E5��r/t95���Q�q�Z�" �̒_��+�bՅ�8��{ τl5�s�U5��%�}�2��y$Kz��������i��h�x�n.�p��?��g�H�E����i7k$fޢ�ghf���R�Z��f��)"��9Ci]@�hb�4'��Q	�n��q.Z��q�d][����ݳ���ʭPT�p����	y�N�n����/u�bj���c^n��_���,��3k����:��檻�Sg������?Fչ[C�Kڝ�'cXwT |,[N�8W  `�6�0*q����}�J���I7�� o���4H�,n��K�~{�k!����hNv�k�'��B�ڨ����<�o��##�@�u��W_���rW��N�ڬ���2�ID�X�[�돈�c����'�?�B�J�S�A�)z�\�BrG��Y)��mx�8������{��ݨ%ϸE6D�;���\G�T5>��>�l�Å=�Y�f�2��P �n>}>-���[|C����{$�u��?\Ɨ��
���I|aK���@>��/����r��:7���o�⬣B\w��r��Z�h�$`t��/R�r$����_}w����W�_��v���L���G������I�����K�)K[Q�!1�|����ē3EoQ�� �ۏ���g�]�'��G�H��F}�:�#�G@��8R�p�x{8a\���I�[�CtN�C�u�*�<Vn]�����㬒jh8*>��u�I�0}}�x{3�,n1�7��� +���"�
����6��9%���x�Q��.g岈@2���Պ[D��#N��~j��w�*��"��=��$�̞4r���jOә��R(F[�C�,Y�V\�z�<ҽ�d�W���D�!v9�NJqV~;�~�O���|���z��Y�����֕���l�C3ԾG���ކ*s��=9�ynC�o����8������P��n&�0�{.�F�E*�|�����*�-�!���}�5��#G!
ji��\O*۹t՝lEIMf��S?��v�n�=��Z�[�Ct�����d]U�z71d1{.��\�K1�V���	��i���i̾~�b�WV�E�5�@Nw R����S��ţ�R���"����U=�@ݢ��O-�cH����sN��i]n��Qu�9y�ؐ����4��jT�.,xo��ק<���<���y4.��)*�.��j.�u6�p�/ƹ)UiU�!y���O�̏qz;����]���k�7BU-P�Jo�l7	��5k%P�T�G�������A�s�n���Al��u]�WV�E���8�B��.���|_NSwy��8!W�zr[�CtLJw2�b�L]?Ke�{O�n��&$*lWY"ի�CIW�o.C
c��ʚpO�=J����uW�)�����L�������,�^�nJ7�W�G���o���*�߽�ʞ�Os�y�{�\������*�y�]sD�����.I3�yq8�~{�WG����
��!����U)�NU"�we

�T�w1E�x����M:��q�<��oePx��������魗g*o^P�ʴ0��ڌɑ��a�q�f�y���=/��y�d��jNJ� �XA�Ŗ�)*YW�el��|w8Q�a��;�e�6/���EU$�Ӭ\^�+�K?��uQ^��v}*(�?�y�y̨yܢ�k��z���pr�I ��e.�1Q=�nf�_P�౼��u�߹�:���)_Hv'�]�v�M��݌4Y����(��� �@�ӇV��!/�>�U�nQ�?���~�K�r+�4���B.�[��n�!���\�~��"��4�X�蔊r���b}^��-d�۶���a���Y�P,��P
�Z�����!tqq�`���wxW/V�v���'cG���RDQkwx:�������۰���.D�l�~�}��9��wl~�
N�Bu�#
A1��v��b�(W^��	��-r!:�ܑ�~��������L��5�ɪ�Y�LU&[_NTr�|�t���+D߸'���h]5�m='jDE�اЭ�T���k^��W�qڢ�ox���'�J�Wj�Tx�%�%��f�Ψ�$����~��rx�%�1�s�a�)    ����du��>rt(.�����:}�E���@�;}G:�z����ڧA�[[,CtNZ���ª����I�d�[�V]Kp�a����<�pVnҷo�;jrߍ�Q�$�{�`�����d����9y�
�"��d{��f�-�B��,�k�OW�_�iݤ���Q� �{��]��pg��C�l,�ʌ>���B�in����t�9]�!�иIA$���v8🬫8E��ىYh�,vyr?�[��X�f����M�!x��Ϳ�31�Ϲ�RR+sϋ��_Ri�!�ب6.�Jq�u��Vޟ?�};�� �^_���h
�c�q��unPm�6�b��d[�^-jH���s��rܤ�o(�����]+^��+ğR!ȔPg��BT'=�K�5hk;n��ZH�7d�X׻!Y��٦~9Kc��8,���� ���_��>7�����rG�bU+�gL%�FR�9Њ
HXd�PA�ަ��_����K�{t�խ]�`g6�6�Z�b)T�L9�&��m:�z���O�Mz!�d�ܡ���Sں�.��$�E�AV3@�^p(�M�m�E��.�5c|�N�ڰż�{�"��s�6����UW��|Y�v�Bx��k�o����M�!x���F�b}��ɜC��b7p+j��3~H��7=�p�n>? '��U�:���$���e]�XWŉf�!7
y��fQ�$�B��T+@Pmmzs�sܲ�&��
vO��ɺ��Mʶͅ���GdK�=��K7\��m�߯΃|�΍�Vٻ=Y����*B�
��4e���Ξ����E^�`z�a�`jIlR��r�J�b]?Ie�@ܘ��H2�?J���Qu�Zk8�1J�2n2I��^g^�+�� ���4�)r b+�k
azw:��>ߟ/����=���ħO�Þb;O"}��a�5��"�[my��n�"����D-�s5~:�nw���.6y���Qf��,7a�)d��T=2ԞG!+�cm[�O��������/_���cD��&������k|�W���gQ������S:U/TW�J3Y>.�'s���˟M�!8��_�ª���!'�ЙC�D쟓�~M����H�>=�ꢯv�(�xs8^^ջ1��q��nz��n�֐��M=6�
J�^�pnU �R��x}:�~������m����Ө�X��~4O"j� @�H��h쓴#����7���I��M�!��
 ��Җ���U�6fMd+�3���ԛ(M3j��$n�-Z7K���נ��Ϊ�e{S���y]��ODɱ�
��~��,�r���[�zC�9|��=ǔ��ҼX�zW����]�F�i������S��A_T����T�q��Ӓe�.���#�Y�l���-J��x�)r�ק+N��pH����﷓�58���ָ2���RV�Y)�(LZح��JL-!�IWKn��;N��w�.�:i���E�7m�b�j�8u(F�ڕE0���}����nc��&�<sԠ���U%C��¤�Y��@2��,��+�
 �:-d��RMקAU�&�\#�����>U��	i�W���r�A1PdK]�$��S��zz��=�k����5b�g�Eg��;�u���[�܄��z2�Ŝd���Va �
�֯�����D�Dp�i�ƕ�ܶ���ET�(��,D���nRT�����r<������q|;a�_��zM��J�r6�"�s#qDJ����מ��t����,�#0>\�N�Hr�2�u=�))Uǳ��8g�R��i>�^Q�}�yf.����'��1�o�J y�7|��+�E�S������9z�K�W*�"20ǿn
���s��>�����;��kPf���Ƞ�#���'��Dçi\EU,����Ш�NogK�����ź�M8���	�'�Sh��HGU�Υ7�m����Gi���<~ػ���.�{�a�kY4kqĩꑪs}G�QX��u�|{5d��ogN�V��>�x*d���K[f
wTP�fQ��t*�bk�W���U�A;�p{;o���7ZW���Kq!ϞSB&s�9�e��X���M�ϟ�ͧ����AC���\@����U�X�Pহ'���9+�=����d�%��q�B
�����xp�֕h��ҩ<'��`�Χ����U�jG���z���)8��8�3���u�d��y͋�@j>�x��(Ґ��W�3]�23$	���L�c�_�z�(���)�+T$�!�-u�z����$�� �����9��o'Lo�~	��O��[�$ٙ���#|'5�*��:�G���>m�&�|�ȟ���h��i.I��<�3rG���j��Bv&���qC��t���T���Bp,pfy�� �3&.F��%gP�6��.�
�%Yj�l= Q��]MC�l�{ǳ��[��:A>�&��:��&J�ؕC G	Α��ׯގ��/�΍A (���{�Uy�.�����W�MB���B�Ii�e��p}"o�����������rǧs@\n����Ԍ�uEm7�$��$��6Y���Bd۽
�ue�
N�6��}SEaQU�N�0zSNZ9�v�>*<��n�E�{T~ܤ��F��2�k��^�C�'U��`D�Z}��	:�����|Sn�[��)/�>ᴃ�۩2X)��
�J�HM[�z��� �%^v�r�^�ֵwn�����/�����v�?����J$Ԕ!����.��Y<�^̲Y�K uJԽb@CQ��Se��/�@XݺoZ
W����N���!\�(�-Scȷ�W�����ӫ1~og���Ϙ���Q�qe$0v��|2�I�:>bŝͅ��1}�tH�f �G�m�eCqRg� L<	%`K@ö1[V���~H��?�x��[!�y^�+'�i��>q�&�����
[N +�<}9!��"�2�ogΨ��V��o���t�K�U �:㐰�b������?[�~�7�3f������9c6U�ԗ-�*d(%�5� ��r�Xj1ݳQuDc�&Q<3Ai]�Ҕm:+gY�@�3j*<��x)��`����n��c� ��v��6���z}��nQ�x��^Gu7���{�+'E9������&c�"��w֕��
�r�y�]Τ�� ��qؓmdBL�ϷW���q�{L9��ς�{�ˋ��8M���G��@�yN�7c )uF]U\"��ǟ���!Ä��	2^�/�кVS�Y���}�'�{䟏8�)V��_NW���Q7��t���D�^�������":�d�X�����\��P�(XMT����>]�"5�����d�{)~�>�m��qVL��8��p�(���P�D5]�/C6`��?Z��!��5>�>�652��e�T�?��J�m b@�
ܰ4_��Or+?�3|[{7:kx�R*6�sҸ��9X�ܢ���Vڞ���ts>|��W��J�p�Z��i�Xͪa��m���.	�9���Ss�A�R�VO_���|ϒ�����a�xyζt�\��Xk6嬐%+/F���]5�z<s�)�6�Lɇ?O��t?�w�����y/����X�l/�ek=��G������T��������6������ !��ѝR��I7�%7J�ef��B
�P�Zn�?|9}�e�~VTm�)��=>��u��dY��Q�p���"����Y�c��a��[�.)�,��V�|���^���@54��j�s  �FF�ô���ͅ#}���iR���ݰj!�i�֩)
��� b
.��e�������ដbC���v����=��Ū̳�hl�SZ�p����q��f��j&��o?߾|w<_�q��������&	����dX�+�ba����v�K'=}^:m�^9n�/���vs�8p�����:�|v݇u���C��-*n�,ln�M$��h��_QYq�x�\>};�q{;oJO�]���G�Fbq	�Dh
�z!�\�$@EN\�\�9y�7�N~��!���a�u]�1jU*��׆�����y���e�5צ�>�{{�������۷C�.��v��ٻ�j��z�2�z!�� У)��|wՊ���#{&��X6aO��àRe�.Rb�T�u�T�J�H�nnRRƍ�J\4    ;��Z�$QU�4P�׈M& x�wg	�l.
�,�e���kxך�C6�iޕ8���ozux������o?�7��� ;Ļ���u�DM1=��4�<��7�qT�HOJOw�{�����������%]�j-���R��I�cDT���uoQ��8Evzy[�n�u};�*/���kբI��j����Kɫc;�D*�	�T��
%Prz���<��ς�[t\���(lɖ��)Pq��,�DC��۔os~��v�Tqd�V�u�N%J�-�yE�D���q�E
����՘=t8��*��{{�늍Sчd�D�\�9���u�����G�l2��)���'V�|�jKω����P~jpUE�]/q���ջ�����v�Db��ю�gEYe�"�#��k�D�-������w���(�t3�No'E�C���X�:�h��8��<�ݨ���h���V������9��mw�w�}�Qe;Aj��e+���!��;��$@G%#椀w*���r��??������������_�r�� ���n�\�L�;����'�/������ F+��n;���Z�źv2���sCշ��T��9�[�����~�1Q��p�����/�:D��ogF�_}���UK�y�Ν\�&�����*��k�s%O��&���1�q��G��p��U�ź��\��1�D���T$Ie��g��5�A�r�F�����{;I���=-��d�B$I�J�3C.E1�8�RB�mmnZ��82c���?pKI��i�X���Bv����{���|h�>�X�pdz:�#�ߠ�MZx���������Y&���>ͩ�H
b^w�s��#�\�L�=�qCU��>��D�1B�ҰNia��&P�\�u���@��y���m���$�O6��^\�ϯZ$[C��%�I�
}Q���uh$��~Ѥ�����k����P0��B
V�rD�[���Y��@59�g�֊�h2}�(H���?5�57�|�]n���b]F4-KA�H�P{g{���e��d��%n'H��jo}�b]_��=���\�2FJ�J�.|���犋*L� ����x;)Zv��.V�|8:�z�����4ʑK�(Y�E�D��!f,�vIz�G�t��LIZ�nc�s���IN̹�4��@W�̂p��ܟ��?j�oR��3m�~��ֵ����w����ϩ�$+�m��� }���T���v:���!^�k��Y���9L��q���+��X�]L�M@s�� ��_�������M�]��� )�'���ȹO��)z�'U��A�Ҧe�h�M�&{��R�ܿ	�U���T*�"i�C��j�0ISQ�r�����O��߾<���������o����/�Sl�H�O�bT���* ��\S�
u��g���p�O�O�<+dȩ�!$�p};W�(�}�����\pZ�u"�L���3�˦�o8�p>}J��û�Oi4�d�Q/A�n�u���:�l��؏7*Q^Y���{����xGE�Q�}��N��ۛ�^�q]%�1Sf��p�$5?��Ŭ{����kHӛ_:������^�2������_W!A�n;�Ozd��D���d��]9�,=����I����q@`]v�k!OS�kጵ��:�Z��ǕC[��!Շā�1~o�Mg�_���FY]zeW�J��Z��!�$���	�_+Ï�h6��v�f7�HV��#�`��U�n&�,��������Ծ�>�����r������o7к����_m�]�Tࢹ!����X�t����"�d�Qԩ�z���u�I�֩��r�Te���K��=`�1�";�f���E��/>h]�tJ�>Y^Av6_-)y��(g����nb��1U����a["�\=�\?�sV�2$�@��f���5��1Ջ���)D�:[���w�jԔ�&[<c�ߍ��>:�~�mX�K �	*9�+��?���8IZ��8m��(��z��,iu�*Q�T�V3۔\P$�pKs�1x^��Lx۟���.�tHw�>�l���?��a�ź�M\3)�~E5��k��kS*3�M�$K��E�;�A]�M�xe��O<�>����RF
 ���E��.�I:���\�;�|C�ϑ�m�Pr�g/V�Ү5�{: Z7���e�HN�,Lw=�?�o_�qy;SR�p� �b]QOr�-V�\�'Knx�p[9��r��K_2�~�;�?�J=r��GQ�V�	��)�#*U�J]8��΋.�H[S���Ө{`�I��b�n��j�LY�T)�2�l�.EI���ǐ��=��A�4�Iң^��k�m��FrNpܕ
���9��Q�V���5Ӈ�QGa;#%�ǉi\5ң*��S�E�jo�=8"��-N�/�W������vHl���<�L;��w�����V����Q�d���#Wo��Ȋ�L���\N$u�~Y���w?�o'ƀ��k��S�$P]M��Ľ�<+��Y�s>��������>������b�(�w�5�Z>e�I5��mᜑ�E�loŋf��~���0P�ި8��[�'v�v�l�:U�@#�I�E�x'il�����枮�N�Lׇ�5��Ƿ�c�n�n��V�V"��I�OA c"���u5\bH��8�p��$79y������HB D�f����G~��]�ll�UO�_���w߿�
i�ïC|ߤ�Q/��nO�k�>#w�r��tI�$x�F�s%�LB�:�Iwק�ï�9=ަSNC$��v����f�.�u�������O��*쥚��Y��ʡV輪����/?�;����W�g��ۉ3���nZ�[�r1Q��K!g�z bTۨ�M��a����G8�����1� r����U�aϺ��bm�Y�-���?��(jt\�R&�)��J8��Σ�rS�b�+ʹ����rrJ3u����3NM̜�<}=_2����Sft@6��V��1��5� QWi��bY�vדȤ�p�nG|�wc���&G#��n��u�qWD;*�\�!)���Ϝss��������9�Q��<���$�kd���3�%�$�ED���7�7�6dyG����M�#�é����M�Mm��y�ź��5�3�Z�,w9�WK-��]�N �?6RΣ���c�=r����V��^�0Ft��eā�8�`Jp�c(�L������qL|r���������ux�.QKΨFW*�T�KE��)K���߮�O������t���=pNE�7Pp�>�y�b��3��M�����.s�Qʮ��MM?|�j�*<�ʕ��8�7��X�q�1iQV�H�I��ƻ3�&�JQ \�P��ݐ^��$�Kv��س����"�+ ��ٓK�|�ݢ����D���W��\��Mvx�C�䜋uM�\E@5��ԥ1�4k(�{m=e�K�mz=F��n�HM��]��\y������ew����F�e�	�L�^�>�H��!#�r��Gsx�"�b}�cn�K!��͢�b+��q^\]�ߐ���d�ы*�~�ź��X�U���-�G:�@�qnH�YN;��ǯ,U��0�l�h��_��:M��s�j��4S�j5} -Ր������c���&'��8��.úҭ4WQ��M;�X�l��(�nYhQPa/���D���$�kF۽k��u�b ���[kV�ƬI:�$Ǿ��D�K��σ*�MRx�3�מZ��|����@p�/�&�0��cz.������_xe�F�����������­��pbJ��/� Xp�
���,�GU�c�~���_�?���˨Os��GStX��tZ��]9���[�`1�_S�٧_,�����t=f�Nnr�У����� w�g���]C��ҳ�3�zD�� �O�8�cL�ޤ��/8ؿ���X�z���VP�y _�F%���s ~�B����C�x�WDb���x�&��aw��b]�im@���˝5|3YWZK�eA�?9}9��_H�p��MVx���cY�XWz�%��าe��" qkҤ��%�ߝ9���Qbo��b]e
����M3
���Hr6�Ь�CX|�N_2�����S��x�݈M��u|��L93'��#mŜ4p�%D?��    ����L-�CH�&<s~o��b\G�G����ͳ��6Y�T�R�墣�QL����i�`�ܤ�є�{�A�]�bOH�$���3�d-VܡŁ6�z�C����|{X�ŏM��^�������c��m���˂Pjb���h����e���4���d��/4����H뺉�on�i&s�|D��^ecDu������Hm�1~o�F-�ٻ��XW�h��$�}W����6s5_(��d�ӷӷ���ɷA3�r����<���к.�[��-?[,@$%|�Krֲt%2^{��s~<���a���!5J��I��}�G��+�*Q�9��=ӃPQ'����w� �A&7	x��U~O��b]�J_K��Y��-9�c�������X��cca$�G�a��������l��gά���\<p�B(�vT�ʈ��"����Ւ�([���C�U �n8$��;��79w��3f`}e�w�����K%x�̑j����+�V �����{�����ᇟ>��W�l�yGSG8��������(��xkm�)��<�~;j?/��^}8�������;z���*[G+V��V�l��R�����}�d�Lqfq������v�M����0b��i}�D9]=�?^E�^6��Y�<�T3v*���vw�U�^l^r�i�!(�#�+�hI�������NdDo�g�}!qC��N���m��������فS*�1d�u������Q%
��6��ً��gLO����>y;5c�hDq��U��E���Br8 �&#栚RI����{��^8����6v�wǆe�n����sӔS��]�_ �!����<]�"��wՒ�;����e�;�k^�u):#;i�lOl'%�lT��w;=���'N�ۋ,_n���ɠ��ZV��J��|P�rw��_��p'��E�>O��������ܤ݁_�O�{�C�\ ���\n���8�4Li
J�����pu:��W�]��vҴ"���ź��ۖ4�&�D�m�Ĺ���
|��I���e-d�y�L<pM)=n��j^V���"��#e�%�Y�D�J2E�B����r��Gs�֎�.V��}�(�g��ȮGIft�'���Ips���.��}���&��Vm��_��%�g�-&��-5�gU%"��.V֞ij���z>��_&7Yx��5�O��5~}���(Ǜ����,�(���v�#(��ʲ��bߎJJr��Gs��O�i]�YDN.-]5�F�� �b2E���"�}8����^e;�Z��N�֕DHf���sM���EV
j���T^��1���1��7�x4�h�8�,����QU�8B�L��B�(@�(˳~�P�r�����}����	c��X_G^��B�h��+��<�V�A�zm���L?��>(~�}�Ԍ2�N�EJ����"�,�&dH�O5�\G�r���r�wxz�{'�<��C淋u%���� s�^p3�8>��P��T��rI�����;�H3�u��s�%�M#%�qN�uTi͑ӹMu��ڧ��݁OT�?a����,���.gѻa�G��p-)���~����W�u�vGs]6��V.֕y,I)I@�& r�Bϱ��B��C�=���<�K�S{(�p}|&q�>�$<pћ�P�b�뭂r/*��J#��i��+&�b�D�Mf��@1���|�N�j���l'Hܟ4O7�^iȪ��gǲ!8
(�R:*��x�9��U=>�$D����5�&?�~��w>�h}-�4�њi�g�V1�Y�uծ�"{��������<���y���u�~S�d�(�Q�#�Sd!z�f[�k��b���>1|||<��nv�(�$�wJ��B�b�v-c#JG.@��k��愶9R�J�����P2��C�(7iz��&/��kX����LJ��G��[�9���ne7����7O��p�I��i![nR��7c�h�h�ƕ{44�Yb3_�G�����dm�)�2��(b���������M�8��/�W1��t륥��8�#ɫ�Xg�D�^��O����ۛ��C�;�6{�u�ǮG�NB��#�WFd
���9����V���C":��_nw�����ƣ�����K+��/D�H3�ELI���_�����_[y��~ӌ� h]� ���Sv�́��a.�\�n�?#GMWw��y��g��GS�v$x��Z�ۊw["ݤe��[Ǉtl��j@;�>~�����Ƿ?����>�o�ˀ@a��ZW�2DC^ç�f.��V��H��Ks�MM��{B��9�H�ڏ�=�M�������ú,�'Q*eDȣel�3�`G�RBL������t|`�p�0�����1#B���uC�U���J��P=M!}L*�#y����y79{�I��,�-��ú�<Ԏs_�����������zm𭛾�7R'����&Qs���쫮�+�puv�z���'δ9'�ml���t���R>�X.7iz�ٖ�����
�ٝl�$����,S���)�����t���)or���`cF��XY�e�4�fMQ%�L�cE)�=�+�h(��ɜ��q���N5�&G������W��\�&-p2~F�t��AZ�^ 3զ}�>5
�}J7�x���>֝�vҌ�5#����G�\ྈk��%ζ��:9W�Q�OWԺ�.o���)���4�k79�k�iF~d1k���6�HT[�v`����+J����=��?�X�t�$쁏�w�~Һ����EJ;u�>R9��9H+EJƹ��~����O��
�a�M����~��`]���i���aT(���ΥY��u��e�U�~<,�l=�	�c|iBe�Uj��&��� ��u��U��@P�YUJ�ӿyG�p>�䝲�&a|�r(_@�k���9@7�I�JiXDA��M�V��N�����}���&e�
J��;h}�6��7StA�RP�K�g���*�)�8}u�r����_v	�j���E�������%���j��|!�L���FDU}W�L��O�@_ɺ��M��gbVm��n���/ƵyeB�U�0w�9�P�ζe�}��)9�)�wYV��=�)�Q�X��J[��̔I�|�߱#$����d���B��5=�H�6�|��q$&{���xRu�]�6����_��lS-�lu�lI<��6Y|�b�9�b]�6�֨Uq�I���R��9�f�ܘ���ߝ�o�!QP�>����j������L
�	_I��328F�%�cm�9�}��J��z�Cf��u~�iс Z ��T��J���"�6ל�ȍ����~~Dz���c�qP�\�+^E7�uϢ�c�&�=箒�>�鿎�=�#*��-���C*�O����R��>��$�1Կ^x_�k։��PN�1]�#p�*�,]���<������Qu�GQ[m���7x�ό�
x�/�,�aG��XH�i��S�ԅ�h�����Z�7�!�����.k�j���p�ut��_�+��ob@��z|�1r�5H){�����S���&�ڤ�1���H%�b]���=�d��2i�������}Q�`?�߿,7U��:�z6�{�Y�Ƨ�C�k�)F隨ƚ8I|�I��^����Kߤߏ���7Y{��EQ:�=�\G�u��E�x�y3�*X�fku�R��>ߦ�����ǔ�&��sV��؋u݇��8'�F�e�'%Yg�3@fH���u:���t��6)|��w�˞�ב�R�Q���ZP0_�W��!��Rm�>?��^�j��^�G48�u�G���m��̻��9�
� <��M������û�O��ZP��=p����p��~g�Q�X
�,�뎃�	Kɱ$'�݄x}<<��uD��%2ú��Wf��b�	��)��p�Sʭ &��m�S�������6��d�6�{�N����b}���ن��%y�9��s�k��n����=J����>m��~i�X5��׮�ſ��sF%ȍ/n��V�׺k_}4y��;O��M�xf|�z_�q��ի�]���e2�'�j�r �y:=�~<<�~:��2�&u��o�C��'V�Oa\R?�=9�-�f��^��S1.�>=?����َיj���(Gw��� R{v�(1;��-�䲟Q���j    +82�Յ������N�o�M<J=Z޽X�ʯPuJ.��'��̣��v�2Q�A�*����3o��������ުMnx�2-V����(�S����|M�+�jr�B���>����������?����������mZז�VY�Ĺ4����8�0�&��܋����w�0P��>��2kv��1�(�j%h������9UA6Ӣ �j�S�y�[(�R��О�Mb��u�����|�ET�&i�&EUX�2��,[���t�ç�����>U�&��2V�a������%����H8�{�G�cK�c?����*c7Y}�"�;���W��L�3pd!�>�N|�r#�]uu�������<\���m2�����:�ź���u�w��b��77QM���������x�x~��>�o'M�T?d�XW" A�(���/E��3wdge����ο�X
�ڟ���>e���E�F;��կd���Z��3^Bs��Ms;&�М������D�����g��I�c�!���V�V��/�X̊9r��D�l�:�g��)oo�:�ۙ�����Iᵜ������{#�7[�ٵ�T�,*��~;r��>����ۉ�"٣I���׼�ӡ�Z�O,�K�h�$�}�UXԋ�4/����?Z���>�˺n$�x���V +���}�p��b
/�)w���oo�PT��y�x�I�c(x+�wR��</�Dj/�H��j#޷9�mE���D�̺�̌ڤ��?��?d.ϯy�un�!+�������x����'$~8\�s�݇GDm2��� �h��b]�vr�]�,fk�S�"#9�D��Ц��������x��"�h|�b]ۯH�Z!��*�T��6�0�$T3*��������Ï������ǫO;����0~ḎX�|9$�j�.Yg!,y�j�S�]��F�*���.�ɤN���(g�&ɏ���p��b5k�$���53���
e��C�ߑ\"�,�;u7�~���r4@x��R�!XVoɐC�S9��k��mM�֊�IOǛ����Tv�z;KZ����A{y=cN���I��"��w��-h:#�����(�E_�Ǜ�v����o�Jk�5C�C뺹�$L9��b�4�(@~D�*�e�t�����������r$Z:�x���HvD�4�R��s���h�<Eߖq����h�~�xj���y;.�a��uс+S8�6��YM3Bx�1��e���w@j����4�(\]��I��*Y�T&���s�o��=k]M�n{:�.RKM����$�1Խj-V�"��M��q���b*!e�&a��uԲN�ռ9�?��G�����I��Wݴ�ޖh]:�&<7*5���y�����e���͗�?>�ϻ=����͡�3w+��u.��%* 62u�_m����N����)��f~6����C泋u�����I/Rozw�8���u٣��ƔZ�� P�@��=�h��u��SZF�� �xO��V�P���(��Y�F��6���Cn��u�.�ʹ��yd�țzY�6�D�Ҟ��q���b(̾XUx���Q�X�ELg(���V 4��2��뫏�����[r!~��n��!@�aQ+޺��JtW)��HPB��&D��[�������b�e�x�H��2ynGh�~U>�^���|��NHH��
�R����ޝz=�4?�ƍD�.�U�՗h�̜�^�F��s�uV��b����}̧�e7z/1b�I�c޼��~��5�5aQy�P��$_eK�&�-�.� <�����������P�M�ý\=���u��m�e�����&�q��b�1ƤUO�V�X�a'ru����`�pӸ����
Mr�� ^�9��}EEVHB��Wן��k�P���cI\;~�V�Ҥ"��Zg�aA(�\Vl܇.���i��?�d�IwG����We�����#2ًum�5�D3��ꎗh�͹��^C�*���t|���}W�L?p�{3Z�^�V��-��wxIoZ�L�2rf��r3�����~�������5= ����ڡco,j��>���a�d��.o�Sz�����n-�M��&���\�սٻ�9Q�ma�����C��r�������p��ߒ�o���d�����ױd<�ځ�j�H��Y�B0:$��]M���x��>�䝞�v��;;�9����tV�.��B�I釼	�(���L)-���cZf!vq}����0��0���RW��8�lI��:Y��	 u��}>�>���qo��-k�8��j�K҉Fʊh�TS�6��~�if�D"��
���N�l���p�6��)Z�9��sF�ks��%	�� ����>6�#��ק�+g	���鷽V��&���.�h��b\���n�dmf-->�Gl	]��WJ�!���tb��S��x��)Cċ5>ް���� ����+%�\�I��ݣ/�
kr���o;��U�6y~�m��AZ׉u"�8e�b��+~���Z�^��z���o��i�t��>qZs�i]�������0�t�V���g���O~�"�T�Pt������Q+RZ�8^m�J�9H�d4��zF֬��h铜޶���������n��M�x�M�(����W���%�8�}�	�!��{7Ջ:-�0	���n�ݺM�xfV�БumV�"�TM��u
K�%�������ބ��<ސN���ۦ��$��k��w�bU��f���8��c
J����J�$Q�L�hNe���S;ܟ�O����6i�&ʒ��@tQ��E�sB^RT*N�ʉ��(
�T[�T9y|��o�҈bj$1�X��j^z��}��c?��J�Q�+Q{������a���M����9���5��J"Ԣ
*��2MM���f)t�Sĳ��Y�ްb�	�o���7BH?SZ��n��$қ���\��rg/zuMh�ܴ�����V��SR���b��,t�^$�>_�"�N���slܚ�R^�{��bnQ�?p�Q�^�^��yY�4{�ss��$�q���5��)�}�����zr��Zm�4?pN�?2t]���M`����Ig��� �g���{�O_ߓ������ۯ�x��0���{1����k3�L�d"I�#,���y�h�V�Ln�_������������&�d/V���t#zs��u�R!5�2ͺK�I��|�~�;��O����y٤��g���^�����x%�g}O��b�U;݅^{���F{�6��[0Cy�ռ*"�Xћ��� �v4 (�Hᕞ���Շ��>~��~�,�7�,Es�hs��.7v�Q"�����͵B����2�@w�:`zJ7'ΰ�q��|��Ǿ��x��a}�r����}o���7��H��B2�:�j�����_%;���M�8�L1Z-ָ�M�$!�j�e}�t�AYlI�n����������C�N�R�fzɩ���ŉ^׊�n2w�d ;Tf��5���o�7���ER�9��N�Ǜ<?���r�W^�J���Ť�H
�=,#�5���
�p�NV]5>��t{~B<���oN�^�XË�@�%���.��^�9�oi�tU��t�N{q�M���Q�,֗�=��7.TV��b��I틄/���M�X�^��j��>��͝^��u����x��wul�9���KF����@E������������&Ϗ}�?��/V�>lѢk(�g�5��b�Qz)Dm���sN�L�9i�~�{���M�x�B|t)x�ƗG��ȝ<9Qq@L��ܚ����ܷڕ���Gra�إ4ԛ|?�O٨�ŕRN�u+0K��2sk�Q
EJ��ΠjD!В��yu�����z��_�I������b\uHq���^��ɤț��TI%A#T�Bh���fi���v�T�����Z%^,�uz� @��E��/Z��
���v�x�ǧ��5���|;c*gF;S�qV�@�1t/G9ʜ���� �v�J"������@ۻtJ7i�ý�+)!9�)_�+�D�yg�f���K�9��Y'��>��w�a�#�B������+�ZR�*�,[�<,�?ti�Rɐ��2.{�Y�?z������=	Z׫�|����c�ē2��(��N�������pE�᝽�ΝZ    ʑ��Ÿv��jGQ��0S��S��,5B�Q��X����>�p���R�vH0w��NZ�P}C��qi�����:�"�^�
�[�/a?>�B��7�~������mXW�{�P~'�K'�:(��O�R
.5�����Ƿ�SD���}��Εڊq�B�:��A.S��2�S�9I��p��
���9�����&�|rV��cv�u�+�@Sآr�s�?�z����8cu��w��������v���g�/V���D a��a5iPRÛH�~[Pv<h��!�~{|~<|���_���I��D?p0�0"��X�9p�v1bjʿ��gR��JV�eG�a�9���;�U�7�~�R��úFxT�j��79̦��<�0��T�Yv7��E)�t�{�M���t�)ߋu})]A��SEԖ��{�T�v[SZ5����������_��w:&�ɒDh�H��ؒS�5Z�6���c��%G�+�^ ����B��WE�I�c��;$.�XWₒ ��Bf�I�C1�*0��y!�Nyzz̧�>�d��.!�?�Z׽I��*����Ȉ��{v��<���Ӵ�8D��v�����g��C���kj�,%�D�T�sG���o�g�O_���i��I����0 ����Ϸ�ƆR���Q0�t�ѐ1�\���}�������W�������8��/M/�L�+�iD�1���D��lC1��	pi�P��"��c:�e��v��>|�i.Bo2�����Ъ_	pMMȍ$�c7�rǽi����Z�<>�����Do��X������bu��?*`/����\�s�}��W�c͡������:o��ԛ?����r
�W1������j\ &gQxG�r�N��I��ec�p}���3���9�9����'��:fܖ�խ��	I(�F�9.~g�\�=7�����E㘨m��p���ό�����*G��ﵨ|���\�o�ֵt��	6L�>>����ût�����i�Ɨ��ƕ5B٤�곌(��"Fs�qg�;}j>�aѠ�t���w�~�������bk�ALI��=t�}�i��˖��+*GJ�>%��r2e���e�=�H���-��_��ήT��P$8�}u�t�x�Z����|:,��;5�7���hd�b�/���A3w+/5�"cp��R�q�O>㴤�χo�+��g�Mo���7N�9�ŸN�xT+��Y�Ξ'�o
q=)k/5�K�ӹ~9�����ޤ��cJ���C��2�	l��$�B������X�t<--�����vu8��F>�+hFu!�8I/#J^��������w�?�xux������O�?}���^o2 �Ac�8,�_J]��mT�[C�� �1R��)#���pT�ow:%��b��X�~���ҥ���d2@�2�X�����b��M��[��}�7����"�v�;ﳅ�7��("�[A���RDF���� ���d�[�����^��(W��	k�M^ 8��T\�k�D{�-��FB�9
��TZ��l��t.�v�ӛ���N%�&7��q4�	k�t�S�)_Q��63�uN!J+�� vӧ��_.�k&ݧ��$	�o��zĲ�X����
�4)#04���e��݈*���uo�I���@�Iz���ݮ�@����C�()��Q��*��/tO(Y�>ys�~)���Pg�V���Q(�M9�aU��<�����[���C�w�ԛd@p��o��:!�X�Y��{��/E�e�d�m������nL�G/Ao2�9:�氺uw&"��~�QI�E�q�I�賶��ܢu�Wkh��?�:�5�#��X�D�aK�gCś��H?jz�-��w�x��+U�Ⱥ��[#���]�䕶(ek#�)�{��BZ
y����ۙ���#E���+�Pj�$���ʍp�ȱ��J��!M_W�$�8���K���"�`{���d���^�J�K@�>�C��v��ym�x8=��t6i���z,a5b�3(H 
p�.#@m�w�=l!9��Q/}����//J1;��M�8���қ��s-��>��D�M�@9�ĕ��H�x��
|�rl���N!d���i��mAk�
�	E�8�Dђ d��5n�58r���͹���y��z�JҺ���l�3H0Ց��rNQ�L�)I��r�H��e��&����ů�U�c�#\�g� eJ��q�)��^!�٧�s�����_]_�����91����tk\+U�SЦ;�hΆ1�R�Z�g��Nӏ���������7��^fĲ�X_��|pi�6?G��g^��#
�����!�����^�����t�k\�ĺL��-\�7�Q\G7�PC-�:*���N�����#Q�S�b�굼��8E�v=���6���ĔmÏ��W^��M:�O��J�M���"h<N����AYDL�ꎛ��qtf�Kv��M5֬�cz�E�>�r����1y���Ø���ā�:pO#�9[�f��%�UE�>r����C:�T�l���1#Ÿ�C��Ռ��R<E9N�=�%��J��;�{�ӏ�|{>����O}�i�M ��*�wU��EaW�)JK*�"@��U��	�R*���ƭ���z�k��9JLG`Y��J:!Q��EqP��X I9{�*�� u'��É�%���3^�}�97���wrDop�����C��/s�7'�G�H�����%�8�}�E��R{��N:=���l�S�̍��9��S�|i����7�%S�b�UJ&��]��tߞ���������B��d�T۵�*V'�9!<~�p��0bn�uQ�ϮU����M�p����vjsn�9.ĊQ�Z���U:�*=�*D��RD[�Kad���sũ���ӗ/;]�lr�1N���ź^�4��"C���L�!N��5[eQ"Q���`;�o2�/=���z��Z�^��|��MpZ���mm��P������ �&;<3yk�7���, ry�k�
C	ԐYH�e��%)���|:�~=!���7�w�Hx�b]I s��$6��\L.��M+��:��-Z��8��D��[It��uL2ϑB�r3�Hr�t ���.�la�r�)un����̨�Z�v�� J�8�-r���L�3
�f�5��V��"a�Hĩ7��[���jźSՓ��$~n&j�R��Ш��o��^�\�ӏ�tO��76�%x��b[\G���
��:bu�ɘ{�\������5����SۍZo��5i�8�к��!9rA�^���vF~�6��+;�>\R~�cr������ �7�縵�p؉��(Tʬ����t�8����iQJ3�$��ښ��7�'K�g��8G�p����&Ժ5�;�ޜ;G�����[ �}>�v���������%D�X|�U#͘UaQQt�Z�g1]�<����I&No��5� 1v�ס�2��z�����ʓ�)zLd���;y��Q��q9��>��}�J�O�LN��eQ}[��y�Fr|��tܧe����(8L鴮�x���E>�h�������NFW��Vj5ޝ�q�#�����(��3;�k)�*Y����|#0��v�$�NE�"��߿���>S��?p�K5.�a}�6q�"I�؉j!-�];����nvTӛ�?�(�!	�b�+���3t]��q��}�9)S��k�I� ~<���=���vF�
���0k�h�����ܜV�p�sV��(`�>�vx���>\rj8ڳX�Y�u(��<'��J�P!�\��2%�H�v��ћ�>p�G=ja.V��5��"�E��>�*�unʡN����x\�τ-�i>����"<fZW��	�l��J|)N*����;m��i��:b��i/�����������ތT9�+��A�%� o���B�=�����~��i��^��!�!���e+��LA:�J�u�%�[$�]���wǽn�79|��Q�e��*��+�λ�U�%D�v�!�ٹ�{`�T���n�n�=�'���.�5�)�s���TI�[�kq���
���L$���������c�b���];�@�88�MrM!&�~K�P�WQc�������_ �)�TBo����h�h��b]�0}-�SP[w�    1�5S��Xy�!��N�c;Z)��l���HBZ���C�6l�U�M`�a��#�鸟��d�kZ�RW��V�[�(� ��X9�&d0��s��z�n�&y|��0+Һ�W:�(4����Ei��[J0����A�/秝@�&u��8�m��*W�Oe��7���9��f���TPE���[��q��&a��P��AZ�.�t>z]�3���V�99Eѱ��� ��j��x8����٤�_.�?����A���=q��\|As�	�Ek���x0��]���N/ٻ��f���q68�+&X_�G�&5JI�8B��u5��thb��~=����mb���tz��e��l���7��M�-���~r�/��욹y9'(nj�Ŕ�ۻ���tsj6�{��&��kX_Yd��*J,r�4NL7���.E�"���������x⳿K�@\�I���#��ź��`��p�.tTY�fʌ��b����#	��N��lR�8
���4�A���*���P�-i	
 ��	~אq�e�x|H��%=<�R
�y�O��c@���kk�Ԉ�q���D���S�դq�>���ԅl�Ӿ�6���A��+W��vn����u������y^������٤�K&�q�ֵ)Ri�a�,*��i8��.��C�MZ���NOx��.�8�E�_U:�V� �(^��l@�uR6�S5����nIg�����<.V��Ž}�LkL�ι�9��SNǖ)Ss���B\��d��$�qo��C��ŪVt�0Xk~����A;���R�x95�����t��}�5�&m�j���ê֡:O^�$g�ߨ\��4�?�R��;��Ąs<�2�t�7;aJ������ ��mK!���~Jp�Ε�J�T��"⁗w��w��4��=p�G5ƒ��5��
*9���9��%���j0�N�S<�_ϧ��3�ʖ���(^��p��5JYM�O�b�{%1M��R�N�I{�9�M��F:1��-�Wʇ�]����q����Ⱦ{^�Mm�^.I���pM����������b3�N��4�|p��Y$^s���P��t����a�����M��FIeF��b]ek�=�Q�Z<�Ġ��=l&P� �~.��]��d��[(�G�s�J�WR2�z��˶C�� �uo��͇i��܇��lr��'���D��U���Bɨ���)�,��!�d�CWΧ2���t����M�m6I{�ͻ�A�^�Z�CD�#)6��y��)`��H�W�Zsӏ���������?_}܇��l���5��Q��� V�mE��0���~�"빰�������S�|�;�xJ������&�U��b�k��9;�M<o�`|U��Q��:°��[	N�Gd��^�UuUx*�P�FF9'� F��N2����Ǜ�xh���\X��|;?ꀗqPs_�k��� �k7��֖�H�J���r��!�����p{>=�6�h6�y����J�ź��� ѝ�}/�4�&���8!NKYI��h�[�m��>!���!�]�%�Ek"	?J&���Rj���\A}��� ډ��}�;��7�y���C�ŪW�}�>F��*Nww�� ѯ)j�O��䎻%�MN������V�TU�C[:iNۦ9��`#{�݃D�C��|�v9܇�z��a�$��o�T~D>�X�
���� R�Ib|�QQ�Y����w����\]����di�4�i��j�H(��.�l�5E`�K7ȕ�t�f��>��g�P�䰏����Z�FM���zε�oK)�x�s��Ԛe�-LW��t}������'�o���1/�mZ�P/}{ѕx!�#���<��.�������BQ���U>�-S���M��ȝ�a(�U�
�֔�2F��`�2�(�3��6K�?E�;R����Y�&1�������_I��J������/��!i����5N?�Y���<��g6�y��p�ry���y���]B�<*��G�N2�8 {���������w�z;{:#��zj��t%
'�6g˹�Q�%/�S���.�%����ߑ�^(ԏ�>`;�:�`��y�rʮ�~Q*�8jG!4"&��Gƛꊞ�N��i�l��xR�1P�u%-�ȷ��W�!�w�����*�M�R����z0�,<���bc�a]�i���sq����*M��Xr�����f!���n�{;wz!�+M�:JЫ�p��*Ŝ�ɚ��9�Ԕ�IM;�M6O� 3�hi�k��n��y/�of�<j�X�@р�}y)?�_�����c;=��;�d偃C�ً���U�G�(��<D�	���>{�S.(�N�KWs�&?��ڼ1��<pϲ�:o�:UئMy�u�I��.u9�V���@n��g���E�P�R~>r��/�W��t�M�x�emi]���W����H+�?�R&]IK�#S�_�ot��ݍ��lr��;�9�x��ԕFuȩ�j��G�;���`5SC��?���������^Cnf��ǿ��_�~�A��8�,	qH��y�ָs�I&N?��>����S����ǔ��^��@�ҘG�+(�e<o���$>�y�tM*�����&��Ҥ���z�y�_��1	��IU\Ȑ{ע&��Ɨ��W��u׶I��L��r%�\7�������|�(�Q/�VCj�{��_�r��x�r��e�����0�b�+��>1HD�@~�ӜL3���P�V_������<\_}����|"����w�����o���ٕ�#��ź�8�Tbfo�vNץH��
��"LޠF?�~����i��ۧ�٤��o�PF��u���c�.��q�{�A�}�R���@���������ᖥ�^�f��*=�I0���#��N���q�Y��􇅒�U�u�L$��� ��>NogҨ�t_`��,��ୡ C	��]E�9[�=�$�<P�\�&;b:�Ub6�}�����m�:�H �O��OΑi��P�JKO�d��:G�����!!0�$?pm)���ú��=�����%�lHO9*�E��\�������[r��5�L�^:Ջ-sՊH�#Ůf��V2�"��>�S�}'�7)}�!�h�y1�Ui/qߒ�QԐeo��U����G�N_�G�t��>.oeOx�|��a����Zɀ�QP�w2,R��6��T�~:���j����	T;������U[��Td� ��ޑx�ጒV���z�>�.S�����I3�l���?�������n�Kn&"ɓO��Q����t��"r3������OW�_���}����=a�H����yy�H\��s�@�6`~�eA���ܥ����t8?�o�.gf��'���v�pI☵�H^!�wٴuTwE���}�����6=�T�or��'���¶������zD�6�{Ϡ�L��?���9H��{��m��5�G\����ٺeN˾��f�e.���e�I������!=QC�/N���[��q�zP�_��E~���{V�'��aF����h[�ǈS><c.A{�����;tݑ������r��'�P����.;��pZ�nm�M�x���.֕4��X�pg�vM6����,���U	�_����q�Jd��>E7l^�kЦ~^DQ:����fū�n��8:����Uߜ�����m��7J�8"Ф5�θym�/	�#bF��K�����\0!����J�����Q�Gh�b]ۅ6��#Kd[ބX�W
�e�TSmO��S��翶���no'G�|-~-ָ.h�g�I�MH�U��_�JJ��18�Ǝ�>'{;9����*y��W	�n7H��)��)�I�s.%[�����t�?�)�e�U�M�8��3^��E^<�I~M)�}|�C�a`��ZB_X��C���������٤�	o��~�ҼX��`;xo	�&������Kr�(]�9}�#��٤�Sy1��La{�)q �p�7 ��B��,lV"�'��4�I���JF-�(_�B������5�t����*��(�A��_�=���U�-�lr��3d�q~�5�;v��}Ozv����#���f�mD�e7    eZ��	�}�N��9nX�ªV�l ٴ�g`�@�/Rú>s�IU��j��c;�r�i�h��'p�Q3$����9<ιF�;�Z�sz����p�Y����^H�,=p-;b��XW&UG�$:����
8��)�
cQC�g�����#/�٤�oь3�vݒN�G�b���w�Es�L���?�;��/�����&mOx�Z�O��+q= BB�&�B�2:����1� ��6�r�4���z;Ii���b}UB� M�t5"#W�j��rѨ�3*�_��N�M�x;��Z��[%�^J\(A(I$�w\��3H��TW��2��B`��=��L��B�Y���	��K�Kh"Ӣv�=g�:W�eՋ����u2��#��q�u%M﮻H%����ۗ�_��&I[4��y7I{�
�qV�*v!(�k�>s��!��؀� ��y�r�{���R����7�{���z$�X��	��@2Y*����9����Ӣ�X�+�����,�tS����PB��{/ֵ������/Ã���fWy��x!|�����}�8�&�Oxc��a�M�RG�peE����U���qe� ��-�.���I����d�	����ˋկ���:�,0p�@u#�!�D]���I��E�����*:�x�����h&�b]�||.�+iBRWQ��P���Z,�~8���LM�t���R���8#������� ��F0hD4�\�f���hi�7uw�z���hX�b]�q�/�Ks�J3Y�9�&��"�	�򚺬;�6}��sCe��j�M�.$����&"rǑ�ZQ�xW���.Q�w_�s���ʔ��&����>X;+S�@]�0sU��?Y�LE+��\B��^���� v��'P]x��x��D�R)�� w�^���?rRպ�8]��Ik7y}�G����um��P�*�2��V���j�㩔D6]�vx{|h�O�\0�MN�@=��~ú����ˁz��DBO=��5^�T<�������ˡ�_��psN����$�%��D��jV9.[j��RΊēFr& !��7 �E��p}�KOǝ�v�tx1GS��5ȕ�>�0���H��l��8f�)�TeV~�y|8�wb9��$>���a��me���4�R��2f����n8$<�Z%O������a��������|����uû؜�~��s����YW�$F�j����~�t����?v��v�XXg��A�����lj��01�R���d&2�>���췛�=�Jh}]�R"�\�$�1u�n�j���V�@%rFB��>�ngH<�!Y�źN��� ����J�ʄ��2]�^���-�|9�g�&uO���pG�b]�eo�v��
\��P��lLB��tP<,s���>:!v����8��^��	��R�yF�D}�J�kY�*&p�]�b��Ԟ &)=M���ϟ����Ε�"�_JX�J~�l�M�{2�,,����N:��B�}�����.3�?~z�O0�$�g���9�1�˴�%JV`�I�����sY�蜲,7�����m�;~އ��n���;
Ǝ}�տ xԊ:��f%9<l6|��i��}����������ǽ��v��H#��źJ�*��� ^�B�%!DNxg�3���?��>#iv��'�	"ʑ��bU�~B�*I�n���D#!N-��r1�}8�W��Լ��$>pMF1��U�9�(����ܹt�b>/�!�6�d���-�N�b;;m���5�������JnU��Y��%���R��Me�;�~l�����	T�5�ڏ�u�Vt$�R��yf:�)�"���p��(W?�vs|8��Gw�nr��5`�q����Һ�����h���gkpC��i:�0����n<�v���9�' ְ��vem�x�HDʜ�{���1��.��x)�Ѹ�owBL>�/ ����uc;
��ȳ��1�t���t�%��j���O��]}���ջ}��N�������o-6�*���jD&Dg!Z��ؚ}�޾�����Տ�_]�����I&�!�ȁF�q�v���	!�Jr.��lBs)��>������qP����$�J�^�W-P H���G8�:'�N��oe��i��}$z�&{�����Ⱥ^W�l�����.����Εw7�)/�oƊ}�8d�p��b]�=Y*���8�ߵ�3UD�4R���Dʁ/��CM���R��=�/�q�G�:��
���mnAr@^ް��&d�R	�:�����_�v
x��4u��"Z�}x��?��T"�WĜ2r�W���t��A��:-���S���M�8��n�$��Vm��yÞHR�Le�3ҿnU)�t��Q�<ү���M��F��;9<���C�:9$�e���	��\���s����������������h���.�2n �hr��9X�Iܣ��w��}�~���=�&c�#a��Y/V)^�odj�P뛊�(��$�9PLլ"��	�5/Q���o{���=��?z��/�5lgi+B]���c7���ЃC��5ui�,:��������ʏpN;;(cx�{IMt��4^M��Ȉ=�VE�2���Ip��G���ӑ���;]�l���I$S=��{��Mʢ�,D�Dx/>��$l�����������������=����[��-ɨ�0 > �6)��T�����c��1oeK����Ձ���r��կ��6e cȼ�SWi�k+��_���� ��,=�,:i��u�����U~S��{E��� �Jv�??���>�v��'R�Uġ˰�u���b�������AY���(�ȠQ��運W�'���2�h7�z"���{�]���ɲ`���w$yo��� ܼ�_�_?~s������;\}������x��:�6nĐ�X�*�rD�g�(	��H�<Oݑ}5��;ߝOvj�o��9�6~�0�?jmZ�sˀd�s����j/Ց��������yQ =\�~[.u��C�d7�{�uCɨ��|�eM�#�Sh��a�vU��yZ�v䙶��=p��d��H뺊h}L�#��sPs�UκV�^YsL7���b���=p��ACs��,��V�g2�bZ0s���>Ε���A�twx����>ys����(F���*�Zj�\K�.��$�H8"L��+J�T�B���	�;�6�M^��FI�G��<� �L4�@�Is�4i��V�`o<a�	�8�y����<ʐ8,la5k��Z�%�:�@��j ��M3ʯ�5
�n- �3��/�|�Ϳ��}��&K���h�e����f�D�݄E���Y���ڛ��7o?����w�?�����x��H���:�Q���A[��#�%w��c`�\*`�ҖM���zD<��߯��I�߼Wc@A��
O����H�)À{�K������D�w$���<p*����źNt�BE9{�c��U3Wم�]�!�ԿN�ߵ�}��&%O|��0�Ӻ��V�r����a)m+��i)7���#9mn�w���$<��2��LI�*���7Mu5��H���j�J/��-�tI�O�_���L<��9��X��)\)�>[�e��5����r���Ғ��P�=��>n�x��t	�^�ִp.��f_ꨖ�&�d�<^H��싙��U�o���鯭e����YS��t��c�1��*�����F�g�IV��p���}ڇz�n����`�fyZ�g����ٞ�����9�z׼Ӏx(��n,�v���EoF��u��̼��=�X8J�A�!���3�"I�H�'C��d�o��f��X_{�Z�>"�N�J��R�F�ңQw�I�����\�&/O\t�0jӺ���J.��EL4�or6�Қ���
���}<P�)՛�����v�ؤ恋��qL�U�C�6{Q��s� �����d�бY������~���I�����N��bI��j�Xo��*�����r���f��:���-~���o���9��Y���<p͙�h�bt���t�hC琽Eꔢ�F��^ԛ�N�Mv��Ms,��9k�Q�@)��k��v(��UN�.�﷣h7�y�TV�'��
���NP994���    �9� ��jC�9�����-��뫷����Mf���J!����n�%�7-P��v�,	Fr".-���P���է�f	6�x�j�a��5�
tՇ���K$&"��H��th��h)S�p�EY�nr��#��̋ծ�A-��e��7ݪwN�عt���LZ����=���!��vz>Pc��Mj�h�O>� ��mp�2�6�v)�:����!@�p:��X��ۅF}��r���Qdn�;ߚ�MYxdz/O�m���΢��R��tߎ�������ӡ�N��=ng�W�C�9V%��W٫"�s-�������t܋t�nR�������ֵ��]A�ur�,T�Nع+��O��v����<�;Zb�1�X��9Ff�ao�&�t��L��HHI(�UJ�b:����N�<��<��Zj���X�ڃ�M�T��� ��B�u�Ly�w�ʢ����<�K��nZי��e�? GV�S�l#2�	���U����w��(�g79y����Ś ��YJ��J�P-)�	���e�͖�8����z�����r7P��)I�F�.W�#6�ց�~��CAc�*u�)��ne(DF�gF��l�n��=� �������J��b��sX�	6tf�l3o��y�=%��� :����WͫO��i�������h �d}a��<��#��9�gS�=�V�;M����v�t��6h`�bݘ�6MnC�(��['O����E��ܻ�\�Mj���!��b5k��>K�Y_<���k�$�߄��*=\�NOś�<�Z�tNO��B�et�#51�q�kyZ��+�Ya��v��MF�$��kXi�nM[cf���@��hj�}(5��tizH��xy ��S��b~����u�k`�Q�},1�:ɛ�� ��١	���.���\g}G����*�G���uM=y��8WI"ɪ
;�=����:�������?���4��������HV���&
��,f)����i K-9/�DͥM����/��v�t�:�$�f7�z���f�J���4lmdW���u��%_z@�iR��L����x{������>�oWJ�<�/2i]��b��LzF^ѷ�砐V~k���r��]����2=,Җ������R�-ָW!�i��F��#%�x3U}��\���n�ƛd=��e~<*kX(��5&�����u�G�uU�:�rfzw���ׇ7���v/�+fn����쥐�,���;��`�$!�S��r
Ͷ}��.��%v�L�}���ZKDD��9��k()�=2�N׏_v���<��B��t�0^7!5�Z�f�;&t���L�H�i�HwO{M�n��D���1�u}I�"������Z�P2k�,ʍh�Mg��O���{%�����Z�*ibK6V"����B*$�W�[2)N�������%��|�������{���9X���$Kb�b��3�!�5�攒N���S7�x�Ov��h]�/{*��T�R�?�!Q�c��.Q)�0};:^��DɮJ�v��'r;ˎ�KN��#H�ٱ��˜CG�(jLy7�@�U��N�tn���I7�LZ�z��uJ\�|�Y )��M�	Ƹ"���ow��v��#�I��Tpa߰����d�z��w\wI	;>ט�X{��<.tH�懳�.������շ]���큳����n}!�F4�v�!��W��K�,��t�����<�w��>7ln��'r�k���|a#�-�&<7�	IEP�Zu��)�#����ݢ�s�����	p����Fj�K?�j}󳶻&�`)OVҔ� P�j~�Jk��绽�M���^u$�z��t�1���U�CsY�u9�X�A��Ϊ�P����:��Ӭ�M�����7����(�n���G��^y�4ܖ��5/�=o�>��ׅ��r̊WT�0��f}�]�T0����9ege��P/�M����ıۢ�K������_Յ�V�|��>[t���	�XҮ-���/J��v�	*�E�C�P��=�֕�օ\[1q4�J�@lFق.�����2O�����"�g�����WT�Ѩ���R�xi��d@w�N�/o��?}���i��E�Cπ��/'�_[�2a{���$a�"�EI"�l��S�wGޙ���{�3g�:��m��f5;OP�
O:w7[cj��6�	��ܵ�w���
I�<���m�9��DRh�Ĵ�\y��ҹ�SD�����w�;e�-�x&��}'�z!�A�LuǢI�1�
_��DO������6g綨z��1�9Y�J螥A�3RtG���'�Q��so����p ��aG�[���C�PԷ��Q�d�щ�x�@�<��l�� �q���i!��mm�mQ�Э�o�'��rvP`��H�ԑF�ʳ6Ʉ�>��0�E:^�#�ER���0�a��f_��	BLA�q^l�	eV���0�'>S�c���>]г�<��k$�]x!��UR�aV�U�T�5�nu�4�R�sBx�_&nC˶��.����������״�ح�"���ڨ���ɪ�G�ܚ�j��vbj���z
���U�ޓ|��E�C��j��U�;h��&�(f ƻ(s��3೒hT��t}�z|����nJn�Ç�����n�@��֣��ŝC���2w+C�+K��c��?r���]�0��|�a�x�l]��Z�E�"瞜��pGE�8�Ze[�r�������,ρ��t���}~��J
a�k'�]/k-�N�sm\zUh�A�el�͗ܧ�������`�����C�"2���_��)�n5:� ,h
�iGZJT�ԂAƝ�ޟ��p�������~ۇ �m���9#��HV'W1��h�Jha��ˢ��H.��_E��r�����������>pNI;�Q|��kiJg/qVp<<��O�"ڥ��vf?ݜӹN����>7r[t?�0g���^G8�,ђ,:�s#�#oCkAC�}�R���M��4w�-�-�:g܈��ٺ�� �[�:�*�5��9$?+�5���t~�y��"���n�����h/�'+��y:�4�lh��_���S${%������n׹�S���~��x��aXW��P�k������̹7wmSp8���`|OL�߸s��6������A��2��ռȨ���6ܛ"~�$dhz�I��"u��tu$��>�E�C�"~�ö��u-��F�D�ʳP����X��1V2����\��ÎsAn���Y��m�y>[_����i��G�$�, �u(6���H�����������" ���C�9մ���$Ic:7e�B��1��19��.\T�ݱ\>.��鏝�|��ZJ?���e�^�耐j$I|Up`G�ƺ̨4�T׾��3\2���AbHA�2W����,�A��e���ֹ��GU���H����-��e�Hb�ٺ����^-�Q�$�fd1[�R�8�(B�r]q�.����b��_Θ�8���iY���#f���ʉ�X�u�q3{#�7���NsWn����Q�w��ϝ�j9���=��J�\C�ssɣ{�_�������{t�g�>��B��H�Zn�~{����������'ib�#zun)EI�YS����8?��"����ǝnn�h�! f��=[W�����3��{�C+^����;B6�O�-[����̦v��p����)��A��덑s�$�F\���0VOf��~�*Apc�����Ӊ�c/-)�E�CߌЃ��g�����*���|ޢK��̱�N�ҝȭL�����}�_k�����[�E�%VR�%`��ݡ0բ����goߟ����q��+�*�o�<~	�]V�R���˦��]�8[�G�͆�8�F�p�x�+���0Z�:Y�+D���ɳ��=�룾΂�t-6ij#����t�O\�?�����rq0i+	W���]Iޫ+:�FL�I���2D����r[�>�	���nX�K��kID�4�	a�XڲS\3ΦmMN�2���Eq���n��n��N�G��'�^��R��x���r(�"���lƯ��*N���}��.��=�9YW9n��)$�:e���"    {ꥡ�������Pg�݇�y7�>Y�\Y�k[$�23`�ya7�ҵJMr ~z��y�t�^w�[?�+x3��y������d){#��Q#���Y�e����^�%�l���/��j ��l]��Q�k�h}�י2����ҫ� =�M�^<;|:���������U�܈E�d�b]��ǰ�Yv|rC\Yᝬ���\k�����w��خ�Q�8XX�Q����R[T�� 9">�C�2�%N;�t����������=pL�����ծ(�kk��ț��G*@��?�U,@��������s�����vztآ��s@a�!X�E�y�(��"j䅦G'��֬����\�ӻ#j�����2�W6�.�_s0+�l}�����������+~�mR)�3��۳�營���
�����g�<,����bPǜ�U\���+�j�|�/��m(�E�,WԜwǻ�]�-����Z��`�/�SV�0����)қ���\����>�t=u[����p���p�'ط�|�^ot#{���.�b� �E�O��ưU��n@��x	���a�ۈ-���a�Ӱ����!Q#�"���P�'�.���3�q|QX���{�+�-v:���P�X�z{/"�����X�&���@G�����:�����-��?Fu}�n�9ۥ'�r�Yʝ��ب�l��-�{c���a:;zzx��g��m���/�{Ф��/4��e�zB�,����oo
JS�s�0��?{����)v��º�94�r$	^h$b��(I%��@x��)]���ۇ��m���-?~�:Y��Q��UC�G�=H2��$5�zDlL'ʂ�ۏ���l���9nhZ����j��-t%`AH�,��B�I��k�������p�Ow_�Z<�"��oRP�q�9��ܑ*2t�(r���w�����Z�QPz:�q�J���h���=�n�$`_���9_碸Ve3�@+�K��%�})z�7�>����������}����:)��j �O��0O��_�����d7�mE�����w�kz8�����x~���EG�o�9V:I�I���(�����E���Ց�H�>�n�zǙ�-�z�.|t�X�:�����Ბ�us٥6j���K�x�,�G��ɷ����0�к.l�dո�K�Cr���KpF�����L�=_����v�g����gaD�s2�`cٲ��X5��`��h��H��	 7�#��=�tbc�:�������}d�=�J��}�jV����ͬ�sN�����ɸ����֪?�������}(C��S�x��i]���JN��f�I$��"0����^��I�r���w�[ۧ/�" �[2�����2��ХF�:��>(ߑ&��A��K��r��ts���[�?�K�0��?Y�dwi�G	$
R�������!��x!M�IJ�x�vJ,[�?�v�
�_�6N!*{8�OJ�3� �7��Ms�dE6���������OV�q���E�*�P<���YD�;�$"��TK��ʲ���t�?5d�}��	��ݼ�����=i0R��[a��.�.gY���KJ�)��,`�����#os����*���J��aݡ��0K�lP4�ۊXam&��C�C_~��bމ?�m1ѽ��NV�j�{�Q|0�̆���wtPJ!�^�����qw�tjA���������\�@�q������Nʂ�2��H��MI���-> �'������@�V5� ���,:���?KQ�)M���S:�z$��?����EDߔ�j��*��L�	 �L�č��,��Z4)H7�ش����~�)=��pm��A���Q�u}�M�玂3w��7A����ܹt�v	8�
-��餘���[�@t�Sݶ慰!z>�O����z����rY&o����7���p���آ�s��ZW���L\�q"
�8�#$JTO��rZ�}�H.����+=\���ܨε/���K��I������v[�8_��'����c���� ��E3Rz��-�i�A�d��T᥀�UH0�y��V�P� <q��+��>no�N#�( >[�ډ�����\:9U���o�\��-�"���8u��=wO�Ȃ�tb b�l]�����/�nVr�P�Wϥ�dD�!i9]�^�ĵ㶈��r����d]�� Br��:�e��!�s�����A
�^u��	��q|��1#�g��j�2 K��2y���#O�v_�������}Ⱥ�Q}�Ə��N�ߣ��繥L�/ �Hn��~��(��2�>}���������%�(�����M>��5�)aЇ���GfC2�аh�|���L?o�_}"���2��S�[dAt2�MZ�8�r�����h�MX��!\�l�Uت�?H�w�����o�ѷ���mv��u�:��]3j�u!�,^����]� _���z{�����Y��[�@p�"d�'�/�5��Fܒ%�4s$�h�5E�Y��pD�w���r���h��b�~���mQ��L�T�cK�<�R*�\��ET�0���ۋ�[������>�)�S�xz���>��P�<i�fb�X<z��їY�}��.���
u�����>u�� �%\������1p\U��]O7��w��W��]�p��D�H�0�o.S=z���ng�9����铙��-E��h�Ya���b5?����)��9R���#�{:�'��,8,�{� AS��/0C�[�� x��;����ɏ7F�����@9Z��(�\�~C���檜ήdd�:���y<�ty�Dڴ���ǻ�2�vE��LkXWd���Q���ʍR�$������и�n/Ops��7���+'�
�"�+H6@
Fv1ka��>����S���ӕ~�H�4����v�tҪ����j�M@����]M�휽�GN��P��.o�����y��LA�A:��լ��]V�Q."s�u>�i��Ԫ�\��S�k;�X�M� ��=� X�R�5Z��������jҡ�Q��;�����5Ɇ�Ap��8�=���`��4 ��B���s� @���cnʠo��xE���z�7�����vλ�5��R�D�(��^:#��:�V BCI?[E�<\�{_���6�7i��p䈓n��ug��V�)�lus��hY�%�jLT�:?;����v�W��DA�+�;�i�r�:�ن�����ks`�$�""��������yy`��$��㇑M�J6�dt�"_F~h`�(��=5�M��>�ۧC�+\<����҈|85~��\��S�uv�y�v7G���U�)�<j��1�����~��X�IߔR͛�U��ݒN�m!gV�3$�Z&g�h*��s��xqr}��X��
$)�`ƣc���_�ְ0��9"N�5��+�T�7c�7�~:�����o?}��.�or�1+Gj=�֗��TB�&S��������cP���~�����?���}���&-\t>�?�b%��2�[s���Y��p�����bI�ů���<5�_~��G �o�=4D��a]c&J�=�۲a>]8~��AL��?}H�;	M�M* ��@��d\�|��6 ��'^� �̡����Z�_�)L��@�U�9M���f�=�A�)��x�RB���c������_�N*2{Һ�M" x�:g~���o�9���Y����u������]�/K���v���u3h!��C������mQhLqCS�6GΧX�y_D�9z4�_����^_{�r��fV�")����'7��H�"gQP�EA�]�������ߥ/{���M�8G����կ߽x�U�T��ƹe�)�W]�5�����.?'>g�Xg��I�\��7*ZW��W���(��GW(�4~!5z�'RY_�����e��p����\@p��!���j�1-��v�P|�J$D*7-[`sf��-#\�=�~|�i�o�I�*�q�E��[�
�
E��}%A"��g/l���N����>l)~�HRF��Wfh]�ĨjJ���r� �3.��2���:�}������ٻO�Ͼ������}�߮�]��E޴��m)�M�J�����g�/�c�,L��Z�    �t��������n��ٮ�|%��Ӻf�*mq�V�s����eC9��V-����?��n�o>��!1qXͪf���E�̒�o�C�f�V���|��������O�>�Mu�o��C����g+'&�F�� �=ңZ������U�M����� �$
��)dx]N��)M6Nc'�픖�B)�jB���������ݞr�~�+����ae�C�W�͈%���h(L]>:o���]�Ѥ�HǛ��Ş̣~�7nR�jx�AkX���\�\�
�9*��mҳ5�	��V1���6�/�I�^	���d]��l*�9�x��\�|���vzٺ�!K�q2G���[5>)-FE�U����#�pX�:ㄢ�"�Y�K�� ү[m���.�7����(����#���uM��xS��SEMV� �qNQP�7��z)��iu7��E���V�"{&��6Y�?�G|E���Xӵ�٘J��tq���>NoMEe5P�z��U�;��\W'�S>�[؍
���r�x������_w�ЛAp·��m�ɶ<J8?s��^����fD�Z���8�����������V�w$�g���f�2��K(�����v9;~���3����S�lUL�JR�sx0i]f�.�����iNQ�PΝx��-����x��-��O{-��M� �&���qk�+��ZO�f$��DN��{W��Ң�}����L��xC9���}%�&aTэ��ɺ..K��Y�2����Z�eD�\�R�i�;nv���v��F��
��TTڬM��Y ��F�����D�o�O�m��������v�����g�(>;ŉ����T���=���+����O6����/z�i]_��F#X[!�$g�vs���4�D�ٶ�;Rx�>�,�7������o�N�Q螬v����U�z�"����&�v+��p�;nǫ��>�CIҝ��6	�� ���|xXW ���{�f�:����9:mgыӾ�`TC:�L;Ѫ�M� �JI������29S$�Z�y-g(��2 �˝�4�����d��tN�����	�?��[�~�Y���:���=��Z�޲��Yn>�~җ%g�))�v�|��*�ꅍ��; 4��y�7rA���̳�81u&7}��*����=��>|�E��o��Ck�Tj'���lb,��z+���G��cw9T�dS����7�4B�̡���v&��I��LY%�"��21K�&2Z��"OWׇz{s��������d�o^?�o�/� �E��#�%+� $�l{-�D����[
�n�����>no�QLC0D�:3ę���|���q��XM�{�2��og)]}9�o�+�L�=^]����I#��M�<�>���[��z�u㺞e=R�͕3�5��D�� �?�.|�XLw�1�DBp�o@�C�5Q?�QsK$|Mh������4����+j������6�����~\�h]7���z"ᇌ8��4t��E$����i��T��������sF����ɺP��	����z���偮t޲���2��I� �=��ԸlR).����ɺP�z�R�`�n�;N�(��F�,��ߏ���v��H��C��iy��D�(�1S���(
���k׀�~�x|H�#�?7��:�q��խ�0���H�x����#��B������7w��Z�M6!8������"�e���!wH��Z�vt�fܪѭ��������g?�;�����>�oWM#�8Lh\��) RE�	�[�7[7ǆ�Ѷ���9q�i�˥�j|uH��H��/3�f����F� ��r�TK* �=�`��݋��or	�G���W.!+{N��*�\B������J��D����vuL�s^�.�C����>�D��Bp�/n�p�u}/���A#�S�t�~�a�*M����[�MR!8f��8-V�
���ܲ�i�Bg�#�-�A}-��(?�����^��v�8��TBp�);���|�\�}V��+��ߤE��lO6��k�xq�����~����ۤ��H��� �U�=����ΉPS*�#/1��5I���gw�k�	^�M�	<_:�;ٺ��J?@
V��H.A�J�n����w���n7���e��n�h_�����r�!���3��sӱ�"B��L��L��ʛ<B���� eZה�`Zhn�5Y�9�NX-�N��O�>Wp�4BpI����ɺ�& wY)W���S�3����	��`z��"�r��ӗ��>�o�B��=⟬+�JO�6�Lb]S%�
]գ֫0�?7���bGj��!I�:�p���K�;e���΅Nq�6%+j�W9�������,�M� E!%9ڶ>Y���E�e��:�q��*��nRE��~wb�n��v�����gބ���b�+ۻB��3[A�cv*B��U�g����"�U��o�n�	�I"߀1� �B��X��SR�?)�OR�ܡ�8����������3`���K�}�����=�	`��\.��prI	?Aou�\\A2�^7�Ā�������Bp����{	ZW�L
T�s.����Fz�tWk�8��|����&�\S�:�{���Z��Ś"��M��D��Z����U���k�	����U��ߧU���oڅ��\�)xZE�&��҆0_���)��k �P�����_o)���?���vu&�1
�ծ�ͩ�2
~V��/��RU�J�9��t3����yn����M��C��a����&'�p�b1����7��|z���ϱ ���6eUt�v����E�&���m��k�y�S�yiF$�ծ�vݩ�<�����A;6���Q,8)�\��o��������Z�Q�� (���x�-/�ʐ�\��i"VT�B��(,ֲ�ή��w�=���Bp����0�֬����F��L� �f�=���#i��/��P>촢��-�^ya�x��V�r#� ��s�*�l�����,Eh��֜PL3�
o��>;͛�B�Kّ�ɸj�g]��~v"N�� M�}��"3�&�tV�6�|��@�&�<�����q��N�
q���PLg_	��
'@����Q{�MJ!�f�|��/� �wB��m��6����p�z\㦯诮w���dB��ȍ���j��]�\(r@nF�zJ4YR�NT�0]51}zh=� T�t�{��|N�����*ѹ����_YL2Q܋����
'=e��T���u=].��++����.�b�$�o!���O������3� �3E�,���E�A&�x��5a�����&��⺡1
���2�C�cTh�l�������%ߝ��M��'��}��&�����a��u�a�"Dӽ�j��d�!�rN�j�u�5�Q4�[�~��K&��B�KK;���5�Ğ�����o�;C�d�
��R�lՓ���eB�r�8��WsF�tvc�a]�V�.F)�Ȏ�=����㫻����}���q/��I)��߭�h�ű�*qr�;`}c)O�ڬl.H%Q�f����d�����Wa�F�y�F�'k\<dVֶ<G��"�E�|*���d���~�˿Ͽ���M*!�t��S	���-���m!:F��E5s尡�J*�<}x�;�_���O_��9��|Bp/9�<��g�+�)5�&��8����<B^��=Y��/����7��,�WWm�ᕰ�/�^E��X�U��s4ᜣ셒�]�����Qboh���2��O��$�O$SZW��Pbл�� aP- ���We�&���Y(��}��I5����Z�j@T���,+��&�ܫ���$��^*�Kh�{/�q;��M�!�F��q�P����?8v�3$,hb�bFn,�����W���~���]C#���_Ej9�*e�h��J&xM�y>U$c�>����~߮��w��g�-l�)*C�ݧ&��\��5}u,�Fy�\�\\��Ų\#�[Dn�_���6Ɇ�!͈�x�Z�z�Z9�0�(̄�%.c�%q����t�.�w�ˋt�+�o�PJG�Q'�#���*+Nc�'�`�+����'ӢE)H1F��{T/i�u��I:�_	a��S<Yׇ�ԪQ$�u T̩�]�c֦�T�m����    �.��a�m>I���<Y���/��&�-���8�բs�.���w �O��O�O�w;���M�!����-ְ�b��B�2�F�����h�CH�`D�-��Ei>^��w���d�oF�Q�/֗�k]
 ��sF�D�µ�гj6z���9]�C����uz�TjnI�Ѫ�ɺ*tZ�EI��%9G��h�}k!g��e��������o~�px���|Ϸj%|sn�u��ĻQ{� �,�r�^
d�.y]+FL�	�wN�\C���0z�]�k��& f"*�X^��������r3���_^��56	�4w Cg��Zt�_���U������TM�%�*jMb���QdjI��QmR�W����p��jVșk�GQr���7��T&+�׀l�����SG�I0���#�s��7W�K�e�\[�|)��F�:'|}�y�X����By�[_�I-� ��m'�:/�}Q)��2�g'�=���!)D^r������p�R�d�_ڪ�~�ɺ�m�����p�&Р'a����e!H��Q����y.	�TB��83xxX�χ��KA<���ȅ+��3���MVYj���օQ������D�<���Ջ��[�ޓWi.��:r,_�q����N'<��q��M2!8�B0�2I��֖؋7O�p�Ra��HTJSIM�,�s?|7q��I#ς#��u]X*�䤤A�T�㢲�\>�hK�2Yq+�j��8�]%
������70/p���� 6	�q�U�b�9�?�~����ӎ�ma�FH�B��#�5Z��FQ��&-�p�E���� ��4FN���c�:����+@�&�]��&���V��N�uY)�T	T,��$�E���gaQ�kC�����l̄M� x�P?����u��Z�=qz,�N�n�T��J��T2q�Q��g�����.^o��/��8}Ӻ�Chא�4 4eN�6�Q^Hx�,���1���O���5S'�*��I�>�
Xcl2��H9kk3��׍����}��&Q<C
��-V�.��r�x����w�B�)Az��y%=��㡧��6�������t�s�n�Y��\ID���ɾ�g����UUm���r���Lؤ
�c��Gt�լw��F݄�s�X�S����E��sD����g
��&���"���KG+�1N�$Qz�I����[��=t��HZ,Kl�^��<n�J�;���4��w�	��H�.�l퉖I�b�M��QP��"_�]���&I�B(�8��Ue�i�Ы���%q�$t.jjWB�7[W�����u�&ACrm}/ָ
���ך^g�]R��僂�K1`�(��&����N���@�K�[��^��;.x9�d$�$��H�#9��������o�~�y]ٰ��L�c�a|�{��᲌�f��e�'G�&�R)ӧ���/�������%�ѫ�ɺ>�"�Oi���Pj�֩�d�ԀH�B��W�Sw�"�I����9�ŪVt��qjGz�>iE֋�R����������>�s��	��%�n�]�B-E��1��� ��۱��Q6��.Gb��׶t�$�gqeY�'����KppY��I�	�&*�$r�����/`�;�}��>�oI�9�I:YWX�����8K��� ��7�\-�!�ĴwA�d �C���Cwe�+!��H�B�9��ǚN�Tg4��&� ��黆|����t�����gZ�qʦU�pEd�/�QXpM/K��抖J�D�����.�@���Tؤ�{F���[�k�5�=��SY�eG�����[Xs�w$p���NW���}E�&�n򜌫�c��b�S�ę0��
���@@~k7_��^d�a��n9!G,W'���=�*ҋq�N�9k��*����>=�F���pܤ��s��&BZ����"��aV�L���s@5���H��u�@1�����&��ҍUi]]w�XRΜ�N:k�&�>�.�t�YOo9	��{$a� �E�Ƶ֗�t ��%�٢_E)(3�;�]��!�rL��_o/���_��&��~e�b�0���rE���5>si�DѕxuRm19��M���eW�pvs�������>�}�nZ���ޘ��.��  �$Y���i5�C�5d��"�5ޛ/䏸��+̷�U6���h][W�� pn0�aD(bK��G{hE������hn��h
��q�ӺꮋN򢎐�����=�lSi�u�I5�O���p�7��r����v��\�~ZWq��[�>��[��Ik�Z��d���=9Mw��h/��M����]7懻�կ�I��@wU����9�D޻�q�!O��݇��cE+�OC�� ���Htx����߻��ٚ��!�0g�N�j�₤h���no�\r���q�;�M
 x��8ºv��ךr��Uۖ����,\ע!�������:,��\��t�����v�}�(�$�}FP��E���Ԗ�u�A途�D���� /���!����v	%s�8�^�琑%���"yB��Bj���Rn��j�z{�O�I����mZ�|9���$��d�䚷��7k\sҒ��������u)����Ԫ�4��d�{�8x�|%^��ܕ.I�h\1ӿo������|�&폦���-����C��s���d�!�)�R4+��-�1���m���-���I�Q~e!��4�ސ��Hs�h��JM��].����6I~��qB��+�ITe8�ќ=m�Eɩ/�P��������N"�a��� �Sj�J�qῠ	/��Qa(��-g#��ӽ��>]�?^!W�t�����J�4���?�R�<�,2��x(�@�*��u@@n�|<{����e�QYk�0��W�^�\9����N*+�gTC_b4^g;���˧�۳�z��M�&ˏ~�<0<~���|V����t���4Wsd��:TMaJ���C�l��Ǜ�{��m���5��qޠu}{���<�����$�^ޞ �q�����vw(���]�����&�����!&�ծ�9���s��e����}���kdj����z���y[>��q��u��.���U��O�nD�H�*,]�Hؐ�v66�MR��ر�����[@`q1�O96R�=#�%��U 5��lEd�"���9G�����Ng��GsAۏ3���7���p��n�u���}VAe_L�>�}�p~vx���۳ç��g�����v�$����>�<_��W�9�22KX��=�4�ʆ"bW�L�3�^���,?�+��
�b]{��-�,���U�iZ�P�;7�Mߎ��.^oR��/�����~�q��r'.��L-���aV� Zd3���\P^�����C�y����
�������&���^��Qg�qo��8��"�r�U\��-��;E�&�\S@^�lH���ftqn�{��[.H��̛X�=3UͦOO��}�p�>~o�P�vj<S@�ڲ��9Y"���Z稌��,�ʊ,��o�v��ޤ�_�j5D9���U�yuo,%�t�L�b�VZ�Z$;���������P.+���]:�ujDv�����W�RԹy����^��T�Z�ٷ����_ܛ������Xw�d�o�)l-�5z�� ��"��"2v�(�^��a��.!W��'�ծ88刖��aa�q�-�8Y*�jU�B��T�ڷؤ�Sя�NV�>��VT�v�d^͜]T��U:�Br:r�����Nc��,>�UR�D�N�Z��Q���E�����r����H9�xu���'J����&���ڎ��h]w)Kպ���O�4ʦ����M7��ȭ��t���e���gJ5mO�Fꮹπ�ѹ���B��1�tl�7�.~]��2_ܤ�s=����u�M�n�V�P>RY0�S.zv�R+��0��͗vu\n]�ߍ�4>���X�8���3Hn^��^f�Z��++'����
�R�qy�d��O\c�X�zȝ������5��)؞u����:�����������&�<s��a��u̓	�D񳯒�r����l���>��5U�d�GA�xNֵg�Y������x��D� Dsi:[�q�(]�W��E��&����    'c��Хvr���)It߬�0bA��;V�npP�~�A��I�c^	!����d]ّ{��iJ�s����!��!8_Og����^=����>Jq���I1J��ѿ���BA���R`"�I6N{6	�3�<�:z���>�&��"�� �OV�>k�CI[�P���l`8�Uf��8�}<���ӛ��g��}����R	��*>6�ڕ���5����ɀА#gT�% ~��%�K��Sf6yz���ý�կð$���ϲ��&���%w�^"E��s���\^���d�M��f��0tܚ�3�_�ѽrB�E7�l��S)JTW�L��29p|�+������؜�+��#E71�nI�ј�")s7RR4K��×G@����9�}[d�O�Q�������=�K��oB�{����@�X/��dn�O�b��Շe,�y���+�����	ς�Ǵ�u�����m���4o��ս��R{@�0=�xF.�8B<�Q��Eʦ�,:��<��3����cϵ��������z�ݸ��c����mZW��(��4/Np��H�%��d�n�;���_�O�+����Z����US�w<�괾%{2n{�+큎��/������^������N���oZq�ɺ.,zYS.% �G���)��k�^8�P����&�}^_�&q×ѭ/V�Җ�i5��ɸ��3�D�|Z��zuځNu�d�'�oR��3k��|nX�Z�`o]	3��朄�#zZ�Ũئ����ᜰg'|���c��?dq>Y�z)(EHa���� � �bӨ���0�׷w�-�Tw�O;%�M���}]ƞ��uDm=4���5{�N>ͤ�\�*��3�&>��Ȯ~W��ኍ��=� t4�s����'q�B���H���f+R��}A]I  �}��&u�����,V�^�K�5��$� -`�Vf�x��*��tw�Sd<�qp]�X_f�[k]pM[�_9���\d�\�p1��Ҿ��<��'/�N	|�r*%�hJ�d]Em��'��Ҋ�Ğ�Ӧ̝]�@ϟ���n�����M����#��2l7�|���u�FV�2���/I�6RK�N�Yԡ֋��6W����;�O�m��M:�fb�ݝ�~]/	�:U�a�\�8�9~��)�.c¯`����ם<�.�ʉ!��b��ԒQ�"��ɒY�-}���jrY+IԞ���������7�|���h�Vt_+O_T��Aq6-��ҭ��j[��λ'�����7y|�����s��ɦ&,ZYt��I�N��"�j�u�u:���GG2n������h�x��u3�ȅwH3��}фr�ˌ/[j�.֒�7�����x�τU�d�1�4>ۈEf�Ƶ	�6�bq�t� \PѬ��EABQٯ�#��_��n�K�M�&�.q��B�)~/f!#���'�iQu,��0=����Np�)'�9�ֵ��Y	���}T�0��6;/r�B�<�=�S�k�	��������͓լ�٧"�1�5�wthbSv����=+����W��K���>z��0�3�cD�E銳Ɔt�yN^:�4G4+�����I{x߮~�i0=n���Cg㸛�ص}Q3�(,���������1e��������w�?�!9���=p
�ψ"�d]92��=���r8F.��<�������~|����o~=|�arϸI�ׂ*G-V+Wdc%J��s*f�-�|�q�m,"��}�ӯhT9��u�}�ޮ�:F9��>YW���z���s�����pZ"D<���F�����������6�=>���v��f��nZ��z�ژj/�.= .8�WO�e�IKզ�������&y|RB�a����*�BBl��f{M����u�&�zqӏ���@ʡ��^�}���i�iU�ɔ�8��^�+�0�ǿ�b�O���wB���=p����S��!�w�L�Cv�@?{Q��争�۫�����5m(q�X�i�u�>�0#��l)�#�B��#�� ��0$ξ�匛�=p�!�!��X�����Y+��p'j�Y%�w|t������2#g�����M���|=��2��%qo�YIm(i�������8�cN���,�ǽ�56�{��Ǎ6�/rK���]B�6�$΁���$���$_���@e�oZc��ǼB�9\8[�f%.�H ���9�E�,��
�"�e���2==^ǻE�o��k$E�F2�'��[ X@�4 {���L��NF�?U|wiB��%�(T�L�d�g2�o�i\+M�7�ݫ�۟^�@����"���L���"�/�C���v��Z)+N�u�(����җA�����Moo�_�Q����&��2f8ڳX�^1��Ae�}EskAq�4tVw�* <~�:����N���=p�z5R�?YW"�Б�:`�Z�R{���E�bKtzM�͏���~�ʾ��c���8��}nE��-�3�/��9=�=	`֣Ϧ���GTɳ��ǽ��v��A�ф�b�����hh�#�;߰�1s^�����@��;�1�M���"8���կE�#�=p�%�� y@¬#/Ez�J��c{b[r���v�����c^!�ٿN֗��h��ڐ����A-�����b.ZLO�1n����{%�M��%�!��bU�xDM3w�q&rD�]D	�g�\N����d��-co��.�k7�nZ������Eb��rNF����%0�DQ�tx������ǫ��߮���B㏮�z/�FV�L�j��OH�dz:�Cï'p��jP���]!����.�564P����0AZ���.U��3֖8��nn�����F�$�c����ɺΕUj���T/��E����ť)�xayޫ���ǧ�`�&W|s^�//i]�ܥ�"K/Hb�-�9����;���T��$E��m���/��K%�/W��Z�̂�&	GD�n�ւ��$G햟>�^7�y�R��esh����V�E!'�^��晛q(8��+����X���������&E�����L�кK+{S\��[���=/����R�j�o*�B�|����1��?(G<�'��7�A���.���$�y���Pݕ����rq�~��@�����j�I�?�𴮗ŝ���YU�,[���GB�����u��x��.X+�C�_�ޮ�^k+�P����)���r�*����K���л��УLo������<���8Zm>Y�kV�$y���Lf���T(�u#kuӿ�z@d�}|ޮ��Zᆝ+��]Ѵ��+!�L��@
��uQ�����Ǜ��tM��ǝ'I6�y�"Y���Y�n\�E���V����L�{W�UeB���ia�K�yV���������u-���rܳMͷ��rE���#2;%[b:?��~է�D�����/�d�{��0�`���U�Q�"��!՜R�d~����4�Ϧz�U������O7>�0:�M���ɀa��u��9W��6�H�za�R�����A>�~9�v{s���]=���&�y�VD�=�u�gqH֑�iiY��Z���<[�&1Yf֌��M���q���I��a�B��sNtUy`�&/ь��gD��|�x�*��t������ۅ��<�@�1�����K����N�r�Y�Y��Es`��>�w6�{��1r$?s���"�(H�e]��� �9�:����EI��t�x�����N�]��=��j��1Mz��v�"$�A���S��0�T�=Q�C'+���������!�}&�7{���~��wԦ��O�j\C�����(��Zd=�<P\)y�t����_�>>��f�%�M�x��͇U�ֵU)V*��'��4�'��|�z�)S���p8�t�����s���	�A�����R���͐�MbaC(x*��V�/�o��@y߷Kg$����Һ�}�sEȔYIQV��.�dTOc�j�Q�/��bmR��/)�8�����R���<�JEm)I�?�_�(Ґ��Mߑ �������> b���P�^���u]Ds�� ���_g�6��Sv||��_����?����q�!�M�����X���ܫ\��m�p1��R�9����f��w�o>|>��͇�û��g�>����vٌ���{E������� ,�9M.3*I͢��C-�����7���ç_޾��~� �  ��M��f���Ѻ�O�+@C7�6�B�4�s���SI����I4������q��Y��O��oȘ��	���8��>��Y5�$�uS���5R��1)�9+���f�B�Γ���z���M.x��q���jk>�@�j� j����j�� K�П�R�k�`��>;�f�1<dn6��UDIe�iW�,�����SG�?�6��I����;��u�ii-�/���L�&�$�̱-�եR�{����7�|�+$��2�ɪ��qhɆ�(ْ;V��u��.���>�_>w�7�|����X'�ʏ(z�!�(�\�7$�ɔ�G���	k>��Oj�y��ؤ�gZ�Ѥ�b}y�m���{���L��r���Y!��j�;�s��x����~�-t��UB�A���b+2�-�"��ɶ�-t`�ٵ��)�E�O���)j���^o�N�e)�0��r��9]�&<,S#�x3A�\R'%�CO����7�����8����o}а��/�3�����y҇xB�Χ��cp��鞺�#��o�|�Km�pNNm��h-w1�u#����.+�5q?'�
�wH�BX4����k���Ps��7��[���E1*�'�]G�*Ltzn�p_ǲ�#n�*�����j:�����[e�r�ߎ��b�/���"D�k���	D{��}�=�JNf��X�w�L��m��i���ɺ~��Qе��Į�DB;�?IV�]6���R����j	�i�0�Ѻ2kY٫o},9y�>5�v4҅�U��/5�q�76x�].��h�q�F�.ͩҫ�mF]�=��������2L�������#��>�0Vl2��;�4K=�n�$�@���U/,����j����K��� ���w {]����w�+LCS#\�;���˔�-M��@�Z[d�vJj2x���e�df
��3NK�,��uyA'
�gPgO� G?         �  x�uXK�m'w�"������d�d�J��͉�-�Τ�%�.�|�5�_m���Go���O��y�Z�_��?t�#�տ�7�A�a��8�;��>� �ʛ��Qq*��/>�/"��I� Z����Hm�iAO�>�s��R�~���[��҈nҹ�[����o���1��o��?|�d}�|#��d�����l��O�o&��EE���Ӷ�E���$D�ީ͢`6������aOC�&Kq�@_
1B�
�D��an�nt�-3�����F�6m9ި�}CW:�L$�t$YfN踄��b=��J�QW�℁�T<���f2�g(dR$%�9/���� �B��f��6���e��|�0ʀ�zŷ@�7����~��p{xRy��~�C  ����p��v�/B�<^��p�0�QN�Q�e��q�7(n&:A��U�J��	�xBJt�U/�p�D/�%�yz+%:Y!Y��:P������q"Dxo�y������R2�/Q	ӣ��&��nJ0�֭�p�C�t����~oL.��a�fHmV�x���%���f2�On���@�M1M�AQ8�~d2Y�k������Az�g*� ����9���S[�8j�3��C>���p���[��Ÿ�L$�ɤ�����悢>.	Z�΅��!f1>�h8S	����F�ߪ6��~,f&��f9����"Ŀ�Fr��Iɷ@�91��a��3o慎7��:���>&�3��H����x�$X���d��^����p	��K2��g��V$9P���W��9�L'���.�:��:!Z�OR$�
���F����To�L(�L���3�L�9`���@��s�yP��k(Hf;9�t2�Z�kQ5���	���>9IB�=����Ox���y�v>��P��/��A_�pb����H&c�Us�k㤭!����e�$P��N����E�b��Z�	7����W?��&BAd.�p��: :5���Mt"kH�����
��L<=d��L`��z�?��vƹp��n��������W�Dj"D�T�o+�H��p�طp��7:� -�?�0S	&P[WN��A?�D�q���P3��w�b����$���!~�T��o�8�(��/B½G�'�T���B�|���c�YԌ%"���锋.�ηf�:�� 2=o���c��s.��D�/mRX����
��KD���,~�ڨ�~�v�Um�J���:P��_>8����2:�'ܨ��pZ�&��D�;!�*Ɂ�-��ލ�\��Dׯw6�8a�~[��$�I�'2Y!�W�?�y-�֏{'�D&�WBm�	ꯤ�4���L'�8�|*O���:�Ds�c4=
B���������ݔa&z�̫��:�E��%y��2��Í�6�M���&̔�����׃�K��=�&��?�+���x�	K&�M���A�N�� ��gBѧuL��{mt��乪�y��|�5��            x������ � �            x������ � �            x������ � �      �      x������ � �      �      x������ � �      �     x�}�;o7�z�S\́� 9T�2M�­��H�%:%�߳ڳtk�w���y'rD�0��a#��,��.����L�r"�긁���1�wm��2Oc������������4}�{z췏Os0!œ�N��
]�M@�����)y�1��>����NB��0 1WP�\��!a�F��Ϟ���8~�������;�N�<~�;��������=�x3�BNH��c\R���8�o������ g�;�����e�����O�ǿ������#^Y���{~�+�J�t�j!�BE�%�@z�~P7rT��=��PiM��J�hT���$��R�.X����U$���?�ѻ�Z�(�7X^cy��V69Ać����t��1�j�b� "��f��Gi������XU}������.�n�|�]�E��ҟ���FQ������ �*앯i���U��;����I�n�ro��b��.�[[�P��nͪ��k�[U?����6��'�l�^S~��&��1�1_��������*y���N�l��`׷y>�K�swKz�;BDaض�vu�4������c���5�/8��c������;ӻ�r��m��h@���e�3&�bS_x�ua��.l��t[�?�Ȼ�9��ȭ �y�ΦNP����K�a5���ŵ..�����o�(��>��3�s�n��/�r�]{?�MlE[&y��,(#�p�ӵN�n��	�[OH89�Iw�nN�!-:k�@��F��=�PԜ�+�؈)�.�uiѥ]<|=����      �      x������ � �      �      x������ � �            x������ � �      	      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �   d  x��S[n� �fS��]*Y�1)a-R��%��Į�����������tbJ�Z�a�8fG�9E��#3F�C!��wȯl�ݛ�yO߹{=���98�����V']_�)`��.R�<����:N���0�+�I7��Y����+z��	����Rj}r����N�1=ȝ0ޕ9�?��)P�u�i��ҐZ͘3���FΈǬ��16w�����]2�JJ���e�Z)d{��!Pa�:��6e]e,G�%O,���g��%�+7"^��vK�r�Yg��/P��$��Ò��,摪Z-���|�}��L��O,n��3T�ƴ��|�����p�P� �=�      �   Q  x���ے�6�����}j)���gI�JkFcٞC�>-���{�T��G���욡�|?M_g?�!`C��%�~#�% �N�w�{��i�'Q/t����qU�)Hl��S�1BS��P�GL4~��Oû����um[d0n�Q�!nvc`�u���:w����@�e��̒���^��|`�'�w'_Dq DB��Ժn�ў}<�qL)�x{r���������
�PzE�j�ş\�R����cV
�R�KNg8O��p�X.	Ȋ[D��)u>`asW�9��X)�������v�zV�H"Hn	��S]Ryw]h�4�1��8D{��莕�si˽��t�9���9�K��J2���)�႘�W�����F �5rŀ���"o�q���,d�?<���t[�!�'��(��Qd�?�	��ʘ�8���q�!B�ſ��0t��1�����<?
������Ğ�d��� �W� �(�b�0��IS�k�v�q���<���H@
�M�)���H Ж0.�,E�V����؆���L�)��ta�
��,�

I���,;HU�%��ǡsql^};w��w���?��d�d�S]!�5KM��V2&��Bq�W��
KmX"U�iy�*����e�[0����Jk�Y�D�}h%-��e۱5:J��Ln|C�	C�W'���i�rV[~�3�ջ���,͘��!9�N�_��ˊu�=ex��c!���X(AK@�2Kh&��*B@;��H�yN�����-�J��[Q�J�8��T��)��dY��p��P74o��I�w?:_�ΐ�h�[���0��lm�\�"^���#��xU�+}
'��З.7�n�V�����8w����0�����0h��<���t�8ڷ���Le|9z��R6Л9k�k���i���x���oWJ8�,qF2�ON~/�N�r�7���|,�07`�/�{�lhrK��Lq��]��U�%�{�l����kh[�W����^8�N��f��Tl@e���B�p�r�-�1�p��^܋�A�����.4�q�o�J�Di�suE�n:v���v�ɀ?2�H���)�CKL�c�f����r�>�&�������6!         �  x���ے�J���	�L��;QPE@@��0��A�租���{�	�����2=��y�b6EɄضNRB�y�3�����#@����!O&@_��'�a��=�����oe��m�B��'��НP��V�� � �X��k#��؟\u�-x"s���������hμߡ��o�u�dc��Rȓ����z�Mx�fbt+�G�:�=��!�fi
3�Wj����$��P��,�Tdic���*�J����d���G��W�CZ	�$mں_]�w��?�h�YĒ�[��k��E��}�L��(L�fD���φW������%�3Uu�:3%cR�v����]-]mn����1��}�Lgpn���b\$�\�	x����k���X�d��V����+�3��ygоʡL'3�����σ߁��٥(�̈^.���){�Sl��:�D�2�i�r�:'O����a�:^Q���//j���x���eA*�=���v���i��'����$��gV؀�ُXv�D�<��D��_F�9U�]�4j�AMK|��4�$���G�$�d<����<`� �/"�7�������k��*O��;������|��-~�@�v�k�}+�}���*���--�O}.�w*� �Ǆ��1b�Wj4�qK�#�P\@w��)��r�v����U�t�	�3���tY�>��~��3��:L�x�%oV�+D[|yp��D�>��T?���e��T��JrʄEqms?�|��v_3��[��8��r�;��+O�����g���N�Q��^�Eo�RY�����g��QRIg�ia�)g�\�ѧ��i;���׭B�^S��k٨���G����sᴙ|}�G����e> ���ı�jeA�x4��M9TyU�F�R���=�����9�z���°M'}���E�ceM�d�U�&�Z� �'��"G��e�ޗH�/m��S�.I{��iC��}
}in��x��C�6A�}����Qw�*Z����ǩ�-��.��um�`��.�Dr5ÊsSq�1��<�+M��M{�%]��!۲���OA�.��tdhcV�?��J�+=���OE�Xܻ��v����s����!�&4Ͱ���%ˈ�nyMe�J�
�z���}c��}��Cvg�ÍwJ��L|4�M����`Z�4,�#POϗW2n_.)1����<�x�׈f	���fƾ/c��(䊼HWc<�"�丮�!h�͡�N1jo�K�R�j��=-ųL'H޶��hE%���? ���ܚ��0_j�^����?W��      �   �  x�}�O��0���SD�c���ϭ��=�]U����n��MPH�����.qbH<����7�ɐ"��^#́����D#?P5�2Ƃ:d�ng�alw��mvG_4�0��r<dO+�[V�&�B�rQ�9Q~�:�X�m�6�L͂pj��H.��I�IU�O����6n�� ��Z1F@�IN���϶�X[��G¨��%1Q���ci���쾫��ޖΏIo���%���&�"S"M<��]i�|_�/������ϛ��M ���zF$	�$GU�b���zj9�!��-�	C� =��
[k�ڃ}}OMU0}k�*��@%`�\�OW�~����f���{ί��:� t��gU���Җ6�þkˀ[�n�	CI�2ҋhؕV:��j;x���GM֎LA5(�d�T�8����=t�M�Rg@7��,��6�t��hc$}?���B����6l`5��x\���<��Rޚ
�&�fxyV9�7؟��Ɲ�?Y�u��E�$�XpEH��;��A�B`���]X�%�n�?�;��IJXAʸ�)Ï�S�p�1��v��;�0�83:���Y�}9D�+�ý�����ۈ�~VU�n�7����'���
���B ��9��W�C��Z_\���\��
��Z��'�Z���p�E      �      x������ � �            x������ � �      �   2  x�u�I��0е��,�š��F�	rD.�/l�v�+s%��~�����o��4h�n��XF��b �p�	�bt��67�Hx�����}Q��+/�l��ꑚ�p�4�C��j��SǢ2)�l�l���뷕9�4��=�8�1���R@��E.кS��|�y�ru㶲��>�{��dS��A��CRa`�U�>0�l�����5#�?�{���fF��z� �6�J��"�Nm�槫�o�\�.�Vv&s{rW�|����#�%� �P����k�V?]�+˷�#�,?�+u<�
+%�5ݬ����~eӚY��8]���r~�Z�{��R�4�j�:�����2SĦդ�g�����m�d}ē��z�r)�Y���vY�:\���uv�\7��ͷ�3��Ë�N��p�:O��	b2J�.9J�瓑��޽T������l[�;j�Д�:�u����n1#�d�������!O7t�r.�<Ǆ�t-��d�ٯ0�(�Ξ?mNW���&L�;:O��s2^mmL 3u(�Ф԰�\�~���y}}}�=�B�      �      x������ � �      �   �   x�uͻn�0���<}4��c϶+�Ҥ�6��B�� 6���!��/��jD�е&\�^4u��#���_%o�j"#H��3���8$��vY�2�Ji羽�X�}�����>��N�"�f6)�\Ak�;\	b�P؇�sH�)T��W]��u^�7Y>�6LO?���lp�өT6���J���8����go�1�䪲�6L2�A��:O�c�dڞ�{�4��vX�      �      x������ � �      �      x������ � �            x������ � �     