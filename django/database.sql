--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: django; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE django WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE django OWNER TO postgres;

\connect django

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: ecommerce_accessory; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_accessory (
    id integer NOT NULL,
    sku character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    color character varying(20) NOT NULL,
    image character varying(100),
    "timestamp" timestamp with time zone NOT NULL,
    type_id integer
);


ALTER TABLE public.ecommerce_accessory OWNER TO django;

--
-- Name: ecommerce_accessory_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_accessory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_accessory_id_seq OWNER TO django;

--
-- Name: ecommerce_accessory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_accessory_id_seq OWNED BY ecommerce_accessory.id;


--
-- Name: ecommerce_accessory_type; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_accessory_type (
    id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.ecommerce_accessory_type OWNER TO django;

--
-- Name: ecommerce_accessory_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_accessory_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_accessory_type_id_seq OWNER TO django;

--
-- Name: ecommerce_accessory_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_accessory_type_id_seq OWNED BY ecommerce_accessory_type.id;


--
-- Name: ecommerce_address; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_address (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    address_1 character varying(200) NOT NULL,
    address_2 character varying(200) NOT NULL,
    city character varying(60) NOT NULL,
    state character varying(30) NOT NULL,
    country character varying(50) NOT NULL,
    pincode integer NOT NULL,
    phone bigint NOT NULL,
    geolocation character varying(200),
    "timestamp" timestamp with time zone NOT NULL,
    customer_id integer,
    CONSTRAINT ecommerce_address_pincode_check CHECK ((pincode >= 0))
);


ALTER TABLE public.ecommerce_address OWNER TO django;

--
-- Name: ecommerce_address_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_address_id_seq OWNER TO django;

--
-- Name: ecommerce_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_address_id_seq OWNED BY ecommerce_address.id;


--
-- Name: ecommerce_brand; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_brand (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    logo character varying(100),
    fb_link character varying(200),
    comments text,
    visibility_flag boolean NOT NULL,
    designer_flag boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    description text,
    handle character varying(30)
);


ALTER TABLE public.ecommerce_brand OWNER TO django;

--
-- Name: ecommerce_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_brand_id_seq OWNER TO django;

--
-- Name: ecommerce_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_brand_id_seq OWNED BY ecommerce_brand.id;


--
-- Name: ecommerce_cart; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_cart (
    id integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    customer_id integer,
    product_id integer,
    size_id integer
);


ALTER TABLE public.ecommerce_cart OWNER TO django;

--
-- Name: ecommerce_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_cart_id_seq OWNER TO django;

--
-- Name: ecommerce_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_cart_id_seq OWNED BY ecommerce_cart.id;


--
-- Name: ecommerce_collection; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_collection (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    handle character varying(30) NOT NULL,
    description text,
    comments text,
    visibility_flag boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.ecommerce_collection OWNER TO django;

--
-- Name: ecommerce_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_collection_id_seq OWNER TO django;

--
-- Name: ecommerce_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_collection_id_seq OWNED BY ecommerce_collection.id;


--
-- Name: ecommerce_collection_tags; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_collection_tags (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.ecommerce_collection_tags OWNER TO django;

--
-- Name: ecommerce_collection_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_collection_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_collection_tags_id_seq OWNER TO django;

--
-- Name: ecommerce_collection_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_collection_tags_id_seq OWNED BY ecommerce_collection_tags.id;


--
-- Name: ecommerce_customer; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_customer (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    email character varying(254) NOT NULL,
    fb_profile_link character varying(200),
    fb_profile_pic character varying(100),
    id_proof character varying(100),
    birth_date date,
    work character varying(30),
    education character varying(30),
    signup_ip inet,
    signup_ua character varying(200),
    "timestamp" timestamp with time zone NOT NULL,
    id_type_id integer,
    signup_medium character varying(30),
    fb_id character varying(30)
);


ALTER TABLE public.ecommerce_customer OWNER TO django;

--
-- Name: ecommerce_customer_feedback; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_customer_feedback (
    id integer NOT NULL,
    rating character varying(1) NOT NULL,
    main_criteria character varying(30),
    feedback text,
    "timestamp" timestamp with time zone NOT NULL,
    customer_id integer,
    order_id integer
);


ALTER TABLE public.ecommerce_customer_feedback OWNER TO django;

--
-- Name: ecommerce_customer_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_customer_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_customer_feedback_id_seq OWNER TO django;

--
-- Name: ecommerce_customer_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_customer_feedback_id_seq OWNED BY ecommerce_customer_feedback.id;


--
-- Name: ecommerce_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_customer_id_seq OWNER TO django;

--
-- Name: ecommerce_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_customer_id_seq OWNED BY ecommerce_customer.id;


--
-- Name: ecommerce_customer_login; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_customer_login (
    id integer NOT NULL,
    login_ip inet NOT NULL,
    login_ua character varying(200) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    customer_id integer,
    login_medium character varying(30)
);


ALTER TABLE public.ecommerce_customer_login OWNER TO django;

--
-- Name: ecommerce_customer_login_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_customer_login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_customer_login_id_seq OWNER TO django;

--
-- Name: ecommerce_customer_login_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_customer_login_id_seq OWNED BY ecommerce_customer_login.id;


--
-- Name: ecommerce_discounts; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_discounts (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    start_date date NOT NULL,
    expiry_date date NOT NULL,
    discount_percent integer,
    max_discount integer,
    CONSTRAINT ecommerce_discounts_discount_percent_102a21bb_check CHECK ((discount_percent >= 0)),
    CONSTRAINT ecommerce_discounts_max_discount_check CHECK ((max_discount >= 0))
);


ALTER TABLE public.ecommerce_discounts OWNER TO django;

--
-- Name: ecommerce_discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_discounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_discounts_id_seq OWNER TO django;

--
-- Name: ecommerce_discounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_discounts_id_seq OWNED BY ecommerce_discounts.id;


--
-- Name: ecommerce_fashion_model; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_fashion_model (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(254),
    phone bigint,
    fb_profile_link character varying(200),
    height character varying(10) NOT NULL,
    complexion character varying(10) NOT NULL,
    preference character varying(30),
    comments text,
    "timestamp" timestamp with time zone NOT NULL,
    sex_id integer
);


ALTER TABLE public.ecommerce_fashion_model OWNER TO django;

--
-- Name: ecommerce_fashion_model_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_fashion_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_fashion_model_id_seq OWNER TO django;

--
-- Name: ecommerce_fashion_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_fashion_model_id_seq OWNED BY ecommerce_fashion_model.id;


--
-- Name: ecommerce_fashion_model_payment; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_fashion_model_payment (
    id integer NOT NULL,
    total_payment smallint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    fashion_model_id integer,
    photoshoot_id integer,
    CONSTRAINT ecommerce_fashion_model_payment_total_payment_check CHECK ((total_payment >= 0))
);


ALTER TABLE public.ecommerce_fashion_model_payment OWNER TO django;

--
-- Name: ecommerce_fashion_model_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_fashion_model_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_fashion_model_payment_id_seq OWNER TO django;

--
-- Name: ecommerce_fashion_model_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_fashion_model_payment_id_seq OWNED BY ecommerce_fashion_model_payment.id;


--
-- Name: ecommerce_id_card; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_id_card (
    id integer NOT NULL,
    card character varying(20) NOT NULL
);


ALTER TABLE public.ecommerce_id_card OWNER TO django;

--
-- Name: ecommerce_id_card_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_id_card_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_id_card_id_seq OWNER TO django;

--
-- Name: ecommerce_id_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_id_card_id_seq OWNED BY ecommerce_id_card.id;


--
-- Name: ecommerce_image; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_image (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.ecommerce_image OWNER TO django;

--
-- Name: ecommerce_image_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_image_id_seq OWNER TO django;

--
-- Name: ecommerce_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_image_id_seq OWNED BY ecommerce_image.id;


--
-- Name: ecommerce_order; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_order (
    id integer NOT NULL,
    no_of_products smallint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    address_id integer,
    customer_id integer,
    login_id_id integer,
    order_price integer,
    payment_status character varying(5),
    return_delivery character varying(5),
    payment_request_id character varying(50),
    payment_mode character varying(8),
    security_deposit integer,
    CONSTRAINT ecommerce_order_no_of_products_check CHECK ((no_of_products >= 0)),
    CONSTRAINT ecommerce_order_order_price_check CHECK ((order_price >= 0)),
    CONSTRAINT ecommerce_order_security_deposit_check CHECK ((security_deposit >= 0))
);


ALTER TABLE public.ecommerce_order OWNER TO django;

--
-- Name: ecommerce_order_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_order_id_seq OWNER TO django;

--
-- Name: ecommerce_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_order_id_seq OWNED BY ecommerce_order.id;


--
-- Name: ecommerce_order_product; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_order_product (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    from_date date,
    to_date date,
    product_price integer,
    order_type character varying(5),
    CONSTRAINT ecommerce_order_product_product_price_check CHECK ((product_price >= 0))
);


ALTER TABLE public.ecommerce_order_product OWNER TO django;

--
-- Name: ecommerce_order_product_accessory; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_order_product_accessory (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    accessory_id integer,
    order_product_id integer
);


ALTER TABLE public.ecommerce_order_product_accessory OWNER TO django;

--
-- Name: ecommerce_order_product_accessory_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_order_product_accessory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_order_product_accessory_id_seq OWNER TO django;

--
-- Name: ecommerce_order_product_accessory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_order_product_accessory_id_seq OWNED BY ecommerce_order_product_accessory.id;


--
-- Name: ecommerce_order_product_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_order_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_order_product_id_seq OWNER TO django;

--
-- Name: ecommerce_order_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_order_product_id_seq OWNED BY ecommerce_order_product.id;


--
-- Name: ecommerce_page; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_page (
    id integer NOT NULL,
    handle character varying(30) NOT NULL,
    title character varying(30) NOT NULL,
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.ecommerce_page OWNER TO django;

--
-- Name: ecommerce_page_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_page_id_seq OWNER TO django;

--
-- Name: ecommerce_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_page_id_seq OWNED BY ecommerce_page.id;


--
-- Name: ecommerce_photographer; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_photographer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(254),
    phone bigint,
    fb_profile_link character varying(200),
    comments text,
    "timestamp" timestamp with time zone NOT NULL,
    sex_id integer
);


ALTER TABLE public.ecommerce_photographer OWNER TO django;

--
-- Name: ecommerce_photographer_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_photographer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_photographer_id_seq OWNER TO django;

--
-- Name: ecommerce_photographer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_photographer_id_seq OWNED BY ecommerce_photographer.id;


--
-- Name: ecommerce_photographer_payment; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_photographer_payment (
    id integer NOT NULL,
    total_payment smallint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    photographer_id integer,
    photoshoot_id integer,
    CONSTRAINT ecommerce_photographer_payment_total_payment_check CHECK ((total_payment >= 0))
);


ALTER TABLE public.ecommerce_photographer_payment OWNER TO django;

--
-- Name: ecommerce_photographer_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_photographer_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_photographer_payment_id_seq OWNER TO django;

--
-- Name: ecommerce_photographer_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_photographer_payment_id_seq OWNED BY ecommerce_photographer_payment.id;


--
-- Name: ecommerce_photoshoot; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_photoshoot (
    id integer NOT NULL,
    no_of_products smallint NOT NULL,
    shoot_date date NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    fashion_model_id integer,
    photographer_id integer,
    stylist_id integer,
    CONSTRAINT ecommerce_photoshoot_no_of_products_check CHECK ((no_of_products >= 0))
);


ALTER TABLE public.ecommerce_photoshoot OWNER TO django;

--
-- Name: ecommerce_photoshoot_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_photoshoot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_photoshoot_id_seq OWNER TO django;

--
-- Name: ecommerce_photoshoot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_photoshoot_id_seq OWNED BY ecommerce_photoshoot.id;


--
-- Name: ecommerce_post; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_post (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    link character varying(1000) NOT NULL,
    text text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    published_date timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    slug character varying(300) NOT NULL
);


ALTER TABLE public.ecommerce_post OWNER TO django;

--
-- Name: ecommerce_post_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_post_id_seq OWNER TO django;

--
-- Name: ecommerce_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_post_id_seq OWNED BY ecommerce_post.id;


--
-- Name: ecommerce_post_images; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_post_images (
    id integer NOT NULL,
    post_id integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.ecommerce_post_images OWNER TO django;

--
-- Name: ecommerce_post_images_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_post_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_post_images_id_seq OWNER TO django;

--
-- Name: ecommerce_post_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_post_images_id_seq OWNED BY ecommerce_post_images.id;


--
-- Name: ecommerce_product; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product (
    id integer NOT NULL,
    product_id character varying(100) NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    style character varying(100) NOT NULL,
    fabric character varying(30),
    fit character varying(30),
    mrp integer,
    rent smallint,
    visibility_flag boolean NOT NULL,
    comments text,
    brand_id integer,
    photoshoot_id integer,
    category_id integer,
    vendor_id integer,
    ideal_for_id integer,
    security_deposit smallint,
    purchase_date date,
    buy_flag boolean NOT NULL,
    buy_price integer,
    CONSTRAINT ecommerce_product_buy_price_check CHECK ((buy_price >= 0)),
    CONSTRAINT ecommerce_product_mrp_check CHECK ((mrp >= 0)),
    CONSTRAINT ecommerce_product_rent_check CHECK ((rent >= 0)),
    CONSTRAINT ecommerce_product_security_deposit_check CHECK ((security_deposit >= 0))
);


ALTER TABLE public.ecommerce_product OWNER TO django;

--
-- Name: ecommerce_product_category; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_category (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    lead_time smallint NOT NULL,
    lag_time smallint NOT NULL,
    cut_off_time smallint NOT NULL,
    handle character varying(30),
    collection character varying(30),
    CONSTRAINT ecommerce_product_type_cut_off_time_check CHECK ((cut_off_time >= 0)),
    CONSTRAINT ecommerce_product_type_lag_time_check CHECK ((lag_time >= 0)),
    CONSTRAINT ecommerce_product_type_lead_time_check CHECK ((lead_time >= 0))
);


ALTER TABLE public.ecommerce_product_category OWNER TO django;

--
-- Name: ecommerce_product_collections; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_collections (
    id integer NOT NULL,
    product_id integer NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE public.ecommerce_product_collections OWNER TO django;

--
-- Name: ecommerce_product_collections_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_collections_id_seq OWNER TO django;

--
-- Name: ecommerce_product_collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_collections_id_seq OWNED BY ecommerce_product_collections.id;


--
-- Name: ecommerce_product_cost; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_cost (
    id integer NOT NULL,
    cost integer,
    paid integer,
    "timestamp" timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT ecommerce_product_cost_cost_check CHECK ((cost >= 0)),
    CONSTRAINT ecommerce_product_cost_paid_check CHECK ((paid >= 0))
);


ALTER TABLE public.ecommerce_product_cost OWNER TO django;

--
-- Name: ecommerce_product_cost_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_cost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_cost_id_seq OWNER TO django;

--
-- Name: ecommerce_product_cost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_cost_id_seq OWNED BY ecommerce_product_cost.id;


--
-- Name: ecommerce_product_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_id_seq OWNER TO django;

--
-- Name: ecommerce_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_id_seq OWNED BY ecommerce_product.id;


--
-- Name: ecommerce_product_rent_log; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_rent_log (
    id integer NOT NULL,
    rent smallint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    product_id integer,
    CONSTRAINT ecommerce_product_rent_log_rent_check CHECK ((rent >= 0))
);


ALTER TABLE public.ecommerce_product_rent_log OWNER TO django;

--
-- Name: ecommerce_product_rent_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_rent_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_rent_log_id_seq OWNER TO django;

--
-- Name: ecommerce_product_rent_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_rent_log_id_seq OWNED BY ecommerce_product_rent_log.id;


--
-- Name: ecommerce_product_review; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_review (
    id integer NOT NULL,
    rating smallint NOT NULL,
    title character varying(50) NOT NULL,
    review text,
    visibility_flag boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    customer_id integer,
    product_id integer,
    CONSTRAINT ecommerce_product_review_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.ecommerce_product_review OWNER TO django;

--
-- Name: ecommerce_product_review_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_review_id_seq OWNER TO django;

--
-- Name: ecommerce_product_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_review_id_seq OWNED BY ecommerce_product_review.id;


--
-- Name: ecommerce_product_size; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_size (
    id integer NOT NULL,
    size character varying(10) NOT NULL
);


ALTER TABLE public.ecommerce_product_size OWNER TO django;

--
-- Name: ecommerce_product_size_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_size_id_seq OWNER TO django;

--
-- Name: ecommerce_product_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_size_id_seq OWNED BY ecommerce_product_size.id;


--
-- Name: ecommerce_product_tags; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_tags (
    id integer NOT NULL,
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.ecommerce_product_tags OWNER TO django;

--
-- Name: ecommerce_product_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_tags_id_seq OWNER TO django;

--
-- Name: ecommerce_product_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_tags_id_seq OWNED BY ecommerce_product_tags.id;


--
-- Name: ecommerce_product_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_type_id_seq OWNER TO django;

--
-- Name: ecommerce_product_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_type_id_seq OWNED BY ecommerce_product_category.id;


--
-- Name: ecommerce_product_variants; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_variants (
    id integer NOT NULL,
    sku character varying(50) NOT NULL,
    size character varying(10) NOT NULL,
    color character varying(30) NOT NULL,
    length character varying(20),
    bust_size text,
    waist_size text,
    hip_size text,
    visibility_flag boolean NOT NULL,
    product_id integer,
    shoulder_size text
);


ALTER TABLE public.ecommerce_product_variants OWNER TO django;

--
-- Name: ecommerce_product_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_variants_id_seq OWNER TO django;

--
-- Name: ecommerce_product_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_variants_id_seq OWNED BY ecommerce_product_variants.id;


--
-- Name: ecommerce_product_view; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_product_view (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    customer_id integer,
    product_id integer
);


ALTER TABLE public.ecommerce_product_view OWNER TO django;

--
-- Name: ecommerce_product_view_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_product_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_product_view_id_seq OWNER TO django;

--
-- Name: ecommerce_product_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_product_view_id_seq OWNED BY ecommerce_product_view.id;


--
-- Name: ecommerce_sex; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_sex (
    id integer NOT NULL,
    sex character varying(20) NOT NULL,
    handle character varying(20) NOT NULL
);


ALTER TABLE public.ecommerce_sex OWNER TO django;

--
-- Name: ecommerce_sex_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_sex_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_sex_id_seq OWNER TO django;

--
-- Name: ecommerce_sex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_sex_id_seq OWNED BY ecommerce_sex.id;


--
-- Name: ecommerce_stylist; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_stylist (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(254),
    phone bigint,
    fb_profile_link character varying(200),
    comments text,
    "timestamp" timestamp with time zone NOT NULL,
    sex_id integer
);


ALTER TABLE public.ecommerce_stylist OWNER TO django;

--
-- Name: ecommerce_stylist_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_stylist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_stylist_id_seq OWNER TO django;

--
-- Name: ecommerce_stylist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_stylist_id_seq OWNED BY ecommerce_stylist.id;


--
-- Name: ecommerce_stylist_payment; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_stylist_payment (
    id integer NOT NULL,
    total_payment smallint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    photoshoot_id integer,
    stylist_id integer,
    CONSTRAINT ecommerce_stylist_payment_total_payment_check CHECK ((total_payment >= 0))
);


ALTER TABLE public.ecommerce_stylist_payment OWNER TO django;

--
-- Name: ecommerce_stylist_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_stylist_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_stylist_payment_id_seq OWNER TO django;

--
-- Name: ecommerce_stylist_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_stylist_payment_id_seq OWNED BY ecommerce_stylist_payment.id;


--
-- Name: ecommerce_tag; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_tag (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.ecommerce_tag OWNER TO django;

--
-- Name: ecommerce_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_tag_id_seq OWNER TO django;

--
-- Name: ecommerce_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_tag_id_seq OWNED BY ecommerce_tag.id;


--
-- Name: ecommerce_vendor; Type: TABLE; Schema: public; Owner: django; Tablespace: 
--

CREATE TABLE ecommerce_vendor (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(254),
    phone bigint,
    fb_link character varying(200),
    address_1 character varying(100),
    address_2 character varying(100),
    city character varying(60),
    state character varying(30),
    country character varying(50),
    pincode integer,
    logo character varying(100),
    description text,
    comments text,
    designer_flag boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    sex_id integer,
    handle character varying(30),
    order_notifications boolean NOT NULL,
    CONSTRAINT ecommerce_vendor_pincode_check CHECK ((pincode >= 0))
);


ALTER TABLE public.ecommerce_vendor OWNER TO django;

--
-- Name: ecommerce_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE ecommerce_vendor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecommerce_vendor_id_seq OWNER TO django;

--
-- Name: ecommerce_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE ecommerce_vendor_id_seq OWNED BY ecommerce_vendor.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_accessory ALTER COLUMN id SET DEFAULT nextval('ecommerce_accessory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_accessory_type ALTER COLUMN id SET DEFAULT nextval('ecommerce_accessory_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_address ALTER COLUMN id SET DEFAULT nextval('ecommerce_address_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_brand ALTER COLUMN id SET DEFAULT nextval('ecommerce_brand_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_cart ALTER COLUMN id SET DEFAULT nextval('ecommerce_cart_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_collection ALTER COLUMN id SET DEFAULT nextval('ecommerce_collection_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_collection_tags ALTER COLUMN id SET DEFAULT nextval('ecommerce_collection_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer ALTER COLUMN id SET DEFAULT nextval('ecommerce_customer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer_feedback ALTER COLUMN id SET DEFAULT nextval('ecommerce_customer_feedback_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer_login ALTER COLUMN id SET DEFAULT nextval('ecommerce_customer_login_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_discounts ALTER COLUMN id SET DEFAULT nextval('ecommerce_discounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_fashion_model ALTER COLUMN id SET DEFAULT nextval('ecommerce_fashion_model_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_fashion_model_payment ALTER COLUMN id SET DEFAULT nextval('ecommerce_fashion_model_payment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_id_card ALTER COLUMN id SET DEFAULT nextval('ecommerce_id_card_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_image ALTER COLUMN id SET DEFAULT nextval('ecommerce_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order ALTER COLUMN id SET DEFAULT nextval('ecommerce_order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order_product ALTER COLUMN id SET DEFAULT nextval('ecommerce_order_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order_product_accessory ALTER COLUMN id SET DEFAULT nextval('ecommerce_order_product_accessory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_page ALTER COLUMN id SET DEFAULT nextval('ecommerce_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photographer ALTER COLUMN id SET DEFAULT nextval('ecommerce_photographer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photographer_payment ALTER COLUMN id SET DEFAULT nextval('ecommerce_photographer_payment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photoshoot ALTER COLUMN id SET DEFAULT nextval('ecommerce_photoshoot_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_post ALTER COLUMN id SET DEFAULT nextval('ecommerce_post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_post_images ALTER COLUMN id SET DEFAULT nextval('ecommerce_post_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_category ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_collections ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_collections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_cost ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_cost_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_rent_log ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_rent_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_review ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_review_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_size ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_size_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_tags ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_variants ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_variants_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_view ALTER COLUMN id SET DEFAULT nextval('ecommerce_product_view_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_sex ALTER COLUMN id SET DEFAULT nextval('ecommerce_sex_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_stylist ALTER COLUMN id SET DEFAULT nextval('ecommerce_stylist_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_stylist_payment ALTER COLUMN id SET DEFAULT nextval('ecommerce_stylist_payment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_tag ALTER COLUMN id SET DEFAULT nextval('ecommerce_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_vendor ALTER COLUMN id SET DEFAULT nextval('ecommerce_vendor_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add page	7	add_page
20	Can change page	7	change_page
21	Can delete page	7	delete_page
22	Can add sex	8	add_sex
23	Can change sex	8	change_sex
24	Can delete sex	8	delete_sex
25	Can add id_ card	9	add_id_card
26	Can change id_ card	9	change_id_card
27	Can delete id_ card	9	delete_id_card
31	Can add customer	11	add_customer
32	Can change customer	11	change_customer
33	Can delete customer	11	delete_customer
34	Can add vendor	12	add_vendor
35	Can change vendor	12	change_vendor
36	Can delete vendor	12	delete_vendor
37	Can add brand	13	add_brand
38	Can change brand	13	change_brand
39	Can delete brand	13	delete_brand
43	Can add product_ size	15	add_product_size
44	Can change product_ size	15	change_product_size
45	Can delete product_ size	15	delete_product_size
49	Can add fashion_ model	17	add_fashion_model
50	Can change fashion_ model	17	change_fashion_model
51	Can delete fashion_ model	17	delete_fashion_model
52	Can add stylist	18	add_stylist
53	Can change stylist	18	change_stylist
54	Can delete stylist	18	delete_stylist
55	Can add photographer	19	add_photographer
56	Can change photographer	19	change_photographer
57	Can delete photographer	19	delete_photographer
58	Can add photoshoot	20	add_photoshoot
59	Can change photoshoot	20	change_photoshoot
60	Can delete photoshoot	20	delete_photoshoot
61	Can add product	21	add_product
62	Can change product	21	change_product
63	Can delete product	21	delete_product
64	Can add collection	22	add_collection
65	Can change collection	22	change_collection
66	Can delete collection	22	delete_collection
67	Can add product_ cost	23	add_product_cost
68	Can change product_ cost	23	change_product_cost
69	Can delete product_ cost	23	delete_product_cost
70	Can add product_ rent_ log	24	add_product_rent_log
71	Can change product_ rent_ log	24	change_product_rent_log
72	Can delete product_ rent_ log	24	delete_product_rent_log
73	Can add customer_ login	25	add_customer_login
74	Can change customer_ login	25	change_customer_login
75	Can delete customer_ login	25	delete_customer_login
76	Can add fashion_ model_ payment	26	add_fashion_model_payment
77	Can change fashion_ model_ payment	26	change_fashion_model_payment
78	Can delete fashion_ model_ payment	26	delete_fashion_model_payment
79	Can add stylist_ payment	27	add_stylist_payment
80	Can change stylist_ payment	27	change_stylist_payment
81	Can delete stylist_ payment	27	delete_stylist_payment
82	Can add photographer_ payment	28	add_photographer_payment
83	Can change photographer_ payment	28	change_photographer_payment
84	Can delete photographer_ payment	28	delete_photographer_payment
85	Can add accessory_ type	29	add_accessory_type
86	Can change accessory_ type	29	change_accessory_type
87	Can delete accessory_ type	29	delete_accessory_type
88	Can add accessory	30	add_accessory
89	Can change accessory	30	change_accessory
90	Can delete accessory	30	delete_accessory
91	Can add address	31	add_address
92	Can change address	31	change_address
93	Can delete address	31	delete_address
94	Can add order	32	add_order
95	Can change order	32	change_order
96	Can delete order	32	delete_order
97	Can add order_ product	33	add_order_product
98	Can change order_ product	33	change_order_product
99	Can delete order_ product	33	delete_order_product
100	Can add order_ product_ accessory	34	add_order_product_accessory
101	Can change order_ product_ accessory	34	change_order_product_accessory
102	Can delete order_ product_ accessory	34	delete_order_product_accessory
103	Can add customer_ feedback	35	add_customer_feedback
104	Can change customer_ feedback	35	change_customer_feedback
105	Can delete customer_ feedback	35	delete_customer_feedback
106	Can add product_ review	36	add_product_review
107	Can change product_ review	36	change_product_review
108	Can delete product_ review	36	delete_product_review
109	Can add cart	37	add_cart
110	Can change cart	37	change_cart
111	Can delete cart	37	delete_cart
112	Can add product_view	38	add_product_view
113	Can change product_view	38	change_product_view
114	Can delete product_view	38	delete_product_view
115	Can add product_ category	39	add_product_category
116	Can change product_ category	39	change_product_category
117	Can delete product_ category	39	delete_product_category
118	Can add tag	40	add_tag
119	Can change tag	40	change_tag
120	Can delete tag	40	delete_tag
121	Can add product_variants	41	add_product_variants
122	Can change product_variants	41	change_product_variants
123	Can delete product_variants	41	delete_product_variants
124	Can add discounts	42	add_discounts
125	Can change discounts	42	change_discounts
126	Can delete discounts	42	delete_discounts
127	Can add image	43	add_image
128	Can change image	43	change_image
129	Can delete image	43	delete_image
130	Can add post	44	add_post
131	Can change post	44	change_post
132	Can delete post	44	delete_post
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_permission_id_seq', 132, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$24000$hZrMIqJBJb8E$4znKqKYsll0nKrVO3cb1rxRUqtgr4RVexso0YlxptMo=	2016-07-28 03:46:16.766054-04	t	shweta			shwetapoddar89@gmail.com	t	t	2016-03-16 14:33:34.893384-04
5	pbkdf2_sha256$24000$ucR6Wl2gTeCU$3DY4g1q21bykWEBf8A4wO2VOkL8Ncn8uWCBzZ5QH/ho=	2016-08-02 09:03:04.602852-04	f	nandan				t	t	2016-07-14 13:43:37-04
2	pbkdf2_sha256$24000$cq8iepLRF1gE$EQsZ+ugN1NN7xjEmv3n4/qUU8ltLEHk28cn7+Pczs/s=	2016-02-10 14:21:21.600604-05	t	rkpoddar			rishipoddar.s@gmail.com	t	t	2016-01-09 08:19:16.04-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_id_seq', 6, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
7	5	128
8	5	129
9	5	130
10	5	131
11	5	132
12	5	127
13	5	1
14	5	2
15	5	3
16	5	4
17	5	5
18	5	6
19	5	7
20	5	8
21	5	9
22	5	10
23	5	11
24	5	12
25	5	13
26	5	14
27	5	15
28	5	16
29	5	17
30	5	18
31	5	19
32	5	20
33	5	21
34	5	22
35	5	23
36	5	24
37	5	25
38	5	26
39	5	27
40	5	31
41	5	32
42	5	33
43	5	34
44	5	35
45	5	36
46	5	37
47	5	38
48	5	39
49	5	43
50	5	44
51	5	45
52	5	49
53	5	50
54	5	51
55	5	52
56	5	53
57	5	54
58	5	55
59	5	56
60	5	57
61	5	58
62	5	59
63	5	60
64	5	61
65	5	62
66	5	63
67	5	64
68	5	65
69	5	66
70	5	67
71	5	68
72	5	69
73	5	70
74	5	71
75	5	72
76	5	73
77	5	74
78	5	75
79	5	76
80	5	77
81	5	78
82	5	79
83	5	80
84	5	81
85	5	82
86	5	83
87	5	84
88	5	85
89	5	86
90	5	87
91	5	88
92	5	89
93	5	90
94	5	91
95	5	92
96	5	93
97	5	94
98	5	95
99	5	96
100	5	97
101	5	98
102	5	99
103	5	100
104	5	101
105	5	102
106	5	103
107	5	104
108	5	105
109	5	106
110	5	107
111	5	108
112	5	109
113	5	110
114	5	111
115	5	112
116	5	113
117	5	114
118	5	115
119	5	116
120	5	117
121	5	118
122	5	119
123	5	120
124	5	121
125	5	122
126	5	123
127	5	124
128	5	125
129	5	126
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 129, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
8	2016-01-14 09:49:22.309-05	212	WWVM17	2	Changed description, collections, color and sizes.	21	2
9	2016-01-14 09:49:54.311-05	204	WWAN22	2	Changed description, collections and sizes.	21	2
10	2016-01-14 13:13:28.339-05	1	Male	2	Changed handle.	8	2
11	2016-01-14 13:13:36.866-05	2	Female	2	Changed handle.	8	2
12	2016-01-14 13:13:45.676-05	3	Other	2	Changed handle.	8	2
13	2016-01-14 14:11:26.712-05	2	The DressBank	2	Changed handle.	12	2
14	2016-01-14 14:11:39.102-05	1	CK Store	2	Changed handle.	12	2
17	2016-01-14 14:13:21.094-05	34	AND	2	Changed handle.	13	2
18	2016-01-14 14:13:27.544-05	33	ELLE	2	Changed handle.	13	2
19	2016-01-14 14:27:36.948-05	2	The Dress Bank	2	Changed name.	12	2
15	2016-01-14 14:12:24.362-05	6	Jacket	2	Changed handle.	\N	2
16	2016-01-14 14:12:37.363-05	3	Jumpsuit	2	Changed handle.	\N	2
20	2016-01-16 04:01:09.076-05	149	JA055	2	Changed description, collections and sizes.	21	2
21	2016-01-16 04:01:49.614-05	149	JA055	2	No fields changed.	21	2
22	2016-01-16 04:02:10.355-05	149	JA055	2	Changed sizes.	21	2
23	2016-01-16 04:02:25.406-05	149	JA055	2	Changed sizes.	21	2
24	2016-01-16 09:50:14.209-05	204	WWAN22	2	Changed visibility_flag.	21	2
25	2016-01-16 10:44:40.9-05	204	WWAN22	2	Changed purchase_date.	21	2
26	2016-01-16 10:47:36.614-05	138	JA085B	2	Changed description, collections, sizes and purchase_date.	21	2
27	2016-01-23 07:42:27.964-05	1	CK Store	2	Changed email.	12	2
28	2016-01-23 13:10:55.906-05	1	Return Policy (return-policy)	1	Added.	7	2
29	2016-01-23 13:11:53.389-05	2	Cancellation Policy (cancellation-policy)	1	Added.	7	2
30	2016-01-23 13:12:04.132-05	1	Return Policy (return-policy)	2	Changed content.	7	2
31	2016-01-23 13:12:32.904-05	3	Privacy Policy (privacy-policy)	1	Added.	7	2
32	2016-01-23 13:13:04.43-05	4	Terms & Conditions (terms-conditions)	1	Added.	7	2
42	2016-02-04 13:48:50.966-05	574	shimmer-copper-jumpsuit	2	Changed category, description and collections.	21	2
43	2016-02-04 13:49:01.498-05	566	painted-envy-jumpsuit	2	Changed category and description.	21	2
44	2016-02-04 13:49:23.322-05	562	printed-bow-tie-jumpsuit	2	Changed category, description and collections.	21	2
45	2016-02-04 13:50:12.917-05	554	midnight-blue-lace-jumpsuit	2	Changed category and description.	21	2
46	2016-02-04 13:50:23.268-05	548	black-lace-full-jumpsuit	2	Changed category and description.	21	2
47	2016-02-04 13:50:36.524-05	523	black-jumpsuit	2	Changed category, description and collections.	21	2
48	2016-02-04 13:56:17.153-05	4	Jump Suit	3		39	2
49	2016-02-04 14:10:57.562-05	26	JumpSuit	3		39	2
50	2016-02-04 14:11:20.11-05	574	shimmer-copper-jumpsuit	2	Changed category.	21	2
51	2016-02-04 14:11:44.954-05	554	midnight-blue-lace-jumpsuit	2	Changed category.	21	2
52	2016-02-04 14:11:54.722-05	548	black-lace-full-jumpsuit	2	Changed category.	21	2
53	2016-02-10 14:56:01.830024-05	15	RISHI PODDAR (asdf)	3		11	2
54	2016-02-10 14:56:01.840011-05	13	FB TEST  ()	3		11	2
55	2016-02-10 14:56:01.842235-05	10	Rishi Poddar (rishipoddar.s@gmail.com)	3		11	2
56	2016-02-12 15:13:14.595284-05	16	Rishi Poddar (rishipoddar.s@gmail.com)	3		11	2
57	2016-02-12 17:14:57.8-05	54	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
58	2016-02-12 17:14:58.004-05	53	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
59	2016-02-12 17:14:58.195-05	52	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
60	2016-02-12 17:14:58.385-05	51	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
61	2016-02-12 17:14:58.577-05	50	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
62	2016-02-12 17:14:58.768-05	49	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
63	2016-02-12 17:14:58.957-05	48	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
64	2016-02-12 17:14:59.149-05	47	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
65	2016-02-12 17:14:59.338-05	46	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
66	2016-02-12 17:14:59.53-05	45	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
67	2016-02-12 17:14:59.721-05	44	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
68	2016-02-12 17:14:59.913-05	43	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
69	2016-02-12 17:15:00.105-05	38	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
70	2016-02-12 17:15:00.299-05	37	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
71	2016-02-12 17:15:00.488-05	36	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
72	2016-02-12 17:15:00.683-05	35	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
73	2016-02-12 17:15:00.879-05	34	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
74	2016-02-12 17:15:01.071-05	33	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
75	2016-02-12 17:15:01.262-05	32	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
76	2016-02-12 17:15:01.464-05	31	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
77	2016-02-12 17:15:01.655-05	30	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
78	2016-02-12 17:15:01.847-05	29	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
79	2016-02-12 17:15:02.037-05	28	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
80	2016-02-12 17:15:02.229-05	27	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
81	2016-02-12 17:15:02.421-05	26	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout	3		31	2
82	2016-02-12 17:17:48.63-05	56	RK 80, Saraswathi Textiles, NMS Compound	1	Added.	31	2
83	2016-02-12 17:18:50.881-05	57	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout,	1	Added.	31	2
84	2016-02-12 17:33:10.71-05	52	52None 2016-02-03 21:05:33.208000+00:00	3		32	2
85	2016-02-12 17:33:10.908-05	51	51None 2016-02-03 21:01:58.971000+00:00	3		32	2
86	2016-02-12 17:33:11.102-05	50	50None 2016-02-03 20:55:51.686000+00:00	3		32	2
87	2016-02-12 17:33:11.296-05	49	49None 2016-02-03 20:55:05.019000+00:00	3		32	2
88	2016-02-12 17:33:11.488-05	48	48None 2016-02-03 20:53:46.083000+00:00	3		32	2
89	2016-02-12 17:33:11.682-05	47	47None 2016-02-03 20:47:53.601000+00:00	3		32	2
90	2016-02-12 17:33:11.874-05	46	46None 2016-02-03 20:46:55.417000+00:00	3		32	2
91	2016-02-12 17:33:12.066-05	45	45None 2016-02-03 20:39:16.041000+00:00	3		32	2
92	2016-02-12 17:33:12.261-05	44	44None 2016-02-03 20:38:32.900000+00:00	3		32	2
93	2016-02-12 17:33:12.452-05	43	43None 2016-02-03 20:22:06.156000+00:00	3		32	2
94	2016-02-12 17:33:12.644-05	42	42None 2016-02-03 20:21:44.089000+00:00	3		32	2
95	2016-02-12 17:33:12.837-05	41	41None 2016-02-03 20:15:30.597000+00:00	3		32	2
96	2016-02-12 17:33:13.03-05	36	36None 2016-02-03 18:47:19.881000+00:00	3		32	2
97	2016-02-12 17:33:13.223-05	35	35None 2016-02-03 18:23:52.110000+00:00	3		32	2
98	2016-02-12 17:33:13.417-05	34	34None 2016-02-03 18:23:04.137000+00:00	3		32	2
99	2016-02-12 17:33:13.608-05	33	33None 2016-02-03 18:12:47.325000+00:00	3		32	2
100	2016-02-12 17:33:13.8-05	32	32None 2016-02-03 18:11:22.649000+00:00	3		32	2
101	2016-02-12 17:33:14.012-05	31	31None 2016-02-03 18:10:05.464000+00:00	3		32	2
102	2016-02-12 17:33:14.214-05	30	30None 2016-02-03 18:08:59.792000+00:00	3		32	2
103	2016-02-12 17:33:14.412-05	29	29None 2016-02-03 18:08:59.597000+00:00	3		32	2
104	2016-02-12 17:33:14.606-05	28	28None 2016-02-03 18:08:09.273000+00:00	3		32	2
105	2016-02-12 17:33:14.796-05	27	27None 2016-02-03 17:39:51.500000+00:00	3		32	2
106	2016-02-12 17:33:14.991-05	26	26None 2016-02-03 17:38:46.032000+00:00	3		32	2
107	2016-02-12 17:33:15.182-05	25	25None 2016-02-03 17:34:31.807000+00:00	3		32	2
108	2016-02-12 17:37:51.676-05	53	53Rishi Poddar (rishipoddar.s@gmail.com) 2016-02-12 22:37:51.610000+00:00	1	Added.	32	2
109	2016-02-12 17:38:28.592-05	42	53Rishi Poddar (rishipoddar.s@gmail.com) 2016-02-12 22:37:51.610000+00:00 maroon-brocade-waistcoat	2	Changed order, product and from_date.	33	2
110	2016-02-12 17:38:43.584-05	43	53Rishi Poddar (rishipoddar.s@gmail.com) 2016-02-12 22:37:51.610000+00:00 shoulder-shimmer-black-dress	1	Added.	33	2
111	2016-03-22 03:10:48.328757-04	619	notched-lapel-tuxedo	2	Changed description and collections.	21	3
112	2016-03-24 03:45:54.006947-04	42	The Dress Bank	2	Changed handle.	13	3
113	2016-03-24 03:46:03.825979-04	77	JOHN MILLER	2	Changed handle.	13	3
114	2016-03-24 03:46:11.267128-04	76	MANOVIRAJ KHOSLA	2	Changed handle.	13	3
115	2016-03-24 03:46:20.970528-04	75	SANJAY & SHAMMY	2	Changed handle.	13	3
116	2016-03-24 03:46:28.869732-04	74	LATIN QUARTERS	2	Changed handle.	13	3
117	2016-03-24 03:46:29.087523-04	74	LATIN QUARTERS	2	No fields changed.	13	3
118	2016-03-24 03:46:35.719577-04	73	AND	2	No fields changed.	13	3
119	2016-03-24 03:46:40.865447-04	72	ELLE	2	No fields changed.	13	3
120	2016-03-24 03:46:47.725014-04	71	ALLEN SOLLY	2	Changed handle.	13	3
121	2016-03-24 03:46:56.99211-04	70	AMEENA'S ATTIRE	2	Changed handle.	13	3
122	2016-03-24 03:47:09.585319-04	70	AMEENA ATTIRE	2	Changed name and handle.	13	3
123	2016-03-24 03:47:15.540589-04	69	MANGO	2	No fields changed.	13	3
124	2016-03-24 03:47:35.531025-04	55	CONCAVE	2	Changed name and handle.	13	3
125	2016-03-24 03:47:50.405489-04	52	DMuse	2	Changed name and handle.	13	3
126	2016-03-24 03:48:11.454981-04	50	LONDON TIMES	2	Changed handle.	13	3
127	2016-03-24 03:48:23.812477-04	49	KUDOZ STUDIO	2	Changed handle.	13	3
128	2016-03-24 03:48:35.812512-04	47	FOREVER NEW	2	Changed handle.	13	3
129	2016-03-24 03:48:47.56229-04	46	VERO MODA	2	Changed handle.	13	3
130	2016-03-24 03:49:24.057246-04	42	The Dress Bank	2	No fields changed.	13	3
131	2016-03-24 03:49:35.654913-04	41	U.S. POLO ASSN.	2	Changed handle.	13	3
132	2016-03-24 03:49:46.623021-04	40	Mini Singh	2	Changed handle.	13	3
133	2016-03-24 03:49:59.295779-04	62	FOREVER21	2	No fields changed.	13	3
134	2016-03-24 03:53:15.712334-04	42	Dress Bank	2	Changed name and handle.	13	3
135	2016-03-24 03:53:21.533278-04	66	SOUCIKA	2	No fields changed.	13	3
136	2016-03-24 03:53:31.696477-04	42	Dress Bank	2	No fields changed.	13	3
137	2016-03-24 04:47:48.837499-04	33	Ethnic Dress - Lehenga	3		39	3
138	2016-03-24 04:48:04.611099-04	31	Ethnic Dress - Anarkali	3		39	3
139	2016-03-24 04:48:41.935227-04	34	Kurta Sets	1	Added.	39	3
140	2016-03-24 04:49:13.211931-04	35	Crop Top & Skirt	1	Added.	39	3
141	2016-03-24 04:49:31.715717-04	36	Sarees	1	Added.	39	3
142	2016-03-24 04:49:51.878011-04	37	Saree Gown	1	Added.	39	3
143	2016-03-24 04:50:37.478689-04	38	Indo Western Gowns	1	Added.	39	3
144	2016-03-24 04:51:34.112606-04	39	Wedding Gown	1	Added.	39	3
145	2016-03-24 04:52:18.161059-04	21	Salwar Suit	3		39	3
146	2016-03-24 04:52:18.164452-04	20	Georgette Suit	3		39	3
147	2016-03-24 04:52:18.166547-04	19	Designer Suit	3		39	3
148	2016-03-24 04:52:18.168262-04	17	Anarkali Suit	3		39	3
149	2016-03-24 04:52:18.169896-04	16	Designer Party Gown/Full Suit	3		39	3
150	2016-03-24 04:52:18.173437-04	15	INDO WESTERN SUIT	3		39	3
151	2016-03-24 04:52:18.175258-04	14	Zardosi Embroidery Suit	3		39	3
152	2016-03-24 04:52:27.591391-04	9		3		39	3
153	2016-03-24 04:54:56.356146-04	32	Asymmetic Dress	3		39	3
154	2016-03-24 04:54:56.361695-04	30	Maxi Dress - Padded	3		39	3
155	2016-03-24 04:54:56.363617-04	29	Wrap Dress	3		39	3
156	2016-03-24 04:54:56.365206-04	28	Bodycon Dress	3		39	3
157	2016-03-24 04:54:56.366807-04	27	Peplum Dress	3		39	3
158	2016-03-24 04:54:56.368317-04	25	Pegged Dress	3		39	3
159	2016-03-24 04:54:56.369814-04	24	Slip Dress	3		39	3
160	2016-03-24 04:54:56.371395-04	23	BodyCon Dress	3		39	3
161	2016-03-24 04:54:56.373102-04	22	Designer Party Gown	3		39	3
162	2016-03-24 04:54:56.374614-04	18	Zardosi Embroidered Suit	3		39	3
163	2016-03-24 04:54:56.376237-04	13	Peplum	3		39	3
164	2016-03-24 04:55:28.930502-04	8	Sheath Dress	3		39	3
165	2016-03-24 04:55:28.934241-04	7	Pencil Skirt	3		39	3
166	2016-03-24 04:55:28.935918-04	5	Shift Dress	3		39	3
167	2016-03-24 04:55:28.937371-04	2	Shift Dress	3		39	3
168	2016-03-24 04:55:28.938874-04	1	Skater Dress	3		39	3
169	2016-03-24 04:55:53.87931-04	38	Indo Western Gown	2	Changed name and handle.	39	3
170	2016-03-24 04:56:19.012631-04	12	Lehenga	2	Changed handle.	39	3
171	2016-03-24 04:56:36.689339-04	11	Maxi Dress	2	Changed handle, lead_time and lag_time.	39	3
172	2016-03-24 04:56:46.427563-04	10	Anarkali	2	Changed handle.	39	3
173	2016-03-24 04:56:57.706929-04	6	Jacket	2	Changed lead_time and lag_time.	39	3
174	2016-03-24 04:57:07.315002-04	3	Jumpsuit	2	Changed lead_time and lag_time.	39	3
175	2016-03-24 04:57:51.250577-04	40	skirt	1	Added.	39	3
176	2016-03-24 04:58:08.744506-04	40	Skirt	2	Changed name.	39	3
177	2016-03-24 04:58:23.014653-04	41	Formals	1	Added.	39	3
178	2016-03-24 04:58:34.775957-04	42	Dress	1	Added.	39	3
179	2016-03-24 04:58:50.981314-04	43	Gown	1	Added.	39	3
180	2016-03-24 05:01:16.248647-04	44	Sherwani	1	Added.	39	3
181	2016-03-24 05:01:35.834752-04	45	Kurta Pyjama	1	Added.	39	3
182	2016-03-24 05:01:55.316232-04	46	Indo Western Suit	1	Added.	39	3
183	2016-03-24 05:02:10.797804-04	47	Blazer	1	Added.	39	3
184	2016-03-24 05:02:25.356117-04	48	Full Suit	1	Added.	39	3
185	2016-03-24 05:03:10.133216-04	49	Waist Coat	1	Added.	39	3
186	2016-03-24 05:03:31.181778-04	50	3 Piece Suit	1	Added.	39	3
187	2016-03-24 05:04:37.259331-04	51	Ethnic Jacket	1	Added.	39	3
188	2016-03-24 05:07:05.294585-04	52	Tuxedo	1	Added.	39	3
189	2016-03-24 05:07:41.429098-04	619	notched-lapel-tuxedo	2	Changed category.	21	3
190	2016-03-24 05:07:57.087365-04	618	broad-shawl-lapel-tuxedo	2	Changed category and description.	21	3
191	2016-03-24 05:08:12.604771-04	617	must-have-black-blazer	2	Changed category, description and fabric.	21	3
192	2016-03-24 05:08:47.572738-04	616	shawl-collar-lapel-blazer	2	Changed category and description.	21	3
193	2016-03-24 05:09:05.106198-04	615	classic-black-band-gala	2	Changed category and description.	21	3
194	2016-03-24 05:09:46.180003-04	614	classic-black-bandi	2	Changed category and description.	21	3
195	2016-03-24 05:09:58.810741-04	619	notched-lapel-tuxedo	2	Changed collections.	21	3
196	2016-03-24 05:10:06.742925-04	618	broad-shawl-lapel-tuxedo	2	No fields changed.	21	3
197	2016-03-24 05:10:19.548237-04	617	must-have-black-blazer	2	No fields changed.	21	3
198	2016-03-24 05:10:28.686624-04	616	shawl-collar-lapel-blazer	2	No fields changed.	21	3
199	2016-03-24 05:10:37.848864-04	615	classic-black-band-gala	2	No fields changed.	21	3
200	2016-03-24 05:10:50.824242-04	614	classic-black-bandi	2	No fields changed.	21	3
201	2016-03-24 05:11:10.664315-04	613	royal-black-blazer-with-grey-border	2	Changed category and description.	21	3
202	2016-03-24 05:12:12.475924-04	612	grey-waistcoat	2	Changed category and description.	21	3
203	2016-03-24 05:12:35.681969-04	611	purple-laser-cut-bandi	2	Changed category and description.	21	3
204	2016-03-24 05:12:56.390932-04	610	dark-maroon-brocade-bandi	2	Changed category and description.	21	3
205	2016-03-24 05:13:31.983751-04	609	beige-brocade-bandi	2	Changed category and description.	21	3
206	2016-03-24 05:13:42.507352-04	608	green-brocade-bandi	2	Changed category and description.	21	3
207	2016-03-24 05:14:03.49575-04	607	maroon-brocade-waistcoat	2	Changed category and description.	21	3
208	2016-03-24 05:14:33.089549-04	606	royal-blue-party-wear-band-gala	2	Changed category and description.	21	3
209	2016-03-24 05:14:56.045474-04	605	black-maroon-jodhpuri-jacket	2	Changed category and description.	21	3
210	2016-03-24 05:15:51.419131-04	604	floral-snowwhite-dress	2	Changed category and description.	21	3
211	2016-03-24 05:16:32.228179-04	603	printed-brownish-maroon-blazer	2	Changed category and description.	21	3
212	2016-03-24 06:52:36.831765-04	52	Tuxedo	2	No fields changed.	39	3
213	2016-03-24 07:05:27.70652-04	44	Sherwani	3		39	3
214	2016-03-24 07:15:32.82194-04	55	Bandi	1	Added.	39	3
215	2016-03-24 07:25:20.693168-04	35	Crop Top & Skirt	3		39	3
216	2016-03-24 08:44:47.102491-04	474	green-blue-saree	2	Changed category.	21	3
217	2016-03-24 08:45:18.943273-04	565	draped-saree-dress	2	Changed category, description and style.	21	3
218	2016-03-24 08:45:34.76006-04	473	embroidered-green-saree	2	Changed category and style.	21	3
219	2016-03-24 08:45:45.268975-04	472	pink-embroidered-saree	2	Changed category.	21	3
220	2016-03-24 08:45:55.88758-04	471	golden-shimmer-saree	2	Changed category.	21	3
221	2016-03-24 09:06:10.956029-04	588	embroidded-pink-anarkali	2	Changed category, description and style.	21	3
222	2016-03-24 09:06:29.778218-04	572	gold-sequinned-blue-anarkali	2	Changed category, description and style.	21	3
223	2016-03-24 11:32:53.884593-04	565	draped-saree-dress	2	No fields changed.	21	3
224	2016-03-24 11:34:12.420536-04	37	Saree Gown	2	No fields changed.	39	3
225	2016-03-24 11:36:38.942126-04	565	draped-saree-dress	2	Changed collections.	21	3
226	2016-03-24 11:58:10.918808-04	203	JA038A	2	Changed size.	41	3
227	2016-03-24 11:58:23.118403-04	203	JA038A	2	Changed size.	41	3
228	2016-03-24 11:58:47.405839-04	202	JA037	2	Changed size.	41	3
229	2016-03-24 11:59:02.850367-04	201	JA094B	2	Changed size.	41	3
230	2016-04-06 04:52:04.177324-04	1	CK15	1	Added.	42	3
231	2016-04-06 04:53:47.701167-04	2	CANDID50	1	Added.	42	3
232	2016-04-06 15:34:13.429924-04	3	CANDID	1	Added.	42	3
233	2016-04-08 07:07:29.362599-04	20	varsha baarisha (varsha@gmail.com)	3		11	3
234	2016-04-08 07:07:29.367994-04	19	Devesh Verma (dvshverma@gmail.com)	3		11	3
235	2016-04-08 07:07:29.370256-04	18	Shweta Poddar (shwetapoddar_s@yahoo.co.in)	3		11	3
236	2016-04-09 09:25:55.661281-04	22	Shweta Poddar (shwetapoddar_s@yahoo.co.in)	3		11	3
237	2016-04-09 09:26:28.669764-04	58	Shweta 202, Raju Mansion 20-K Chabdra reddy layout	3		31	3
238	2016-04-09 09:26:28.672151-04	42	Rahul sdfjalk dfj jkdsjfkl	3		31	3
239	2016-04-09 09:26:28.673697-04	41	rahul sdfakjl ksdjfslkj	3		31	3
240	2016-04-09 09:26:28.675118-04	40	rahul sdfakjl ksdjfslkj	3		31	3
241	2016-04-09 09:26:28.676679-04	39	rahul sdfakjl ksdjfslkj	3		31	3
242	2016-04-12 05:06:01.745065-04	59	Shweta 202, Raju Mansion 	3		31	3
243	2016-04-12 05:06:19.452944-04	23	Shweta Poddar (shwetapoddar_s@yahoo.co.in)	3		11	3
244	2016-04-12 07:36:27.906841-04	61	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
245	2016-04-12 07:36:27.911416-04	60	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
246	2016-04-16 10:12:49.965251-04	5	Jaune	1	Added.	12	3
247	2016-04-16 10:13:09.999472-04	3	CK Store	2	No fields changed.	12	3
248	2016-04-16 10:28:54.520205-04	4	TheDressBank	2	Changed name.	12	3
249	2016-04-16 10:29:03.57436-04	3	CKStore	2	Changed name.	12	3
250	2016-04-19 07:43:47.529377-04	490	blue-blazer	3		21	3
251	2016-04-19 07:43:47.534592-04	489	grey-3-piece-suit	3		21	3
252	2016-04-19 07:43:47.536317-04	488	embroidered-cream-set	3		21	3
253	2016-04-19 07:43:47.538484-04	487	threaded-cream-set	3		21	3
254	2016-04-19 07:43:47.539941-04	486	purple-embroidered-print-set	3		21	3
255	2016-04-19 07:43:47.541484-04	485	embroidered-red-suit	3		21	3
256	2016-04-19 07:43:47.542886-04	484	printed-red-full-set	3		21	3
257	2016-04-19 07:43:47.544305-04	483	heavy-red-full-set	3		21	3
258	2016-04-19 07:43:47.545694-04	482	shiny-blue-full-set	3		21	3
259	2016-04-19 07:43:47.547088-04	481	sky-blue-full-set	3		21	3
260	2016-04-19 07:43:47.549213-04	480	black-blazer	3		21	3
261	2016-04-19 07:43:47.550654-04	479	blue-sheath-dress	3		21	3
262	2016-04-19 07:43:47.552047-04	478	sequinned-black-jumpsuit	3		21	3
263	2016-04-19 07:43:47.553427-04	477	sky-blue-jumpsuit	3		21	3
264	2016-04-20 15:04:28.320495-04	3	CKStore	2	No fields changed.	12	3
265	2016-04-20 15:05:18.399737-04	3	CKStore	2	No fields changed.	12	3
266	2016-04-20 15:19:59.357648-04	1171	notched-lapel-tuxedo	2	Changed vendor, brand, category, ideal_for, collections and style.	21	3
267	2016-04-21 12:49:09.602121-04	2768	notched-lapel-tuxedo	2	Changed brand and style.	21	3
268	2016-04-21 12:50:51.369006-04	2767	broad-shawl-lapel-tuxedo	2	Changed brand and style.	21	3
269	2016-04-22 08:14:39.731067-04	961	MKMTX03A003	2	Changed size, color and shoulder_size.	41	3
270	2016-04-22 08:15:56.027502-04	960	MWMK23	2	Changed color and shoulder_size.	41	3
271	2016-04-22 08:16:27.055756-04	959	MWBB06	2	Changed size, color and shoulder_size.	41	3
272	2016-04-22 08:17:03.698618-04	958	MWMK02	2	Changed size, color and shoulder_size.	41	3
273	2016-04-22 08:17:34.675491-04	957	MWMK18	2	Changed size, color and shoulder_size.	41	3
274	2016-04-22 08:18:11.644685-04	956	MWMK17	2	Changed color and shoulder_size.	41	3
275	2016-04-22 08:18:37.473453-04	955	MWSS15	2	Changed color and shoulder_size.	41	3
276	2016-04-22 08:19:03.721462-04	954	MWSS11	2	Changed color and shoulder_size.	41	3
277	2016-04-22 08:19:36.358948-04	953	MKMWC03A010	2	Changed color and shoulder_size.	41	3
278	2016-04-22 08:19:58.594706-04	952	MWMK04	2	Changed color and shoulder_size.	41	3
279	2016-04-22 08:20:26.036138-04	951	MWMK19	2	Changed size, color and shoulder_size.	41	3
280	2016-04-22 08:20:55.883953-04	950	MWSS14	2	Changed color and shoulder_size.	41	3
281	2016-04-22 08:21:26.650351-04	949	MWSS12	2	Changed color and shoulder_size.	41	3
282	2016-04-22 08:21:50.409236-04	948	MWSS03	2	Changed color and shoulder_size.	41	3
283	2016-04-22 08:22:15.098687-04	947	MWSS13	2	Changed color and shoulder_size.	41	3
284	2016-04-22 08:23:23.336458-04	946	WWVM17	2	Changed size and color.	41	3
285	2016-04-22 08:23:57.486542-04	945	MWSS05	2	Changed color and shoulder_size.	41	3
286	2016-04-22 08:24:26.411926-04	944	MWJM24	2	Changed color and shoulder_size.	41	3
287	2016-04-22 08:25:12.630448-04	943	WWAS14	2	Changed size and color.	41	3
288	2016-04-22 08:25:55.427173-04	942	MWMK01	2	Changed size, color and shoulder_size.	41	3
289	2016-04-22 08:26:43.022677-04	941	MKMTX04A005	2	Changed color and shoulder_size.	41	3
290	2016-04-22 08:26:59.53107-04	940	SSMWC03A013	2	Changed color and shoulder_size.	41	3
291	2016-04-22 08:27:26.27176-04	939	WWAN13	2	Changed color.	41	3
292	2016-04-22 08:27:56.024499-04	938	WWAR05	2	Changed color.	41	3
293	2016-04-22 08:28:16.47537-04	937	WWAN22	2	Changed color.	41	3
294	2016-04-22 08:28:41.802657-04	936	WWLQ01	2	Changed size and color.	41	3
295	2016-04-22 08:35:35.587147-04	935	SOFLD15A065	2	Changed size, color, bust_size, waist_size and hip_size.	41	3
296	2016-04-22 08:41:40.721297-04	934	WWEL15	2	Changed color.	41	3
297	2016-04-22 08:42:07.397488-04	933	WWLQ03	2	Changed size and color.	41	3
298	2016-04-22 08:44:38.090383-04	934	WWEL15	2	No fields changed.	41	3
299	2016-04-22 08:46:26.179361-04	932	WIAA06	2	Changed size, color, bust_size, waist_size and hip_size.	41	3
300	2016-04-22 08:49:08.876712-04	932	WIAA06	2	No fields changed.	41	3
301	2016-04-22 08:50:17.99205-04	931	PSFLD15A063	2	Changed color.	41	3
302	2016-04-22 08:55:07.955856-04	930	KUFAN15A062	2	Changed size, color, bust_size, waist_size and hip_size.	41	3
303	2016-04-22 08:56:11.125303-04	929	WWAN06	2	Changed size and color.	41	3
304	2016-04-22 08:59:01.686207-04	928	KUFLD15A061	2	Changed size, color, bust_size, waist_size and hip_size.	41	3
305	2016-04-22 09:01:38.921471-04	928	KUFLD15A061	2	No fields changed.	41	3
306	2016-04-22 09:02:09.711003-04	927	WWEL07	2	Changed color.	41	3
307	2016-04-22 09:05:05.94215-04	925	WWVH26	2	Changed color.	41	3
308	2016-04-22 09:07:08.489233-04	923	WWUS23	2	Changed color.	41	3
309	2016-04-22 09:07:34.803895-04	921	WWEL10	2	Changed size and color.	41	3
310	2016-04-22 09:11:51.254578-04	920	WISO01	2	Changed size, color, bust_size, waist_size and hip_size.	41	3
311	2016-04-22 09:12:22.306933-04	919	WWAS19	2	Changed color.	41	3
312	2016-04-22 09:13:06.318133-04	917	WWVM24	2	Changed color and length.	41	3
313	2016-04-22 09:14:19.732978-04	916	WWMA21	2	Changed color and length.	41	3
314	2016-04-22 09:16:52.258178-04	975	WWMA21A	1	Added.	41	3
315	2016-04-22 09:16:57.32049-04	916	WWMA21	2	No fields changed.	41	3
316	2016-04-22 09:17:26.090711-04	915	WWVM02	2	Changed size, color and length.	41	3
317	2016-04-22 09:20:34.355736-04	914	WIKU07	2	Changed size, color, bust_size, waist_size and hip_size.	41	3
318	2016-04-22 09:21:06.319518-04	913	WWHP20	2	Changed color and length.	41	3
319	2016-04-22 09:24:33.055037-04	912	KUFAN15A054	2	Changed size, color, length, bust_size, waist_size and hip_size.	41	3
320	2016-04-22 09:24:54.727247-04	911	WW1011	2	Changed size, color and length.	41	3
321	2016-04-22 09:27:46.879581-04	910	SOFLD15A053	2	Changed size, color, length, bust_size, waist_size and hip_size.	41	3
322	2016-04-22 09:32:30.517714-04	909	SOFLD15A066	2	Changed size, color, length, bust_size, waist_size and hip_size.	41	3
323	2016-04-22 09:33:05.127229-04	908	WWZR12	2	Changed size, color and length.	41	3
324	2016-04-22 09:37:06.103829-04	907	WISO04	2	Changed size, color, length, bust_size, waist_size and hip_size.	41	3
325	2016-04-22 09:38:42.807049-04	906	SOFLD15A051	2	Changed size, color, length, bust_size, waist_size and hip_size.	41	3
326	2016-04-22 09:40:52.237729-04	906	SOFLD15A051	2	No fields changed.	41	3
327	2016-04-22 09:43:32.937795-04	905	WWZA27	2	Changed size, color and length.	41	3
328	2016-04-22 09:44:53.186708-04	904	WWWT18	2	Changed size and color.	41	3
329	2016-04-22 09:45:59.059585-04	904	WWWT18	2	No fields changed.	41	3
330	2016-04-22 09:46:55.667101-04	903	WWCM09	2	Changed size, color and length.	41	3
331	2016-04-22 09:47:47.057685-04	902	WWVM16	2	Changed size, color and length.	41	3
332	2016-04-22 09:48:36.163118-04	901	WWZR04	2	Changed size and color.	41	3
333	2016-04-23 05:07:02.804749-04	900	WWFL25	2	Changed color.	41	3
334	2016-04-23 05:13:03.878698-04	898	WIKU02	2	Changed size, color, length, bust_size, waist_size and hip_size.	41	3
335	2016-04-23 05:46:34.740661-04	898	WIKU02	2	No fields changed.	41	3
336	2016-04-23 05:48:10.117093-04	897	WWZR08	2	Changed color and length.	41	3
337	2016-04-23 05:50:01.176788-04	896	JA037	2	Changed color.	41	3
338	2016-04-23 05:51:24.149236-04	895	JA092	2	Changed color.	41	3
339	2016-04-23 05:52:36.777975-04	894	JA049	2	Changed color.	41	3
340	2016-04-23 05:54:05.098429-04	893	CK18	2	Changed size and color.	41	3
341	2016-04-23 05:55:13.446201-04	892	CK13	2	Changed color.	41	3
342	2016-04-23 05:56:04.725065-04	891	CK07	2	Changed color.	41	3
343	2016-04-23 05:57:36.780874-04	890	CK10	2	Changed color.	41	3
344	2016-04-23 05:58:38.046724-04	889	CK03	2	Changed color.	41	3
345	2016-04-23 05:59:55.431412-04	888	CK15	2	Changed color.	41	3
346	2016-04-23 06:01:52.548088-04	887	JA074	2	Changed color.	41	3
347	2016-04-23 06:03:10.231615-04	886	JA078	2	Changed color.	41	3
348	2016-04-23 06:04:07.421043-04	885	JA047	2	Changed color.	41	3
349	2016-04-23 06:05:23.320527-04	884	JA057	2	Changed color.	41	3
350	2016-04-23 06:06:26.643026-04	883	CK11	2	Changed color.	41	3
351	2016-04-23 06:07:30.987379-04	882	JA086	2	Changed color.	41	3
352	2016-04-23 06:08:35.249499-04	881	CK12	2	Changed color.	41	3
353	2016-04-23 06:09:38.334629-04	880	JA041	2	Changed color.	41	3
354	2016-04-23 06:11:14.412778-04	879	JA024	2	Changed color.	41	3
355	2016-04-23 06:12:49.755572-04	878	JA026	2	Changed color.	41	3
356	2016-04-23 06:13:48.70487-04	877	CK20	2	Changed color.	41	3
357	2016-04-23 06:15:00.376546-04	876	JA068	2	Changed color.	41	3
358	2016-04-23 06:16:19.703901-04	875	JA080	2	Changed color.	41	3
359	2016-04-23 06:17:35.312802-04	874	JA013	2	Changed color.	41	3
360	2016-04-23 06:18:39.357896-04	873	JA008	2	Changed color.	41	3
361	2016-04-23 06:19:43.075746-04	872	CK09	2	Changed color.	41	3
362	2016-04-23 06:20:47.321567-04	871	CK04	2	Changed color.	41	3
363	2016-04-23 06:22:05.300815-04	870	JA039	2	Changed color.	41	3
364	2016-04-23 06:23:02.402742-04	869	JA016	2	Changed color.	41	3
365	2016-04-23 06:23:42.685587-04	868	JA088	2	Changed color.	41	3
366	2016-04-23 06:25:09.165104-04	861	JA030	2	Changed color.	41	3
367	2016-04-23 06:26:07.177495-04	860	JA089	2	Changed color.	41	3
368	2016-04-23 06:26:56.557517-04	859	JA059	2	Changed color.	41	3
369	2016-04-23 06:28:14.201361-04	858	JA003	2	Changed color.	41	3
370	2016-04-23 06:29:25.456477-04	857	JA019	2	Changed color.	41	3
371	2016-04-23 06:30:45.130919-04	856	JA043	2	Changed color.	41	3
372	2016-04-23 06:32:04.328704-04	855	JA095	2	Changed color.	41	3
373	2016-04-23 07:05:16.40141-04	854	CK16	2	Changed color.	41	3
374	2016-04-23 07:06:53.30718-04	853	CK60	2	Changed sku and color.	41	3
375	2016-04-23 07:09:29.734319-04	852	CK05	2	Changed sku and color.	41	3
376	2016-04-23 07:11:09.687167-04	851	CK30	2	Changed size and color.	41	3
377	2016-04-23 07:12:32.247861-04	850	MWAR07	2	Changed color, shoulder_size and waist_size.	41	3
378	2016-04-23 07:12:50.353064-04	849	MWAR20	2	Changed color, shoulder_size and waist_size.	41	3
379	2016-04-23 07:13:21.556651-04	848	MWAR22	2	Changed size, color, shoulder_size and waist_size.	41	3
380	2016-04-23 07:13:43.186442-04	847	MWAR09	2	Changed color, shoulder_size and waist_size.	41	3
381	2016-04-23 07:14:22.647486-04	846	MWAR08	2	Changed size, color, shoulder_size and waist_size.	41	3
382	2016-04-23 07:15:07.1884-04	845	MWAR10	2	Changed color, shoulder_size and waist_size.	41	3
383	2016-04-23 07:16:21.660875-04	844	DB007	2	Changed color, shoulder_size and waist_size.	41	3
384	2016-04-23 07:18:24.712474-04	843	MWAR16	2	Changed size, color and shoulder_size.	41	3
385	2016-04-23 07:18:43.688613-04	842	MWAR21	2	Changed color and shoulder_size.	41	3
386	2016-04-23 07:19:36.189871-04	841	DB050	2	Changed size, color, shoulder_size and waist_size.	41	3
387	2016-04-23 07:20:17.515464-04	840	DB010	2	Changed size, color, shoulder_size and waist_size.	41	3
388	2016-04-23 07:20:39.308956-04	839	DB015	2	Changed color, shoulder_size and waist_size.	41	3
389	2016-04-23 07:21:29.115044-04	838	DB022	2	Changed size, color, shoulder_size and waist_size.	41	3
390	2016-04-23 07:22:09.423823-04	837	DB019	2	Changed size, color and shoulder_size.	41	3
391	2016-04-23 07:23:11.702912-04	836	DB001	2	Changed color and shoulder_size.	41	3
392	2016-04-23 07:24:02.830283-04	835	DB053	2	Changed color, shoulder_size and waist_size.	41	3
393	2016-04-23 07:24:24.941043-04	837	DB019	2	Changed waist_size.	41	3
394	2016-04-23 07:49:31.184987-04	834	DB049	2	Changed size, color, shoulder_size and waist_size.	41	3
395	2016-04-23 07:50:29.849031-04	836	DB001	2	Changed size, shoulder_size and waist_size.	41	3
396	2016-04-23 07:51:03.115651-04	835	DB053	2	Changed size and shoulder_size.	41	3
397	2016-04-23 07:51:26.516802-04	834	DB049	2	Changed color.	41	3
398	2016-04-23 07:51:57.793951-04	833	DB006	2	Changed size, color, shoulder_size and waist_size.	41	3
399	2016-04-23 08:08:27.57844-04	832	MWAR25	2	Changed color and shoulder_size.	41	3
400	2016-04-23 08:09:09.183301-04	831	DB011	2	Changed size, color, shoulder_size and waist_size.	41	3
401	2016-04-23 08:09:38.927544-04	830	MWAR26	2	Changed color and shoulder_size.	41	3
402	2016-04-23 08:10:17.588313-04	829	DB045	2	Changed size, color, shoulder_size and waist_size.	41	3
403	2016-04-23 08:10:56.523658-04	828	DB024	2	Changed size, color, shoulder_size and waist_size.	41	3
404	2016-04-23 08:12:15.474302-04	827	DB068	2	Changed color, shoulder_size and waist_size.	41	3
405	2016-04-23 08:12:46.638206-04	826	DB056	2	Changed size, color, shoulder_size and waist_size.	41	3
406	2016-04-23 08:13:17.991038-04	825	DB029	2	Changed size, color, shoulder_size and waist_size.	41	3
407	2016-04-23 08:15:13.839282-04	824	DB055	2	Changed size, color and shoulder_size.	41	3
408	2016-04-23 08:16:53.089758-04	823	DB047	2	Changed size, color and shoulder_size.	41	3
409	2016-04-23 08:17:31.71127-04	822	DB062	2	Changed size, color and shoulder_size.	41	3
410	2016-04-23 08:18:18.817781-04	821	DB065	2	Changed color, shoulder_size and waist_size.	41	3
411	2016-04-23 08:18:45.39799-04	820	DB005	2	Changed size, color, shoulder_size and waist_size.	41	3
412	2016-04-23 08:19:19.41694-04	819	WWAR30	2	Changed size, color and length.	41	3
413	2016-04-23 08:19:45.484786-04	818	DB060	2	Changed color.	41	3
414	2016-04-23 08:20:14.303861-04	817	WWAR37	2	Changed size and color.	41	3
415	2016-04-23 08:21:06.922981-04	816	DB051	2	Changed color.	41	3
416	2016-04-23 08:21:37.525658-04	815	DB073	2	Changed color.	41	3
417	2016-04-23 08:27:25.915775-04	814	DB042	2	Changed color.	41	3
418	2016-04-23 08:29:28.785223-04	813	DB025	2	Changed size and color.	41	3
419	2016-04-23 08:31:27.121372-04	812	DB054	2	Changed size and color.	41	3
420	2016-04-23 08:33:22.401484-04	811	DB041	2	Changed size and color.	41	3
421	2016-04-23 08:37:14.917202-04	810	DB036	2	Changed color, bust_size and waist_size.	41	3
422	2016-04-23 08:38:23.339131-04	809	DB008	2	Changed color, bust_size and waist_size.	41	3
423	2016-04-23 08:41:15.171859-04	808	DB030	2	Changed color, bust_size and waist_size.	41	3
424	2016-04-23 08:42:40.281513-04	807	DB069	2	Changed color, bust_size and waist_size.	41	3
425	2016-04-23 08:44:10.256448-04	806	DB071	2	Changed color, bust_size and waist_size.	41	3
426	2016-04-23 08:48:57.13057-04	805	WIKU20	2	Changed sku, color, length, bust_size and waist_size.	41	3
427	2016-04-23 08:50:19.930903-04	805	WIKU20	2	No fields changed.	41	3
428	2016-04-23 08:51:17.779322-04	804	DB012	2	Changed size, color, bust_size and waist_size.	41	3
429	2016-04-23 08:52:15.64217-04	803	JA034	2	Changed size, color, bust_size and waist_size.	41	3
430	2016-04-23 08:55:15.722741-04	802	DB017	2	Changed color, bust_size and waist_size.	41	3
431	2016-04-23 09:01:33.309473-04	801	DB013	2	Changed color, bust_size and waist_size.	41	3
432	2016-04-23 09:03:28.772975-04	800	DB058	2	Changed color, bust_size and waist_size.	41	3
433	2016-04-23 09:05:09.517788-04	799	DB027	2	Changed color, bust_size and waist_size.	41	3
434	2016-04-23 09:08:12.105825-04	798	WIKU05	2	Changed color, length, bust_size and waist_size.	41	3
435	2016-04-23 09:11:15.909481-04	797	DB034	2	Changed color, bust_size and waist_size.	41	3
436	2016-04-23 09:14:15.815847-04	796	DB016	2	Changed size, color, bust_size and waist_size.	41	3
437	2016-04-23 09:16:35.429909-04	795	DB002	2	Changed color, bust_size and waist_size.	41	3
438	2016-04-23 09:17:23.696616-04	794	DB009	2	Changed size, color, bust_size and waist_size.	41	3
439	2016-04-23 09:18:53.133311-04	793	DB039	2	Changed color, bust_size and waist_size.	41	3
440	2016-04-23 09:19:32.853843-04	792	WWAR34	2	Changed size, color and length.	41	3
441	2016-04-23 09:20:29.113536-04	791	WWAR31	2	Changed size, color and length.	41	3
442	2016-04-23 09:21:11.380792-04	790	WWAR28	2	Changed color and waist_size.	41	3
443	2016-04-23 09:21:48.136776-04	789	WWAR41	2	Changed size and color.	41	3
444	2016-04-23 09:22:15.819403-04	788	WWAR42	2	Changed size and color.	41	3
445	2016-04-23 09:23:28.781181-04	787	WWAR43	2	Changed color.	41	3
446	2016-04-23 09:24:30.00229-04	786	WWAR39	2	Changed color.	41	3
447	2016-04-23 09:25:43.963011-04	785	DB066	2	Changed color.	41	3
448	2016-04-23 09:26:29.010152-04	784	WWAR29	2	Changed size, color and length.	41	3
449	2016-04-23 09:27:06.286145-04	783	DB021	2	Changed color and length.	41	3
450	2016-04-23 09:27:31.196774-04	782	DB052	2	Changed size, color and length.	41	3
451	2016-04-23 09:27:54.382334-04	781	DB061	2	Changed color and length.	41	3
452	2016-04-23 09:28:16.179402-04	780	DB046	2	Changed size and color.	41	3
453	2016-04-23 09:29:25.218821-04	779	WWAR36	2	Changed color.	41	3
454	2016-04-23 09:29:53.64009-04	778	WWAR38	2	Changed size, color and length.	41	3
455	2016-04-23 09:30:33.809122-04	777	DB063	2	Changed color and length.	41	3
456	2016-04-23 09:31:08.380734-04	776	DB032	2	Changed size, color and length.	41	3
457	2016-04-23 09:32:13.180808-04	776	DB032	2	No fields changed.	41	3
458	2016-04-23 09:33:46.557184-04	775	WWAR32	2	Changed size and color.	41	3
459	2016-04-23 09:34:23.36381-04	773	WWAR35	2	Changed size, color and length.	41	3
460	2016-04-23 09:34:57.416793-04	774	DB057	2	Changed size, color and length.	41	3
461	2016-04-23 09:35:16.85317-04	774	DB057	2	Changed length.	41	3
462	2016-04-23 09:35:45.511299-04	773	WWAR35	2	Changed size, color and length.	41	3
463	2016-04-23 09:38:26.991547-04	772	WESHP30	2	Changed size and color.	41	3
464	2016-04-23 09:40:56.987061-04	771	JN100	2	Changed color and length.	41	3
465	2016-04-23 09:42:38.919437-04	769	JN102	2	Changed color.	41	3
466	2016-04-23 09:45:57.637415-04	767	JN104	2	Changed color.	41	3
467	2016-04-23 09:47:12.180959-04	766	CK70	2	Changed sku and color.	41	3
468	2016-04-23 09:49:25.979785-04	765	JN106	2	Changed color.	41	3
469	2016-04-23 09:50:02.922979-04	764	JN107	2	Changed color and length.	41	3
470	2016-04-23 09:51:27.285132-04	763	JN108	2	Changed color.	41	3
471	2016-04-23 09:52:55.320844-04	762	JN110	2	Changed color.	41	3
472	2016-04-23 09:54:38.642313-04	761	JN109A	2	Changed color.	41	3
473	2016-04-23 09:55:52.281589-04	760	JN111	2	Changed size and color.	41	3
474	2016-04-23 09:56:22.273101-04	759	JN109	2	Changed size and color.	41	3
475	2016-04-23 09:59:15.897239-04	748	MEASP12	2	Changed size, color, shoulder_size and waist_size.	41	3
476	2016-04-23 09:59:52.346246-04	747	MERSP13	2	Changed size, color, shoulder_size and waist_size.	41	3
477	2016-04-23 10:00:27.318035-04	746	MEASP20	2	Changed size, color and shoulder_size.	41	3
478	2016-04-23 10:01:39.706349-04	745	MERCP23	2	Changed size, color and shoulder_size.	41	3
479	2016-04-23 10:02:06.438748-04	744	MERGP16	2	Changed size, color and shoulder_size.	41	3
480	2016-04-23 10:02:25.38967-04	743	MESBP14	2	Changed size, color and shoulder_size.	41	3
481	2016-04-23 10:03:02.891885-04	742	MEAKP10	2	Changed size, color, shoulder_size and waist_size.	41	3
482	2016-04-23 10:03:32.293839-04	741	MEAKP09	2	Changed size, color, shoulder_size and waist_size.	41	3
483	2016-04-23 10:04:15.546234-04	740	MEASP22	2	Changed size, color, shoulder_size and waist_size.	41	3
484	2016-04-23 10:04:46.550562-04	739	MEBKP02	2	Changed size, color, shoulder_size and waist_size.	41	3
485	2016-04-23 10:05:12.860033-04	738	MEJRP01A	2	Changed size, color, shoulder_size and waist_size.	41	3
486	2016-04-23 10:08:35.698039-04	722	MEVBP03	2	Changed size, color, shoulder_size and waist_size.	41	3
487	2016-04-23 10:08:57.587144-04	721	MEDRP15	2	Changed size, color and shoulder_size.	41	3
488	2016-04-23 10:09:20.087325-04	721	MEDRP15	2	Changed waist_size.	41	3
489	2016-04-23 10:09:43.389614-04	720	MEMSP04	2	Changed size, color, shoulder_size and waist_size.	41	3
490	2016-04-23 10:10:28.635261-04	700	MERGP17A	2	Changed size, color, shoulder_size and waist_size.	41	3
491	2016-04-23 10:11:07.545884-04	699	METBP19	2	Changed size, color, shoulder_size and waist_size.	41	3
492	2016-04-23 10:11:37.682906-04	698	MEANP08	2	Changed size, color, shoulder_size and waist_size.	41	3
493	2016-04-23 10:12:04.465228-04	697	MEPPP18	2	Changed size, color, shoulder_size and waist_size.	41	3
494	2016-04-23 10:12:51.467113-04	697	MEPPP18	2	No fields changed.	41	3
495	2016-04-23 10:14:01.186501-04	696	MESBP06	2	Changed size, color, shoulder_size and waist_size.	41	3
496	2016-04-23 10:14:39.196268-04	695	MENIP11	2	Changed size, color, shoulder_size and waist_size.	41	3
497	2016-04-23 10:15:06.210502-04	694	MEVKP05	2	Changed size, color, shoulder_size and waist_size.	41	3
498	2016-04-23 10:15:42.334133-04	693	MEASP07	2	Changed size, color, shoulder_size and waist_size.	41	3
499	2016-04-23 10:16:29.421369-04	689	MEASP30	2	Changed size, color, shoulder_size and waist_size.	41	3
500	2016-04-24 08:21:33.943591-04	758	WEYMP01	2	Changed color, bust_size and waist_size.	41	3
501	2016-04-24 08:24:31.709015-04	757	WEAKP02	2	Changed color, bust_size and waist_size.	41	3
502	2016-04-24 08:26:58.601047-04	756	WEPDP04	2	Changed size, color, bust_size and waist_size.	41	3
503	2016-04-24 08:32:09.424636-04	724	WEYSP03	2	Changed color, bust_size and waist_size.	41	3
504	2016-04-24 08:34:47.78189-04	730	WERSP15	2	Changed color, bust_size and waist_size.	41	3
505	2016-04-24 08:36:18.754374-04	725	WENAP06	2	Changed size, color, bust_size and waist_size.	41	3
506	2016-04-24 08:39:11.768729-04	733	WESBP05	2	Changed color, length, bust_size and waist_size.	41	3
507	2016-04-24 08:42:46.505411-04	719	WEBKP14	2	Changed size, color, length, bust_size and waist_size.	41	3
508	2016-04-24 08:48:51.638677-04	713	WEDCP16	2	Changed size, color and bust_size.	41	3
509	2016-04-24 08:52:37.739251-04	711	WEYSP18	2	Changed color, length, bust_size and waist_size.	41	3
510	2016-04-24 08:56:39.032892-04	710	WEADP19	2	Changed size, color, length, bust_size and waist_size.	41	3
511	2016-04-24 17:13:49.928924-04	2803	cream-sherwani	2	Changed collections and style.	21	3
512	2016-04-24 17:14:08.479775-04	2802	cream-sherwani-1	2	Changed collections and style.	21	3
513	2016-04-24 17:14:30.603564-04	2801	off-white-sherwani-set	2	Changed collections and style.	21	3
514	2016-04-24 19:52:12.757762-04	2785	pearl-embellished-wedding-gown	3		21	3
515	2016-04-24 19:52:57.166921-04	2769	white-gown-with-work	2	Changed mrp, rent, security_deposit and style.	21	3
516	2016-04-24 19:53:16.419751-04	2784	emroidered-off-white-gown	2	Changed collections and style.	21	3
517	2016-04-24 19:53:28.565893-04	2783	white-bow-tie-gown	2	Changed collections and style.	21	3
518	2016-04-24 19:53:38.152217-04	2769	white-gown-with-work	2	Changed collections.	21	3
519	2016-04-24 21:01:16.453905-04	169	Jaune	2	Changed handle.	13	3
520	2016-04-24 21:02:36.452445-04	169	Jaune	2	Changed handle.	13	3
521	2016-04-24 21:06:25.412898-04	198	LATIN QUARTERS	2	Changed handle.	13	3
522	2016-04-24 21:06:39.687597-04	197	AND	2	Changed handle.	13	3
523	2016-04-24 21:06:59.753796-04	196	ELLE	2	Changed handle.	13	3
524	2016-04-24 21:07:18.582439-04	195	ALLEN SOLLY	2	Changed handle.	13	3
525	2016-04-24 21:07:19.100173-04	195	ALLEN SOLLY	2	No fields changed.	13	3
526	2016-04-24 21:09:09.024199-04	193	MANGO	2	Changed handle.	13	3
527	2016-04-24 21:09:28.894744-04	192	HARPA	2	Changed handle.	13	3
528	2016-04-24 21:09:46.460425-04	191	109F	2	Changed handle.	13	3
529	2016-04-24 21:10:00.802819-04	189	WITH	2	Changed handle.	13	3
530	2016-04-24 21:10:15.76693-04	188	CHEMISTRY	2	Changed handle.	13	3
531	2016-04-24 21:10:25.866277-04	187	FLIRTATIOUZ	2	Changed handle.	13	3
532	2016-04-24 21:11:03.975878-04	186	FOREVER21	2	Changed handle.	13	3
533	2016-04-24 21:11:24.676646-04	181	D Muse	2	Changed handle.	13	3
534	2016-04-24 21:11:41.887148-04	180	ZARA	2	Changed handle.	13	3
535	2016-04-24 21:12:01.565631-04	179	LONDON TIMES	2	Changed handle.	13	3
536	2016-04-24 21:12:15.208471-04	176	FOREVER NEW	2	Changed handle.	13	3
537	2016-04-24 21:12:49.026784-04	175	VERO MODA	2	Changed handle.	13	3
538	2016-04-24 21:13:04.235941-04	172	U.S. POLO ASSN.	2	Changed handle.	13	3
539	2016-04-24 21:13:17.050457-04	171	Mini Singh	2	Changed handle.	13	3
540	2016-04-24 21:13:42.614743-04	170	ARROW	2	Changed handle.	13	3
541	2016-04-24 21:13:57.849052-04	168	ONLY	2	Changed handle.	13	3
542	2016-04-24 21:14:13.765406-04	166	VAN HEUSEN	2	Changed handle.	13	3
543	2016-04-24 21:14:38.646153-04	159	KAZO	2	Changed handle.	13	3
544	2016-04-24 21:14:53.7422-04	156	CandidKnots	2	Changed handle.	13	3
545	2016-04-24 21:15:07.558171-04	153	Zaayra	2	Changed handle.	13	3
546	2016-04-24 21:15:20.289984-04	155	The Dress Bank	2	Changed handle.	13	3
547	2016-04-27 14:56:50.462303-04	3	CKStore	2	Changed email.	12	3
548	2016-04-27 14:57:04.30804-04	4	TheDressBank	2	Changed email.	12	3
549	2016-04-27 14:57:26.305482-04	5	Jaune	2	Changed email and phone.	12	3
550	2016-05-14 04:39:04.431929-04	1	rahul	3		4	3
551	2016-05-17 03:13:32.756058-04	3043	manyavar-beige-sherwani	1	Added.	21	3
552	2016-05-17 03:14:28.490433-04	1137	WEPKP101	1	Added.	41	3
553	2016-05-17 03:40:37.788295-04	3044	black-shiny-bandgala-suit	1	Added.	21	3
554	2016-05-17 03:43:54.643615-04	1138	WEPKS102	1	Added.	41	3
555	2016-05-17 04:00:20.884512-04	3045	blue-bandgala-suit	1	Added.	21	3
556	2016-05-17 04:01:36.770594-04	1139	WEPJS103	1	Added.	41	3
557	2016-05-17 04:41:55.109354-04	3046	black-solid-suit	1	Added.	21	3
558	2016-05-17 05:05:47.773766-04	1140	WEPCS104	1	Added.	41	3
559	2016-05-17 05:25:49.488148-04	3047	designer-multicolor-saree	1	Added.	21	3
560	2016-05-17 05:26:55.568373-04	1141	WENAP105	1	Added.	41	3
561	2016-05-17 05:27:18.568843-04	1142	WENAP105A	1	Added.	41	3
562	2016-05-17 05:27:41.827953-04	1143	WENAP105B	1	Added.	41	3
563	2016-05-17 05:28:14.94798-04	1144	WENAP105C	1	Added.	41	3
564	2016-05-17 05:28:27.413883-04	1144	WENAP105C	2	Changed product.	41	3
565	2016-05-17 05:28:56.266523-04	1145	WENAP105D	1	Added.	41	3
566	2016-05-18 04:17:13.086815-04	3048	grey-full-suit	1	Added.	21	3
567	2016-05-18 04:18:18.38221-04	1146	WEPRS105	1	Added.	41	3
568	2016-05-18 08:53:10.506721-04	2822	blue-shiny-suit-with-black-lining	2	Changed rent, security_deposit and style.	21	3
569	2016-05-18 08:54:00.666208-04	2824	red-waistcoat	3		21	3
570	2016-05-18 08:57:07.502561-04	2825	blue-party-bazer	2	Changed mrp, rent, security_deposit and style.	21	3
571	2016-05-18 08:58:34.950519-04	2826	3-piece-brown-suit	2	Changed category, rent, security_deposit and style.	21	3
572	2016-05-18 09:00:38.044003-04	2827	black-blazer-1	2	Changed mrp, rent, security_deposit and style.	21	3
573	2016-05-18 09:01:28.16072-04	2828	blue-formal-suit	2	Changed rent, security_deposit and style.	21	3
574	2016-05-18 09:08:57.880076-04	2911	velvety-blue-waistcoat	2	Changed rent, security_deposit and style.	21	3
575	2016-05-18 09:09:28.999353-04	2912	blue-blazer	2	Changed category and style.	21	3
576	2016-05-18 09:10:03.87691-04	2915	magenta-blazer	2	Changed style.	21	3
577	2016-05-18 09:12:00.245825-04	2923	velvet-black-waistcoat	2	Changed rent, security_deposit and style.	21	3
578	2016-05-18 09:13:02.68761-04	2924	black-waistcoat	2	Changed rent, security_deposit and style.	21	3
579	2016-05-18 09:14:05.484743-04	2925	black-suit-with-velvet-lapel	2	Changed category and style.	21	3
580	2016-05-18 09:15:55.989494-04	55	Bandi	3		39	3
581	2016-05-18 09:15:56.0013-04	52	Tuxedo	3		39	3
582	2016-05-18 09:15:56.005576-04	51	Ethnic Jacket	3		39	3
583	2016-05-18 09:15:56.008002-04	50	3 Piece Suit	3		39	3
584	2016-05-18 09:17:35.575156-04	56	Nehru Coat	1	Added.	39	3
585	2016-05-18 09:26:25.997126-04	48	Full Suit & Tuxedo	2	Changed name.	39	3
586	2016-05-18 09:30:35.082251-04	2912	blue-blazer	2	Changed mrp, rent and security_deposit.	21	3
587	2016-05-18 09:30:58.478493-04	2915	magenta-blazer	2	No fields changed.	21	3
588	2016-05-18 09:31:34.417385-04	2822	blue-shiny-suit-with-black-lining	2	No fields changed.	21	3
589	2016-05-18 09:32:25.383947-04	2924	black-waistcoat	2	Changed category.	21	3
590	2016-05-18 09:34:18.626914-04	2910	grey-3-piece-suit	2	Changed category and style.	21	3
591	2016-05-18 09:34:53.910877-04	2926	grey-full-suit-with-black-lining	2	Changed style.	21	3
592	2016-05-18 09:35:39.566291-04	2927	shiny-brown-full-suit	2	Changed rent, security_deposit and style.	21	3
593	2016-05-18 09:36:20.291604-04	2928	matte-grey-full-suit	2	Changed rent, security_deposit and style.	21	3
594	2016-05-18 09:36:52.752634-04	2929	shiny-grey-full-suit	3		21	3
595	2016-05-18 09:53:50.859226-04	2931	shiny-brown-blazer	2	Changed category, mrp, rent, security_deposit and style.	21	3
596	2016-05-18 09:54:16.641651-04	2911	velvety-blue-waistcoat	2	Changed category and collections.	21	3
597	2016-05-18 09:54:37.179444-04	3021	maroon-velvet-waistcoat	3		21	3
598	2016-05-18 09:55:29.01006-04	3025	grey-formal-blazer	2	Changed rent, security_deposit and style.	21	3
599	2016-05-18 09:56:50.487049-04	3026	printed-brownish-maroon-blazer	2	Changed category, mrp, rent, security_deposit and style.	21	3
600	2016-05-18 09:57:21.919952-04	3022	black-jacket-with-sb-lapel	3		21	3
601	2016-05-18 09:58:42.16076-04	3035	grey-waistcoat	2	Changed rent, security_deposit and style.	21	3
602	2016-05-18 10:00:05.474128-04	3039	shawl-collar-lapel-blazer	2	Changed name, category, rent, security_deposit and style.	21	3
603	2016-05-18 10:00:40.211673-04	3040	must-have-black-blazer	2	Changed rent, security_deposit and style.	21	3
604	2016-05-18 10:01:24.056197-04	3046	black-solid-suit	2	Changed mrp, rent and security_deposit.	21	3
605	2016-05-18 10:01:52.68081-04	3048	grey-full-suit	2	Changed mrp.	21	3
606	2016-05-18 10:02:23.152821-04	2921	blue-blazer-with-black-lapel	2	Changed category and style.	21	3
607	2016-05-18 10:03:08.250703-04	3023	black-jacket-with-fin-lapel	2	Changed category, mrp, rent, security_deposit and style.	21	3
608	2016-05-18 10:03:52.528801-04	3041	broad-shawl-lapel-tuxedo	2	Changed mrp, rent, security_deposit and style.	21	3
609	2016-05-18 10:04:25.167024-04	3042	notched-lapel-tuxedo	2	Changed category, rent, security_deposit and style.	21	3
610	2016-05-18 10:05:58.545736-04	2924	black-waistcoat	2	Changed collections.	21	3
611	2016-05-18 10:07:00.767435-04	2926	grey-full-suit-with-black-lining	2	Changed rent and security_deposit.	21	3
612	2016-05-18 10:07:22.688138-04	2926	grey-full-suit-with-black-lining	2	Changed rent and security_deposit.	21	3
613	2016-05-18 10:07:53.369723-04	2826	3-piece-brown-suit	2	Changed rent and security_deposit.	21	3
614	2016-05-18 10:13:20.951144-04	2781	cream-sherwani-set	2	Changed category and style.	21	3
615	2016-05-18 10:16:16.323702-04	2902	sky-blue-full-set	2	Changed category and style.	21	3
616	2016-05-18 10:16:43.256508-04	2903	shiny-blue-full-set	2	Changed category and style.	21	3
617	2016-05-18 10:17:09.669255-04	2904	heavy-red-full-set	2	Changed category and style.	21	3
618	2016-05-18 10:17:33.593737-04	2905	printed-red-full-set	2	Changed category and style.	21	3
619	2016-05-18 10:18:00.253191-04	2906	embroidered-red-suit	2	Changed category and style.	21	3
620	2016-05-18 10:18:29.549551-04	2907	purple-embroidered-print-set	2	Changed category and style.	21	3
621	2016-05-18 10:18:56.030871-04	2908	threaded-cream-set	2	Changed category and style.	21	3
622	2016-05-18 10:19:31.048369-04	2909	embroidered-cream-set	2	Changed category and style.	21	3
623	2016-05-18 10:20:20.033315-04	2913	brownish-cream-waistcoat	2	Changed category, rent, security_deposit and style.	21	3
624	2016-05-18 10:21:02.092362-04	2916	painted-envy-sherwani	2	Changed category, rent, security_deposit and style.	21	3
625	2016-05-18 10:21:55.745918-04	2924	black-waistcoat	2	No fields changed.	21	3
626	2016-05-18 10:22:33.496994-04	3030	maroon-brocade-waistcoat	2	Changed rent, security_deposit and style.	21	3
627	2016-05-18 10:24:00.446563-04	3036	royal-black-blazer-with-grey-border	2	Changed category, rent, security_deposit and style.	21	3
628	2016-05-18 10:24:56.422806-04	3045	blue-bandgala-suit	2	Changed rent and security_deposit.	21	3
629	2016-05-18 10:26:31.293624-04	2914	black-band-gala-with-grey-lining	2	Changed category and style.	21	3
630	2016-05-18 10:26:47.932928-04	2922	black-band-gala	2	Changed category and style.	21	3
631	2016-05-18 10:27:31.460283-04	3028	black-maroon-jodhpuri-jacket	2	Changed category, rent, security_deposit and style.	21	3
632	2016-05-18 10:28:19.924915-04	3029	royal-blue-party-wear-band-gala	2	Changed category, rent, security_deposit and style.	21	3
633	2016-05-18 10:29:14.286464-04	3031	green-brocade-bandi	2	Changed category, rent, security_deposit and style.	21	3
634	2016-05-18 10:30:54.543484-04	3032	beige-brocade-bandi	2	Changed category, rent, security_deposit and style.	21	3
635	2016-05-18 10:31:47.804337-04	3033	dark-maroon-brocade-bandi	2	Changed category, rent, security_deposit and style.	21	3
636	2016-05-18 10:32:07.163829-04	3034	purple-laser-cut-bandi	3		21	3
637	2016-05-18 10:33:37.081539-04	3037	classic-black-bandi	2	Changed category, rent, security_deposit and style.	21	3
638	2016-05-19 04:30:42.067893-04	129	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
639	2016-05-19 04:30:42.073981-04	128	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
640	2016-05-19 04:30:42.075715-04	127	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
641	2016-05-19 04:30:42.077337-04	126	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
642	2016-05-19 04:30:42.078726-04	125	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
643	2016-05-19 04:30:42.080136-04	124	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
644	2016-05-19 04:30:42.081925-04	123	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
645	2016-05-19 04:30:42.083306-04	122	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
646	2016-05-19 04:30:42.08467-04	121	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
647	2016-05-19 04:30:42.086197-04	120	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
648	2016-05-19 04:30:42.087718-04	119	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
649	2016-05-19 04:30:42.089134-04	118	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
650	2016-05-19 04:30:42.090787-04	117	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
651	2016-05-19 04:30:42.092208-04	116	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
652	2016-05-19 04:30:42.093614-04	115	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
653	2016-05-19 04:30:42.09498-04	114	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
654	2016-05-19 04:30:42.096353-04	113	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
655	2016-05-19 04:30:42.097725-04	112	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
656	2016-05-19 04:30:42.099135-04	111	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
657	2016-05-19 04:30:42.100485-04	110	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
658	2016-05-19 04:30:42.102016-04	109	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
659	2016-05-19 04:30:42.103336-04	108	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
660	2016-05-19 04:31:38.181152-04	107	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
661	2016-05-19 04:31:38.185175-04	106	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
662	2016-05-19 04:31:38.18744-04	105	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
663	2016-05-19 04:31:38.189285-04	104	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
664	2016-05-19 04:31:38.19127-04	103	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
665	2016-05-19 04:31:38.192927-04	102	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
666	2016-05-19 04:31:38.194461-04	101	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
667	2016-05-19 04:31:38.196154-04	100	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
668	2016-05-19 04:31:38.1987-04	99	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
669	2016-05-19 04:31:38.200367-04	98	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
670	2016-05-19 04:31:38.202214-04	97	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
671	2016-05-19 04:31:38.203744-04	96	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
672	2016-05-19 04:31:38.205249-04	95	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
673	2016-05-19 04:31:38.207238-04	94	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
674	2016-05-19 04:31:38.209141-04	93	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
675	2016-05-19 04:31:38.211418-04	92	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
676	2016-05-19 04:31:38.213563-04	91	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
677	2016-05-19 04:31:38.215069-04	90	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
678	2016-05-19 04:31:38.216465-04	89	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
679	2016-05-19 04:31:38.218407-04	88	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
680	2016-05-19 04:31:38.220616-04	87	test sadkl sjkcsfdk	3		31	3
681	2016-05-19 04:31:38.22215-04	86	test sadkl sjkcsfdk	3		31	3
682	2016-05-19 04:31:38.224041-04	85	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
683	2016-05-19 04:31:38.225716-04	84	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
684	2016-05-19 04:31:38.227253-04	83	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
685	2016-05-19 04:31:38.228861-04	82	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
686	2016-05-19 04:31:38.230469-04	81	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
687	2016-05-19 04:31:38.231844-04	80	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
688	2016-05-19 04:31:38.233361-04	79	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
689	2016-05-19 04:31:38.235004-04	78	dsf asda adad	3		31	3
690	2016-05-19 04:31:38.236711-04	77	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
691	2016-05-19 04:31:38.238144-04	76	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
692	2016-05-19 04:31:38.239667-04	75	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
693	2016-05-19 04:31:38.241118-04	74	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
694	2016-05-19 04:31:38.242689-04	73	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
695	2016-05-19 04:31:38.24416-04	71	raj 24TH MAIN, BIG MARKET, jp nagar 6th phase 	3		31	3
696	2016-05-19 04:31:38.245614-04	70	DEVESH Raju Mansion-202, 20th K Cross Ashwini Layout Ejipura	3		31	3
697	2016-05-19 04:31:38.247413-04	69	DEVESH Raju Mansion-202, 20th K Cross Ashwini Layout Ejipura	3		31	3
698	2016-05-19 04:31:38.248838-04	68	sfsd sdfds dgdrg	3		31	3
699	2016-05-19 04:31:38.250284-04	67	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
700	2016-05-19 04:31:38.251609-04	66	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
701	2016-05-19 04:31:38.252994-04	65	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
702	2016-05-19 04:31:38.254402-04	64	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
703	2016-05-19 04:31:38.255729-04	62	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
704	2016-05-19 04:31:38.257092-04	57	Rishi 202, Raju's Mansion 20th K Cross, Ashwini Layout,	3		31	3
705	2016-05-19 04:31:38.26083-04	56	RK 80, Saraswathi Textiles, NMS Compound	3		31	3
706	2016-05-19 04:36:59.625442-04	126	126praveen kumar s (praveen2020athithi@gmail.com) 2016-05-19 07:53:14.826441+00:00	2	Changed order_price and payment_status.	32	3
707	2016-05-19 04:37:23.709766-04	123	123Aashish Rao (aashishrao03@gmail.com) 2016-05-19 05:34:38.033898+00:00	2	Changed order_price and payment_status.	32	3
708	2016-05-19 04:38:02.35088-04	122	122naheem hs (naheemmohammedc@gmail.com) 2016-05-18 14:49:26.736737+00:00	2	Changed order_price.	32	3
709	2016-05-19 04:38:11.934607-04	122	122naheem hs (naheemmohammedc@gmail.com) 2016-05-18 14:49:26.736737+00:00	2	Changed payment_status.	32	3
710	2016-05-19 04:39:39.322482-04	121	121shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 15:10:06.508094+00:00	3		32	3
711	2016-05-19 04:39:39.326053-04	120	120shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 12:42:40.297806+00:00	3		32	3
712	2016-05-19 04:39:39.328617-04	119	119shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 12:40:54.849384+00:00	3		32	3
713	2016-05-19 04:39:39.330495-04	118	118shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 12:35:13.131939+00:00	3		32	3
714	2016-05-19 04:39:39.332451-04	117	117shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 12:30:46.157017+00:00	3		32	3
715	2016-05-19 04:39:39.334868-04	116	116shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 12:01:10.535087+00:00	3		32	3
716	2016-05-19 04:39:39.3368-04	115	115shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 11:46:49.772261+00:00	3		32	3
717	2016-05-19 04:39:39.338325-04	114	114shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 11:46:35.563668+00:00	3		32	3
718	2016-05-19 04:39:39.339869-04	113	113shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 11:43:47.042225+00:00	3		32	3
719	2016-05-19 04:39:39.341696-04	112	112shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 10:18:47.978780+00:00	3		32	3
720	2016-05-19 04:39:39.343618-04	111	111shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 09:16:03.520010+00:00	3		32	3
721	2016-05-19 04:39:39.345543-04	110	110shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 09:10:41.904455+00:00	3		32	3
722	2016-05-19 04:39:39.347025-04	109	109shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 09:01:31.041379+00:00	3		32	3
723	2016-05-19 04:39:39.348737-04	108	108shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 08:57:48.399089+00:00	3		32	3
724	2016-05-19 04:39:39.350373-04	107	107shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 08:48:29.628573+00:00	3		32	3
725	2016-05-19 04:39:39.351777-04	106	106shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 08:27:28.849198+00:00	3		32	3
726	2016-05-19 04:39:39.353103-04	105	105shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 08:20:17.622144+00:00	3		32	3
727	2016-05-19 04:39:39.354471-04	104	104shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 08:18:23.765123+00:00	3		32	3
728	2016-05-19 04:39:39.355793-04	103	103shweta Poddar (shweta.poddar@candidknots.com) 2016-05-14 08:09:53.206813+00:00	3		32	3
729	2016-05-19 04:39:39.357231-04	102	102shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 15:29:50.713995+00:00	3		32	3
730	2016-05-19 04:39:39.358725-04	101	101shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 15:21:39.518565+00:00	3		32	3
731	2016-05-19 04:39:39.360096-04	100	100shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 15:20:00.802463+00:00	3		32	3
732	2016-05-19 04:39:39.361433-04	99	99shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 15:14:22.486146+00:00	3		32	3
733	2016-05-19 04:39:39.362839-04	98	98shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 14:55:26.287812+00:00	3		32	3
734	2016-05-19 04:39:39.364143-04	97	97shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 14:52:01.493750+00:00	3		32	3
735	2016-05-19 04:39:39.365604-04	96	96shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 14:41:06.641855+00:00	3		32	3
736	2016-05-19 04:39:39.366958-04	95	95shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 12:17:59.753425+00:00	3		32	3
737	2016-05-19 04:39:39.368546-04	94	94shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 12:09:21.828232+00:00	3		32	3
738	2016-05-19 04:39:39.369895-04	93	93shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 11:02:58.464678+00:00	3		32	3
739	2016-05-19 04:39:39.371241-04	92	92shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 10:53:47.544202+00:00	3		32	3
740	2016-05-19 04:39:39.372572-04	91	91shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 10:41:33.754504+00:00	3		32	3
741	2016-05-19 04:39:39.373962-04	90	90shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 10:38:44.094569+00:00	3		32	3
742	2016-05-19 04:39:39.375348-04	89	89shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 10:32:41.973001+00:00	3		32	3
743	2016-05-19 04:39:39.376672-04	88	88shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 08:48:08.859309+00:00	3		32	3
744	2016-05-19 04:39:39.378083-04	87	87shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 08:39:56.087114+00:00	3		32	3
745	2016-05-19 04:39:39.37979-04	86	86shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 08:20:44.545904+00:00	3		32	3
746	2016-05-19 04:39:39.38112-04	85	85shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 08:06:57.077836+00:00	3		32	3
747	2016-05-19 04:39:39.401603-04	84	84shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 07:37:38.465182+00:00	3		32	3
748	2016-05-19 04:39:39.403725-04	83	83shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 07:20:56.799970+00:00	3		32	3
749	2016-05-19 04:39:39.405147-04	82	82shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 07:06:30.386754+00:00	3		32	3
750	2016-05-19 04:39:39.406577-04	81	81shweta Poddar (shweta.poddar@candidknots.com) 2016-05-12 06:37:16.668357+00:00	3		32	3
751	2016-05-19 04:39:39.408107-04	80	80test sdkj (wdvqjd@kdw.hdg) 2016-05-08 14:30:35.336924+00:00	3		32	3
752	2016-05-19 04:39:39.40956-04	79	79test sdkj (wdvqjd@kdw.hdg) 2016-05-08 14:29:55.875908+00:00	3		32	3
753	2016-05-19 04:39:39.410964-04	78	78shweta Poddar (shweta.poddar@candidknots.com) 2016-04-27 19:14:08.228218+00:00	3		32	3
754	2016-05-19 04:39:39.412376-04	77	77shweta Poddar (shweta.poddar@candidknots.com) 2016-04-27 19:10:06.741451+00:00	3		32	3
755	2016-05-19 04:39:39.41381-04	76	76shweta Poddar (shweta.poddar@candidknots.com) 2016-04-27 19:05:11.773606+00:00	3		32	3
756	2016-05-19 04:39:39.415212-04	75	75shweta Poddar (shweta.poddar@candidknots.com) 2016-04-27 18:54:27.101572+00:00	3		32	3
757	2016-05-19 04:39:39.416828-04	74	74shweta Poddar (shweta.poddar@candidknots.com) 2016-04-27 18:46:07.270749+00:00	3		32	3
758	2016-05-19 04:39:39.41861-04	73	73shweta Poddar (shweta.poddar@candidknots.com) 2016-04-27 18:37:11.827479+00:00	3		32	3
759	2016-05-19 04:39:39.420218-04	72	72dsf ass (sds@sdfs.com) 2016-04-27 12:11:04.221835+00:00	3		32	3
760	2016-05-19 04:39:39.421681-04	71	71shweta Poddar (shweta.poddar@candidknots.com) 2016-04-26 11:58:52.787409+00:00	3		32	3
761	2016-05-19 04:39:39.423243-04	70	70shweta Poddar (shweta.poddar@candidknots.com) 2016-04-26 11:36:49.523367+00:00	3		32	3
762	2016-05-19 04:39:39.424681-04	69	69shweta Poddar (shweta.poddar@candidknots.com) 2016-04-26 11:34:08.445131+00:00	3		32	3
763	2016-05-19 04:39:39.426156-04	68	68shweta Poddar (shweta.poddar@candidknots.com) 2016-04-26 11:31:49.607725+00:00	3		32	3
764	2016-05-19 04:39:39.427641-04	67	67shweta Poddar (shweta.poddar@candidknots.com) 2016-04-26 11:30:07.997484+00:00	3		32	3
765	2016-05-19 04:39:39.429119-04	66	66raj sahu (sahu6827@gmail.com) 2016-04-15 13:03:54.240718+00:00	3		32	3
766	2016-05-19 04:39:39.430435-04	65	65raj sahu (sahu6827@gmail.com) 2016-04-15 12:43:13.796024+00:00	3		32	3
767	2016-05-19 04:39:39.431758-04	64	64Devesh Verma (dvshverma@gmail.com) 2016-04-14 11:46:50.633666+00:00	3		32	3
768	2016-05-19 04:39:39.433214-04	63	63Devesh Verma (dvshverma@gmail.com) 2016-04-14 11:45:22.590158+00:00	3		32	3
769	2016-05-19 04:39:39.434554-04	62	62sfsd dsfs (dgd) 2016-04-14 10:08:47.816018+00:00	3		32	3
770	2016-05-19 04:39:39.43604-04	61	61shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 16:59:23.885929+00:00	3		32	3
771	2016-05-19 04:39:39.437396-04	60	60shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 16:50:44.622443+00:00	3		32	3
772	2016-05-19 04:39:39.438985-04	59	59shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 16:48:18.910127+00:00	3		32	3
773	2016-05-19 04:39:39.440568-04	58	58shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 16:36:43.104925+00:00	3		32	3
774	2016-05-19 04:39:39.441996-04	57	57raj ricky (rajricky6827@gmail.com) 2016-04-12 16:27:56.311179+00:00	3		32	3
775	2016-05-19 04:39:39.443521-04	56	56shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 11:43:06.438298+00:00	3		32	3
776	2016-05-19 04:39:39.444882-04	55	55shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 11:30:02.272823+00:00	3		32	3
777	2016-05-19 04:39:39.446264-04	54	54shweta Poddar (shweta.poddar@candidknots.com) 2016-04-12 11:30:02.043345+00:00	3		32	3
778	2016-05-19 04:39:39.447666-04	53	53Rishi Poddar (rishipoddar.s@gmail.com) 2016-02-12 22:37:51.610000+00:00	3		32	3
779	2016-05-19 04:39:39.449138-04	40	40Rahul gayakwad (dj@gmail.com) 2016-02-03 20:08:07.462125+00:00	3		32	3
780	2016-05-19 04:39:39.450848-04	39	39rahul gayakwad (rkg.iitb@gmail.com) 2016-02-03 19:59:56.403317+00:00	3		32	3
781	2016-05-19 04:39:39.452261-04	38	38rahul gayakwad (rkg.iitb@gmail.com) 2016-02-03 19:59:26.439853+00:00	3		32	3
782	2016-05-19 04:39:39.453744-04	37	37rahul gayakwad (rkg.iitb@gmail.com) 2016-02-03 19:58:27.286490+00:00	3		32	3
783	2016-05-23 01:44:17.612036-04	131	131shweta Poddar (shweta.poddar@candidknots.com) 2016-05-23 05:42:41.963286+00:00	3		32	3
784	2016-05-23 07:45:39.032303-04	120	None blue-party-bazer	3		33	3
785	2016-05-23 07:45:39.037873-04	119	130Atul  Dharma (dharmaatul@gmail.com) 2016-05-23 05:33:36.099419+00:00 black-blazer-1	3		33	3
786	2016-05-23 07:45:39.041123-04	118	129Atul  Dharma (dharmaatul@gmail.com) 2016-05-23 05:24:59.491090+00:00 black-blazer-1	3		33	3
787	2016-05-23 11:12:46.068672-04	139	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
788	2016-05-23 11:12:46.082286-04	138	Atul  House no 3, 19th main,20th cross, SMS layout nearCOSMO bakery, JP nagar 5th phase	3		31	3
789	2016-05-23 11:12:46.08445-04	137	Atul  House no 3, 19th main,20th cross, SMS layout nearCOSMO bakery, JP nagar 5th phase	3		31	3
790	2016-05-24 01:22:16.998287-04	2911	velvety-blue-waistcoat	2	Changed collections.	21	3
791	2016-05-24 02:38:16.706569-04	130	130Atul  Dharma (dharmaatul@gmail.com) 2016-05-23 05:33:36.099419+00:00	3		32	3
792	2016-05-24 02:38:16.709515-04	129	129Atul  Dharma (dharmaatul@gmail.com) 2016-05-23 05:24:59.491090+00:00	3		32	3
793	2016-05-24 09:49:28.435133-04	3047	designer-multicolor-saree	2	Changed mrp and rent.	21	3
794	2016-05-25 07:07:27.375764-04	3048	grey-full-suit	2	Changed brand.	21	3
795	2016-05-25 09:52:35.581441-04	145	sushant Excellent Pg Bhartinagar 	3		31	3
796	2016-05-25 09:52:35.584725-04	144	sushant Excellent Pg Bhartinagar 	3		31	3
797	2016-05-25 09:52:35.586492-04	143	sushant Excellent Pg Bhartinagar 	3		31	3
798	2016-05-27 02:45:34.162125-04	134	134Md Rehman (abdulrehmanaccacfa@gmail.com) 2016-05-24 09:04:23.181491+00:00	2	Changed payment_status and return_delivery.	32	3
799	2016-05-27 02:46:01.575338-04	123	123Aashish Rao (aashishrao03@gmail.com) 2016-05-19 05:34:38.033898+00:00	2	Changed return_delivery.	32	3
800	2016-05-27 02:46:12.584346-04	122	122naheem hs (naheemmohammedc@gmail.com) 2016-05-18 14:49:26.736737+00:00	2	Changed return_delivery.	32	3
801	2016-05-27 02:46:34.469931-04	126	126praveen kumar s (praveen2020athithi@gmail.com) 2016-05-19 07:53:14.826441+00:00	2	Changed return_delivery.	32	3
802	2016-05-27 02:46:58.113067-04	132	132Atul  Dharma (dharmaatul@gmail.com) 2016-05-23 05:44:05.879299+00:00	2	Changed payment_status and return_delivery.	32	3
803	2016-05-27 02:47:16.816798-04	133	133Bharath Sharma  (bharathsharman007@gmail.com) 2016-05-23 15:23:00.595674+00:00	2	Changed payment_status and return_delivery.	32	3
804	2016-05-27 02:47:50.124689-04	142	142Sushant Mugdam (sushantmagdum25@gmail.com) 2016-05-25 09:16:14.620627+00:00	2	Changed payment_status and return_delivery.	32	3
805	2016-05-27 02:48:44.099822-04	138	138Ajith Rao (rentsher@gmail.com) 2016-05-25 08:00:19.352300+00:00	2	Changed order_price and payment_status.	32	3
806	2016-05-27 02:49:14.640088-04	139	139Raj Jain (mehul2296@gmail.com) 2016-05-25 08:04:30.158552+00:00	2	Changed order_price, payment_status and return_delivery.	32	3
807	2016-05-27 02:53:10.274642-04	143	143Preethy Senthilkumar (sangeepp@gmail.com) 2016-05-27 04:16:26.980080+00:00	2	Changed payment_status and return_delivery.	32	3
808	2016-05-27 02:53:21.761869-04	144	144abd DEF (abcd@gmail.com) 2016-05-27 04:40:04.258877+00:00	2	Changed payment_status and return_delivery.	32	3
809	2016-05-27 02:53:40.635336-04	141	141Madan Gowda (madmadan52@gmail.com) 2016-05-25 08:12:46.810448+00:00	2	Changed payment_status.	32	3
810	2016-05-27 02:53:53.265075-04	140	140Madan Gowda (madmadan52@gmail.com) 2016-05-25 08:10:41.630292+00:00	2	Changed payment_status and return_delivery.	32	3
811	2016-05-27 02:54:12.333785-04	137	137sushant magdum (sushantmagdum25@gmail) 2016-05-25 01:48:36.363058+00:00	3		32	3
812	2016-05-27 02:54:12.337931-04	136	136sushant magdum (sushantmagdum25@gmail) 2016-05-24 20:11:20.881949+00:00	3		32	3
813	2016-05-27 02:54:12.340735-04	135	135sushant magdum (sushantmagdum25@gmail) 2016-05-24 19:27:48.654575+00:00	3		32	3
814	2016-05-27 02:54:25.758274-04	128	128Md Rehman (abdulrehmanaccacfa@gmail.com) 2016-05-21 16:22:03.115383+00:00	3		32	3
815	2016-05-27 02:54:44.01481-04	127	127Komal Kareer (komalkareer43@gmail.com) 2016-05-20 20:05:15.578546+00:00	2	Changed payment_status and return_delivery.	32	3
816	2016-05-27 02:54:54.379522-04	125	125Babu Rao (babuapte@yahoo.com) 2016-05-19 05:44:18.292332+00:00	2	Changed payment_status and return_delivery.	32	3
817	2016-05-27 02:55:08.270392-04	124	124Punith Kp (kppunith@gmail.com) 2016-05-19 05:37:40.453383+00:00	2	Changed payment_status and return_delivery.	32	3
818	2016-05-27 02:55:26.470279-04	142	142Sushant Mugdam (sushantmagdum25@gmail.com) 2016-05-25 09:16:14.620627+00:00	2	Changed return_delivery.	32	3
819	2016-05-27 03:37:31.89555-04	48	Hemlata Singh (rentsher-hemlata@gmail.com)	1	Added.	11	3
820	2016-05-27 15:34:18.135145-04	3	shweta Poddar	2	Changed name, email, phone, address_1, city and pincode.	12	3
821	2016-05-27 15:34:34.408413-04	3	CKStore	2	Changed name.	12	3
822	2016-05-27 15:35:23.081309-04	4	TheDressBank	2	Changed phone.	12	3
823	2016-05-27 15:35:32.510053-04	3	CKStore	2	No fields changed.	12	3
824	2016-05-27 15:36:11.018991-04	5	Jaune	2	No fields changed.	12	3
825	2016-05-27 16:42:38.471584-04	3048	grey-full-suit	2	Changed buy_price.	21	3
826	2016-05-27 16:43:00.569923-04	3047	designer-multicolor-saree	2	Changed buy_price.	21	3
827	2016-05-27 16:43:20.957143-04	3046	black-solid-suit	2	Changed buy_price.	21	3
828	2016-05-28 06:57:26.177172-04	151	151shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:56:40.896846+00:00	3		32	3
829	2016-05-28 06:57:26.185335-04	150	150shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:54:29.328787+00:00	3		32	3
951	2016-06-03 11:04:46.647714-04	2835	black-crop-top-skirt	2	Changed collections.	21	3
830	2016-05-28 06:57:26.18856-04	149	149shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:53:06.499438+00:00	3		32	3
831	2016-05-28 06:57:26.19282-04	148	148shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:51:44.892840+00:00	3		32	3
832	2016-05-28 06:57:26.197294-04	147	147shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:49:44.643268+00:00	3		32	3
833	2016-05-28 08:39:26.650227-04	145	157shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:38:41.736869+00:00 3-piece-brown-suit	3		33	3
834	2016-05-28 08:39:26.657424-04	144	156shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:37:37.046165+00:00 velvety-purple-lehenga	3		33	3
835	2016-05-28 08:39:26.661627-04	143	155shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:36:04.031862+00:00 velvety-purple-lehenga	3		33	3
836	2016-05-28 08:39:26.665542-04	142	153shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 11:04:17.769515+00:00 velvety-purple-lehenga	3		33	3
837	2016-05-28 08:39:26.669947-04	141	152shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:59:25.143828+00:00 blue-party-bazer	3		33	3
838	2016-05-28 08:39:26.673568-04	140	152shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:59:25.143828+00:00 velvety-purple-lehenga	3		33	3
839	2016-05-28 08:39:26.677517-04	139	None velvety-purple-lehenga	3		33	3
840	2016-05-28 08:40:06.471545-04	157	157shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:38:41.736869+00:00	3		32	3
841	2016-05-28 08:40:06.476836-04	156	156shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:37:37.046165+00:00	3		32	3
842	2016-05-28 08:40:06.479038-04	155	155shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:36:04.031862+00:00	3		32	3
843	2016-05-28 08:40:06.480581-04	154	154shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 11:09:21.924276+00:00	3		32	3
844	2016-05-28 08:40:06.482047-04	153	153shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 11:04:17.769515+00:00	3		32	3
845	2016-05-28 08:40:06.483624-04	152	152shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 10:59:25.143828+00:00	3		32	3
846	2016-05-28 08:44:02.248952-04	168	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
847	2016-05-28 08:44:02.252972-04	167	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
848	2016-05-28 08:44:02.256209-04	166	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
849	2016-05-28 08:44:02.258662-04	165	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
850	2016-05-28 08:44:02.261033-04	164	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
851	2016-05-28 08:44:02.267795-04	163	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
852	2016-05-28 08:44:02.270495-04	162	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
853	2016-05-28 08:44:02.273164-04	161	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
854	2016-05-28 08:44:02.275632-04	160	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
855	2016-05-28 08:44:02.277987-04	159	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
856	2016-05-28 08:44:02.280313-04	158	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
857	2016-05-28 08:44:02.283137-04	157	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
858	2016-05-28 08:44:02.285556-04	156	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
859	2016-05-28 08:44:02.28827-04	155	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
860	2016-05-28 08:48:26.425008-04	158	158shweta Poddar (shweta.poddar@candidknots.com) 2016-05-28 12:46:42.632632+00:00	3		32	3
861	2016-05-28 08:49:13.320455-04	147	None floral-crop-top-skirt	3		33	3
862	2016-05-28 08:49:13.324014-04	146	None striped-long-dress	3		33	3
863	2016-05-28 08:49:13.325603-04	126	None grey-formal-blazer	3		33	3
864	2016-05-28 08:49:13.327064-04	125	None grey-formal-blazer	3		33	3
865	2016-05-28 08:49:13.32995-04	124	None grey-formal-blazer	3		33	3
866	2016-05-28 08:49:45.041726-04	169	shweta 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
867	2016-05-30 10:10:11.655539-04	145	145Ajith Rao (rentsher@gmail.com) 2016-05-27 06:58:04.645819+00:00	2	Changed order_price, payment_mode, payment_status and return_delivery.	32	3
868	2016-05-30 10:13:41.060471-04	141	141Madan Gowda (madmadan52@gmail.com) 2016-05-25 08:12:46.810448+00:00	2	Changed order_price and return_delivery.	32	3
869	2016-05-30 10:14:10.96273-04	142	142Sushant Mugdam (sushantmagdum25@gmail.com) 2016-05-25 09:16:14.620627+00:00	2	Changed order_price and return_delivery.	32	3
870	2016-05-30 10:23:18.302176-04	159	159Mayank B (mayankbhatnagar.udr@gmail.com) 2016-05-28 13:48:00.319849+00:00	2	Changed order_price and payment_status.	32	3
871	2016-06-03 09:37:38.043767-04	2782	striped-long-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
872	2016-06-03 09:39:16.69961-04	2786	light-green-dress	2	Changed mrp, buy_price, rent, security_deposit and style.	21	3
873	2016-06-03 09:40:03.74557-04	2787	pink-shimmer-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
874	2016-06-03 09:40:43.631997-04	2788	floral-crop-top-skirt	2	Changed buy_price and style.	21	3
875	2016-06-03 09:41:20.706917-04	2789	blue-mirrored-gown	2	Changed collections, style and visibility_flag.	21	3
876	2016-06-03 09:41:56.95853-04	2815	green-satin-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
877	2016-06-03 09:42:45.690294-04	2816	brown-long-gown	2	Changed mrp, buy_price, rent, security_deposit and style.	21	3
878	2016-06-03 09:43:25.953516-04	2817	bw-sheath-dress	3		21	3
879	2016-06-03 10:01:59.944035-04	2818	grey-evening-gown	2	Changed buy_price and style.	21	3
880	2016-06-03 10:02:44.621616-04	2830	maroon-party-gown	2	Changed rent, security_deposit and style.	21	3
881	2016-06-03 10:03:24.286652-04	2831	little-black-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
882	2016-06-03 10:04:03.741077-04	2832	black-short-jumpsuit	2	Changed buy_price, rent, security_deposit and style.	21	3
883	2016-06-03 10:04:40.501834-04	2833	off-shoulder-purple-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
884	2016-06-03 10:05:39.832505-04	2834	blue-crop-top-skirt-1	2	Changed buy_price, rent, security_deposit and style.	21	3
885	2016-06-03 10:06:40.312779-04	2835	black-crop-top-skirt	2	Changed buy_price, rent, security_deposit and style.	21	3
886	2016-06-03 10:08:15.19091-04	2854	black-party-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
887	2016-06-03 10:13:22.040173-04	2856	printed-shift-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
888	2016-06-03 10:14:01.351446-04	2859	deep-back-black-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
889	2016-06-03 10:14:40.222358-04	2860	printed-brown-jumpsuit	2	Changed buy_price, rent, security_deposit and style.	21	3
890	2016-06-03 10:15:22.890511-04	2865	shoulder-shimmer-black-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
891	2016-06-03 10:16:00.419853-04	3025	grey-formal-blazer	2	Changed buy_price, rent and security_deposit.	21	3
892	2016-06-03 10:16:36.820214-04	2868	black-formal-blazer	2	Changed buy_price, rent, security_deposit and style.	21	3
893	2016-06-03 10:17:20.375131-04	2870	brownish-cream-jacket	2	Changed buy_price, rent, security_deposit and style.	21	3
894	2016-06-03 10:18:00.049463-04	2871	shimmer-black-pencil-skirt	2	Changed buy_price, rent, security_deposit and style.	21	3
895	2016-06-03 10:18:33.359853-04	2872	black-grey-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
896	2016-06-03 10:18:49.804737-04	2873	light-purple-dress	3		21	3
897	2016-06-03 10:19:16.339768-04	2884	magenta-gown	2	Changed collections and style.	21	3
898	2016-06-03 10:19:43.703616-04	2885	blue-shimmer-gown	2	Changed collections and style.	21	3
899	2016-06-03 10:20:15.656306-04	2886	pink-sequinned-gown	2	Changed collections and style.	21	3
900	2016-06-03 10:20:59.182684-04	2898	sky-blue-jumpsuit	2	Changed buy_price, rent, security_deposit and style.	21	3
901	2016-06-03 10:21:45.194199-04	2900	blue-sheath-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
902	2016-06-03 10:22:14.751113-04	2943	funky-skater-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
903	2016-06-03 10:22:48.86966-04	2944	copper-shimmer-jacket	2	Changed buy_price, rent, security_deposit and style.	21	3
904	2016-06-03 10:23:43.879424-04	2945	printed-halter-neck-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
905	2016-06-03 10:24:27.129873-04	2946	sequinned-pink-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
906	2016-06-03 10:25:01.349561-04	2947	off-shoulder-black-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
907	2016-06-03 10:25:39.768523-04	2948	net-embroidered-black-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
908	2016-06-03 10:29:27.976531-04	2978	mellow-yellow-sheath-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
909	2016-06-03 10:30:13.070959-04	2979	mirror-sequin-maxi-dress	2	Changed rent, security_deposit, collections and style.	21	3
910	2016-06-03 10:30:54.484116-04	2980	embroidded-pink-maxi-dress	2	Changed collections and style.	21	3
911	2016-06-03 10:31:34.253893-04	2981	strapless-bodycon-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
912	2016-06-03 10:34:32.787957-04	2982	cant-miss-suave-orange-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
913	2016-06-03 10:35:11.709855-04	2983	single-strap-printed-maxi-dress	2	Changed buy_price and style.	21	3
914	2016-06-03 10:35:50.361071-04	2984	v-neck-wrap-dress	2	Changed buy_price, rent, security_deposit and style.	21	3
915	2016-06-03 10:45:04.049555-04	2985	printed-bow-tie-jumpsuit	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
916	2016-06-03 10:46:02.043887-04	2986	closed-neck-sheath-dress	2	Changed mrp, buy_price, rent, security_deposit, collections and style.	21	3
917	2016-06-03 10:46:23.747805-04	2987	georgette-maxi-dress	3		21	3
918	2016-06-03 10:47:14.290588-04	2989	painted-envy-jumpsuit	2	Changed buy_price, rent, security_deposit and style.	21	3
919	2016-06-03 10:47:27.233014-04	2989	painted-envy-jumpsuit	2	Changed collections.	21	3
920	2016-06-03 10:47:55.284684-04	2992	printed-v-line-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
921	2016-06-03 10:48:43.674248-04	2994	sleeveless-asymmetrical-dress	2	Changed mrp, buy_price, rent, security_deposit, collections and style.	21	3
922	2016-06-03 10:49:30.763887-04	2996	glitz-beaded-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
923	2016-06-03 10:50:12.790234-04	2998	green-pleated-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
924	2016-06-03 10:50:51.166554-04	3000	classic-black-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
925	2016-06-03 10:51:18.822646-04	3001	raw-silk-yoke-maxi-dress	2	Changed collections and style.	21	3
926	2016-06-03 10:51:54.667141-04	3002	halter-neck-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
927	2016-06-03 10:52:25.530938-04	3004	pink-bodycon-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
928	2016-06-03 10:53:05.890163-04	3006	halter-neck-glitz-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
929	2016-06-03 10:53:38.608869-04	3008	sexy-black-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
930	2016-06-03 10:54:12.997968-04	3010	printed-peplum-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
931	2016-06-03 10:54:56.336382-04	3014	top-sequinned-skater-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
932	2016-06-03 10:55:28.932944-04	3015	sunshine-day-dress	2	Changed buy_price, collections and style.	21	3
933	2016-06-03 10:56:05.096723-04	3016	full-sleeves-shift-dress	2	Changed collections and style.	21	3
934	2016-06-03 10:56:35.886075-04	3018	pretty-pink-pleated-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
935	2016-06-03 10:57:13.692978-04	3019	textured-shift-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
936	2016-06-03 10:57:44.272346-04	3020	printed-sheath-white-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
937	2016-06-03 10:58:14.864815-04	3024	striped-sheath-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
938	2016-06-03 10:58:51.352666-04	3027	floral-snowwhite-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
939	2016-06-03 10:59:36.577027-04	2869	dark-blue-formal-blazer	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
940	2016-06-03 11:00:12.559526-04	2997	shimmer-copper-jumpsuit	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
941	2016-06-03 11:00:46.901788-04	3017	knotted-back-skater-dress	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
942	2016-06-03 11:01:33.852351-04	2782	striped-long-dress	2	Changed collections.	21	3
943	2016-06-03 11:01:54.295321-04	2786	light-green-dress	2	Changed collections.	21	3
944	2016-06-03 11:02:48.289907-04	2787	pink-shimmer-dress	2	Changed collections.	21	3
945	2016-06-03 11:03:06.555725-04	2815	green-satin-dress	2	Changed collections.	21	3
946	2016-06-03 11:03:26.126383-04	2816	brown-long-gown	2	Changed collections.	21	3
947	2016-06-03 11:03:46.11523-04	2831	little-black-dress	2	Changed collections.	21	3
948	2016-06-03 11:04:02.509404-04	2832	black-short-jumpsuit	2	Changed collections.	21	3
949	2016-06-03 11:04:20.149369-04	2833	off-shoulder-purple-dress	2	Changed collections.	21	3
950	2016-06-03 11:04:33.432086-04	2834	blue-crop-top-skirt-1	2	Changed collections.	21	3
952	2016-06-03 11:05:14.377627-04	2856	printed-shift-dress	2	Changed collections.	21	3
953	2016-06-03 11:05:35.962017-04	2859	deep-back-black-dress	2	Changed collections.	21	3
954	2016-06-03 11:05:55.987527-04	2860	printed-brown-jumpsuit	2	Changed collections.	21	3
955	2016-06-03 11:06:12.422577-04	2865	shoulder-shimmer-black-dress	2	Changed collections.	21	3
956	2016-06-03 11:06:36.207255-04	2868	black-formal-blazer	2	Changed collections.	21	3
957	2016-06-03 11:07:14.360143-04	2867	gray-formal-blazer	2	Changed buy_price, rent, security_deposit, collections and style.	21	3
958	2016-06-03 11:07:38.123455-04	2870	brownish-cream-jacket	2	Changed collections.	21	3
959	2016-06-03 11:07:57.78843-04	2872	black-grey-dress	2	Changed collections.	21	3
960	2016-06-03 11:08:18.855568-04	2898	sky-blue-jumpsuit	2	Changed collections.	21	3
961	2016-06-03 11:08:35.613147-04	2900	blue-sheath-dress	2	Changed collections.	21	3
962	2016-06-03 11:08:55.605947-04	2854	black-party-dress	2	Changed collections.	21	3
963	2016-06-03 11:09:17.258512-04	2997	shimmer-copper-jumpsuit	2	No fields changed.	21	3
964	2016-06-03 11:09:35.73902-04	2945	printed-halter-neck-dress	2	Changed collections.	21	3
965	2016-06-03 11:09:56.539546-04	2946	sequinned-pink-dress	2	Changed collections.	21	3
966	2016-06-03 11:10:15.975996-04	2947	off-shoulder-black-dress	2	Changed collections.	21	3
967	2016-06-03 11:10:32.865304-04	2948	net-embroidered-black-dress	2	Changed collections.	21	3
968	2016-06-03 11:11:09.430161-04	2943	funky-skater-dress	2	Changed collections.	21	3
969	2016-06-03 11:11:29.316264-04	2981	strapless-bodycon-dress	2	Changed collections.	21	3
970	2016-06-03 11:11:48.780781-04	2982	cant-miss-suave-orange-dress	2	Changed collections.	21	3
971	2016-06-03 11:12:04.67781-04	2984	v-neck-wrap-dress	2	Changed collections.	21	3
972	2016-06-03 11:12:23.842907-04	2985	printed-bow-tie-jumpsuit	2	No fields changed.	21	3
973	2016-06-04 01:02:01.034849-04	2978	mellow-yellow-sheath-dress	2	Changed collections.	21	3
974	2016-06-10 06:17:12.778939-04	2851	elite-sangria-princess-gown	3		21	3
975	2016-06-10 06:17:48.539549-04	2966	oscar-awards-gown	3		21	3
976	2016-06-10 06:19:23.17418-04	2849	hollywood-collection-layered-hi-lo-dress-slim-fit	3		21	3
977	2016-06-13 03:57:30.206658-04	4	CANDID25	1	Added.	42	3
978	2016-06-13 03:57:30.438302-04	5	CANDID25	1	Added.	42	3
979	2016-06-13 03:57:44.241682-04	4	CANDID25	3		42	3
980	2016-06-13 03:57:44.244211-04	3	CANDID	3		42	3
981	2016-06-13 03:57:44.245848-04	2	CANDID50	3		42	3
982	2016-06-13 03:57:44.247454-04	1	CK15	3		42	3
983	2016-06-13 12:12:36.963001-04	2839	velvet-purple-lehenga	2	Changed buy_price and style.	21	3
984	2016-06-17 12:09:37.939097-04	2996	glitz-beaded-dress	2	Changed security_deposit.	21	3
985	2016-06-25 04:26:19.466116-04	5	CANDID25	3		42	3
986	2016-06-27 08:26:34.279392-04	3049	black-shiny-lapel-suit	1	Added.	21	3
987	2016-06-27 08:28:55.124163-04	1147	MWPRS201	1	Added.	41	3
988	2016-06-27 08:30:17.869299-04	3050	cream-honeycomb-sherwani	1	Added.	21	3
989	2016-06-27 08:31:09.064156-04	1148	MEPJS201	1	Added.	41	3
990	2016-06-27 08:32:38.227462-04	3051	cream-indowestern-sherwani	1	Added.	21	3
991	2016-06-27 08:33:00.655251-04	3050	cream-honeycomb-sherwani	2	Changed vendor, brand, category and ideal_for.	21	3
992	2016-06-27 08:33:21.549428-04	3049	black-shiny-lapel-suit	2	Changed category and ideal_for.	21	3
993	2016-06-27 08:34:04.31197-04	1149	MEPKS202	1	Added.	41	3
994	2016-06-27 08:35:25.120622-04	3052	cream-sherwani-with-stone-work	1	Added.	21	3
995	2016-06-27 08:36:17.77315-04	1150	MEPAR203	1	Added.	41	3
996	2016-06-27 08:37:51.348252-04	3053	cream-wedding-sherwani	1	Added.	21	3
997	2016-06-27 08:38:44.264619-04	1151	MEPRA204	1	Added.	41	3
998	2016-06-27 08:39:59.742678-04	3054	maroon-indowestern-sherwani	1	Added.	21	3
999	2016-06-27 08:41:12.804878-04	1152	MEPAR205	1	Added.	41	3
1000	2016-06-27 08:41:24.92354-04	1152	MEPAR205	2	Changed product.	41	3
1001	2016-07-14 10:30:29.525043-04	4	nandan	1	Added.	4	3
1002	2016-07-14 10:31:43.127104-04	4	nandan	2	Changed user_permissions.	4	3
1003	2016-07-14 13:42:46.670773-04	4	nandan	2	No fields changed.	4	3
1004	2016-07-14 13:43:20.596997-04	4	nandan	3		4	3
1005	2016-07-14 13:43:37.726148-04	5	nandan	1	Added.	4	3
1006	2016-07-14 13:44:05.864171-04	5	nandan	2	Changed user_permissions.	4	3
1007	2016-07-14 13:45:38.698416-04	1	This Website Tells You Whether Your Face Is Attractive Or Ugly, And Also Guesses Your Age	1	Added.	44	3
1008	2016-07-14 13:51:26.125129-04	5	nandan	2	Changed is_staff.	4	3
1009	2016-07-14 13:56:34.788421-04	1	123	1	Added.	43	5
1010	2016-07-16 01:55:07.352062-04	2	blog2_1	1	Added.	43	5
1011	2016-07-16 01:55:35.363608-04	3	blog2_1	1	Added.	43	5
1012	2016-07-16 01:57:21.370156-04	4	blog2_2	1	Added.	43	5
1013	2016-07-16 01:57:46.74293-04	3	blog2_1	3		43	5
1014	2016-07-16 01:59:33.355291-04	5	blog2_3	1	Added.	43	5
1015	2016-07-16 02:00:28.365509-04	6	blog2_4	1	Added.	43	5
1016	2016-07-16 02:02:45.154274-04	3	Science Says These 7 Items Make You Instantly More Attractive	1	Added.	44	5
1017	2016-07-16 02:15:21.853556-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed text.	44	5
1018	2016-07-16 13:02:42.214012-04	7	blog3_1	1	Added.	43	5
1019	2016-07-16 13:03:01.687343-04	8	blog3_2	1	Added.	43	5
1020	2016-07-16 13:03:19.222844-04	9	blog3_3	1	Added.	43	5
1021	2016-07-16 13:03:36.118483-04	10	blog3_4	1	Added.	43	5
1022	2016-07-16 13:03:52.209367-04	11	blog3_5	1	Added.	43	5
1023	2016-07-16 13:04:08.776084-04	12	blog3_6	1	Added.	43	5
1024	2016-07-16 13:04:29.667057-04	13	blog3_7	1	Added.	43	5
1025	2016-07-16 13:05:56.58963-04	4	Traditional Throw Down: How To Rock The Wedding Season	1	Added.	44	5
1026	2016-07-16 13:17:33.766809-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1027	2016-07-16 13:18:46.962403-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1028	2016-07-16 13:19:52.76719-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1029	2016-07-16 13:24:46.733441-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1030	2016-07-16 13:26:17.04533-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1031	2016-07-16 13:30:59.375297-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1032	2016-07-16 13:32:03.275668-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed text.	44	5
1033	2016-07-16 13:33:11.671218-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed published_date.	44	5
1034	2016-07-16 13:36:55.839407-04	14	blog4	1	Added.	43	5
1035	2016-07-16 13:46:17.762783-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	1	Added.	44	5
1036	2016-07-16 13:46:37.137793-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed link.	44	5
1037	2016-07-16 13:47:57.673049-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1038	2016-07-16 13:49:23.255482-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1039	2016-07-16 13:50:01.224295-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1040	2016-07-16 13:50:42.661711-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1041	2016-07-16 13:51:22.276551-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1042	2016-07-16 13:51:54.572219-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed published_date.	44	5
1043	2016-07-16 13:57:25.108855-04	15	blog5_1	1	Added.	43	5
1044	2016-07-16 13:58:20.602083-04	11	Here's how to freshen up your work wardrobe without breaking the bank	1	Added.	44	5
1045	2016-07-16 13:59:10.590737-04	11	Here's how to freshen up your work wardrobe without breaking the bank	2	Changed text.	44	5
1046	2016-07-16 13:59:44.832665-04	11	Here's how to freshen up your work wardrobe without breaking the bank	2	Changed published_date.	44	5
1047	2016-07-16 14:09:57.082086-04	11	Here's how to freshen up your work wardrobe without breaking the bank	2	Changed text.	44	5
1048	2016-07-16 14:10:49.784159-04	11	Here's how to freshen up your work wardrobe without breaking the bank	2	Changed text.	44	5
1049	2016-07-16 14:11:33.245038-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed link.	44	5
1050	2016-07-16 14:11:58.011913-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed link.	44	5
1051	2016-07-16 14:14:43.622064-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1052	2016-07-16 14:15:17.892918-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed text.	44	5
1053	2016-07-16 14:17:43.661988-04	12	Style steals: 10 dreamy date dresses	1	Added.	44	5
1054	2016-07-16 14:21:37.346817-04	16	b61	1	Added.	43	5
1055	2016-07-16 14:21:50.820299-04	17	b62	1	Added.	43	5
1056	2016-07-16 14:22:04.379933-04	18	b63	1	Added.	43	5
1057	2016-07-16 14:22:17.822485-04	19	b64	1	Added.	43	5
1058	2016-07-16 14:22:30.571644-04	20	b65	1	Added.	43	5
1059	2016-07-16 14:22:49.568196-04	21	b66	1	Added.	43	5
1060	2016-07-16 14:23:04.66832-04	22	b67	1	Added.	43	5
1061	2016-07-16 14:23:18.73449-04	23	b68	1	Added.	43	5
1062	2016-07-16 14:23:31.676-04	24	b69	1	Added.	43	5
1063	2016-07-16 14:23:46.473078-04	25	b610	1	Added.	43	5
1064	2016-07-16 14:25:46.151057-04	12	Style steals: 10 dreamy date dresses	2	Changed link and text.	44	5
1065	2016-07-16 14:26:38.683232-04	12	Style steals: 10 dreamy date dresses	2	Changed text.	44	5
1066	2016-07-16 14:27:16.814242-04	12	Style steals: 10 dreamy date dresses	2	Changed text.	44	5
1067	2016-07-16 14:27:40.940742-04	12	Style steals: 10 dreamy date dresses	2	Changed text.	44	5
1068	2016-07-16 14:29:10.779284-04	12	Style steals: 10 dreamy date dresses	2	Changed text.	44	5
1069	2016-07-16 14:50:20.39499-04	18	Bollywoods guide to Valentines dressing	1	Added.	44	5
1070	2016-07-16 14:50:33.233339-04	18	Bollywood's guide to Valentine's dressing	2	Changed title.	44	5
1071	2016-07-16 14:51:21.712845-04	18	Bollywood's guide to Valentine's dressing	2	Changed link and text.	44	5
1072	2016-07-16 14:54:34.58841-04	18	Bollywood's guide to Valentine's dressing	2	Changed text.	44	5
1073	2016-07-16 14:55:48.811989-04	26	b71	1	Added.	43	5
1074	2016-07-16 14:56:01.749928-04	27	b72	1	Added.	43	5
1075	2016-07-16 14:56:16.799725-04	28	b73	1	Added.	43	5
1076	2016-07-16 14:56:30.187616-04	29	b74	1	Added.	43	5
1077	2016-07-16 14:56:42.837718-04	30	b75	1	Added.	43	5
1078	2016-07-16 14:57:59.451973-04	18	Bollywood's guide to Valentine's dressing	2	Changed text.	44	5
1079	2016-07-16 14:59:31.898758-04	18	Bollywood's guide to Valentine's dressing	2	Changed created_date and published_date.	44	5
1080	2016-07-16 15:00:01.67034-04	12	Style steals: 10 dreamy date dresses	2	Changed published_date.	44	5
1081	2016-07-16 15:02:49.264611-04	1	This Website Tells You Whether Your Face Is Attractive Or Ugly, And Also Guesses Your Age	2	Changed text and published_date.	44	5
1082	2016-07-16 15:04:00.947611-04	1	This Website Tells You Whether Your Face Is Attractive Or Ugly, And Also Guesses Your Age	2	Changed text.	44	5
1083	2016-07-17 09:36:27.662964-04	31	Science_featured	1	Added.	43	3
1084	2016-07-17 09:36:52.224375-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed link.	44	3
1085	2016-07-17 09:38:23.959276-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed link.	44	3
1086	2016-07-17 09:40:06.396897-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed text.	44	3
1087	2016-07-17 09:41:18.638253-04	32	heels	1	Added.	43	3
1088	2016-07-17 09:43:43.401468-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed text.	44	3
1089	2016-07-17 09:44:44.520023-04	33	lipstick	1	Added.	43	3
1090	2016-07-17 09:45:14.033734-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed text.	44	3
1091	2016-07-17 09:48:39.699507-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed text.	44	3
1092	2016-07-17 10:07:36.682528-04	22	lehenga	1	Added.	44	3
1093	2016-07-17 10:13:13.569136-04	22	This fairytale wedding lehenga actually details the couple love story	2	Changed title.	44	3
1094	2016-07-17 10:13:25.399255-04	22	This fairytale wedding lehenga actually details the couple's love story	2	Changed title.	44	3
1095	2016-07-17 10:13:45.828078-04	22	This fairytale wedding lehenga actually details the couple's love story	2	Changed link.	44	3
1096	2016-07-17 10:16:55.196627-04	23	20 Office-Appropriate Bottoms That Are as Easy and Breezy as a Pair of Shorts	1	Added.	44	3
1097	2016-07-17 10:24:23.47889-04	23	20 Office-Appropriate Bottoms That Are as Easy and Breezy as a Pair of Shorts	2	Changed link and text.	44	3
1098	2016-07-17 10:28:30.504015-04	25	sads	1	Added.	44	3
1099	2016-07-17 10:29:04.718582-04	25	sads	2	Changed link and text.	44	3
1100	2016-07-17 10:31:06.229704-04	25	sads	2	Changed text.	44	3
1101	2016-07-17 10:32:00.152937-04	25	Tiger Shroff Paid A Tribute To Hrithik Roshan By Dancing On You are My Soniya & It Was Amazing	2	Changed title.	44	3
1102	2016-07-17 10:33:57.839928-04	25	Tiger Shroff Paid A Tribute To Hrithik Roshan By Dancing On You are My Soniya & It Was Amazing	2	No fields changed.	44	3
1103	2016-07-17 10:36:12.914985-04	26	9 Easy Ways To Make A Good First Impression	1	Added.	44	3
1104	2016-07-17 10:40:31.995619-04	26	9 Easy Ways To Make A Good First Impression	2	Changed link and text.	44	3
1105	2016-07-17 10:44:40.980939-04	27	22 Important Style Rules You Need To Know About Suits	1	Added.	44	3
1106	2016-07-17 10:56:39.99657-04	27	22 Important Style Rules You Need To Know About Suits	2	Changed text.	44	3
1107	2016-07-17 11:02:28.331421-04	27	22 Important Style Rules You Need To Know About Suits	2	Changed text.	44	3
1108	2016-07-19 01:45:01.455861-04	25	Tiger Shroff Paid A Tribute To Hrithik Roshan By Dancing On You are My Soniya & It Was Amazing	2	Changed text.	44	5
1109	2016-07-19 04:48:04.302393-04	27	22 Important Style Rules You Need To Know About Suits	2	Changed slug.	44	3
1110	2016-07-19 04:48:37.360697-04	26	9 Easy Ways To Make A Good First Impression	2	Changed slug.	44	3
1111	2016-07-19 04:48:51.962754-04	25	Tiger Shroff Paid A Tribute To Hrithik Roshan By Dancing On You are My Soniya & It Was Amazing	2	Changed slug.	44	3
1112	2016-07-19 04:49:06.986431-04	23	20 Office-Appropriate Bottoms That Are as Easy and Breezy as a Pair of Shorts	2	Changed slug.	44	3
1113	2016-07-19 04:49:28.523554-04	22	This fairytale wedding lehenga actually details the couple's love story	2	Changed slug.	44	3
1114	2016-07-19 04:49:43.297829-04	18	Bollywood's guide to Valentine's dressing	2	Changed slug.	44	3
1115	2016-07-19 04:49:59.762748-04	12	Style steals: 10 dreamy date dresses	2	Changed slug.	44	3
1116	2016-07-19 04:50:20.617026-04	11	Here's how to freshen up your work wardrobe without breaking the bank	2	Changed slug.	44	3
1117	2016-07-19 04:50:33.433011-04	9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	2	Changed slug.	44	3
1118	2016-07-19 04:50:52.895782-04	4	Traditional Throw Down: How To Rock The Wedding Season	2	Changed slug.	44	3
1119	2016-07-19 04:51:07.119392-04	3	Science Says These 7 Items Make You Instantly More Attractive	2	Changed slug.	44	3
1120	2016-07-19 04:51:22.705496-04	1	This Website Tells You Whether Your Face Is Attractive Or Ugly, And Also Guesses Your Age	2	Changed slug.	44	3
1122	2016-08-02 10:37:15.776163-04	6	nandan123	3		4	3
1123	2016-08-02 10:40:58.471717-04	283	283shweta Poddar (shweta.poddar@candidknots.com) 2016-07-29 08:25:53.866055+00:00	3		32	3
1124	2016-08-02 10:40:58.475205-04	282	282Test Shweta (dsd@gmail.com) 2016-07-28 16:28:13.246344+00:00	3		32	3
1125	2016-08-02 10:40:58.483455-04	281	281Test Shweta (sadas@gmail.com) 2016-07-28 10:43:18.280561+00:00	3		32	3
1126	2016-08-02 10:40:58.486508-04	280	280Test Shweta (asdnsa@gmail.com) 2016-07-28 10:39:30.049608+00:00	3		32	3
1127	2016-08-02 10:45:03.604415-04	299	Test 202, Raju Mansion, 20-K Chandra reddy layout, Ejipura 	3		31	3
1128	2016-08-02 10:45:03.608143-04	298	Test samdf,af d,msfnmds	3		31	3
1129	2016-08-02 10:45:03.610544-04	297	Test ADasdf asfasf	3		31	3
1130	2016-08-02 10:45:03.612385-04	296	Test sam,d sm,dns	3		31	3
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1130, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	ecommerce	page
8	ecommerce	sex
9	ecommerce	id_card
11	ecommerce	customer
12	ecommerce	vendor
13	ecommerce	brand
15	ecommerce	product_size
17	ecommerce	fashion_model
18	ecommerce	stylist
19	ecommerce	photographer
20	ecommerce	photoshoot
21	ecommerce	product
22	ecommerce	collection
23	ecommerce	product_cost
24	ecommerce	product_rent_log
25	ecommerce	customer_login
26	ecommerce	fashion_model_payment
27	ecommerce	stylist_payment
28	ecommerce	photographer_payment
29	ecommerce	accessory_type
30	ecommerce	accessory
31	ecommerce	address
32	ecommerce	order
33	ecommerce	order_product
34	ecommerce	order_product_accessory
35	ecommerce	customer_feedback
36	ecommerce	product_review
37	ecommerce	cart
38	ecommerce	product_view
39	ecommerce	product_category
40	ecommerce	tag
41	ecommerce	product_variants
42	ecommerce	discounts
43	ecommerce	image
44	ecommerce	post
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_content_type_id_seq', 44, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-01-04 13:21:17.17807-05
2	auth	0001_initial	2016-01-04 13:21:17.255331-05
3	admin	0001_initial	2016-01-04 13:21:17.283976-05
4	admin	0002_logentry_remove_auto_add	2016-01-04 13:21:17.300566-05
5	contenttypes	0002_remove_content_type_name	2016-01-04 13:21:17.340058-05
6	auth	0002_alter_permission_name_max_length	2016-01-04 13:21:17.355306-05
7	auth	0003_alter_user_email_max_length	2016-01-04 13:21:17.372115-05
8	auth	0004_alter_user_username_opts	2016-01-04 13:21:17.385272-05
9	auth	0005_alter_user_last_login_null	2016-01-04 13:21:17.401667-05
10	auth	0006_require_contenttypes_0002	2016-01-04 13:21:17.403757-05
11	auth	0007_alter_validators_add_error_messages	2016-01-04 13:21:17.418466-05
12	ecommerce	0001_initial	2016-01-04 13:21:20.128607-05
13	sessions	0001_initial	2016-01-04 13:21:20.155724-05
14	ecommerce	0002_auto_20160108_2006	2016-01-08 15:06:24.404838-05
15	ecommerce	0003_product_collections	2016-01-13 13:05:41.44-05
16	ecommerce	0004_remove_product_collections	2016-01-13 13:11:40.584-05
17	ecommerce	0005_auto_20160114_2008	2016-01-14 09:38:53.273-05
18	ecommerce	0006_product_ideal_for	2016-01-14 12:50:47.165-05
19	ecommerce	0007_sex_handle	2016-01-14 13:12:36.963-05
20	ecommerce	0008_auto_20160114_2344	2016-01-14 13:15:21.622-05
21	ecommerce	0009_auto_20160115_0018	2016-01-14 13:48:19.506-05
22	ecommerce	0010_auto_20160115_0038	2016-01-14 14:08:31.098-05
23	ecommerce	0011_auto_20160115_0107	2016-01-14 14:37:39.259-05
24	ecommerce	0012_auto_20160115_0109	2016-01-14 14:47:12.447-05
25	ecommerce	0013_product_security_deposit	2016-01-16 03:04:23.713-05
26	ecommerce	0014_product_purchase_date	2016-01-16 10:03:56.107-05
27	ecommerce	0015_vendor_order_notifications	2016-01-23 07:40:51.095-05
28	ecommerce	0016_auto_20160123_2150	2016-01-23 11:20:54.294-05
29	ecommerce	0017_auto_20160203_0750	2016-02-03 02:53:24.715027-05
30	ecommerce	0018_remove_order_invoice_id	2016-02-03 13:38:08.75-05
31	ecommerce	0019_auto_20160205_0037	2016-02-04 14:07:39.441-05
32	ecommerce	0020_customer_fb_id	2016-02-10 14:18:17.868674-05
33	ecommerce	0021_auto_20160210_1938	2016-02-10 14:38:59.647921-05
34	ecommerce	0022_auto_20160210_1945	2016-02-10 14:45:59.694137-05
35	ecommerce	0023_product_category_collection	2016-03-24 06:49:39.747041-04
36	ecommerce	0024_auto_20160406_0834	2016-04-06 04:34:54.039022-04
37	ecommerce	0025_auto_20160406_1858	2016-04-06 14:58:36.469236-04
38	ecommerce	0026_remove_customer_gender	2016-04-08 06:55:29.240083-04
39	ecommerce	0027_auto_20160416_1514	2016-04-16 11:14:33.028061-04
40	ecommerce	0028_auto_20160416_1519	2016-04-16 11:19:25.313-04
41	ecommerce	0029_product_variants_shoulder_size	2016-04-22 08:11:12.35766-04
42	ecommerce	0030_auto_20160425_0108	2016-04-24 21:08:29.276717-04
43	ecommerce	0031_auto_20160512_1109	2016-05-12 07:10:11.444136-04
44	ecommerce	0032_auto_20160514_0949	2016-05-14 05:49:52.370933-04
45	ecommerce	0033_order_payment_request_id	2016-05-14 08:26:46.066361-04
46	ecommerce	0034_auto_20160527_1928	2016-05-27 15:32:42.284893-04
47	ecommerce	0035_product_buy_price	2016-05-27 16:40:11.573527-04
48	ecommerce	0036_auto_20160605_1534	2016-06-05 11:34:36.242605-04
49	ecommerce	0037_image_post	2016-07-14 07:38:55.702096-04
50	ecommerce	0038_post_slug	2016-07-19 04:42:58.668431-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('django_migrations_id_seq', 50, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
0bwoabcvm2p90btdx9ek4uwrhijqgvs2	NTcwYTYwYzgyOWNlNWQ2NTQ4NDU4MGYwZGEzMDc3MWU2NmIxM2ViNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4ZmFlNjA5MDkyMzE1ZWVjNmU2ZThiMWQ2Zjg3N2ZkOWY5OGZiNmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-01-23 02:03:24.331118-05
j2bxiwznhkq6lp8wszfrp1oxmfvn2unb	MGI1MmJkMDA5OTk1MjdhNmZlZGZiNDYwNDAwMDg5M2MxYTIwNjZjYTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NDkwZDYyYmY3YzBlYzg0M2RhZWVmOTU1YTgxMGVmNzE1Yzg2MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2016-04-07 06:52:47.108469-04
6aeme7xaojf30cyqb4cdradsb5zww8bz	NzJkZTkzYmEwODg4NGM0NTZiYjllZDUyMjc4MTYxMDNkODc2ZmNmZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjc0My40Miwic3VtX3RvdGFsIjoyMzk2LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjM0Ny40MTk5OTk5OTk5OTk5NiwiMSI6eyJza3UiOiJEQjA2MyIsIm5hbWUiOiJTSU5HTEUgU1RSQVAgTUFHRU5UQSBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTAyLTEwIiwidG9fZGF0ZSI6IjIwMTYtMDItMTciLCJyZW50Ijo1OTksInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sIjIiOnsic2t1IjoiREIwNjMiLCJuYW1lIjoiU0lOR0xFIFNUUkFQIE1BR0VOVEEgRFJFU1MiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wMi0xMCIsInRvX2RhdGUiOiIyMDE2LTAyLTE3Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9fQ==	2016-02-17 15:07:13.713587-05
rj0n1ohiev2ufsxpazi1d1whcddefqnk	ZGI1MmNhMzdmYThmODYxN2Y5MWY0M2ZhNmI1OTg4YjllMjJkNDYzYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY1OTgsImNhcnRfY291bnQiOjEsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNzEiLCJuYW1lIjoiVkVMVkVUWSBQVVJQTEUgTEVIRU5HQSIsInN1Yl90b3RhbCI6NjU5OCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6MzI5OSwicmVudCI6MzI5OX19	2016-04-15 19:15:41.530877-04
qb3htgf1w5i58drssglgxghffhq6ycg8	YjJlZjZmMjA4ZmY1MGNjOTllNzg4Nzc5NzcwMjFiN2Y4MWMyZjlkMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImRmYjE0NmU1MGZlN2Y1MTJhZTZkNWY4MWNiOTVjOGJkN2MyNDBkZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-02-17 12:20:21.802207-05
4lb9cdm5jpk98qakojd4my9kd0jxyb87	Y2YzZDA5OTlkZDRhMTNkYWYwYjY0NjRkMjU3YThjNTk3MjUwODhkYzp7fQ==	2016-02-01 01:10:12.665469-05
dsz9gz3xx2edlsvuex93zl2z57q8vcqi	NjNiYTVkOTQ0OTYwNGUzZWE0NjVlMWU0ZWE3NzBjYTFiZmNkZDg2OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM3MS43MSwic3VtX3RvdGFsIjoxMTk4LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE3My43MDk5OTk5OTk5OTk5OCwiMSI6eyJza3UiOiJEQjA2MyIsIm5hbWUiOiJTSU5HTEUgU1RSQVAgTUFHRU5UQSBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTAyLTIzIiwidG9fZGF0ZSI6IjIwMTYtMDItMjUiLCJyZW50Ijo1OTksInNlY3VyaXR5X2RlcG9zaXQiOjU5OX19	2016-02-17 16:01:38.003948-05
qd1wrfngy1iaomhmqajn6vz1she96mx3	OTQyYThkOGM3NjZiZDVlNjA4MzUzYmVlMTkzMzNkYjQyMTJlYzFkOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjcyOTYsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNjMiLCJuYW1lIjoiU0lOR0xFIFNUUkFQIE1BR0VOVEEgRFJFU1MiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wMi0xMCIsInRvX2RhdGUiOiIyMDE2LTAyLTEyIiwicmVudCI6NTk5LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTl9LCIyIjp7InNrdSI6IkRCMDYzIiwibmFtZSI6IlNJTkdMRSBTVFJBUCBNQUdFTlRBIERSRVNTIiwic3ViX3RvdGFsIjoxMTk4LCJtcnAiOjI1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDItMTAiLCJ0b19kYXRlIjoiMjAxNi0wMi0xMiIsInJlbnQiOjU5OSwic2VjdXJpdHlfZGVwb3NpdCI6NTk5fX0=	2016-02-18 15:34:52.876377-05
6xhjpnlvva0ek7961jdr81ra2fd80stf	OTZiZjE3OGU5YTc5MDViZTA3NWFmOThkNTZkMDI1MTMzMmZiZmM5Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3N2U1MzBlOGI2ZTA4ZDI3ZjlkN2NjMjQ2NmYwZGJlNWYzMWUzOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2016-02-17 13:29:18.696745-05
6bzhfxznav7lr1hnrm5n6ct3c4e3xdo2	ZDU1YTk0N2JmNWNiYWZjYmI1YzJiNWI5YmZiMTZkNzUwYjM2OGE4MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg4OC40Miwic3VtX3RvdGFsIjozMzk2LCJfYXV0aF91c2VyX2lkIjoiMiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjIsInRheCI6NDkyLjQxOTk5OTk5OTk5OTk2LCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIjEiOnsic2t1IjoiREIwMzNBIiwibmFtZSI6IkdPTEQgU0VRVUlOIEJMVUUgRFJFU1MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIxNy8wMi8yMDE2IiwidG9fZGF0ZSI6IjI2LzAyLzIwMTYiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sIjIiOnsic2t1IjoiSkEwNjdDIiwibmFtZSI6IlNFQSBHUkVFTiBQUklOQ0VTUyBHT1dOIiwic3ViX3RvdGFsIjoyMzk4LCJtcnAiOjEwOTk5LCJmcm9tX2RhdGUiOiIxNS8wMi8yMDE2IiwidG9fZGF0ZSI6IjIzLzAyLzIwMTYiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTk5LCJyZW50IjoxMTk5fSwiX2F1dGhfdXNlcl9oYXNoIjoiMTc3ZTUzMGU4YjZlMDhkMjdmOWQ3Y2MyNDY2ZjBkYmU1ZjMxZTM5NCJ9	2016-02-17 13:42:28.651-05
s72rp3tdp3ojfq2g7oayw7nfq7olf9w3	MGVjZjI1OTMyNzAzOTVjOTYzM2NmOGZmNzY4NTc5MmRjODExMzdlNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTgwMi42LCJzdW1fdG90YWwiOjUwOTAsIl9hdXRoX3VzZXJfaWQiOiIxIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3MTIuNiwiY2FydF9jb3VudCI6NSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCIxIjp7InNrdSI6IldXQVIyOSIsIm5hbWUiOiJTSE9VTERFUiBTSElNTUVSIEJMQUNLIERSRVNTIiwibXJwIjoyNzAwLCJzdWJfdG90YWwiOjk5OCwicmVudCI6NDk5LCJkZXBvc2l0Ijo0OTl9LCIzIjp7InNrdSI6IldXQVIzMiIsIm5hbWUiOiJQUklOVEVEIFNISUZUIERSRVNTIiwibXJwIjoyNTk5LCJzdWJfdG90YWwiOjg5OCwiZGVwb3NpdCI6NDQ5LCJyZW50Ijo0NDl9LCIyIjp7InNrdSI6IldXQVIyOSIsIm5hbWUiOiJTSE9VTERFUiBTSElNTUVSIEJMQUNLIERSRVNTIiwibXJwIjoyNzAwLCJzdWJfdG90YWwiOjk5OCwicmVudCI6NDk5LCJkZXBvc2l0Ijo0OTl9LCI1Ijp7InNrdSI6IldXQVI0MCIsIm5hbWUiOiJHUkVZIEZPUk1BTCBCTEFaRVIiLCJtcnAiOjQwMDAsInN1Yl90b3RhbCI6MTE5OCwicmVudCI6NTk5LCJkZXBvc2l0Ijo1OTl9LCI0Ijp7InNrdSI6IldXQVIzOCIsIm5hbWUiOiJERUVQIEJBQ0sgQkxBQ0sgRFJFU1MiLCJtcnAiOjI2NzAsInN1Yl90b3RhbCI6OTk4LCJyZW50Ijo0OTksImRlcG9zaXQiOjQ5OX0sIl9hdXRoX3VzZXJfaGFzaCI6Ijk5MTc3MjY4YTdkNzZmMWFjNTQxNGQ5OGQwYjk0MWE0ZmNmYTk5ODAifQ==	2016-02-05 09:11:29.643979-05
8cx3e0uwu73sap9urczbelcabyf1ej58	MzkzNjk0MWRhNzI4OWEzZmFjNDZlMmUxMjU0NGVlZjdiYzU1MmViMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTEzNy43Miwic3VtX3RvdGFsIjo5OTgsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM5LjcyMDAwMDAwMDAwMDAzLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkpBMDU1IiwibmFtZSI6IlBJTksgUEVQTFVNIERSRVNTIiwibXJwIjozMjk5LCJzdWJfdG90YWwiOjk5OCwiZGVwb3NpdCI6NDk5LCJyZW50Ijo0OTl9fQ==	2016-02-06 11:00:08.991229-05
59sh0uyiyxud18pmgjaj2s5jv4wdv95z	OTQ5YTY5YjljNWU3ZGNhODQ3ZTBlYmM3NTQ3ODhjYTExYmYzZDkyYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM3MS43MSwic3VtX3RvdGFsIjoxMTk4LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE3My43MDk5OTk5OTk5OTk5OCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA2MyIsIm5hbWUiOiJTSU5HTEUgU1RSQVAgTUFHRU5UQSBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIxNy8wMi8yMDE2IiwidG9fZGF0ZSI6IjE4LzAyLzIwMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX19	2016-02-17 14:03:33.010431-05
5fis381q8a5uh1yvqmrb7wrt402t2ph9	ZWJlZGFmYWIxNzIyMzU5NTViYTUwMDI3MzRhOGViNWZiOWI2MGViZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3N2U1MzBlOGI2ZTA4ZDI3ZjlkN2NjMjQ2NmYwZGJlNWYzMWUzOTQiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-02-26 16:47:09.675773-05
ndqhz5syfhlcfvn93skcxe73p7tqrp1p	OTZiZjE3OGU5YTc5MDViZTA3NWFmOThkNTZkMDI1MTMzMmZiZmM5Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3N2U1MzBlOGI2ZTA4ZDI3ZjlkN2NjMjQ2NmYwZGJlNWYzMWUzOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2016-02-06 13:09:02.538-05
c3m0uhqr0kmx7yybxib0dj122toj0kyt	OTZiZjE3OGU5YTc5MDViZTA3NWFmOThkNTZkMDI1MTMzMmZiZmM5Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3N2U1MzBlOGI2ZTA4ZDI3ZjlkN2NjMjQ2NmYwZGJlNWYzMWUzOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2016-02-06 13:09:02.86-05
fxxgjbynckjbfjp3rzh8zyyeykad6odq	MWNmY2IyYzNhNjhlOWNkYmY3NWIyYjA5ODU3YWVjYTVhM2JjNWFkMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJXRVBSUzEwNSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMSIsInRvX2RhdGUiOiIyMDE2LTA2LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5LCJyZW50Ijo4OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-08 06:28:22.273337-04
7onr4etwrkkehd9ljl82lzxj2lpwabc8	MWIzZTQzYWMwYTA5YTQ2NThmOGMyM2Y0ZjZhOWM1ZDcyNWExNzE3Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY1OTgsImNhcnRfY291bnQiOjEsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNzEiLCJuYW1lIjoiVkVMVkVUWSBQVVJQTEUgTEVIRU5HQSIsInN1Yl90b3RhbCI6NjU5OCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNSIsInRvX2RhdGUiOiIyMDE2LTA0LTI3Iiwic2VjdXJpdHlfZGVwb3NpdCI6MzI5OSwicmVudCI6MzI5OX19	2016-04-15 19:03:05.084977-04
9i2u5i2ryn29wlzbzwit8jbzx7lgdwaz	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-05-09 10:33:08.994416-04
7ooqlxk673kurgcesb2je8at0m762ond	NTI0M2IyMGU3YTMzOTM3OWRhZDVjMzQyYjQyMzRkZDE2YzQxMjQzODp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6IkRCMDY1IiwibmFtZSI6IlNLWSBCTFVFIEZVTEwgU0VUIiwic3ViX3RvdGFsIjoxMjk4LCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNC0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjY0OSwicmVudCI6NjQ5fSwic3VtX3RvdGFsIjoyNTk2LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IkRCMDY1IiwibmFtZSI6IlNLWSBCTFVFIEZVTEwgU0VUIiwic3ViX3RvdGFsIjoxMjk4LCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNyIsInJlbnQiOjY0OSwic2VjdXJpdHlfZGVwb3NpdCI6NjQ5fX0=	2016-04-15 19:23:32.356532-04
k6fqnmajxl65pjbr19wtkaqn5wmbubqn	MWFmYzUwNmM4NTIwNjA1YjcxY2I0NWE1ODRlNGY3ODIyM2VhNWM5Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyOTgsImxvZ2luX2NoYW5uZWwiOiJGQiJ9	2016-04-15 19:30:03.646733-04
hg5465nl8fgwn3lpqhrhuuh88md8pfpu	NjM2OWNiN2NlZTY3NDZiODk1MmUxMmRiZTY2YmU5OWQ5YTg1NmRmNzp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IlJpc2hpIiwiaWQiOjE3LCJmYl9pZCI6IjEwMTUzNjI5NzQ1MjM5NjgxIn19	2016-04-16 17:15:31.753977-04
yy0hz9yxtqmafw3negumngq4j19uut4w	OTQ5YTY5YjljNWU3ZGNhODQ3ZTBlYmM3NTQ3ODhjYTExYmYzZDkyYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM3MS43MSwic3VtX3RvdGFsIjoxMTk4LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE3My43MDk5OTk5OTk5OTk5OCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA2MyIsIm5hbWUiOiJTSU5HTEUgU1RSQVAgTUFHRU5UQSBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIxNy8wMi8yMDE2IiwidG9fZGF0ZSI6IjE4LzAyLzIwMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX19	2016-02-17 14:22:43.80255-05
owirsztm774pnlmz2konzypb5mfq8w0l	ZGEwYjdjMDBlOWIyNDBjZjNmNWY3ODEzNGY1M2E5MGZiNjllZjZlYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY1OTQsIm15X2NhcnQiOiJEQjAyOSIsImxvZ2luX2NoYW5uZWwiOiJGQiJ9	2016-04-16 14:37:33.132426-04
42gmbzm8zfjztv6aruzj601axe7bfufp	NmNkZTZkZmY4N2Y3ZjM3MTRmNmIxZDQyZTBkMzVmOTI0ZTg4MTA1YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Njk4Mi4yMSwic3VtX3RvdGFsIjo2MDk4LCJfYXV0aF91c2VyX2lkIjoiMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6ODg0LjIwOTk5OTk5OTk5OTksIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiMSI6eyJza3UiOiJXV0FSMzUiLCJuYW1lIjoiQkxBQ0sgUEFSVFkgRFJFU1MiLCJzdWJfdG90YWwiOjYwOTgsIm1ycCI6MzQ5LCJmcm9tX2RhdGUiOiIyMDE2LTAyLTE2IiwidG9fZGF0ZSI6IjIwMTYtMDItMjIiLCJyZW50IjozMDQ5LCJzZWN1cml0eV9kZXBvc2l0IjozMDQ5fSwiX2F1dGhfdXNlcl9oYXNoIjoiZTNkOWQ2OWZlMDg3OWY3MDZiMzQ0NDY3YzJmZjhiNzUyMDRlZWM2ZiJ9	2016-02-17 15:01:01.484081-05
84b7sus7qv9fgowxli1uyptwsh93mzud	ZWUzNzg4YzIxOTE4YWNjNGI5YTkxNzYxNTc0MjNmYWU1YWU0MTM0Nzp7ImNhcnQiOnsiZ3JhbmRfdG90YWwiOjE2MDYuNjA1LCJyZW50X3RvdGFsIjo3NDksIml0ZW1zIjp7IkpBMDA1QiI6eyJuYW1lIjoiRUxFR0FOVCBCTEFDS1RVTElQIFNVSVQiLCJtcnAiOjU0OTksImZyb21fZGF0ZSI6IjIwMTYtMDItMTQiLCJ0b19kYXRlIjoiMjAxNi0wMi0yMyIsInJlbnQiOjc0OSwic2VjdXJpdHlfZGVwb3NpdCI6NzQ5fX0sIml0ZW1fY291bnQiOjEsInNlcnZpY2VfdGF4IjoxMDguNjA0OTk5OTk5OTk5OTksInNkX3RvdGFsIjo3NDl9LCJsb2dpbl9pZCI6IlJhaHVsIiwiZ3JhbmRfdG90YWwiOjQ0NjAuOTIsInN1bV90b3RhbCI6Mzg5NiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjU2NC45MiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJSaXNoaSIsImlkIjoxNywiZmJfaWQiOjEwMTUzNjI5NzQ1MjM5NjgxfSwiX2F1dGhfdXNlcl9oYXNoIjoiMTc3ZTUzMGU4YjZlMDhkMjdmOWQ3Y2MyNDY2ZjBkYmU1ZjMxZTM5NCJ9	2016-02-27 15:31:34.388-05
qujami64nqwm2z0rv0z3q83lcsb98xbd	YzBlMjEwMDVlNDZhMzMyNDFkMTRhYTM0YjFhNmUxZDc2MDQ2YmU4NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQzMywic3VtX3RvdGFsIjo1OTk4LCJteV9jYXJ0IjoiREIwMzkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjQzNSwiMSI6eyJza3UiOiJEQjAzOSIsIm5hbWUiOiJHT0xEIFNISU1NRVIgUElOSyBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NTk5OCwibXJwIjoyNzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6Mjk5OSwicmVudCI6Mjk5OX19	2016-04-16 15:22:57.517108-04
yajjs6mju5cnonw1hbbz4lc8jrd0duqn	Y2YzZDA5OTlkZDRhMTNkYWYwYjY0NjRkMjU3YThjNTk3MjUwODhkYzp7fQ==	2016-02-17 19:23:42.569461-05
n38mprhd208xeacswj8a4jhf9r2bqeli	OTIwZjJmMzViYzIyYzllNGZhOThiMzQyODEyNDk4NDI2OTEzMThiMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI0OTYsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNDciLCJuYW1lIjoiSEVBVlkgUkVEIEZVTEwgU0VUIiwic3ViX3RvdGFsIjoxMTk4LCJtcnAiOjMwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjU5OSwicmVudCI6NTk5fSwiMyI6eyJza3UiOiJEQjA2MiIsIm5hbWUiOiJTSElOWSBCTFVFIEZVTEwgU0VUIiwic3ViX3RvdGFsIjoxMTk4LCJtcnAiOjMwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjU5OSwic2VjdXJpdHlfZGVwb3NpdCI6NTk5fSwiNCI6eyJza3UiOiJEQjA2MiIsIm5hbWUiOiJTSElOWSBCTFVFIEZVTEwgU0VUIiwic3ViX3RvdGFsIjoxMTk4LCJtcnAiOjMwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjU5OSwic2VjdXJpdHlfZGVwb3NpdCI6NTk5fX0=	2016-04-15 20:10:28.425617-04
b1cia418ua4b1liyfu6ysul8mh7hkp6n	Y2YzZDA5OTlkZDRhMTNkYWYwYjY0NjRkMjU3YThjNTk3MjUwODhkYzp7fQ==	2016-02-24 14:55:49.008039-05
i1qa3ysn446rwkk0leebo5lkrx0thleq	ZWU3Yjk2YWVkNmM2ZDEwOTQ5YWUxMDZhMjUzMjBjMWM5NjRiZjI1NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY0MC4wNjUsInN1bV90b3RhbCI6MzM5NCwibXlfY2FydCI6IkRCMDY1IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MywidGF4IjoyNDYuMDY0OTk5OTk5OTk5OTcsIjEiOnsic2t1IjoiREIwNjUiLCJuYW1lIjoiU0tZIEJMVUUgRlVMTCBTRVQiLCJzdWJfdG90YWwiOjEyOTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOCIsInRvX2RhdGUiOiIyMDE2LTA0LTIwIiwic2VjdXJpdHlfZGVwb3NpdCI6NjQ5LCJyZW50Ijo2NDl9LCIzIjp7InNrdSI6IkRCMDU2IiwibmFtZSI6IlBVUlBMRSBFTUJST0lERVJFRCBQUklOVCBTRVQiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwicmVudCI6NTk5LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTl9LCIyIjp7InNrdSI6IldXQVIzMiIsIm5hbWUiOiJQUklOVEVEIFNISUZUIERSRVNTIiwic3ViX3RvdGFsIjo4OTgsIm1ycCI6MjU5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xNyIsInRvX2RhdGUiOiIyMDE2LTA0LTE5IiwicmVudCI6NDQ5LCJzZWN1cml0eV9kZXBvc2l0Ijo0NDl9fQ==	2016-04-16 05:00:25.429815-04
y4rphoo82q55lem9ujs0bhobzdtn1074	ZjJkYjZhOGY0MjU0ZTI2YmVlMzY5M2FmZmY2N2RjODMwNDdjZmE3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJEQjA2MSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNjEiLCJuYW1lIjoiU0hJTU1FUiBCTEFDSyBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX0sImNhcnRfY291bnQiOjF9	2016-04-16 09:55:09.078382-04
sp59t2ndx1a9xyojr8a5qe8ih3hj02m8	NDdlMDdkZWNmOGZhNWRmYTlmOGUxMDU3MzRmN2FmYzdiOTNmYWUxNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiREIwNjIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjg3fQ==	2016-04-16 15:28:29.401798-04
jbm09v7i7ob8f1x9yznx82id7z5pmc4r	YTg0Y2NmOWQzNjJlMTAzNzY5NWExMjZjNjg3NGVjYzk1M2Q1MWViZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsImNhcnRfY291bnQiOjEsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNjMiLCJuYW1lIjoiU0lOR0xFIFNUUkFQIE1BR0VOVEEgRFJFU1MiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wMi0xNiIsInRvX2RhdGUiOiIyMDE2LTAyLTE3Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9fQ==	2016-02-17 15:58:31.512576-05
h6cy3ffqobxh7mpw7klffydt8ytfq7wp	ODg4OTExMmE0YzZiNDUxMzYxYjc5ODliMzk3ZjFjOGNkMDZlYjg4Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc0MCwiX2F1dGhfdXNlcl9pZCI6IjEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMDU3IiwibmFtZSI6IlJFRCBDSEFNUEFHTkUgRFJFU1MiLCJzdWJfdG90YWwiOjc0MCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTAyLTIzIiwidG9fZGF0ZSI6IjIwMTYtMDItMTgiLCJzZWN1cml0eV9kZXBvc2l0IjozNzAsInJlbnQiOjM3MH0sImNhcnRfY291bnQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTNkOWQ2OWZlMDg3OWY3MDZiMzQ0NDY3YzJmZjhiNzUyMDRlZWM2ZiJ9	2016-02-28 08:05:38.45564-05
rnzp5lvjqw93ru9yjcjuvyzgiksfhhub	MmQ2NzhmYzZlMjAwMjRkM2Y0MGJlODJmZWM4NjhiZWI4ZWZmYzM3OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyOTgsImNhcnRfY291bnQiOjEsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNjUiLCJuYW1lIjoiU0tZIEJMVUUgRlVMTCBTRVQiLCJzdWJfdG90YWwiOjEyOTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTIxIiwic2VjdXJpdHlfZGVwb3NpdCI6NjQ5LCJyZW50Ijo2NDl9fQ==	2016-04-15 19:04:10.59275-04
iencbcqk5fgglpqn72tha76ch7q2qqpm	OTE4Njc2NGRlOGRhNzkwZDUyOTEzNWYzZTE2MDZlMjI1OThjOGNmNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsImNhcnRfY291bnQiOjEsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNjMiLCJuYW1lIjoiU0lOR0xFIFNUUkFQIE1BR0VOVEEgRFJFU1MiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wMi0wOSIsInRvX2RhdGUiOiIyMDE2LTAyLTExIiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9fQ==	2016-02-18 15:26:24.429156-05
ufgjn5ces039geyb8cuwge1pdn2uf0f4	Y2NmNDJhZGIxYzhiYjcyMmQ4ZDZmYWE2N2Q1YjU1OGY1MWU4ZTI1ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsImxvZ2luX2NoYW5uZWwiOiJGQiJ9	2016-04-15 19:29:07.089953-04
z8sju7urciqmvqxgtug93wjn1eps7li4	Zjk3NDI5NjYwOTMxYjM5MWM3NmJkZTZhODQyODg2NjhiZmMxMWZmNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyOTgsImNhcnRfY291bnQiOjEsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNjUiLCJuYW1lIjoiU0tZIEJMVUUgRlVMTCBTRVQiLCJzdWJfdG90YWwiOjEyOTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNSIsInRvX2RhdGUiOiIyMDE2LTA0LTI3Iiwic2VjdXJpdHlfZGVwb3NpdCI6NjQ5LCJyZW50Ijo2NDl9fQ==	2016-04-15 19:36:30.459696-04
b36v8dqwj7o8scrkrppt6tzq0s6mny1k	ZGUxZWNkOThmNzVjYWQ5NmM3NTkxZmI2ZDEwMDEzYWJlYTZiNzZlMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM3MS43MSwic3VtX3RvdGFsIjoxMTk4LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE3My43MDk5OTk5OTk5OTk5OCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA2MyIsIm5hbWUiOiJTSU5HTEUgU1RSQVAgTUFHRU5UQSBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIiLCJ0b19kYXRlIjoiIiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9fQ==	2016-02-17 13:58:16.866751-05
ecnofpqea7egdkuqg9nq7lh3k6fc2wl8	NDY2NmIxYjhiM2ExOWQ4OTIxZjYyZWNhNzJlOGI0MWViNDE1MDEyYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0FSMzciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjAiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMiIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiZGlzY291bnQiOjB9	2016-04-26 02:47:10.23884-04
seg9t0vzl8rkxyzis7l01q6ipbi2sw6f	MDljNDk3Yzc5ZDQwOTFmMzYyN2VhNTM1M2UyNDVmZTFhMjY1ZjAyZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjc0My40Miwic3VtX3RvdGFsIjoyMzk2LCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjM0Ny40MTk5OTk5OTk5OTk5NiwiMSI6eyJza3UiOiJEQjA2MyIsIm5hbWUiOiJTSU5HTEUgU1RSQVAgTUFHRU5UQSBEUkVTUyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMy8wMi8yMDE2IiwidG9fZGF0ZSI6IjI1LzAyLzIwMTYiLCJyZW50Ijo1OTksInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sIjIiOnsic2t1IjoiREIwNjMiLCJuYW1lIjoiU0lOR0xFIFNUUkFQIE1BR0VOVEEgRFJFU1MiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMDkvMDIvMjAxNiIsInRvX2RhdGUiOiIxMC8wMi8yMDE2IiwicmVudCI6NTk5LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTl9fQ==	2016-02-17 14:38:49.019421-05
w8324pjfpk1wgnzz9g3ywwwjhudzafgb	N2U2ZDhmNGZiOGVjZjBhMTU4MjFmYWE0NjgzMmFhMzZhOGEyNDE4ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTY0LCJzdW1fdG90YWwiOjAsIm15X2NhcnQiOiJEQjAyNCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NjYsIjIiOnsic2t1IjoiV1dBUjMyIiwibmFtZSI6IlBSSU5URUQgU0hJRlQgRFJFU1MiLCJzdWJfdG90YWwiOjg5OCwibXJwIjoyNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJyZW50Ijo0NDksInNlY3VyaXR5X2RlcG9zaXQiOjQ0OX19	2016-04-16 15:31:02.54861-04
zcodeduibqtnay59pv6x68uzgz8lsqk9	ZjRiZGVkNTk1MDA0YzA4MjEwNDI2YTQwZjcwZjY0YjZjNTU3OTQ4Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjg3OTgsIm15X2NhcnQiOiJKQTAzNCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiSkEwMzQiLCJuYW1lIjoiTUFHRU5UQSBHT1dOIiwic3ViX3RvdGFsIjo4Nzk4LCJtcnAiOjQwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjEiLCJzZWN1cml0eV9kZXBvc2l0Ijo0Mzk5LCJyZW50Ijo0Mzk5fSwiY2FydF9jb3VudCI6MX0=	2016-04-15 20:50:01.334969-04
ya7aix9ues55yimaju4w9rc54bd3o2ue	MjNjOTkxMTc2MDgwMjUwNzhmNThiNmNlMjlkZWFiOTY3YmJhYzcyNjp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6IkRCMDA2IiwibmFtZSI6IkJMQUNLIE1BTkRSSU4gQ09MTEFSIEJMQVpFUiIsInN1Yl90b3RhbCI6Mjk5OCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMiIsInRvX2RhdGUiOiIyMDE2LTA0LTE0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ5OSwicmVudCI6MTQ5OX0sInN1bV90b3RhbCI6Mzg5NiwibXlfY2FydCI6IldXQVIzMiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiV1dBUjMyIiwibmFtZSI6IlBSSU5URUQgU0hJRlQgRFJFU1MiLCJzdWJfdG90YWwiOjg5OCwibXJwIjoyNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjAiLCJyZW50Ijo0NDksInNlY3VyaXR5X2RlcG9zaXQiOjQ0OX19	2016-04-16 09:51:47.814798-04
2h2u52w3308hrvicf20ay4h3ezxmdmt1	NDQxZWE4OGE0ZjQxYWU3YjFiNjJlZDZmYjM1ZDQ4YjI1ZTU0ZTdiODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOTguNTY1LCJzdW1fdG90YWwiOjE3OTk0LCJteV9jYXJ0IjoiREIwMzkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEzMDQuNTY0OTk5OTk5OTk5OCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAzOSIsIm5hbWUiOiJHT0xEIFNISU1NRVIgUElOSyBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NTk5OCwibXJwIjoyNzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTIxIiwicmVudCI6Mjk5OSwic2VjdXJpdHlfZGVwb3NpdCI6Mjk5OX0sIjMiOnsic2t1IjoiREIwMzkiLCJuYW1lIjoiR09MRCBTSElNTUVSIFBJTksgQU5BUktBTEkiLCJzdWJfdG90YWwiOjU5OTgsIm1ycCI6MjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjI5OTksInNlY3VyaXR5X2RlcG9zaXQiOjI5OTl9LCIyIjp7InNrdSI6IkRCMDM5IiwibmFtZSI6IkdPTEQgU0hJTU1FUiBQSU5LIEFOQVJLQUxJIiwic3ViX3RvdGFsIjo1OTk4LCJtcnAiOjI3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjEiLCJyZW50IjoyOTk5LCJzZWN1cml0eV9kZXBvc2l0IjoyOTk5fX0=	2016-04-16 13:12:14.167869-04
zjx3xmkbhzu9acxsqmy3sgsp3j3drg5j	NjVlYzgzZWQ3NDRmYjBlNmJkYjc4ZDJmMGZlYzk3Mzc2NjBiOWMwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjEyMjkuMDY1LCJzdW1fdG90YWwiOjE5Nzk0LCJteV9jYXJ0IjoiREIwNzEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE0MzUuMDY0OTk5OTk5OTk5OCwiMSI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fSwiMyI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fSwiMiI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fX0=	2016-04-16 13:41:41.264104-04
hrovk9vvufk9kcsr0oi7nvy7vdxv7hq2	ZWE4NWExNTJjNDE1YzFjM2E3ZjY2ZjdmZjkyZjcxNWE2ZmMwMzhiNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNDYiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjgiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-10 01:53:26.81006-04
lozdevjdrao6gtukb2643q4w3r81rp1y	YWFiNGRjNTkwYTkwNjQzNzU4NDU2MTY1ZmUxZjM4NGVlMzM0ZTNlNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzA3Nywic3VtX3RvdGFsIjo2NTk4LCJteV9jYXJ0IjoiREIwNzEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjQ3OSwiMSI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjE4LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-18 04:08:41.69508-04
2lml1197sam19j1e1vzztigca10cpngp	YWU2OTJmMjY4MDk0YjIyYjYzMzZiMDk3M2Q1NmIwODg2MDg2YjNlMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIwMzQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjB9	2016-04-16 15:35:48.256877-04
07qan7ew7gh3y8swdatfl1y8zyd2n2ut	ZDlkNGJhNTQzOTZhZGQ5ODJkMzFkN2Q5OTBjMzY3NDQ4MzE5NzJmYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTE0NCwic3VtX3RvdGFsIjo0Nzk2LCJteV9jYXJ0IjoiREIwMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjM0OCwiMSI6eyJza3UiOiJXV0FSMzIiLCJuYW1lIjoiUFJJTlRFRCBTSElGVCBEUkVTUyIsInN1Yl90b3RhbCI6ODk4LCJtcnAiOjI1OTksImZyb21fZGF0ZSI6IjIwMTYtMDQtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNC0xMyIsInNlY3VyaXR5X2RlcG9zaXQiOjQ0OSwicmVudCI6NDQ5fSwiMiI6eyJza3UiOiJXV0FSMzIiLCJuYW1lIjoiUFJJTlRFRCBTSElGVCBEUkVTUyIsInN1Yl90b3RhbCI6ODk4LCJtcnAiOjI1OTksImZyb21fZGF0ZSI6IjIwMTYtMDQtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNC0xMyIsInNlY3VyaXR5X2RlcG9zaXQiOjQ0OSwicmVudCI6NDQ5fX0=	2016-04-16 16:32:39.515142-04
4qt0esax1kyu9r87anb51merwvrx9el4	MDhlZjNlNmE5ZGZiNTQ3M2RhMDYwYjI2ZjY0OGE3MjBlNzBlMTkzOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjExNCwic3VtX3RvdGFsIjo1NzAwLCJteV9jYXJ0IjoiREIwNjIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQxNCwiMiI6eyJza3UiOiJXV0FSMzgiLCJuYW1lIjoiREVFUCBCQUNLIEJMQUNLIERSRVNTIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6MjY3MCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJyZW50Ijo0OTl9fQ==	2016-04-16 15:59:21.338255-04
3h7p09d40kxdklgun3pn5z7o54e631q7	YmNlZTk5ZjYwNzFmNjVhMmY4MTI5NzhjM2E2NjgwNTAwYmEzMGMzOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiREIwNDciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjg3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDQ3IiwibmFtZSI6IkhFQVZZIFJFRCBGVUxMIFNFVCIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjozMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjAiLCJyZW50Ijo1OTksInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoxOCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-19 05:40:33.630499-04
hqmuf6n92pvpxz506xhira3o5chgqncu	YWFhYTIwOGM1YmI1NTBhODg1ZWRlNmFjZjFlODMzNWJhNTEwZTYwNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzA3Nywic3VtX3RvdGFsIjo2NTk4LCJteV9jYXJ0IjoiREIwNzEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ3OSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fX0=	2016-04-16 16:01:53.969048-04
my43k8ijca3d985pt4jznp68xnvk7j6h	N2FiYzhlZjZmMjM5ZjlmYzM5ZjRjM2M4ZTNiYzVkMmNhZTc5MTQ2Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiREIwNjIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjg3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDYyIiwibmFtZSI6IlNISU5ZIEJMVUUgRlVMTCBTRVQiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9fQ==	2016-04-16 16:03:50.078317-04
ol2fl93prlwz8wjl0tg4b77pfk7jwsa9	NGI5NjczMzA3NzgzM2Y1NTQ0YTJmYmUyOTY5Y2Y1YjQwNzY4MTZiMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiREIwNjIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjg3LCIxIjp7InNrdSI6IkRCMDYyIiwibmFtZSI6IlNISU5ZIEJMVUUgRlVMTCBTRVQiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwicmVudCI6NTk5LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTl9fQ==	2016-04-16 16:07:38.448417-04
qoua0dl7fuvlb2v8i0a5l4csdr3a6l6a	ZmQ5ZmM3ZTdiM2RlZjM4ZTIwMTFiNzllOWYzZGZkMjM2ZDAzZWM0Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Nzk0LCJzdW1fdG90YWwiOjc0MCwibXlfY2FydCI6IkRCMDU3IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA1NyIsIm5hbWUiOiJSRUQgQ0hBTVBBR05FIERSRVNTIiwic3ViX3RvdGFsIjo3NDAsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0wNCIsInRvX2RhdGUiOiIyMDE2LTA0LTA2IiwicmVudCI6MzcwLCJzZWN1cml0eV9kZXBvc2l0IjozNzB9LCIzIjp7InNrdSI6IldXQVIzNCIsIm5hbWUiOiJMSUdIVCBQVVJQTEUgRFJFU1MiLCJzdWJfdG90YWwiOjc5OCwibXJwIjoyOTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJyZW50IjozOTksInNlY3VyaXR5X2RlcG9zaXQiOjM5OX0sInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoxOCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-16 18:37:47.46109-04
yfgw45xohva7xauna6w2y00w8ti97yxc	OWJlYTcyMjM0YmZhMjMzNTQyZmM3OTdhMWEwOTAyZjkwMzgwYWY3Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjc4Nywic3VtX3RvdGFsIjoyNTk4LCJteV9jYXJ0IjoiREIwNTciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE4OSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAwNSIsIm5hbWUiOiJCTEFDSyBCTEFaRVIiLCJzdWJfdG90YWwiOjI1OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMCIsInJlbnQiOjEyOTksInNlY3VyaXR5X2RlcG9zaXQiOjEyOTl9LCIyIjp7InNrdSI6IkRCMDA1IiwibmFtZSI6IkJMQUNLIEJMQVpFUiIsInN1Yl90b3RhbCI6MjU5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOCIsInRvX2RhdGUiOiIyMDE2LTA0LTIwIiwicmVudCI6MTI5OSwic2VjdXJpdHlfZGVwb3NpdCI6MTI5OX19	2016-04-16 16:11:42.96841-04
w4tac0rp4yohh7a90x9hn3dfl9a9uu6d	ZTJhZGEzNDQyYWNkNmI4YzkxNjdiZWMwMDVmMTc5OTBmMzQ2NTZkMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIwMzIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsIjIiOnsic2t1IjoiREIwNTIiLCJuYW1lIjoiT0ZGIFNIT1VMREVSIFBBUlRZIERSRVNTIiwic3ViX3RvdGFsIjoxMzk4LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTMiLCJ0b19kYXRlIjoiMjAxNi0wNC0xNSIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OSwicmVudCI6Njk5fX0=	2016-04-16 16:24:43.399397-04
71cfm5kwike7zwwe6vkern64iilw0szy	OWRjMmJhYjU1N2ExNzE4ZWI1OTEyOTI2MjU0ZDdmNjE0MTQ5ZDNkZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsIjIiOnsic2t1IjoiREIwNTciLCJuYW1lIjoiUkVEIENIQU1QQUdORSBEUkVTUyIsInN1Yl90b3RhbCI6NzQwLCJtcnAiOjI1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNC0xMyIsInNlY3VyaXR5X2RlcG9zaXQiOjM3MCwicmVudCI6MzcwfX0=	2016-04-16 16:28:51.446785-04
02ddniwc9uyo78adickh355ofdlw7jqk	MTUwYTM4ODdiODM2MTNmNDY3MmI4Y2M5MmQzZGI5N2QzM2U3MTM0Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM5Mywic3VtX3RvdGFsIjoxMjk4LCJteV9jYXJ0IjoiREIwNjUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjk1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDY1IiwibmFtZSI6IlNLWSBCTFVFIEZVTEwgU0VUIiwic3ViX3RvdGFsIjoxMjk4LCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNC0xMyIsInJlbnQiOjY0OSwic2VjdXJpdHlfZGVwb3NpdCI6NjQ5fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjE4LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-18 03:59:39.152988-04
fgxnt6nq3v59liarpb3d62as8tipahq1	Zjk2NDVmM2I4MmI4Y2UxOWZkZjIzMGMyMmE2NDhkZmNmOGNlMDQwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzY0NC43LCJzdW1fdG90YWwiOjcxMjcuNywibXlfY2FydCI6IkRCMDA5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1MTcsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwMDkiLCJuYW1lIjoiQkxVRSBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NzEyNy43LCJtcnAiOjI4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjAiLCJyZW50IjozNTYzLjg1LCJzZWN1cml0eV9kZXBvc2l0IjozNTYzLjg1fSwiZGlzY291bnQiOjB9	2016-04-23 05:32:57.233629-04
7a40168sivlfxsygz75r2g0499o4x6io	MDljZGJjZWRiYzU3Yzk2ZDE0ODYwZTkwNDU1OTA4MjU4MWIyNDA1YTp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjciLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sInN1bV90b3RhbCI6MTk5NiwibXlfY2FydCI6IldXQ0s1MiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiV1dDSzUyIiwibmFtZSI6InBpbmsgc2hpbW1lciBkcmVzcyIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNyIsInJlbnQiOjQ5OSwic2VjdXJpdHlfZGVwb3NpdCI6NDk5fX0=	2016-05-09 10:38:30.91795-04
91b4q1i1bz57slrlgqx9ienw8c8ugtro	OTE5MzYwOTk3MDAyMDAzZmQ1MTVkMWMwY2E4OWU3MDhiMTIxMjU1OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjU3Nywic3VtX3RvdGFsIjo2NTk4LCJteV9jYXJ0IjoiREIwNzEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ3OSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJyZW50IjozMjk5LCJzZWN1cml0eV9kZXBvc2l0IjozMjk5fSwiZGlzY291bnQiOjUwMCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjE4LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-22 06:57:45.611392-04
tzcp47gj5tad3uohdqis3astl7ck5jpk	NmE0NzMzZDI5YzMyOTRhYjNiM2YwYjE1NDE0ZjM2MDRhNzlkNzAzYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3Miwic3VtX3RvdGFsIjoyMzk4LCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE3NCwiMSI6eyJza3UiOiJEQjAxMSIsIm5hbWUiOiJCTFVFIEZVTEwgU1VJVCIsInN1Yl90b3RhbCI6MjM5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTk5LCJyZW50IjoxMTk5fSwiZGlzY291bnQiOjB9	2016-04-22 07:04:54.793085-04
7w2qgk3hosru0m61aysstvdxv3ebjr8y	MzY4YjdmMDI4MTc4YTU5NjBlMTI0MzM3ODBiMjQ0ZWYxNDE3MjQ1MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODA0MCwic3VtX3RvdGFsIjo3NDk2LCJteV9jYXJ0IjoiV1dBUjMyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NDQsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiV1dBUjMyIiwibmFtZSI6IlBSSU5URUQgU0hJRlQgRFJFU1MiLCJzdWJfdG90YWwiOjg5OCwibXJwIjoyNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDQtMDYiLCJyZW50Ijo0NDksInNlY3VyaXR5X2RlcG9zaXQiOjQ0OX0sIjIiOnsic2t1IjoiREIwNzJBIiwibmFtZSI6IlZFTFZFVFkgUFVSUExFIExFSEVOR0EiLCJzdWJfdG90YWwiOjY1OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMDYiLCJ0b19kYXRlIjoiMjAxNi0wNC0wOCIsInNlY3VyaXR5X2RlcG9zaXQiOjMyOTksInJlbnQiOjMyOTl9LCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJTaHdldGEiLCJpZCI6MTgsImZiX2lkIjoiMTAyMDgzNzEyMDQ0OTM4MjAifX0=	2016-04-19 06:39:35.072344-04
t4fi34c87stjbsm8xhfvq3asl6r2ebpk	NTRkNDhiNGU1OTY3ZDcxMjY0Zjg1OGRmMGUxZmUxYzdjNzEwNDlkYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTQxLjU0NDk5OTk5OTk5OTgsInN1bV90b3RhbCI6MjE4MC4zOTk5OTk5OTk5OTk2LCJteV9jYXJ0IjoiV1dBUjMyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3NSwiY2FydF9jb3VudCI6MiwiMiI6eyJza3UiOiJEQjAzMiIsIm5hbWUiOiJHT0xEIFNFUVVJTiBCTFVFIERSRVNTIiwic3ViX3RvdGFsIjoxMTQ3LjY5OTk5OTk5OTk5OTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMyIsInRvX2RhdGUiOiIyMDE2LTA0LTE1Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTczLjg0OTk5OTk5OTk5OTksInJlbnQiOjU3My44NDk5OTk5OTk5OTk5fSwiMSI6eyJza3UiOiJXV0FSMzIiLCJuYW1lIjoiUFJJTlRFRCBTSElGVCBEUkVTUyIsInN1Yl90b3RhbCI6MTAzMi42OTk5OTk5OTk5OTk4LCJtcnAiOjI1OTksImZyb21fZGF0ZSI6IjIwMTYtMDQtMTIiLCJ0b19kYXRlIjoiMjAxNi0wNC0xNCIsInJlbnQiOjUxNi4zNDk5OTk5OTk5OTk5LCJzZWN1cml0eV9kZXBvc2l0Ijo1MTYuMzQ5OTk5OTk5OTk5OX0sImRpc2NvdW50IjoxNjYuMTU0OTk5OTk5OTk5OTd9	2016-04-23 09:07:18.516848-04
l4ats3t01eqsmfuo1fy2aq30ayqp8alp	MjgzNjVjNjBlNzNlODcwMjQ4MTJmZjVmYTE1YjFkMzEzYWE0MzFmMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTEwNy42OTk5OTk5OTk5OTk4LCJzdW1fdG90YWwiOjEwMzIuNjk5OTk5OTk5OTk5OCwibXlfY2FydCI6IldXQVIzMiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NzUsIjEiOnsic2t1IjoiV1dBUjMyIiwibmFtZSI6IlBSSU5URUQgU0hJRlQgRFJFU1MiLCJzdWJfdG90YWwiOjEwMzIuNjk5OTk5OTk5OTk5OCwibXJwIjoyNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJzZWN1cml0eV9kZXBvc2l0Ijo1MTYuMzQ5OTk5OTk5OTk5OSwicmVudCI6NTE2LjM0OTk5OTk5OTk5OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjIzLCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-23 09:45:01.516173-04
vngc4v47jojil09gt7aoquoqul6wuq6p	NzRiMTAxNzQ4YTRlNjUyYjgwNjJhZTQwMDlhYTQ2MjdjZTA2ZjIxMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTIzMS42OTk5OTk5OTk5OTk4LCJzdW1fdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXlfY2FydCI6IkRCMDMyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo4NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAzMiIsIm5hbWUiOiJHT0xEIFNFUVVJTiBCTFVFIERSRVNTIiwic3ViX3RvdGFsIjoxMTQ3LjY5OTk5OTk5OTk5OTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTIxIiwicmVudCI6NTczLjg0OTk5OTk5OTk5OTksInNlY3VyaXR5X2RlcG9zaXQiOjU3My44NDk5OTk5OTk5OTk5fSwiZGlzY291bnQiOjB9	2016-04-23 11:13:14.371273-04
n983t90m0mx9h2tp6a1hihrwbbta1zju	NWE2YThlM2E4NTA5NGQ0Y2YxYmI1MzZlMTdkZGI4ZDI2ZjVlZDNmMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI3Mi44MzQ4ODc2NTg3OTg4LCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJEQjA2MiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6ODcsIjEiOnsic2t1IjoiREIwNjIiLCJuYW1lIjoiU0hJTlkgQkxVRSBGVUxMIFNFVCIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjozMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTExIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTMiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX0sImRpc2NvdW50IjoxMi4xNjUxMTIzNDEyMDExMjgsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoxOCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-21 05:35:32.979481-04
rxw83nflcwjzsvucr242oxz0m4mj8hy0	NGY3ZjM4ODJlNTc0YmRiZDg3YjVmNzM2YjQ0MDE1ZGQ1MjVhYjU3MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTEyMS4xNjI1LCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJEQjA1NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6ODcsIjEiOnsic2t1IjoiREIwNTYiLCJuYW1lIjoiUFVSUExFIEVNQlJPSURFUkVEIFBSSU5UIFNFVCIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjozMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjAiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX0sImRpc2NvdW50IjoxNjMuODM3NSwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjE4LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-21 05:39:21.510187-04
9rmyxr1tpcjwcy2p6oxhv8onqq0owby0	ZWM0ODNlNjYwYWRjMDg2MGY1Y2MzZmVkYjNlZmI0ZjBmYWQ0MzRlYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjU3Nywic3VtX3RvdGFsIjo2NTk4LCJteV9jYXJ0IjoiREIwNzEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ3OSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjAiLCJyZW50IjozMjk5LCJzZWN1cml0eV9kZXBvc2l0IjozMjk5fSwiZGlzY291bnQiOjUwMCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjE4LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-20 17:06:00.936275-04
li6pijubul6fevdp5crrmu4wj53puqxl	MjY1OTQ5Y2M4MmY4YWI0OWMxMTU2M2ViZWE1ZGNjMGE5YzQ1OTYyYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA5Mi4yNSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiREIwNjIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjg3LCIxIjp7InNrdSI6IkRCMDYyIiwibmFtZSI6IlNISU5ZIEJMVUUgRlVMTCBTRVQiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMiIsInRvX2RhdGUiOiIyMDE2LTA0LTE0Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9LCJkaXNjb3VudCI6MTkyLjc1LCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJTaHdldGEiLCJpZCI6MTgsImZiX2lkIjoiMTAyMDgzNzEyMDQ0OTM4MjAifX0=	2016-04-22 06:44:26.049032-04
jyhu9n5fqsao49kseq4u11zyyo7tt8p8	NTk1OGE3MWQ1ZjA1MGQ3NzQwMjcwMzA2Nzk3NDQyMDY2MTczNDgxNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTQyOTIuNywic3VtX3RvdGFsIjoxMzMyNS43LCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjk2NywiMSI6eyJza3UiOiJEQjAwOSIsIm5hbWUiOiJCTFVFIEFOQVJLQUxJIiwic3ViX3RvdGFsIjo3MTI3LjcsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjM1NjMuODUsInNlY3VyaXR5X2RlcG9zaXQiOjM1NjMuODV9LCJkaXNjb3VudCI6MCwiMyI6eyJza3UiOiJEQjAwOSIsIm5hbWUiOiJCTFVFIEFOQVJLQUxJIiwic3ViX3RvdGFsIjo3MTI3LjcsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjM1NjMuODUsInNlY3VyaXR5X2RlcG9zaXQiOjM1NjMuODV9LCIyIjp7InNrdSI6IkRCMDA5IiwibmFtZSI6IkJMVUUgQU5BUktBTEkiLCJzdWJfdG90YWwiOjcxMjcuNywibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTIxIiwicmVudCI6MzU2My44NSwic2VjdXJpdHlfZGVwb3NpdCI6MzU2My44NX19	2016-04-23 05:27:30.683235-04
ggu53g34d7jidjgn0mirb0qpbgy63geh	NjY3MWZjZWZjOTRjZDI3YTkzYTNhZGI5MGM0NWUwZDQ1MmU3ZGMwYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTkzMywic3VtX3RvdGFsIjo1OTk4LCJteV9jYXJ0IjoiREIwMzkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQzNSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAzOSIsIm5hbWUiOiJHT0xEIFNISU1NRVIgUElOSyBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NTk5OCwibXJwIjoyNzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMSIsInRvX2RhdGUiOiIyMDE2LTA0LTEzIiwicmVudCI6Mjk5OSwic2VjdXJpdHlfZGVwb3NpdCI6Mjk5OX0sImRpc2NvdW50Ijo1MDB9	2016-04-22 07:02:51.969464-04
1e2m647ld6crfocy24cp1kaneb66tp8r	ZTViMzM4YjhkYzQyMzg4OTVjYTViNTZiODRjZGMyYWEwNTY1MDE4NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzY0NC43LCJzdW1fdG90YWwiOjcxMjcuNywibXlfY2FydCI6IkRCMDA5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo1MTcsIjEiOnsic2t1IjoiREIwMDkiLCJuYW1lIjoiQkxVRSBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NzEyNy43LCJtcnAiOjI4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTIwIiwidG9fZGF0ZSI6IjIwMTYtMDQtMjIiLCJzZWN1cml0eV9kZXBvc2l0IjozNTYzLjg1LCJyZW50IjozNTYzLjg1fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyMiwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-23 09:04:35.901336-04
a0ezwn6y8xzb7fmo455sx2cpjprci72n	OWE0NmExODdkMGI3MWMyODI0MzJiOGE3YmI0MGZlOTBjMDc5MmE4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 04:48:17.897823-04
kc83xbc3ijhg6mzhbsv4gpvpewxrokw0	N2M2ZWE1MGJiZTY3NzU3NGNlNzU4NmJmMDNlODJkNWM2ODgzYTJmMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTE0NCwic3VtX3RvdGFsIjo0Nzk2LCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjM0OCwiMSI6eyJza3UiOiJEQjAxMSIsIm5hbWUiOiJCTFVFIEZVTEwgU1VJVCIsInN1Yl90b3RhbCI6MjM5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTk5LCJyZW50IjoxMTk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiREIwMTEiLCJuYW1lIjoiQkxVRSBGVUxMIFNVSVQiLCJzdWJfdG90YWwiOjIzOTgsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xMiIsInRvX2RhdGUiOiIyMDE2LTA0LTE0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTE5OSwicmVudCI6MTE5OX0sInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoxOCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-22 07:06:23.338005-04
0p7h0m4mo3arym7megimakm0win7m9dp	NjU4Nzg5NjJiZDI2ZGUzMTM5YmUzMTAzYTQ5NzI3MTQ5YzkxYjlhYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzA3Nywic3VtX3RvdGFsIjo2NTk4LCJteV9jYXJ0IjoiREIwNzEiLCJfYXV0aF91c2VyX2lkIjoiMyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NDc5LCJjYXJ0X2NvdW50IjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIjEiOnsic2t1IjoiREIwNzEiLCJuYW1lIjoiVkVMVkVUWSBQVVJQTEUgTEVIRU5HQSIsInN1Yl90b3RhbCI6NjU5OCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNSIsInRvX2RhdGUiOiIyMDE2LTA0LTI3IiwicmVudCI6MzI5OSwic2VjdXJpdHlfZGVwb3NpdCI6MzI5OX0sIl9hdXRoX3VzZXJfaGFzaCI6Ijc1NDkwZDYyYmY3YzBlYzg0M2RhZWVmOTU1YTgxMGVmNzE1Yzg2MWEifQ==	2016-04-20 15:40:02.611359-04
byritemr5dgw9honxj9v6t1mn5hl6w86	MmVkNDdmMTIxMGUyN2MyMDRmNmFmNmNkYzM5MWQwN2E0NjgyNWQ0ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJEQjA2MiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwNjIiLCJuYW1lIjoiU0hJTlkgQkxVRSBGVUxMIFNFVCIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjozMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjciLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX0sImNhcnRfY291bnQiOjF9	2016-04-20 17:19:08.636297-04
34b5g3j7lmuqe2dsgu4r6qfw6mq27ga9	ZDFlMGQyMDA0OTA3YmVhOGQ0ZTJhYTRiMWQzZTBjNDFmZmMzNTJlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjY5Ni42OTQ5OTk5OTk5OTk3LCJzdW1fdG90YWwiOjI3NTUuMzk5OTk5OTk5OTk5NiwibXlfY2FydCI6IkRCMDUyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4IjoyMDAsIjEiOnsic2t1IjoiREIwNTIiLCJuYW1lIjoiT0ZGIFNIT1VMREVSIFBBUlRZIERSRVNTIiwic3ViX3RvdGFsIjoxNjA3LjY5OTk5OTk5OTk5OTgsIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTI0Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODAzLjg0OTk5OTk5OTk5OTksInJlbnQiOjgwMy44NDk5OTk5OTk5OTk5fSwiZGlzY291bnQiOjI1OC43MDUsIjIiOnsic2t1IjoiREIwMzNBIiwibmFtZSI6IkdPTEQgU0VRVUlOIEJMVUUgRFJFU1MiLCJzdWJfdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDQtMTQiLCJzZWN1cml0eV9kZXBvc2l0Ijo1NzMuODQ5OTk5OTk5OTk5OSwicmVudCI6NTczLjg0OTk5OTk5OTk5OTl9LCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJTaHdldGEiLCJpZCI6MjIsImZiX2lkIjoiMTAyMDgzNzEyMDQ0OTM4MjAifX0=	2016-04-23 09:22:08.121545-04
1tt1rlqe0w9vd5aac9ah6r3dz7qrywhi	MTgwYWVmODdmMzMyZTI1Mzk0MzczOGU4MDRmNTQ0YTU3MTdjNDIwYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDQzNy43LCJzdW1fdG90YWwiOjQxMzcuNywibXlfY2FydCI6IkRCMDQ1IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNDUiLCJuYW1lIjoiR1JFWSAzLVBJRUNFIFNVSVQiLCJzdWJfdG90YWwiOjQxMzcuNywibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNiIsInRvX2RhdGUiOiIyMDE2LTA0LTI4IiwicmVudCI6MjA2OC44NSwic2VjdXJpdHlfZGVwb3NpdCI6MjA2OC44NX0sImRpc2NvdW50IjowfQ==	2016-04-23 10:12:14.587071-04
wo2nqbrg9m2t4ufz2wg8mi64q9ifbjdu	ZmY1ZDY3NTU3YzRjMzA4MTQxNjE0MWZkZjBkYTgwZjIyYTdkZTY4Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjY4MzksInN1bV90b3RhbCI6MjY0ODgsIm15X2NhcnQiOiJEQjA3MSIsIjYiOnsic2t1IjoiV1dBUjM4IiwibmFtZSI6IkRFRVAgQkFDSyBCTEFDSyBEUkVTUyIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjI2NzAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNyIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6NiwidGF4IjoxODQ5LCIxIjp7InNrdSI6IkRCMDcxIiwibmFtZSI6IlZFTFZFVFkgUFVSUExFIExFSEVOR0EiLCJzdWJfdG90YWwiOjY1OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNC0xMyIsInNlY3VyaXR5X2RlcG9zaXQiOjMyOTksInJlbnQiOjMyOTl9LCJkaXNjb3VudCI6NTAwLCIzIjp7InNrdSI6IkRCMDM5IiwibmFtZSI6IkdPTEQgU0hJTU1FUiBQSU5LIEFOQVJLQUxJIiwic3ViX3RvdGFsIjo1OTk4LCJtcnAiOjI3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjoyOTk5LCJyZW50IjoyOTk5fSwiMiI6eyJza3UiOiJXV0FSMzIiLCJuYW1lIjoiUFJJTlRFRCBTSElGVCBEUkVTUyIsInN1Yl90b3RhbCI6ODk4LCJtcnAiOjI1OTksImZyb21fZGF0ZSI6IjIwMTYtMDQtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ0OSwicmVudCI6NDQ5fSwiNSI6eyJza3UiOiJEQjAzOSIsIm5hbWUiOiJHT0xEIFNISU1NRVIgUElOSyBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NTk5OCwibXJwIjoyNzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNiIsInRvX2RhdGUiOiIyMDE2LTA0LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mjk5OSwicmVudCI6Mjk5OX0sInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoxOCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9LCI0Ijp7InNrdSI6IkRCMDM5IiwibmFtZSI6IkdPTEQgU0hJTU1FUiBQSU5LIEFOQVJLQUxJIiwic3ViX3RvdGFsIjo1OTk4LCJtcnAiOjI3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjgiLCJyZW50IjoyOTk5LCJzZWN1cml0eV9kZXBvc2l0IjoyOTk5fX0=	2016-04-21 07:20:22.488116-04
pdak6gxhlk1awsqebr0gqih55zen17fr	N2Q0MmJkMzg3MTJmYzM4YTBlMTljZjRlNGMxMDhmMjU4ZGI3YmEyMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE4Ni4yLCJzdW1fdG90YWwiOjIzOTgsIm15X2NhcnQiOiJEQjAxMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTc0LCIxIjp7InNrdSI6IkRCMDExIiwibmFtZSI6IkJMVUUgRlVMTCBTVUlUIiwic3ViX3RvdGFsIjoyMzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjExOTksInJlbnQiOjExOTl9LCJkaXNjb3VudCI6Mzg1LjgsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-26 06:14:05.273714-04
eq0m9kavz8x3k36r7oe7gycrzhe2t3jb	ODQ2ZThlYjIyODc5MWYyZWRlZTUwYWE4MjhlZjM2OGMzNDM5ZjFlODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzQxOS44OTk5OTk5OTk5OTk2LCJzdW1fdG90YWwiOjMxODcuODk5OTk5OTk5OTk5NiwibXlfY2FydCI6IldXQVIzMiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjMyLCJjYXJ0X2NvdW50IjozLCIxIjp7InNrdSI6IldXQVIzMiIsIm5hbWUiOiJQUklOVEVEIFNISUZUIERSRVNTIiwic3ViX3RvdGFsIjoxMDMyLjY5OTk5OTk5OTk5OTgsIm1ycCI6MjU5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNiIsInRvX2RhdGUiOiIyMDE2LTA1LTAxIiwicmVudCI6NTE2LjM0OTk5OTk5OTk5OTksInNlY3VyaXR5X2RlcG9zaXQiOjUxNi4zNDk5OTk5OTk5OTk5fSwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiV1dBUjMyIiwibmFtZSI6IlBSSU5URUQgU0hJRlQgRFJFU1MiLCJzdWJfdG90YWwiOjEwNzcuNiwibXJwIjoyNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjMiLCJyZW50Ijo1MzguOCwic2VjdXJpdHlfZGVwb3NpdCI6NTM4Ljh9LCIyIjp7InNrdSI6IldXQVIzMiIsIm5hbWUiOiJQUklOVEVEIFNISUZUIERSRVNTIiwic3ViX3RvdGFsIjoxMDc3LjYsIm1ycCI6MjU5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOCIsInRvX2RhdGUiOiIyMDE2LTA0LTIzIiwic2VjdXJpdHlfZGVwb3NpdCI6NTM4LjgsInJlbnQiOjUzOC44fX0=	2016-04-26 02:06:45.733394-04
3c83odcxcftykot9ehl0x17lwywtnnes	MTI3ODA3YzIyNzI2NmUyNTYzNzI5NGEwYWQ5ZmRmNzQwMTE4MWU3Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU2OS4yLCJzdW1fdG90YWwiOjIzOTUuMiwibXlfY2FydCI6IldXQVIzNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTc0LCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6MTE5Ny42LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNCIsInJlbnQiOjU5OC44LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTguOH0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6MTE5Ny42LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjU5OC44LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTguOH19	2016-04-26 02:08:53.029522-04
2ktbhwovchbyq80e4fc6m2c4xtr2ug04	NjU0ZDY2NDViNjhlYzAyYWFiYzYzYWEzODFjYzI5NjA5NmE5NjVhNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzUzMi4zOTk5OTk5OTk5OTk2LCJzdW1fdG90YWwiOjMyOTMuMzk5OTk5OTk5OTk5NiwibXlfY2FydCI6IldXQVIzNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjM5LCJjYXJ0X2NvdW50IjozLCIxIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMCIsInJlbnQiOjQ5OSwic2VjdXJpdHlfZGVwb3NpdCI6NDk5fSwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiV1dBUjM3IiwibmFtZSI6IlNLWSBCTFVFIEpVTVBTVUlUIiwic3ViX3RvdGFsIjoxMTQ3LjY5OTk5OTk5OTk5OTgsIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOCIsInRvX2RhdGUiOiIyMDE2LTA0LTI1IiwicmVudCI6NTczLjg0OTk5OTk5OTk5OTksInNlY3VyaXR5X2RlcG9zaXQiOjU3My44NDk5OTk5OTk5OTk5fSwiMiI6eyJza3UiOiJXV0FSMzciLCJuYW1lIjoiU0tZIEJMVUUgSlVNUFNVSVQiLCJzdWJfdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXJwIjo0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjMiLCJyZW50Ijo1NzMuODQ5OTk5OTk5OTk5OSwic2VjdXJpdHlfZGVwb3NpdCI6NTczLjg0OTk5OTk5OTk5OTl9fQ==	2016-04-26 02:11:38.234028-04
0pd4my4inc4yladtj4j010fypto0eo2k	OTk0MmMwYjgxMzY1YzI4OThmZTI1NDM5Mzk4NmE5NDk1Y2FiNDUxOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjY0MSwic3VtX3RvdGFsIjo2MTkyLCJteV9jYXJ0IjoiREIwMDkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ0OSwiZGlzY291bnQiOjB9	2016-05-03 02:00:28.608363-04
a2m6ilzpounc4ziv1ekylphquszt72xi	YTA4OWIyNmMwZjI1ODZjYzRlYjkwYmUxNWZlMTNlOWQ1MWExOTU4MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTQzNCwic3VtX3RvdGFsIjo4Nzk2LCJteV9jYXJ0IjoiV0VBRFAyMEIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjYzOCwiY2FydF9jb3VudCI6MiwiMSI6eyJza3UiOiJXRUFEUDIwQiIsIm5hbWUiOiJibGFjayBhbmFya2FsaSAxIiwic3ViX3RvdGFsIjo0Mzk4LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjciLCJzZWN1cml0eV9kZXBvc2l0IjoyMTk5LCJyZW50IjoyMTk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VBRFAyMEIiLCJuYW1lIjoiYmxhY2sgYW5hcmthbGkgMSIsInN1Yl90b3RhbCI6NDM5OCwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNiIsInRvX2RhdGUiOiIyMDE2LTA0LTI4IiwicmVudCI6MjE5OSwic2VjdXJpdHlfZGVwb3NpdCI6MjE5OX19	2016-05-09 07:38:22.912853-04
xayrq763sratqpaz6i17pc9bpxs8193y	NDE4OTQxNjA3MjY1MzI2Y2EyYjhkNDg5YjAxN2FhOWViYWY3NTdjNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjUxNi4yOTk5OTk5OTk5OTk3LCJzdW1fdG90YWwiOjIzNDUuMjk5OTk5OTk5OTk5NywibXlfY2FydCI6IldXQVIzNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTcxLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6MTE0Ny42OTk5OTk5OTk5OTk4LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNCIsInJlbnQiOjU3My44NDk5OTk5OTk5OTk5LCJzZWN1cml0eV9kZXBvc2l0Ijo1NzMuODQ5OTk5OTk5OTk5OX0sImRpc2NvdW50IjowLCIzIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6MTE5Ny42LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjciLCJ0b19kYXRlIjoiMjAxNi0wNS0wNCIsInJlbnQiOjU5OC44LCJzZWN1cml0eV9kZXBvc2l0Ijo1OTguOH0sIjIiOnsic2t1IjoiV1dBUjM3IiwibmFtZSI6IlNLWSBCTFVFIEpVTVBTVUlUIiwic3ViX3RvdGFsIjoxMTk3LjYsIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNyIsInRvX2RhdGUiOiIyMDE2LTA1LTA0IiwicmVudCI6NTk4LjgsInNlY3VyaXR5X2RlcG9zaXQiOjU5OC44fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjIzLCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-26 02:19:52.055403-04
sg16ukaqfl4lrumnzrwp66i5nz94ie1i	NzAzOWU5OWY1Yjg4NDU5MDZiY2QyYTlmMWY2YTdjNmY0ODBmNDJiMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3Miwic3VtX3RvdGFsIjoyMzk4LCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE3NCwiMSI6eyJza3UiOiJEQjAxMSIsIm5hbWUiOiJCTFVFIEZVTEwgU1VJVCIsInN1Yl90b3RhbCI6MjM5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjEiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTk5LCJyZW50IjoxMTk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-26 07:06:17.63023-04
8sh502klrse185kep8boy5ia3xq06f5v	Y2RhMjIxOTE1NWY0NzM3MmZmNWZhM2U3NTg4MjQ5ZTY0YzUzNmVkNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzA3Nywic3VtX3RvdGFsIjo2NTk4LCJteV9jYXJ0IjoiREIwNzEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjQ3OSwiMSI6eyJza3UiOiJEQjA3MSIsIm5hbWUiOiJWRUxWRVRZIFBVUlBMRSBMRUhFTkdBIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTIwIiwidG9fZGF0ZSI6IjIwMTYtMDQtMjIiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-26 07:19:24.834531-04
n0ee258askelrkt024qp7hfftydq3ug7	YzFhYjBkMGVjOWViZTI0MWRmMzU0NGY1OWMxOGFmODEwYWI0YjRiMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTIxNCwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdCQjA2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMTYsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTVdCQjA2IiwibmFtZSI6Ik1VU1QgSEFWRSBCTEFDSyBCTEFaRVIiLCJzdWJfdG90YWwiOjE1OTgsIm1ycCI6Njk5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xNSIsInRvX2RhdGUiOiIyMDE2LTA0LTE3IiwicmVudCI6Nzk5LCJzZWN1cml0eV9kZXBvc2l0Ijo3OTl9LCJkaXNjb3VudCI6NTAwLCIyIjp7InNrdSI6Ik1XQkIwNiIsIm5hbWUiOiJNVVNUIEhBVkUgQkxBQ0sgQkxBWkVSIiwic3ViX3RvdGFsIjoxNTk4LCJtcnAiOjY5OTUsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTUiLCJ0b19kYXRlIjoiMjAxNi0wNC0xNyIsInJlbnQiOjc5OSwic2VjdXJpdHlfZGVwb3NpdCI6Nzk5fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiUmFqIiwiaWQiOjI2LCJmYl9pZCI6Ijk1NjU3NDc2Nzc0NDIzNCJ9fQ==	2016-04-29 09:56:31.322304-04
ff9xf3bain0e3gzl3y4go3dnxj5j4r4g	NWI2YjMzMmJiODg5MzNmNDFhNTBhZWYwNGYwOTAwNGVjOTg5MmVjNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTE2NS4yNSwic3VtX3RvdGFsIjo0OTk1LCJteV9jYXJ0IjoiREIwNDciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjM2MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXSVNPMDQiLCJuYW1lIjoiRFJBUEVEIFNBUkVFIERSRVNTIiwic3ViX3RvdGFsIjozNzk4LCJtcnAiOjE3OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDQtMTYiLCJzZWN1cml0eV9kZXBvc2l0IjoxODk5LCJyZW50IjoxODk5fSwiZGlzY291bnQiOjE5Mi43NSwiMiI6eyJza3UiOiJXSVNPMDQiLCJuYW1lIjoiRFJBUEVEIFNBUkVFIERSRVNTIiwic3ViX3RvdGFsIjozNzk4LCJtcnAiOjE3OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDQtMTYiLCJzZWN1cml0eV9kZXBvc2l0IjoxODk5LCJyZW50IjoxODk5fX0=	2016-05-10 03:51:33.599957-04
qwzo7gd2h24c3f4c1sthlx91ptrr8uc9	MmJjMjE3Yjk4MzE3NTllNTk1MWQyM2FkMGFjNGIzMTQwZWNjYWNiNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzQ5LCJzdW1fdG90YWwiOjY5OCwibXlfY2FydCI6IldXT1k1NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NTEsIjEiOnsic2t1IjoiV1dPWTU2IiwibmFtZSI6ImxpdHRsZSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6Njk4LCJtcnAiOjI1OTAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTIiLCJ0b19kYXRlIjoiMjAxNi0wNS0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjM0OSwicmVudCI6MzQ5fSwiZGlzY291bnQiOjB9	2016-05-26 02:37:02.315413-04
qyzzdw3vgmuioca5wgsw4n23qnyi0iwc	NWJiOWIzMzBmNTc0OGY2NzhjYTIzODVmYTJiNzk4MTg5OGY2M2EwNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwNywic3VtX3RvdGFsIjoxNDk4LCJteV9jYXJ0IjoiV0VTQlAxNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTA5LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFU0JQMTciLCJuYW1lIjoiYmx1ZSBlbWJlbGxpc2hlZCBzdWl0Iiwic3ViX3RvdGFsIjoxNDk4LCJtcnAiOjY1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNC0yOCIsInJlbnQiOjc0OSwic2VjdXJpdHlfZGVwb3NpdCI6NzQ5fSwiZGlzY291bnQiOjB9	2016-05-10 06:51:11.039719-04
a5iw22vng74ghvw681wxu0ykf712ssin	ZTQwNTE3NDhjYzEzN2FjMTYwNWY4ZDQ2YTdlZjdlMzI4ZmU4OGZlOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Nzk0LCJzdW1fdG90YWwiOjc0MCwibXlfY2FydCI6IkRCMDU3IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA1NyIsIm5hbWUiOiJSRUQgQ0hBTVBBR05FIERSRVNTIiwic3ViX3RvdGFsIjo3NDAsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTIxIiwicmVudCI6MzcwLCJzZWN1cml0eV9kZXBvc2l0IjozNzB9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjI0LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-26 06:20:58.438541-04
te7exj2kp0r7rbf2lzvq286klqpkcalh	ZmE5NDZhYjc0ZmFjOTZlNDgxMWZhNWViYTZlNzNmMWYzMDllNmRkZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIwNC43LCJzdW1fdG90YWwiOjI5ODcuNywibXlfY2FydCI6IldJS1UwNSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MjE3LCIxIjp7InNrdSI6IldJS1UwNSIsIm5hbWUiOiJQSU5LIFNFUVVJTk5FRCBHT1dOIiwic3ViX3RvdGFsIjoyOTg3LjcsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTMiLCJ0b19kYXRlIjoiMjAxNi0wNC0xOCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTMuODUsInJlbnQiOjE0OTMuODV9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjIzLCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-26 05:03:47.935131-04
1l3su4gughdnc5j31qafkr78m311abav	ZGNlODYxNmNiNTk1ZmRhZjU1MGFiODNkOTE2ZGE4NzA4ZDBiYjExYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6IldXQ0s0NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV1dDSzQ2IiwibmFtZSI6ImZsb3JhbCBjcm9wIHRvcCBza2lydCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQ1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTIiLCJ0b19kYXRlIjoiMjAxNi0wNS0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiY2FydF9jb3VudCI6MX0=	2016-05-26 08:25:54.748596-04
6qe9xw9hxf5giuswy5lvkgh0jnds22zg	YTRlNjJiMjg4YjRhZjdmN2RmMTZmZTdjYTlkMWViZmJmZTJjN2YxMjp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-05-09 08:00:28.39573-04
3rjmuqth87f3ds3gka3q1o61pplfnlot	NjNhNGRkMDA3MWM4OGY0N2M2NGIxMzllYmM2ZmYxZGRiZDg2YzM1NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTY0LCJzdW1fdG90YWwiOjg5OCwibXlfY2FydCI6IldXQVIzMiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NjYsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dBUjMyIiwibmFtZSI6IlBSSU5URUQgU0hJRlQgRFJFU1MiLCJzdWJfdG90YWwiOjg5OCwibXJwIjoyNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjAiLCJyZW50Ijo0NDksInNlY3VyaXR5X2RlcG9zaXQiOjQ0OX0sImRpc2NvdW50IjowLCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJTaHdldGEiLCJpZCI6MjQsImZiX2lkIjoiMTAyMDgzNzEyMDQ0OTM4MjAifX0=	2016-04-26 05:10:34.086865-04
xeskowjraj6ss5h7nne9bl4motc9f0cm	Y2Y3NGJjNGIxMDFjZDJlMGU4YWQwZThmZjk1ZDRiY2YzZjBjMzk2Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiREIwNjEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjg3LCIxIjp7InNrdSI6IkRCMDYxIiwibmFtZSI6IlNISU1NRVIgQkxBQ0sgRFJFU1MiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOSIsInRvX2RhdGUiOiIyMDE2LTA0LTIxIiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJyZW50Ijo1OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2h3ZXRhIiwiaWQiOjI0LCJmYl9pZCI6IjEwMjA4MzcxMjA0NDkzODIwIn19	2016-04-26 07:17:21.526774-04
k56bxfyrj7k1vb0inabr0q7u5aya9t5c	OTFmZjM0YjdlN2U3ZWRhZGVmYTQ1OTBmMGI3ZjI4YWFkZTZkNmY0Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3Miwic3VtX3RvdGFsIjoyMzk4LCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE3NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAxMSIsIm5hbWUiOiJCTFVFIEZVTEwgU1VJVCIsInN1Yl90b3RhbCI6MjM5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjEiLCJyZW50IjoxMTk5LCJzZWN1cml0eV9kZXBvc2l0IjoxMTk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-26 07:43:43.194532-04
9euliu9crpzmap46qev0ov3h0d3o6erp	ZmU2ZmI1NjBjZDMyNDA3ZmVjMDU0ZTExNmE2MTU5YzlkMGYxMTY4Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTcxNCwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdCQjA2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxMTYsIjEiOnsic2t1IjoiTVdCQjA2IiwibmFtZSI6Ik1VU1QgSEFWRSBCTEFDSyBCTEFaRVIiLCJzdWJfdG90YWwiOjE1OTgsIm1ycCI6Njk5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xNCIsInRvX2RhdGUiOiIyMDE2LTA0LTE2Iiwic2VjdXJpdHlfZGVwb3NpdCI6Nzk5LCJyZW50Ijo3OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiUmFqIiwiaWQiOjI2LCJmYl9pZCI6Ijk1NjU3NDc2Nzc0NDIzNCJ9fQ==	2016-04-26 12:31:24.675763-04
8ycgdz4yx12vy5jx1cqcbqwtkdz4f86u	MDFiMmI0OGE4OWFkNzIzOTk1MzE0OWFhNTFhYmMzOWMyYzg5YjYyYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0FSMzciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-26 12:48:05.798235-04
45mcq8rwnq6qawadbj46v2h1zzjw7h2l	MjQwMDgzYjBhZDJmNjVjOGIwMzIzNzJlNGM1ZDUwZGI3MmJiMGQ2NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0FSMzciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQVIzNyIsIm5hbWUiOiJTS1kgQkxVRSBKVU1QU1VJVCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInJlbnQiOjQ5OSwic2VjdXJpdHlfZGVwb3NpdCI6NDk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-04-26 12:59:01.925008-04
cslgbsas5xxkgsx19t4kzouz7vm8s3b9	NmM1NmI1YjMyMjk4ZDA0MDQyOWU0MjI0OTg3N2YyMWI5MDM1YmEyZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTIzMS42OTk5OTk5OTk5OTk4LCJzdW1fdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXlfY2FydCI6IkRCMDczIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo4NCwiMSI6eyJza3UiOiJEQjA3MyIsIm5hbWUiOiJXSElURSBTRVFVSU5ORUQgRFJFU1MiLCJzdWJfdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjMiLCJzZWN1cml0eV9kZXBvc2l0Ijo1NzMuODQ5OTk5OTk5OTk5OSwicmVudCI6NTczLjg0OTk5OTk5OTk5OTl9LCJkaXNjb3VudCI6MH0=	2016-04-26 13:19:42.547273-04
0g98viji1vpl9ddhrtq3a2ayamvv81ct	NGM3MWMwNDY2NGY3MzQyNDZhYzVhOTRhMjI1ZDAzYmExMmRhMTM1ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDUwNSwic3VtX3RvdGFsIjo0MjAwLCJteV9jYXJ0IjoiTUVBS1AwOSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MzA1LCIxIjp7InNrdSI6Ik1FQUtQMDkiLCJuYW1lIjoiYmx1ZSBzaGlueSBzdWl0IHdpdGggYmxhY2sgbGluaW5nIiwic3ViX3RvdGFsIjo0MjAwLCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjoyMTAwLCJyZW50IjoyMTAwfSwiZGlzY291bnQiOjB9	2016-05-26 03:06:16.55229-04
fe4l5oo63jjswfo0o3keal9nf18734e5	ODlhNGEwYjk3YzQ3MTgwNjA0NDRmMWU0ZmZlYjljOWEyODQyNGU2Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2MSwic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiV0VTSTQzIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNjMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjgiLCJyZW50IjoyNDk5LCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5fSwiZGlzY291bnQiOjB9	2016-05-10 07:31:38.767105-04
z862x9jdqrt662fuesassyarz0xvw9xt	ZGU1NDVlYzQzZDNmOTRiODcwZmZjMmYyOWExNDQzNTk4YjhjMTkyYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ3OTgsIm15X2NhcnQiOiJEQjAzNCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwMzQiLCJuYW1lIjoiR09MRCBTRVFVSU5ORUQgQ1JFQU0gQU5BUktBTEkiLCJzdWJfdG90YWwiOjQ3OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjIzOTksInJlbnQiOjIzOTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-04-26 14:23:42.336525-04
cbbyedbqz6vjhkcx1e42a0jy7veabmci	YmMxZmQzOGY3NjM2NGQ3ZTUyNjEyNjgyNzVjMGQ0ODEwNjVmNGRkMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVNIUDMxIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIjEiOnsic2t1IjoiV0VTSFAzMSIsIm5hbWUiOiJjcmVhbSBzYXJlZSB3aXRoIHJlZCBncmVlbiBib3JkZXJzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6Mzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNyIsInRvX2RhdGUiOiIyMDE2LTA0LTI5Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJyZW50Ijo0OTl9LCJkaXNjb3VudCI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNzU0OTBkNjJiZjdjMGVjODQzZGFlZWY5NTVhODEwZWY3MTVjODYxYSJ9	2016-05-11 13:55:23.316215-04
5s8ctebvog4o8rj4erpg4oglxgbwpcd7	NGUxN2FiYTA4MWM3NjhiOThjMTZhMWE1ZDljYWY2ZGQ4M2UwODI2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIwMzIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowLCIyIjp7InNrdSI6IkRCMDMyIiwibmFtZSI6IkdPTEQgU0VRVUlOIEJMVUUgRFJFU1MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjciLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX19	2016-05-03 01:08:01.935056-04
f1s1cs3kxcdch4zggvy0o48x1e2ps0br	OGJmMDU3ZjE0NWUyZTc1MmEwNWFjNmEwMDJhODUxNTkyMzM5NmYzOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUxLCJzdW1fdG90YWwiOjcwMCwibXlfY2FydCI6IldXQ0s0OSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTEsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dDSzQ5IiwibmFtZSI6InN0cmlwZWQgbG9uZyBkcmVzcyIsInN1Yl90b3RhbCI6NzAwLCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjciLCJ0b19kYXRlIjoiMjAxNi0wNC0yOSIsInJlbnQiOjM1MCwic2VjdXJpdHlfZGVwb3NpdCI6MzUwfSwiZGlzY291bnQiOjB9	2016-05-11 14:04:26.430417-04
y0ie0zi7fy58pq6i4vuizfgdd0a3hf7r	ZTM1ZjUwMWE3YzAzOGE1ZGY3OWFmMTAxZmNkZmZjNGRmNjk4Y2EzODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVNIUDMxIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVNIUDMxIiwibmFtZSI6ImNyZWFtIHNhcmVlIHdpdGggcmVkIGdyZWVuIGJvcmRlcnMiLCJzdWJfdG90YWwiOjk5OCwibXJwIjozOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjkiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-11 14:16:16.961511-04
kv3bnmzn5jdr87smzcfyc68xdvt2mk4b	NTkyMjgxMTQ3ZTRkNWM4NWNmMTNiMGMxYmIzZGI3NWMwMTQyNjllZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dTQlAwMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiMSI6eyJza3UiOiJXV1NCUDAxIiwibmFtZSI6ImJ3IHNoZWF0aCBkcmVzcyIsInN1Yl90b3RhbCI6MTMwMCwibXJwIjo2NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo2NTAsInNlY3VyaXR5X2RlcG9zaXQiOjY1MH0sImRpc2NvdW50IjowfQ==	2016-05-26 04:07:03.953579-04
7gux597238wk8ybnnnwb3ath8nsg0tkt	Mzc0ZDY0YjI2ZDc2YjUyY2NhYmUyYzVmZjU4ZmQ1ODIzZmNkM2VjMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-05-11 14:35:50.011283-04
zsu780cy5lpyvwio11flq2n3v4pdmnqp	YjE0MWRmMjk0NWFhMTNiNjlmZjgwY2VhOTRkZTc4Y2Q0YzdkYzk5MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VBRFAyMCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiMSI6eyJza3UiOiJXRUFEUDIwIiwibmFtZSI6ImNyZWFtIGFuYXJrYWxpIiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjk5OTUsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNC0zMCIsInJlbnQiOjk5OSwic2VjdXJpdHlfZGVwb3NpdCI6OTk5fSwiZGlzY291bnQiOjB9	2016-05-11 15:10:13.835566-04
p1hm7w8e1oqirz6eml3iy9yrnd19263d	OTUyMzFlNWM4ODYzNjI1NGJjODljZWNhYTM4YmRlYTNkMWE1OTlmYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTEyNjcuNywic3VtX3RvdGFsIjoxMDUwNS43LCJteV9jYXJ0IjoiREIwMjdBIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3NjIsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiREIwMjdBIiwibmFtZSI6ImVtYnJvaWRlcmVkIG1hZ2VudGEgYW5hcmthbGkiLCJzdWJfdG90YWwiOjY1OTgsIm1ycCI6MjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNC0yOCIsInJlbnQiOjMyOTksInNlY3VyaXR5X2RlcG9zaXQiOjMyOTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXSUtVMDUiLCJuYW1lIjoicGluayBzZXF1aW5uZWQgZ293biAxIiwic3ViX3RvdGFsIjozOTA3LjcsIm1ycCI6MTQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNS0wNSIsInJlbnQiOjE5NTMuODUsInNlY3VyaXR5X2RlcG9zaXQiOjE5NTMuODV9fQ==	2016-05-16 13:24:49.780708-04
u2otqk5p9rm0cysd8avfw0kw9bc6o5pg	YzI5ZTg0ZjQwYjM1NjBkMGRjYTJmNDAzZGU4ZWQ4YjEzYWY0Y2MyZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE4Ni4yLCJzdW1fdG90YWwiOjIzOTgsIm15X2NhcnQiOiJEQjAxMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTc0LCIxIjp7InNrdSI6IkRCMDExIiwibmFtZSI6IkJMVUUgRlVMTCBTVUlUIiwic3ViX3RvdGFsIjoyMzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjExOTksInJlbnQiOjExOTl9LCJkaXNjb3VudCI6Mzg1Ljh9	2016-05-03 05:14:13.383863-04
g0wamod1ikueqpewz7g1x0ge90jxpwag	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-05-09 08:18:09.989041-04
y6dikll0jh00i1nnf1ln4xoziees8gwu	NTQxYTE5ZWU1YjIzZGRlNjViMmExMjI1MzM3ZDM3MWQxYjUyYmY0NDp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6IldFUENTMTA0IiwibmFtZSI6IkJsYWNrIFNvbGlkIFN1aXQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjEiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sInN1bV90b3RhbCI6MTk5NiwibXlfY2FydCI6IldFUENTMTA0IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwiMSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9fQ==	2016-06-02 02:58:10.291762-04
r6xc2neqxyoibm2lhm161vg4acir6m2q	ZTRhODE5NTg0YTA1MDM5NzQzOTYwNWQ3NzUxMzllODNkMGEyMmQyZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIxNCwic3VtX3RvdGFsIjoyOTk2LCJteV9jYXJ0IjoiV0VTQlAxNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjE4LCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IldFU0JQMTciLCJuYW1lIjoiYmx1ZSBlbWJlbGxpc2hlZCBzdWl0Iiwic3ViX3RvdGFsIjoxNDk4LCJtcnAiOjY1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNC0yOCIsInJlbnQiOjc0OSwic2VjdXJpdHlfZGVwb3NpdCI6NzQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTQlAxNyIsIm5hbWUiOiJibHVlIGVtYmVsbGlzaGVkIHN1aXQiLCJzdWJfdG90YWwiOjE0OTgsIm1ycCI6NjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNiIsInRvX2RhdGUiOiIyMDE2LTA0LTI4IiwicmVudCI6NzQ5LCJzZWN1cml0eV9kZXBvc2l0Ijo3NDl9fQ==	2016-05-10 01:52:15.02654-04
pouq1dnax9ahtnmr9rol0rfu9zo3o19r	OTA2NjBmMmQ4NjM0NjM1NThmYzQzZmE3MzA4MTQ1NmRkNjU3MzE0Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6IldFUENTMTA0IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJyZW50Ijo0OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-02 02:59:26.333607-04
r3zcidn7cannemz1qd4w8uffnjuix3dt	NDlhMDhmZGUzMjMxMWE1NTMxYWYzODQwNjliZDEwMWQ4YjI5NGZmZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTQzNC43LCJzdW1fdG90YWwiOjg3OTYuNywibXlfY2FydCI6IkRCMDU4QSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjQsInRheCI6NjM4LCIxIjp7InNrdSI6IkRCMDU4QSIsIm5hbWUiOiJzaGltbWVyIGFuYXJrYWxpIiwic3ViX3RvdGFsIjo2NTk4LCJtcnAiOjI3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjozMjk5LCJyZW50IjozMjk5fSwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiV1dPWTU2IiwibmFtZSI6ImxpdHRsZSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6ODAyLjY5OTk5OTk5OTk5OTksIm1ycCI6MjU5MCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xMiIsInRvX2RhdGUiOiIyMDE2LTA1LTE3IiwicmVudCI6NDAxLjM0OTk5OTk5OTk5OTk3LCJzZWN1cml0eV9kZXBvc2l0Ijo0MDEuMzQ5OTk5OTk5OTk5OTd9LCIyIjp7InNrdSI6IldXT1k1NiIsIm5hbWUiOiJsaXR0bGUgYmxhY2sgZHJlc3MiLCJzdWJfdG90YWwiOjY5OCwibXJwIjoyNTkwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0IjozNDksInJlbnQiOjM0OX0sIjQiOnsic2t1IjoiV1dPWTU2IiwibmFtZSI6ImxpdHRsZSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6Njk4LCJtcnAiOjI1OTAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTIiLCJ0b19kYXRlIjoiMjAxNi0wNS0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjM0OSwicmVudCI6MzQ5fX0=	2016-05-25 05:04:30.621012-04
kcmdjdo3rwvubn9cy7eq6vhdcopusfwt	OTk0MmMwYjgxMzY1YzI4OThmZTI1NDM5Mzk4NmE5NDk1Y2FiNDUxOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjY0MSwic3VtX3RvdGFsIjo2MTkyLCJteV9jYXJ0IjoiREIwMDkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ0OSwiZGlzY291bnQiOjB9	2016-05-03 01:37:50.067385-04
mavq0akil3bzik51ea8193kjga0pcm9a	ZGFjMThlZmM2ZTJkMDNiZDZmMTc3OWIwMjg0ZWI5MmM2ZmI1NDUzOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVNIUDMxIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo3MywiMSI6eyJza3UiOiJXRVNIUDMxIiwibmFtZSI6ImNyZWFtIHNhcmVlIHdpdGggcmVkIGdyZWVuIGJvcmRlcnMiLCJzdWJfdG90YWwiOjk5OCwibXJwIjozOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjgiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-10 07:36:39.498331-04
bs466w3dcbgvnm865vczmveqgdi7d19h	MmJjMjE3Yjk4MzE3NTllNTk1MWQyM2FkMGFjNGIzMTQwZWNjYWNiNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzQ5LCJzdW1fdG90YWwiOjY5OCwibXlfY2FydCI6IldXT1k1NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NTEsIjEiOnsic2t1IjoiV1dPWTU2IiwibmFtZSI6ImxpdHRsZSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6Njk4LCJtcnAiOjI1OTAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTIiLCJ0b19kYXRlIjoiMjAxNi0wNS0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjM0OSwicmVudCI6MzQ5fSwiZGlzY291bnQiOjB9	2016-05-26 03:20:46.007985-04
a6lx4gnnfvdfh698mvvu8ohcno5gj231	OWYyMDkwZjJkNjUxYWU2YmMxMzNiMWVkOGNmYWNkNjhjOGYwNGU0Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODE5LjQsInN1bV90b3RhbCI6ODk4LCJteV9jYXJ0IjoiV1dBUjMyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo2NiwiMSI6eyJza3UiOiJXV0FSMzIiLCJuYW1lIjoiUFJJTlRFRCBTSElGVCBEUkVTUyIsInN1Yl90b3RhbCI6ODk4LCJtcnAiOjI1OTksImZyb21fZGF0ZSI6IjIwMTYtMDQtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNC0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ0OSwicmVudCI6NDQ5fSwiZGlzY291bnQiOjE0NC42fQ==	2016-05-03 05:16:26.774771-04
fd93na65uz4jlh37or0i88ffbbpe27od	ODI2ZTgyNmIwMjJhZmEyOTliODMzMmVhZjgyYWQwOTM1NTE2NDEzZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNDYiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 04:39:43.700698-04
qc5lkusyaq724mj4epw75m1yb3go72ch	YTRlNjJiMjg4YjRhZjdmN2RmMTZmZTdjYTlkMWViZmJmZTJjN2YxMjp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IlNod2V0YSIsImlkIjoyNCwiZmJfaWQiOiIxMDIwODM3MTIwNDQ5MzgyMCJ9fQ==	2016-05-09 08:21:26.980708-04
3mer1hu40xp9qmcvssry7leii8ap0hy1	ZTc3NDE0MzhmMmVmODAwYjk1N2NiMzE4ODJjYjI0YTk4MTI1OTI3MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQzOTgsIm15X2NhcnQiOiJXRUFEUDIwQiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV0VBRFAyMEIiLCJuYW1lIjoiYmxhY2sgYW5hcmthbGkgMSIsInN1Yl90b3RhbCI6NDM5OCwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNiIsInRvX2RhdGUiOiIyMDE2LTA0LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjE5OSwicmVudCI6MjE5OX0sImNhcnRfY291bnQiOjF9	2016-05-10 01:38:32.817814-04
i4k5srsx6w7318vbdrcc06vsa3msmm1l	MGRjYjBkZjVlYTJkMDFhNzkzNTFlYjBhYmQ2YjhjZjdlZTE2NmZlYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 07:50:33.389331-04
kw58659pw2ml7oy1ub7z4ovjga00wkf7	MmJjMjE3Yjk4MzE3NTllNTk1MWQyM2FkMGFjNGIzMTQwZWNjYWNiNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzQ5LCJzdW1fdG90YWwiOjY5OCwibXlfY2FydCI6IldXT1k1NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NTEsIjEiOnsic2t1IjoiV1dPWTU2IiwibmFtZSI6ImxpdHRsZSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6Njk4LCJtcnAiOjI1OTAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTIiLCJ0b19kYXRlIjoiMjAxNi0wNS0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjM0OSwicmVudCI6MzQ5fSwiZGlzY291bnQiOjB9	2016-05-26 10:40:54.835991-04
9wlbo7nmkgjno6pnlrnmakjpyd0qa27d	MzNlYThhMjRkNGExYWFkMTk3MDAyNjk2ZWYxMTg0MzE1NWU5ODFhNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDcxMywic3VtX3RvdGFsIjo0Mzk0LCJteV9jYXJ0IjoiV0VBRFAyMEIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMxOSwiZGlzY291bnQiOjB9	2016-05-11 14:00:54.95477-04
fz7em5nz8xfld6wrhhwopf0aajbp4aku	YmMyODQ2YTJlM2E0MjlmNjUxZWU5YjVkZmFlNTdlMjcwY2E2OWY1OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VTSFAzMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-05-11 14:08:46.734163-04
4g2cnx9vg8w3ubps4ktrr6a9878l6ij2	YjZkYmQwYmE1MDMwYWMwYmZmNDgxMWNjZTNjYzJhYmZmNGEzZTE5OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVBU1AwNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjkwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FQVNQMDciLCJuYW1lIjoiZW1iZWxsaXNoZWQgY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjciLCJ0b19kYXRlIjoiMjAxNi0wNC0yOSIsInJlbnQiOjE5OTksInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCJkaXNjb3VudCI6MH0=	2016-05-11 14:18:24.001968-04
ls0y4w82z8uipcklnyrh6c1wqqmocl4c	YTIwM2RmZmU3ODNkZTJkYjlkYzZiZDUwNWJlMTU2ZjNmYTJjMDU3NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0Mywic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiV0VBRFAyMCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTQ1LCIxIjp7InNrdSI6IldFQURQMjAiLCJuYW1lIjoiY3JlYW0gYW5hcmthbGkiLCJzdWJfdG90YWwiOjE5OTgsIm1ycCI6OTk5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yOCIsInRvX2RhdGUiOiIyMDE2LTA0LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6OTk5LCJyZW50Ijo5OTl9LCJkaXNjb3VudCI6MH0=	2016-05-11 14:37:00.912893-04
omcrdg9i7ywsq03tfn2n9002ne1was88	MjBhZjE0OTFkNWI2ZTc0NDhhODc1YTA2Zjk4Y2I5OWQwYTIwMGZiNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VTQlAxNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiMSI6eyJza3UiOiJXRVNCUDE3IiwibmFtZSI6ImJsdWUgZW1iZWxsaXNoZWQgc3VpdCIsInN1Yl90b3RhbCI6MTQ5OCwibXJwIjo2NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMzAiLCJyZW50Ijo3NDksInNlY3VyaXR5X2RlcG9zaXQiOjc0OX0sImRpc2NvdW50IjowfQ==	2016-05-11 15:14:15.520125-04
35gdauf0u2r6k9qtc6tq57zpp1y95aew	OTk1ZDkwZGQ4Yjg2ZjdmMGNlNGU3YmExMzk3OTVjNmEyMzBhNjMwZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjYxOTgsIm15X2NhcnQiOiJEQjAwOSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwMDkiLCJuYW1lIjoiQkxVRSBBTkFSS0FMSSIsInN1Yl90b3RhbCI6NjE5OCwibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yMCIsInRvX2RhdGUiOiIyMDE2LTA0LTIyIiwic2VjdXJpdHlfZGVwb3NpdCI6MzA5OSwicmVudCI6MzA5OX0sImNhcnRfY291bnQiOjF9	2016-05-03 02:00:17.282235-04
kn148yg3t27c4oksabknhdd1f0ksl8rj	MWQxYzE5MWJlNmI4MDY0ZDg2NzllMWQ5MzkxMzM0MDFhZWFhZWM2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 04:57:37.159581-04
77p9xpiy7ign9mvp2ikzep4zn2eqvg6w	NWMxZTNiZWU4MTE3ODE2NmMzMDA3YTg2NzMzNmNlNzZhNTEwMWQwNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUtNVFgwM0EwMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-07-09 14:44:50.340528-04
0tq2rj4fkzjdipzodlwvvs8kywrclno3	ODBhOGNlZjZlZDA2ZmQxOWMxMmQ2NzY2M2NjZTQ0NTMxNjhkOTkwZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1OSwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiREIwNDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjI2MSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA0NSIsIm5hbWUiOiJHUkVZIDMtUElFQ0UgU1VJVCIsInN1Yl90b3RhbCI6MzU5OCwibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0xOCIsInRvX2RhdGUiOiIyMDE2LTA0LTIwIiwicmVudCI6MTc5OSwic2VjdXJpdHlfZGVwb3NpdCI6MTc5OX0sImRpc2NvdW50IjowLCIzIjp7InNrdSI6IkRCMDMyIiwibmFtZSI6IkdPTEQgU0VRVUlOIEJMVUUgRFJFU1MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjciLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sIjIiOnsic2t1IjoiREIwMzIiLCJuYW1lIjoiR09MRCBTRVFVSU4gQkxVRSBEUkVTUyIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjI1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNC0yNyIsInJlbnQiOjQ5OSwic2VjdXJpdHlfZGVwb3NpdCI6NDk5fSwiNSI6eyJza3UiOiJEQjAzMiIsIm5hbWUiOiJHT0xEIFNFUVVJTiBCTFVFIERSRVNTIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yNSIsInRvX2RhdGUiOiIyMDE2LTA0LTI3IiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCI0Ijp7InNrdSI6IkRCMDMyIiwibmFtZSI6IkdPTEQgU0VRVUlOIEJMVUUgRFJFU1MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjciLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX19	2016-04-26 13:44:15.95817-04
483733l4il7t8cgjdrtfank7tksmquas	ZmQ4ZjU1NGEzOThlYjgwYWQxNTMzMzExNDVhZjgzNjE5NjUxMDZjZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODE5LjQsInN1bV90b3RhbCI6ODk4LCJteV9jYXJ0IjoiV1dBUjMyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo2NiwiMSI6eyJza3UiOiJXV0FSMzIiLCJuYW1lIjoiUFJJTlRFRCBTSElGVCBEUkVTUyIsInN1Yl90b3RhbCI6ODk4LCJtcnAiOjI1OTksImZyb21fZGF0ZSI6IjIwMTYtMDQtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNS0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjQ0OSwicmVudCI6NDQ5fSwiZGlzY291bnQiOjE0NC42fQ==	2016-05-03 05:17:04.233896-04
xjz56f0u2j3f228u885qd7dszm814b47	ODY0ODQ3YmNkOTY3YzJmNmU1ZWM1OTlmMTk0MmY4NTY4Njk2NGEwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjgiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-10 07:58:41.028788-04
26djmyjpyxjfwn1ychshozjgqpje2u4c	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-05-09 08:44:40.020079-04
z1hoejnqrha7co7cx46dwubn1c1x3i70	NWJiOWIzMzBmNTc0OGY2NzhjYTIzODVmYTJiNzk4MTg5OGY2M2EwNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwNywic3VtX3RvdGFsIjoxNDk4LCJteV9jYXJ0IjoiV0VTQlAxNyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTA5LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFU0JQMTciLCJuYW1lIjoiYmx1ZSBlbWJlbGxpc2hlZCBzdWl0Iiwic3ViX3RvdGFsIjoxNDk4LCJtcnAiOjY1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDQtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNC0yOCIsInJlbnQiOjc0OSwic2VjdXJpdHlfZGVwb3NpdCI6NzQ5fSwiZGlzY291bnQiOjB9	2016-05-10 01:44:01.382599-04
8l3ta3zhppn1flbm5b4u6y2z8aa4k0uy	ODgwY2Q3ZjBjNTA5NzYwMjRiYzk3N2EyYmU5YjVlNDE5NzA3ZjM1MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ3IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0NyIsIm5hbWUiOiJncmV5IGV2ZW5pbmcgZ293biIsInN1Yl90b3RhbCI6MTcwMCwibXJwIjo4OTkwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo4NTAsInNlY3VyaXR5X2RlcG9zaXQiOjg1MH0sImRpc2NvdW50IjowfQ==	2016-05-26 03:37:46.659455-04
hqki8tn4wjuaelmggxqxozcfq2r6qmwg	OWE0NmExODdkMGI3MWMyODI0MzJiOGE3YmI0MGZlOTBjMDc5MmE4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 04:20:51.336999-04
2lxuotb0251z3jukc0zoknojl0n10n9l	YmMyODQ2YTJlM2E0MjlmNjUxZWU5YjVkZmFlNTdlMjcwY2E2OWY1OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VTSFAzMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-05-11 14:02:49.036595-04
i4zrul0egazwsz12rxllbi5scaw2gp76	YzU3MTFjMzUxYWNhNWQyNDI4YTdiMmM4MjdhMzUxYzAxNDI0ZDlkOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDcxNywic3VtX3RvdGFsIjo0Mzk4LCJteV9jYXJ0IjoiV0VBRFAyMEIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMxOSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRUFEUDIwQiIsIm5hbWUiOiJibGFjayBhbmFya2FsaSAxIiwic3ViX3RvdGFsIjo0Mzk4LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjkiLCJyZW50IjoyMTk5LCJzZWN1cml0eV9kZXBvc2l0IjoyMTk5fSwiZGlzY291bnQiOjB9	2016-05-11 14:12:12.15648-04
9qhupzrnlqo5qfdwgukgf09m89w5fvus	MDM4MGJkZThkN2VmNTgzNDIwZTExMzliNTUwZDhmYzc1NGE5NzE0Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVWS1AwNSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjkwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FVktQMDUiLCJuYW1lIjoib2ZmIHdoaXRlIHNoZXJ3YW5pIGZ1bGwgc2V0Iiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDQtMjkiLCJyZW50IjoxOTk5LCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-05-11 14:20:29.213014-04
v1xcg19yx9kd89kgkywn2c4iyyc3icd5	YWFkYmVmNDE3YWMwNzhiMDgyZjU3YWEyNDEyYzcyZThmOTc0YzFiOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VTSFAzMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiMSI6eyJza3UiOiJXRVNIUDMxIiwibmFtZSI6ImNyZWFtIHNhcmVlIHdpdGggcmVkIGdyZWVuIGJvcmRlcnMiLCJzdWJfdG90YWwiOjk5OCwibXJwIjozOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDQtMzAiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjoxNjAuNjUsIjIiOnsic2t1IjoiV0VTSFAzMSIsIm5hbWUiOiJjcmVhbSBzYXJlZSB3aXRoIHJlZCBncmVlbiBib3JkZXJzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6Mzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yOCIsInRvX2RhdGUiOiIyMDE2LTA0LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJyZW50Ijo0OTl9fQ==	2016-05-11 15:05:18.430661-04
q7105mjf7zlczadnbi57jjibxyshbiko	YWIyZTAxMjBkM2Q1NmFlOThiNWI0MDdkYTE3MWViNTE0YjlmMzMzNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQzOTgsIm15X2NhcnQiOiJXRUFEUDIwQiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV0VBRFAyMEIiLCJuYW1lIjoiYmxhY2sgYW5hcmthbGkgMSIsInN1Yl90b3RhbCI6NDM5OCwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNC0yOCIsInRvX2RhdGUiOiIyMDE2LTA0LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6MjE5OSwicmVudCI6MjE5OX0sImNhcnRfY291bnQiOjF9	2016-05-11 15:38:10.796728-04
ewiy8ewif19j0pld59ruvgl5wp0o5tfb	ZjI3OTViZTZjNGYwOTk1MGZkOGYxNTZkYWIyNzUxZjRkM2ExZTI5Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjUxOTgsIm15X2NhcnQiOiJKQTAzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJKQTAzMCIsIm5hbWUiOiJtYWdlbnRhIGdsYW1vcm91cyBwYXJ0eSBnb3duIiwic3ViX3RvdGFsIjo1MTk4LCJtcnAiOjExOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDYiLCJzZWN1cml0eV9kZXBvc2l0IjoyNTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI1OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-15 10:52:51.419986-04
rxn506wwntstlhncgezzwmofaa5iocfw	OWE0NmExODdkMGI3MWMyODI0MzJiOGE3YmI0MGZlOTBjMDc5MmE4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 06:53:54.664731-04
y6uk1d6ho8rfi4venyfvww953l5oarhv	MGRjYjBkZjVlYTJkMDFhNzkzNTFlYjBhYmQ2YjhjZjdlZTE2NmZlYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 07:02:44.831837-04
ncdmyms0pl2r23clgiawijz2fv39575u	MWU1OTdiMjk1NDNlYjhlOGE0NTJiNGQwNjk1MzUyYmQ1NGEyMTUzMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dBUjMyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6NTAwLCIzIjp7InNrdSI6IkRCMDA1IiwibmFtZSI6IkJMQUNLIEJMQVpFUiIsInN1Yl90b3RhbCI6MzExNy42LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA0LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDUtMDIiLCJzZWN1cml0eV9kZXBvc2l0IjoxNTU4LjgsInJlbnQiOjE1NTguOH0sIjIiOnsic2t1IjoiREIwMzkiLCJuYW1lIjoiR09MRCBTSElNTUVSIFBJTksgQU5BUktBTEkiLCJzdWJfdG90YWwiOjU5OTgsIm1ycCI6MjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMSIsInJlbnQiOjI5OTksInNlY3VyaXR5X2RlcG9zaXQiOjI5OTl9LCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJEZXZlc2giLCJpZCI6MTksImZiX2lkIjoiMTAzOTg2MDMyMjc1NjE0MyJ9fQ==	2016-05-26 07:02:51.674282-04
9savesmzrxaknohbl448ag8y21ud1cud	ODI2ZTgyNmIwMjJhZmEyOTliODMzMmVhZjgyYWQwOTM1NTE2NDEzZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNDYiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 08:09:12.163313-04
a6zfjj32qgxunbogty4ikjkx9h7ky2ye	OWE0NmExODdkMGI3MWMyODI0MzJiOGE3YmI0MGZlOTBjMDc5MmE4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 08:18:07.107466-04
y5l6va7esez8ck72cusw5y66oo7efq9f	ODJjNDU3NGI3ZmFmNzQ5MzAxZGY3N2ZkYzI3ODY5ZjZkZDBjZTkwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0OSIsIm5hbWUiOiJzdHJpcGVkIGxvbmcgZHJlc3MiLCJzdWJfdG90YWwiOjcwMCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50IjozNTAsInNlY3VyaXR5X2RlcG9zaXQiOjM1MH0sImRpc2NvdW50IjowfQ==	2016-05-26 10:52:12.57132-04
xxarfhol4ilxqlogdo3pw6jyz264rg38	ODJjNDU3NGI3ZmFmNzQ5MzAxZGY3N2ZkYzI3ODY5ZjZkZDBjZTkwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0OSIsIm5hbWUiOiJzdHJpcGVkIGxvbmcgZHJlc3MiLCJzdWJfdG90YWwiOjcwMCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50IjozNTAsInNlY3VyaXR5X2RlcG9zaXQiOjM1MH0sImRpc2NvdW50IjowfQ==	2016-05-26 10:55:35.101335-04
949kdl4b46r2fmpo3x2pwsjqyam3bb8q	OWE0NmExODdkMGI3MWMyODI0MzJiOGE3YmI0MGZlOTBjMDc5MmE4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 11:14:32.500137-04
h62byq2dqb41uf4x4ly8llp8vjxj59x9	YTMzMTk0YTBkMWQyYzBlMDdiMWMwZTkyMzc4NjgwYTJiNWU3OGI4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUwIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo2OTksInNlY3VyaXR5X2RlcG9zaXQiOjY5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 11:21:49.525849-04
26apr5dolfdp3bmlbgla8sovwx4e6p4e	ODU5YjFjYmE4MWMxMGZkZDgwNWNmMWY4MThkMzJlNDRjOTQ4ZmQ3OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ4IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMTQiLCJyZW50Ijo2OTksInNlY3VyaXR5X2RlcG9zaXQiOjY5OX0sImRpc2NvdW50IjowfQ==	2016-05-26 11:29:58.898623-04
nzodju568sje23cevcd1mlz0cdp8o8w8	MmU0N2IwMGVhNmU1M2RmYTM4NTgxYjlkZjBmZDZmYzI0YzljZTRmZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 04:10:00.622183-04
ehxjyno7153urvhen66397qhuo6wtx8v	MWQxYzE5MWJlNmI4MDY0ZDg2NzllMWQ5MzkxMzM0MDFhZWFhZWM2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 04:18:12.032579-04
dm0i355mkggk3877nzhvvth82igbp8zu	MWQxYzE5MWJlNmI4MDY0ZDg2NzllMWQ5MzkxMzM0MDFhZWFhZWM2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 04:20:07.279326-04
h8yx3l38kq2pdxr4jsiib3rxp47tql8g	MWQxYzE5MWJlNmI4MDY0ZDg2NzllMWQ5MzkxMzM0MDFhZWFhZWM2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 04:27:17.940646-04
jgj97k87ykqaa99bczwa7p5nkakddcev	MWQxYzE5MWJlNmI4MDY0ZDg2NzllMWQ5MzkxMzM0MDFhZWFhZWM2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 04:48:18.696345-04
3pr8ly9w6rfuysj4znat0bypom6hqybn	ODQ3NjFkZGY3MWZhNmNmNTAzMjg1NmM4NGE5ZTg0NjMxNGMwNWI2OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEzMSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI5IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzEiLCJyZW50Ijo4OTksInNlY3VyaXR5X2RlcG9zaXQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-06-08 12:19:01.565825-04
urz2aemi3wcd16kr1rkv7644fv3bi94n	MmU0N2IwMGVhNmU1M2RmYTM4NTgxYjlkZjBmZDZmYzI0YzljZTRmZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 05:01:39.10747-04
nw4so0d4svscjfs7ohrwdgt3dz8xkkvw	MmU0N2IwMGVhNmU1M2RmYTM4NTgxYjlkZjBmZDZmYzI0YzljZTRmZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 05:10:50.602188-04
pqgwmmckaserdbuhnjvrbplc6w2fkg6u	MmU0N2IwMGVhNmU1M2RmYTM4NTgxYjlkZjBmZDZmYzI0YzljZTRmZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-05-28 05:16:11.867102-04
k4mcs5tb7wgwbbvmgidi6jhnin01lksd	N2FmMjczMTdhNzhjODM5YmM1YTU0YzQ4ZjMxMTJlMzRiMjc5M2NmNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDkyLCJzdW1fdG90YWwiOjQ1OCwibXlfY2FydCI6IldXVk0xNiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MzQsIjEiOnsic2t1IjoiV1dWTTE2IiwibmFtZSI6InNpbmdsZSBzdHJhcCBwcmludGVkIG1heGkgZHJlc3MiLCJzdWJfdG90YWwiOjQ1OCwibXJwIjoyMjk1LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJzZWN1cml0eV9kZXBvc2l0IjoyMjksInJlbnQiOjIyOX0sImRpc2NvdW50IjowfQ==	2016-05-28 06:18:38.575203-04
3868fuu0objxjn1m872y4wnr1e74sh1j	ZGNkNjBjODUzMTFhZjA0ZjY5N2Y3ZTAzY2UxMDAxZDg0OGU0OWFmYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMTYiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowLCJpZCI6MTE1fQ==	2016-05-28 07:46:58.566013-04
3nw4qov5fjjr2bb8142x3hl03kcssx5m	YjI5OTJmMGNhZTVmOTgyMTlmZjM3ZTg2NzgwOWRjNGU4NTZlNDc3MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjExNiwiMSI6eyJza3UiOiJXV0NLNTIiLCJuYW1lIjoicGluayBzaGltbWVyIGRyZXNzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xNCIsInRvX2RhdGUiOiIyMDE2LTA1LTE2IiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-05-28 08:01:20.753957-04
k8jhesb2klpf0lq14eb2ux1556cjo4pv	OTRmNDllYjA1NzNiMzJjODBlMjQwYjAyN2M1MTRlNDYzMmI4N2M1YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjEyMCwiMSI6eyJza3UiOiJXV0NLNTIiLCJuYW1lIjoicGluayBzaGltbWVyIGRyZXNzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xNCIsInRvX2RhdGUiOiIyMDE2LTA1LTE2IiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-05-28 08:42:51.640332-04
42s2wzf4kvo8auhovjvtdeqe0syt2hud	MzE0NzUwYzVkNTllZjViYzc4ZGQxMWQwZTVlMmNiZGIxODI3ZDBlMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNTIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjEyMSwiMSI6eyJza3UiOiJXV0NLNTIiLCJuYW1lIjoicGluayBzaGltbWVyIGRyZXNzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xNCIsInRvX2RhdGUiOiIyMDE2LTA1LTE2IiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-05-28 11:10:13.610286-04
8jc5kpbsdphh9glk1lnwfa6gsdzd919r	Mzg1MGUzZDhlNzg0YzY3ODdjNDAyZDdiOWU0YzViZTBjYzE3MzgzMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1OSwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiTUVBS1AwOSIsIl9hdXRoX3VzZXJfaWQiOiIzIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNjEsImNhcnRfY291bnQiOjEsImlkcyI6MTIyLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIjEiOnsic2t1IjoiTUVBS1AwOSIsIm5hbWUiOiJibHVlIHNoaW55IHN1aXQgd2l0aCBibGFjayBsaW5pbmciLCJzdWJfdG90YWwiOjM1OTgsIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMCIsInJlbnQiOjE3OTksInNlY3VyaXR5X2RlcG9zaXQiOjE3OTl9LCJkaXNjb3VudCI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNzU0OTBkNjJiZjdjMGVjODQzZGFlZWY5NTVhODEwZWY3MTVjODYxYSJ9	2016-06-01 10:49:38.353761-04
t6tt4t8l5552wzbhkzphc27rxvck1wg4	MDdkODdmMDYxY2IxYzcxZGE5MDE1MDZhMDNkZDg5MDA4Njc3ZGQ2ZTp7IjMiOnsic2t1IjoiTVdBUjA4IiwibmFtZSI6InNoaW55IGJyb3duIGZ1bGwgc3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5LCJyZW50Ijo4OTl9LCJsb2dpbl9pZCI6IlJhaHVsIiwic3VtX3RvdGFsIjo1NTk0LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjozLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwicmVudCI6ODk5fSwiMiI6eyJza3UiOiJNV1NTMDUiLCJuYW1lIjoicHJpbnRlZCBicm93bmlzaCBtYXJvb24gYmxhemVyIiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjEyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjEiLCJyZW50Ijo5OTksInNlY3VyaXR5X2RlcG9zaXQiOjk5OX19	2016-06-02 01:28:56.35711-04
ejc47s8rdmxz5yu3he42mg1mrkdahmwa	YzM5OWYxYjk0OWZiZTZkNTc0ZDcxMjQwMWY2NTg1Y2MyZjgxOGEzODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2MCwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiTUVKUlAwMUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE2MCwiY2FydF9jb3VudCI6MSwiaWRzIjoxMjQsIjEiOnsic2t1IjoiTUVKUlAwMUEiLCJuYW1lIjoiYnJvd24gMyBwaWVjZSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MjIwMCwibXJwIjoxMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwicmVudCI6MTEwMCwic2VjdXJpdHlfZGVwb3NpdCI6MTEwMH0sImRpc2NvdW50IjowfQ==	2016-06-02 01:37:45.980156-04
t6ft3wpg1iyrrqjarcv6iygkrfpqfkru	NTIxYTk0MWYwMzMyYWM2NDc3NTI5MGY0NmRjYmQ2YzlmNjc0MmMxZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiV0VOQVAyMSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjkwLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjEyNSwiMSI6eyJza3UiOiJXRU5BUDIxIiwibmFtZSI6ImJsdWUgbWlycm9yZWQgZ293biIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNCIsInRvX2RhdGUiOiIyMDE2LTA1LTI2IiwicmVudCI6MTk5OSwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-06-02 01:44:23.110346-04
l3470t4i6ec87pqkhns7dqh49hwmk2fm	MjE2YzRkNzk2OGQ4ODQ5ZTE0YWYzODUzN2ZmNjI2Y2M3MzVhZmE2OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAwMCwic3VtX3RvdGFsIjo1NTk0LCJteV9jYXJ0IjoiTVdBUjA4IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0MDYsImNhcnRfY291bnQiOjMsImlkcyI6MTIzLCIxIjp7InNrdSI6Ik1XQVIwOCIsIm5hbWUiOiJzaGlueSBicm93biBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMSIsInJlbnQiOjg5OSwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fSwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwicmVudCI6ODk5LCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCIyIjp7InNrdSI6Ik1XU1MwNSIsIm5hbWUiOiJwcmludGVkIGJyb3duaXNoIG1hcm9vbiBibGF6ZXIiLCJzdWJfdG90YWwiOjE5OTgsIm1ycCI6MTI1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMSIsInJlbnQiOjk5OSwic2VjdXJpdHlfZGVwb3NpdCI6OTk5fX0=	2016-06-02 01:34:47.358123-04
8j4a6bbvx92uhm633cvpm13mublsgzan	ZmM2ZGE3ZmEzYTg5ZTUyNmIzMTIwYjZkZjI2NTJjYTJhOWZkOTQyOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowLCIyIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNS0yNSIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwicmVudCI6ODk5fX0=	2016-06-05 14:52:08.554957-04
9zkb65xt39ltoqmomb57270hszef2a6d	MDYzZjZhNjBhM2UyNDQ4ODBmMjgxZjM0MTVkNmI4ZTAwZjY2YjBmMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTAzOTcsInN1bV90b3RhbCI6OTY5NCwibXlfY2FydCI6Ik1XQVIwOCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzAzLCJjYXJ0X2NvdW50IjozLCIxIjp7InNrdSI6Ik1XQVIwOCIsIm5hbWUiOiJzaGlueSBicm93biBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjciLCJ0b19kYXRlIjoiMjAxNi0wNS0yOSIsInJlbnQiOjg5OSwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fSwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiREIwMDUiLCJuYW1lIjoiYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjozMjk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjkiLCJyZW50IjoxNjQ5LCJzZWN1cml0eV9kZXBvc2l0IjoxNjQ5fSwiMiI6eyJza3UiOiJEQjAwNyIsIm5hbWUiOiJibGFjayBzdWl0IHdpdGggdmVsdmV0IGxhcGVsIiwic3ViX3RvdGFsIjo0NTk4LCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjkiLCJzZWN1cml0eV9kZXBvc2l0IjoyMjk5LCJyZW50IjoyMjk5fX0=	2016-06-06 12:36:13.347234-04
1mvgchhjo7tnh5q57j4z5qdjx4gymsvb	ZGFlOTk4M2U2ODNhY2QxM2NiZjhiZDY0N2ZjNTk5ZGNhODMwMzE0MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUwNiwic3VtX3RvdGFsIjo2OTk4LCJteV9jYXJ0IjoiV0VZTVAwMUEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTA4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFWU1QMDFBIiwibmFtZSI6InZlbHZldCBwdXJwbGUgbGVoZW5nYSIsInN1Yl90b3RhbCI6Njk5OCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMSIsInRvX2RhdGUiOiIyMDE2LTA4LTAzIiwicmVudCI6MzQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozNDk5fSwiZGlzY291bnQiOjB9	2016-06-20 08:22:27.077805-04
9ckk5zuwviwoux28nxp09dg2hx2b2ex7	YTk2Nzg4OGQxOWM3NDM3ZTU2NmI5NzAwNDc3NjdhZjhjNTc1OTI5NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJNV0FSMDkiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTVdBUjA5IiwibmFtZSI6Im1hdHRlIGdyZXkgZnVsbCBzdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjEwOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDkiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-20 12:46:56.708017-04
rc4h6i1n66a3pkddvis59rumzmrimyh2	ZGIyODY5YTZlMzlkODU1ODg4OGE5N2ZlYWI1ZDA3MWM5MTAwM2JmNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAwNiwic3VtX3RvdGFsIjo1NjAwLCJteV9jYXJ0IjoiTUVTQlAwNiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NDA2LCJjYXJ0X2NvdW50IjoxLCJpZHMiOjE0MSwiMSI6eyJza3UiOiJNRVNCUDA2IiwibmFtZSI6ImJyb3duaXNoIGNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6NTYwMCwibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNSIsInRvX2RhdGUiOiIyMDE2LTA1LTI3IiwicmVudCI6MjgwMCwic2VjdXJpdHlfZGVwb3NpdCI6MjgwMH0sImRpc2NvdW50IjowfQ==	2016-06-08 04:12:53.411966-04
q72cazschqm8a63qt586ydqx5noz3i5l	ZTRhNGY1M2JjY2IwYTE1NzY1N2ZkNzAwNTc4YTc0YWQyZGU0MDdhYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzU3NC43LCJzdW1fdG90YWwiOjMzMzIuNywibXlfY2FydCI6IkRCMjAxIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNDIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIyMDEiLCJuYW1lIjoidmVsdmV0eSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjMzMzIuNywibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMSIsInRvX2RhdGUiOiIyMDE2LTA3LTE2IiwicmVudCI6MTY2Ni4zNSwic2VjdXJpdHlfZGVwb3NpdCI6MTY2Ni4zNX0sImRpc2NvdW50IjowfQ==	2016-06-08 12:54:57.961757-04
kfd49nm7fydjjq3rltyeeex71lc1yc44	OTc5Njk5YjBiZDdkZWMzOWQ3NDdkZjEyYThkZjQ0NjEwMjIxMzAzNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRURDUDE2QyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NzMsImlkcyI6MTQzLCIxIjp7InNrdSI6IldFRENQMTZDIiwibmFtZSI6InllbGxvdyBlbWJlbGxpc2hlZCBzYXJlZSIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjciLCJ0b19kYXRlIjoiMjAxNi0wNS0yOSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiZGlzY291bnQiOjB9	2016-06-10 00:16:58.454309-04
ocfphu5q9ojcvl8yef9ffa2htnv3b6ez	ZWY2YWZkMTgxNjlmNmY4M2Y3MmZiZTQ4YTJjNzc4Mjc0ZDRhYTYyNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDQzNy43LCJzdW1fdG90YWwiOjQxMzcuNywibXlfY2FydCI6Ik1FQUtQMTAiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMwMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFLUDEwIiwibmFtZSI6ImJsYWNrIHN1aXQgd2l0aCBzaGlueSBsYXBlbCIsInN1Yl90b3RhbCI6NDEzNy43LCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTMxIiwidG9fZGF0ZSI6IjIwMTYtMDYtMDUiLCJyZW50IjoyMDY4Ljg1LCJzZWN1cml0eV9kZXBvc2l0IjoyMDY4Ljg1fSwiZGlzY291bnQiOjB9	2016-06-10 03:15:09.723213-04
apkb0lrqpk108o11ugutfdyvecgl1hqk	YTcxNDgyMmI2N2U2Y2QzMTA1MTVkOTk0ZTI1NWQ0M2YwZTVmMGI0ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiTVdKTTI0IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo4NywiaWRzIjoxMzcsIjEiOnsic2t1IjoiTVdKTTI0IiwibmFtZSI6ImdyZXkgZm9ybWFsIGJsYXplciIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo2OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjciLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksInJlbnQiOjU5OX0sImRpc2NvdW50IjowfQ==	2016-06-07 21:48:41.537996-04
ja7po53w53pemq67ej7elthkq8eoa0lx	NjIyZWE1MzMzMTczODA3OTI4MGNkM2VkZGI5NjEyZWM3NWUyODg5Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyMiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTI0LCJpZHMiOjE0NiwiMSI6eyJza3UiOiJNRUFTUDMwIiwibmFtZSI6ImJsYWNrIHNoaW55IHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxNjk4LCJtcnAiOjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInNlY3VyaXR5X2RlcG9zaXQiOjg0OSwicmVudCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-06-10 14:05:49.372338-04
hwpqmrss09uzyn96tfyjz9duvuwdke9b	ZjcwNjJiYjRiMGRiNTcyYjMyM2UyNjdmYzg4NmYwZTI0NjE5MGUxMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQ0s1MCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV1dDSzUwIiwibmFtZSI6ImxpZ2h0IGdyZWVuIGRyZXNzIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5LCJyZW50IjozOTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-10 17:34:29.919139-04
ye0qe2ezq5ft9ub0060up8curnwxc6zo	YjA1ZDVkMTYyNGY4NGE5ZDliZjFiMTc5ZWUyY2MxZTdhNWU0NzM0MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6IldXQ0s0NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV1dDSzQ2IiwibmFtZSI6ImZsb3JhbCBjcm9wIHRvcCBza2lydCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQ1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-11 05:06:19.796854-04
1b72dwle1aykyllsrqgp9humdtn1ssyy	NzAxNWVjOTFiZjJhZmNlNDg3NzA4N2MxNjNjNDdiNmU3YjcxMTQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2ZmI2ZjQ0NGVhODQzMDFiNDJiZWUyYTU2ZTQ5ZDcyYTM4NDIxYWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-08-04 09:52:26.492931-04
wx23wjsuip4h8fg5rmvfu889wtromsfc	MzAyNWMzNGE2MDc5NjkwMDg0NDcwMTQ4YzI5MDdiN2E2ZDFhODhmNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0FSMzgiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dBUjM4IiwibmFtZSI6ImRlZXAgYmFjayBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjI2NzAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMzEiLCJ0b19kYXRlIjoiMjAxNi0wNi0wMiIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-06-13 01:24:17.891536-04
u8m2hb65atps59b6bt4d8qmaqkwf83wb	OGM0ZDQ4MjEyNmU1MjQyNDhlMjdjZTQyZTBmMTU1OGEyYmYwNjcxMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDcxNSwic3VtX3RvdGFsIjo0Mzk2LCJteV9jYXJ0IjoiTVdNSzAxIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMTksImNhcnRfY291bnQiOjIsImlkcyI6MTI2LCIxIjp7InNrdSI6Ik1XTUswMSIsIm5hbWUiOiJibGFjayBqYWNrZXQgd2l0aCBmaW4gbGFwZWwiLCJzdWJfdG90YWwiOjIxOTgsIm1ycCI6MTMwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjEwOTksInJlbnQiOjEwOTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNS01UWDAzQTAwMyIsIm5hbWUiOiJub3RjaGVkIGxhcGVsIHR1eGVkbyIsInN1Yl90b3RhbCI6MjE5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwicmVudCI6MTA5OSwic2VjdXJpdHlfZGVwb3NpdCI6MTA5OX19	2016-06-02 03:53:23.056021-04
ljfm5047qyywdbweb2yf7oqx4lxw0btd	ZmY0OTE5MWJjNjYwNGEwMzYzMmNlMjRiOTE4NGY3YzJlZjc2YTg2Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzUzOCwic3VtX3RvdGFsIjozMjk4LCJteV9jYXJ0IjoiREIwMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjI0MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAwNSIsIm5hbWUiOiJibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjMyOTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjciLCJ0b19kYXRlIjoiMjAxNi0wNS0yOSIsInJlbnQiOjE2NDksInNlY3VyaXR5X2RlcG9zaXQiOjE2NDl9LCJkaXNjb3VudCI6MH0=	2016-06-08 13:33:09.818449-04
5i43ls4dvy7yno7r9svjp3ntjxdkwg64	YzgxMGQ3ZTAxM2NkNjEwZWVlNDVjZTgwOTNlNDBkOGQ2NjViYTRmNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTAxLjAsInN1bV90b3RhbCI6ODQwLjAsIm15X2NhcnQiOiJXV0NLNDkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjYxLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjE0NCwiMSI6eyJza3UiOiJXV0NLNDkiLCJuYW1lIjoic3RyaXBlZCBsb25nIGRyZXNzIiwic3ViX3RvdGFsIjo4NDAuMCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTMxIiwidG9fZGF0ZSI6IjIwMTYtMDYtMDciLCJyZW50Ijo0MjAuMCwic2VjdXJpdHlfZGVwb3NpdCI6NDIwLjB9LCJkaXNjb3VudCI6MH0=	2016-06-10 00:40:10.71732-04
8onxerilrb10zj1k0uxl8h8rswkjn7e1	MzkyMjBhYjVmODZhZDQyYzE4ZWJiMjFhODk1ODlhZTI2YjNmYzBkYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM1MCwic3VtX3RvdGFsIjoxMjU4LCJteV9jYXJ0IjoiQ0swN0EiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjkyLCIxIjp7InNrdSI6IkNLMDdBIiwibmFtZSI6InN1cGVybW9kZWwgY2hpYyBkcmVzcyBibGFjayIsInN1Yl90b3RhbCI6MTI1OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzAiLCJzZWN1cml0eV9kZXBvc2l0Ijo2MjksInJlbnQiOjYyOX0sImRpc2NvdW50IjowfQ==	2016-06-10 04:33:04.436234-04
75kyzs2j1su2xh3l7dhqop4ihu4sztmu	MzEzM2U3NjcxNTViN2FjMTgwYTZlYTZmMGViZmZmZTEzZDliNmE4Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6IldXQ0s1MiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV1dDSzUyIiwibmFtZSI6InBpbmsgc2hpbW1lciBkcmVzcyIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-10 17:13:14.467775-04
01se2jfx6bh0rjuvkxf4sp9wy5mb83pw	ODRjOGMwYjk2ZmY3ZDkwMzdkOTIxNGQwZjk1MjhiMWZhMDA5MzYwMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU2LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQ0s1MCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dDSzUwIiwibmFtZSI6ImxpZ2h0IGdyZWVuIGRyZXNzIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTMwIiwicmVudCI6Mzk5LCJzZWN1cml0eV9kZXBvc2l0IjozOTl9LCJkaXNjb3VudCI6MH0=	2016-06-10 17:37:19.142497-04
yruquakpr39jt138170ozl4iwnjenp1m	YjA1ZDVkMTYyNGY4NGE5ZDliZjFiMTc5ZWUyY2MxZTdhNWU0NzM0MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6IldXQ0s0NiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV1dDSzQ2IiwibmFtZSI6ImZsb3JhbCBjcm9wIHRvcCBza2lydCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQ1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwicmVudCI6NDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-11 05:58:32.91051-04
0i4im3im7mzwy946i6rrbpos6onl97ns	OGZmY2Q2ZThkNzk5ZTY3ZDk2YTIwOGRmY2FkYmRjMjk4YjA4MTg2ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY5OTgsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMDcxQSIsIm5hbWUiOiJ2ZWx2ZXR5IHB1cnBsZSBsZWhlbmdhIiwic3ViX3RvdGFsIjo2OTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzAiLCJzZWN1cml0eV9kZXBvc2l0IjozNDk5LCJyZW50IjozNDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-11 06:04:28.895064-04
zyyapubeyxrntdaoxubn56m8xaljh9n2	OThmNTgyMzJlOTY2NzhhZmFlNjIxYjYzYmYwNWQ3NzhhMGRjNzA1Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTVdCQjA2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMDIsImNhcnRfY291bnQiOjEsImlkcyI6MTMyLCIxIjp7InNrdSI6Ik1XQkIwNiIsIm5hbWUiOiJtdXN0IGhhdmUgYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjoxMzk4LCJtcnAiOjY5OTUsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNS0yNSIsInJlbnQiOjY5OSwic2VjdXJpdHlfZGVwb3NpdCI6Njk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTVdCQjA2IiwibmFtZSI6Im11c3QgaGF2ZSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6Njk5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yMyIsInRvX2RhdGUiOiIyMDE2LTA1LTI1Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5LCJyZW50Ijo2OTl9fQ==	2016-06-06 01:44:11.872699-04
1c8pg170lsdvbl07n8ihe9ngt659g8ka	N2E5Nzk1MzE2MDBiYTAyYWYyNmI0ZGYyZDU2MzU0YjViNWUyMzcxMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEwODgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQSIsInRvX2RhdGUiOiJOQSIsInJlbnQiOjE1MDAwLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-06-11 06:14:49.780812-04
e61291l4d6yd3wtp0bpixotghbl47c7f	ODIzODVhMjdmYmU3MjJlM2VkOTUzYzY3NWFlNWU0MDM5ODdlZGZkZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1OSwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiQ0swNUIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjI2MSwiMSI6eyJza3UiOiJDSzA1QiIsIm5hbWUiOiJsaWdodCBjb3JhbCBzdWl0Iiwic3ViX3RvdGFsIjozNTk4LCJtcnAiOjE0OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjoxNzk5LCJyZW50IjoxNzk5fSwiZGlzY291bnQiOjB9	2016-06-07 01:14:21.160742-04
q2j1kov9dy4g07azf0mjts7bsho7yrli	MzM3MmNhMmM5NzVlZmI4YjlkNzdlY2I0MGQ0MjdiYTFiN2NmODhjNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQ0LCJzdW1fdG90YWwiOjYwMCwibXlfY2FydCI6IldJU08wNEIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ0LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldJU08wNEIiLCJuYW1lIjoiZHJhcGVkIHNhcmVlIGRyZXNzIiwic3ViX3RvdGFsIjo2MDAsIm1ycCI6MTY5MCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0zMCIsInRvX2RhdGUiOiIyMDE2LTA2LTAxIiwicmVudCI6MzAwLCJzZWN1cml0eV9kZXBvc2l0IjozMDB9LCJkaXNjb3VudCI6MH0=	2016-06-07 05:45:17.786745-04
maf2i6y1ull56ui7fwk2787gd6r6ck1u	NzU5ZDc0ZTMyNmQ1ZjhmNjRlMGNiMDExMGE5OWM1NmViMzY1YzE1Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzEwOSwic3VtX3RvdGFsIjoyODk4LCJteV9jYXJ0IjoiREIyMDEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjIxMSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjIwMSIsIm5hbWUiOiJ2ZWx2ZXR5IGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6Mjg5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNSIsInRvX2RhdGUiOiIyMDE2LTA1LTI3IiwicmVudCI6MTQ0OSwic2VjdXJpdHlfZGVwb3NpdCI6MTQ0OX0sImRpc2NvdW50IjowfQ==	2016-06-07 16:13:11.511818-04
spzlevjpsromw5axhrc856nbjpj42rto	ZmUwN2U5Mzk1YTk1MjdhZTgyNjljZDc4MTAzMGNlYjM5ZmMxZTM4YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM1OTgsIm15X2NhcnQiOiJNRUFLUDEwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQUtQMTAiLCJuYW1lIjoiYmxhY2sgc3VpdCB3aXRoIHNoaW55IGxhcGVsIiwic3ViX3RvdGFsIjozNTk4LCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTAiLCJzZWN1cml0eV9kZXBvc2l0IjoxNzk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE3OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-16 02:41:16.353047-04
yk7qz14q7s2yvyb6zbra7isegwsvf3jc	ZjBkNjUyOGU1YTI5MDgyNTJiNGE1YTA1YTk1OGNmNWUxNDEyM2JiNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3MywiY2FydF9jb3VudCI6MSwiaWRzIjoxMzEsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yMyIsInRvX2RhdGUiOiIyMDE2LTA1LTI1IiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-06-06 01:42:48.288058-04
b6eszy769oevuyqkl7vtoy4ks0kfrgij	ZWVkNTVlYTdlODlhMGZlZWI1ZDBjNzc4YzE0NzFlMjY2NTdkOWQ0Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MTcsInN1bV90b3RhbCI6OTk5MiwibXlfY2FydCI6IldFUEtTMTAyIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6NSwidGF4Ijo3MjUsIjEiOnsic2t1IjoiV0VQS1MxMDIiLCJuYW1lIjoiQmxhY2sgU2hpbnkgQmFuZGdhbGEgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo3NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjEiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksInJlbnQiOjg5OX0sImRpc2NvdW50IjowLCIzIjp7InNrdSI6IldFUEpTMTAzIiwibmFtZSI6IkJsdWUgQmFuZGdhbGEgU3VpdCIsInN1Yl90b3RhbCI6Mjk5OCwibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ5OSwicmVudCI6MTQ5OX0sIjIiOnsic2t1IjoiV0VQS1AxMDEiLCJuYW1lIjoiTWFueWF2YXIgQmVpZ2UgSmFja2V0IFNoZXJ3YW5pIiwic3ViX3RvdGFsIjoyNDAwLCJtcnAiOjEyMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjEiLCJyZW50IjoxMjAwLCJzZWN1cml0eV9kZXBvc2l0IjoxMjAwfSwiNSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0xOSIsInRvX2RhdGUiOiIyMDE2LTA1LTIxIiwicmVudCI6NDk5LCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCI0Ijp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMTkiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwicmVudCI6ODk5fX0=	2016-06-02 04:57:51.806415-04
3jtkpptooq66oyinfs1b1s5l57t6kvbx	Y2VjMjM0YmViYTUxMDZkNDRiODA4NjFjYjQ4MjliMTZkYTY3YmMwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUwIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXV0NLNTAiLCJuYW1lIjoibGlnaHQgZ3JlZW4gZHJlc3MiLCJzdWJfdG90YWwiOjc5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjYiLCJzZWN1cml0eV9kZXBvc2l0IjozOTksInJlbnQiOjM5OX19	2016-06-02 13:05:13.694955-04
ph7v44lkzmb33j7apvvc39zegoj7ubbx	NDM4ZDQ0NzRmZGMwNzcwNmMyMTA5MGJjMmFmMmVmOWVmNjIwMDNjMTp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6IktVRkxEMTVBMDYxIiwibmFtZSI6InNlcXVpbm5lZCBnZW9yZ2V0dGUgcGluayBtYXhpIGRyZXNzIiwic3ViX3RvdGFsIjoyMzk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjkiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTk5LCJyZW50IjoxMTk5fSwic3VtX3RvdGFsIjo1OTk2LCJteV9jYXJ0IjoiQ0swNUIiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IkNLMDVCIiwibmFtZSI6ImxpZ2h0IGNvcmFsIHN1aXQiLCJzdWJfdG90YWwiOjM1OTgsIm1ycCI6MTQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjciLCJ0b19kYXRlIjoiMjAxNi0wNS0yOSIsInJlbnQiOjE3OTksInNlY3VyaXR5X2RlcG9zaXQiOjE3OTl9fQ==	2016-06-03 02:05:52.740103-04
3g25piqgh9cehcalkdrwk81dzw9dqras	YmE4ZmZhYThiZTBmNGE2MzQ0ZWVmYzFmZmI5NzZmMTRhOTBkNjVmOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJNV0FSMDciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1XQVIwNyIsIm5hbWUiOiJzaGlueSBicm93biBibGF6ZXIiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6MTEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjAiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMiIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwicmVudCI6ODk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-03 05:13:34.674824-04
vd0yupee1lo5wwzdbyj2465ew3cjy3yg	NzE5NjgzZTMzYzQzYWY0ZWFiNjkxMTg2NmU1NGY2NjQzZGRmM2M3Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzA2LCJzdW1fdG90YWwiOjY1OCwibXlfY2FydCI6IkNLMThBIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo0OCwiaWRzIjoxMjcsIjEiOnsic2t1IjoiQ0sxOEEiLCJuYW1lIjoic3VwZXJtb2RlbCBjaGljIGRyZXNzIHJlZCIsInN1Yl90b3RhbCI6NjU4LCJtcnAiOjMyOTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjEiLCJ0b19kYXRlIjoiMjAxNi0wNS0yMyIsInNlY3VyaXR5X2RlcG9zaXQiOjMyOSwicmVudCI6MzI5fSwiZGlzY291bnQiOjB9	2016-06-03 16:05:20.967026-04
7rxaskn1rx49zvczfpugouxcieeok2gx	NDYzNmU4YWJmNDRmYTRhNjVmZTE1NzVmNjJlYjBmMjhkNmIzODhjNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0Mywic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiSk4xMDMiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE0NSwiMSI6eyJza3UiOiJKTjEwMyIsIm5hbWUiOiJob2xseXdvb2QgY29sbGVjdGlvbiBsYXllcmVkIGhpIGxvIGRyZXNzIHNsaW0gZml0Iiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjQzOTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInNlY3VyaXR5X2RlcG9zaXQiOjk5OSwicmVudCI6OTk5fSwiZGlzY291bnQiOjB9	2016-06-03 21:02:23.667893-04
t4fvxjiiga2mk08519fpbdwg3ko35w64	Nzg0M2MxODE5YmI1ZDM4ZTI2OTkxNjBlMWMwMTVhODc4YjE5ODA1ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEzMSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzAiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksInJlbnQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-06-04 04:16:42.580698-04
gltpmtw4ecrj8pvmg7k2188oe5exwnii	ZGJkYmVjMzc5ZjU4NTJiNzEwMmRjNDAwZTdkMDI4MDY2OTI0ZGEyMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1Niwic3VtX3RvdGFsIjozNTk1LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjI2MSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTIxIiwidG9fZGF0ZSI6IjIwMTYtMDUtMjMiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksInJlbnQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-06-04 07:42:25.684424-04
s51vs98rqwp41dmv0eljoqkj9xeoutvl	ZTMwZmMxNjlhOTdhMDNhZDkyN2VmYzI4ZjU1MDNhMjg4NzNiZjMzNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTUVQUFAxOCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTAyLCJpZHMiOjEyOCwiMSI6eyJza3UiOiJNRVBQUDE4IiwibmFtZSI6InJlZCBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNSIsInRvX2RhdGUiOiIyMDE2LTA1LTI3Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5LCJyZW50Ijo2OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiTWQiLCJpZCI6MzgsImZiX2lkIjoiMjczNzM0MDQyOTczNzYyIn19	2016-06-04 12:22:09.696958-04
l3x2qddgs417u1ywfb8mtb1oykm2az1c	MDJkMTAzYWE0MThkNjRhMGRiOTkwNWViZjY2YTljODdlNWNjZGFiMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiSk4xMDBBIiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxMDIsIjEiOnsic2t1IjoiSk4xMDBBIiwibmFtZSI6ImJsYWNrIHdoaXRlIHN0cmlwZWQgYnV0dG9uIGRvd24gbWluaSBkcmVzcyIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTIyIiwidG9fZGF0ZSI6IjIwMTYtMDUtMjQiLCJzZWN1cml0eV9kZXBvc2l0Ijo2OTksInJlbnQiOjY5OX0sImRpc2NvdW50IjowfQ==	2016-06-04 16:50:21.883643-04
i0x2opfo2s0xw8u3r6xhshpcybkjcs7t	ZWRkYTVlZTI3YjU5ZjFiMmYyMzA0MDdhMWQ4NDFjYWM5ZTgzZTIxYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzA2LCJzdW1fdG90YWwiOjY1OCwibXlfY2FydCI6IkNLMThBIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0OCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJDSzE4QSIsIm5hbWUiOiJzdXBlcm1vZGVsIGNoaWMgZHJlc3MgcmVkIiwic3ViX3RvdGFsIjo2NTgsIm1ycCI6MzI5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wOSIsInRvX2RhdGUiOiIyMDE2LTA2LTExIiwicmVudCI6MzI5LCJzZWN1cml0eV9kZXBvc2l0IjozMjl9LCJkaXNjb3VudCI6MH0=	2016-06-04 23:37:44.680933-04
4e01wi913orugakitbgsmsc4206tzwwd	ZDk0ZGY3NTM1MWVhNDc1MWRkNWUxODE3MzhjMmY1YzhhYjZkYzFiNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzYxMywic3VtX3RvdGFsIjo3MDk4LCJteV9jYXJ0IjoiTUVSQ1AyMyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTE1LCJjYXJ0X2NvdW50IjozLCJpZHMiOjE0MiwiMSI6eyJza3UiOiJNRVJDUDIzIiwibmFtZSI6IjMgcGllY2UgYnJvd24gc3VpdCIsInN1Yl90b3RhbCI6Mjk5OCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNSIsInRvX2RhdGUiOiIyMDE2LTA1LTI3IiwicmVudCI6MTQ5OSwic2VjdXJpdHlfZGVwb3NpdCI6MTQ5OX0sImRpc2NvdW50IjowLCIzIjp7InNrdSI6Ik1XQVIyMCIsIm5hbWUiOiJzaGlueSBibGFjayBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNS0yNyIsInJlbnQiOjExMDAsInNlY3VyaXR5X2RlcG9zaXQiOjExMDB9LCIyIjp7InNrdSI6Ik1XQVIxMCIsIm5hbWUiOiJncmV5IGZ1bGwgc3VpdCB3aXRoIGJsYWNrIGxpbmluZyIsInN1Yl90b3RhbCI6MTkwMCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNSIsInRvX2RhdGUiOiIyMDE2LTA1LTI3Iiwic2VjdXJpdHlfZGVwb3NpdCI6OTUwLCJyZW50Ijo5NTB9fQ==	2016-06-08 05:16:25.531294-04
0yidvckfv593jdpufs15fed6j2lin62p	OGU3YmYzMDQwOWRkYWI0YTA1Mjk0MDg4MmM4ODZhYjU5MTQxMDA1NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiQ0swMyIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTAyLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkNLMDMiLCJuYW1lIjoicGluayBwZXBsdW0gZHJlc3MiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6MzI5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0zMCIsInRvX2RhdGUiOiIyMDE2LTA2LTAxIiwicmVudCI6Njk5LCJzZWN1cml0eV9kZXBvc2l0Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-06-09 15:19:30.342369-04
4f21gx9mo5n1co1s5weomzp4phegffd5	YTc5ZjI0OTVjYmRlNWI5YTAwNTY4OWMyMmRmNjQ2NmMwYzk3YjY0MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiTVdKTTI0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjg3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1XSk0yNCIsIm5hbWUiOiJncmV5IGZvcm1hbCBibGF6ZXIiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6Njk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wMSIsInRvX2RhdGUiOiIyMDE2LTA2LTAzIiwicmVudCI6NTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sImRpc2NvdW50IjowfQ==	2016-06-14 11:10:55.503478-04
qiss1dlsyo6n5oeaduylnna037vifl18	ZTc4ZmY4YmZkYWYyMmQxMWE1MDRlNmZjOTVlNzA4ZjMyMTE5MTFmNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIxNiwic3VtX3RvdGFsIjoyOTk4LCJteV9jYXJ0IjoiV0VBWFAxMiIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjE4LCJjYXJ0X2NvdW50IjoxLCJpZHMiOjE0NSwiMSI6eyJza3UiOiJXRUFYUDEyIiwibmFtZSI6Im5lb24gcGluayBsZWhlbmdhIiwic3ViX3RvdGFsIjoyOTk4LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjkiLCJyZW50IjoxNDk5LCJzZWN1cml0eV9kZXBvc2l0IjoxNDk5fSwiZGlzY291bnQiOjB9	2016-06-10 02:58:09.51907-04
7ouev8kpbddzbax90vsqmwfvaxlc5xjd	OGM1ZWY2Mjc5MGIzZDRmNzlmMDNkOTY4NzE5ZDU2NjViZjUzNTNiZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU2LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1FUkdQMTYiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjU4LCIxIjp7InNrdSI6Ik1XU1MxMSIsIm5hbWUiOiJncmV5IHdhaXN0Y29hdCIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjQ1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNS0yNiIsInJlbnQiOjM5OSwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTVdTUzExIiwibmFtZSI6ImdyZXkgd2Fpc3Rjb2F0Iiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNCIsInRvX2RhdGUiOiIyMDE2LTA1LTI2IiwicmVudCI6Mzk5LCJzZWN1cml0eV9kZXBvc2l0IjozOTl9fQ==	2016-06-05 10:40:24.551058-04
ah9azf7h6mdphlsw1cupj93eo2dpnmul	ODNjOWM0ODE4YjQ0ODMyNGI0MTk0YTRjNGRiNDIxNzllMDMzNWQ3YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUxLCJzdW1fdG90YWwiOjcwMCwibXlfY2FydCI6IldXQ0s0OSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTEsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dDSzQ5IiwibmFtZSI6InN0cmlwZWQgbG9uZyBkcmVzcyIsInN1Yl90b3RhbCI6NzAwLCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMzEiLCJ0b19kYXRlIjoiMjAxNi0wNi0wMiIsInJlbnQiOjM1MCwic2VjdXJpdHlfZGVwb3NpdCI6MzUwfSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IlZpc2hudSIsImlkIjo0OSwiZmJfaWQiOiIxMzIwNDA4NjExMzA4ODgyIn19	2016-06-10 06:46:33.458405-04
cx4nxq6mencnqgyvj37dis7wyb2za090	MWUxNzQ1ZTBhMzMxMTI1NWUxZDZjOTRkMzAxMGVmMjkyODc4MGEwYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjc4OSwic3VtX3RvdGFsIjoyNjAwLCJteV9jYXJ0IjoiREIwMTEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE4OSwiY2FydF9jb3VudCI6MSwiaWRzIjoxMzMsIjEiOnsic2t1IjoiREIwMTEiLCJuYW1lIjoiYmx1ZSBibGF6ZXIiLCJzdWJfdG90YWwiOjI2MDAsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNCIsInRvX2RhdGUiOiIyMDE2LTA1LTI2IiwicmVudCI6MTMwMCwic2VjdXJpdHlfZGVwb3NpdCI6MTMwMH0sImRpc2NvdW50IjowfQ==	2016-06-06 11:23:06.56631-04
amwx8q897emgno6dnlm3zi0v7ofhbozo	ODRjOGMwYjk2ZmY3ZDkwMzdkOTIxNGQwZjk1MjhiMWZhMDA5MzYwMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU2LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQ0s1MCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dDSzUwIiwibmFtZSI6ImxpZ2h0IGdyZWVuIGRyZXNzIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTMwIiwicmVudCI6Mzk5LCJzZWN1cml0eV9kZXBvc2l0IjozOTl9LCJkaXNjb3VudCI6MH0=	2016-06-10 17:28:54.521566-04
8rivtcbcmcta5jpp4z8k7pbfvun50kui	Yzg0Y2U1NDQ5N2FhMDViOWYxY2QyYjJjY2FmY2UyMzI3MDE4OTk2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ3IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-06-07 02:49:58.185769-04
dkd8crvowdx3ulp28rq4msr5fxm3cmd9	ZjcwNjJiYjRiMGRiNTcyYjMyM2UyNjdmYzg4NmYwZTI0NjE5MGUxMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQ0s1MCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV1dDSzUwIiwibmFtZSI6ImxpZ2h0IGdyZWVuIGRyZXNzIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5LCJyZW50IjozOTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-10 17:55:42.347705-04
3f9prnd4qc882koe0o6qrutx0pj0rez4	NjdjN2E2YTg0ZWYxMjJlNWU3MWQ1MWE4NGJhODRjYmQyN2ZhNDYwNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzQ0Mi42LCJzdW1fdG90YWwiOjMyMDkuNiwibXlfY2FydCI6IkNLMDciLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjIzMywiY2FydF9jb3VudCI6MiwiMSI6eyJza3UiOiJDSzA3IiwibmFtZSI6InN1cGVybW9kZWwgY2hpYyBkcmVzcyBibGFjayIsInN1Yl90b3RhbCI6MTUwOS42LCJtcnAiOjMyOTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNi0wMSIsInJlbnQiOjc1NC44LCJzZWN1cml0eV9kZXBvc2l0Ijo3NTQuOH0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IldFTkdQMTMiLCJuYW1lIjoid2hpdGUgcmVkIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE3MDAsIm1ycCI6ODUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yNSIsInRvX2RhdGUiOiIyMDE2LTA1LTI3IiwicmVudCI6ODUwLCJzZWN1cml0eV9kZXBvc2l0Ijo4NTB9fQ==	2016-06-07 08:50:53.288623-04
h2bvkkwm3352pa8lhs9wtk0jhysamvte	MDUwMTZlNmIxZDEyMmMzNzI4NDU5MTliN2ZlN2Q0ZGMyNTIxZDI0ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNDYiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzAiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-06-11 06:02:29.715992-04
ths7djks9ehl0yvg2m58uqhks1e4fua9	OGUzN2FiOGNiMWM2ZjMxMjZiZjE5ZDk5NjNhNmQ1YTU4MWExYjc5Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0Mywic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiSk4xMDMiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE0NSwiMSI6eyJza3UiOiJKTjEwMyIsIm5hbWUiOiJob2xseXdvb2QgY29sbGVjdGlvbiBsYXllcmVkIGhpIGxvIGRyZXNzIHNsaW0gZml0Iiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjQzOTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjciLCJ0b19kYXRlIjoiMjAxNi0wNS0yOSIsInNlY3VyaXR5X2RlcG9zaXQiOjk5OSwicmVudCI6OTk5fSwiZGlzY291bnQiOjB9	2016-06-08 03:25:22.21465-04
vc55l4v3mqf2c1z7ai11og6mk3bi8h3h	OGI2YWUzMzc3YWIzZTk1NGFmYjRjMDZiMjlkZjIwMzQ0MjA0ZDllZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUwNiwic3VtX3RvdGFsIjo2OTk4LCJteV9jYXJ0IjoiREIwNzFBIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1MDgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjY5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjM0OTksInNlY3VyaXR5X2RlcG9zaXQiOjM0OTl9LCJkaXNjb3VudCI6MH0=	2016-06-11 06:06:05.081851-04
trfsugvjwym1j58huxadj2uiyibhszpn	Mjc2NGY5YzViNDBmNmMyODJkMzI3MTA1ZTQ1OTU1NzczOTQ1M2VjMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM1OTMsInN1bV90b3RhbCI6MjE5OTgsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE1OTUsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQSIsInRvX2RhdGUiOiJOQSIsInJlbnQiOjE1MDAwLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjY5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInJlbnQiOjM0OTksInNlY3VyaXR5X2RlcG9zaXQiOjM0OTl9fQ==	2016-06-11 06:16:08.463118-04
grrntlzxgulwounvzr2l39j6x0mkuex4	NTEwZjRlYTA4MzY3ZDAyZjY2YjZiZWIzYWMwNjljMjg4M2RjNzcyMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUwNiwic3VtX3RvdGFsIjo2OTk4LCJteV9jYXJ0IjoiREIwNzFBIiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1MDgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjY5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInJlbnQiOjM0OTksInNlY3VyaXR5X2RlcG9zaXQiOjM0OTl9LCJkaXNjb3VudCI6MH0=	2016-06-11 06:25:35.285263-04
cdw4i8rdsy8ku652ggrw74gld6nj5z1g	N2FhMWJhZTNhMDVkOGJkODcxODJkOWIyYTUwOGFhZWEyYzkwODVlODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNDYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzMsImNhcnRfY291bnQiOjEsImlkcyI6MTU5LCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0zMCIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRVJHUDE2IiwibmFtZSI6ImJsdWUgcGFydHkgYmF6ZXIiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzAiLCJyZW50Ijo0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5fX0=	2016-06-11 09:48:07.852555-04
rukck9dm9unnqg7iv5tdal1q33vr4sjc	YmVjNTFmODA3YjgxNGYxYzZkZGVmNDgyMjQwNDY3NTMzOGZkMjA4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQSIsInRvX2RhdGUiOiJOQSIsInNlY3VyaXR5X2RlcG9zaXQiOjAsInJlbnQiOjE1MDAwfSwiZGlzY291bnQiOjB9	2016-06-11 06:33:39.334618-04
l4iirqhn32tef77ambrw27d0cc79qxsh	YmVjNTFmODA3YjgxNGYxYzZkZGVmNDgyMjQwNDY3NTMzOGZkMjA4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQSIsInRvX2RhdGUiOiJOQSIsInNlY3VyaXR5X2RlcG9zaXQiOjAsInJlbnQiOjE1MDAwfSwiZGlzY291bnQiOjB9	2016-06-11 06:41:06.712347-04
mod9ya5sgrh2nll8xnzv79nj4l43s6i4	YmVjNTFmODA3YjgxNGYxYzZkZGVmNDgyMjQwNDY3NTMzOGZkMjA4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQSIsInRvX2RhdGUiOiJOQSIsInNlY3VyaXR5X2RlcG9zaXQiOjAsInJlbnQiOjE1MDAwfSwiZGlzY291bnQiOjB9	2016-06-11 06:43:36.056898-04
qihhjwf4x6ujva4wtoiterdiuzgt7i0z	NTQ0ZjVkODdjMDBmYzAwMzdkYWZkNzA3NjdlYzNjMGFlNjIyYWIzMzp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IkFyaW5kYW0iLCJpZCI6NjEsImZiX2lkIjoiMTE1MTk0NDk5NDg0NTMyNiJ9fQ==	2016-06-24 01:36:33.270356-04
rnxx9zpnr7w0ahqg7lv6rvyldi4pf465	YmVjNTFmODA3YjgxNGYxYzZkZGVmNDgyMjQwNDY3NTMzOGZkMjA4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQSIsInRvX2RhdGUiOiJOQSIsInNlY3VyaXR5X2RlcG9zaXQiOjAsInJlbnQiOjE1MDAwfSwiZGlzY291bnQiOjB9	2016-06-11 06:49:37.886753-04
lxt9s2m6rhydv2nxeb953dbrinrx9kwi	ZTk4ZjQ1YWIzZmZlN2IyYjRlNzZkY2U3ZDU2MzlmMGNiZDAxZWFkZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjMzOTgsIm15X2NhcnQiOiJEQjA0OSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJEQjA0OSIsIm5hbWUiOiJtYWdlbnRhIGJsYXplciIsInN1Yl90b3RhbCI6MzM5OCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0zMCIsInRvX2RhdGUiOiIyMDE2LTA3LTAyIiwic2VjdXJpdHlfZGVwb3NpdCI6MTY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxNjk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-24 02:07:39.533591-04
vx27mi08d4z8mkqb24qqbak186t9d01d	ZTczYTllZmZhNWNhYjY4ZjMxMWFlZTRkYjJiMTlmMTBlMTQ5NTRlNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQS9OQS9OQU5BIiwidG9fZGF0ZSI6Ik5BL05BL05BTkEiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJyZW50IjoxNTAwMH0sImRpc2NvdW50IjowfQ==	2016-06-11 06:51:35.162812-04
hggdo70fny41m953j0z42iaxso3fot49	ZmQ2NDE4NjVlNDJlMjkwOTA2YjY0NmY2NDI0NDYzN2ExZThiMzQwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQU5BL05BL05BIiwidG9fZGF0ZSI6Ik5BTkEvTkEvTkEiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJyZW50IjoxNTAwMH0sImRpc2NvdW50IjowfQ==	2016-06-11 06:52:57.527051-04
o4gwzr5jf5qldbkahn3s71v4yrrpq9w2	ZDg1NTk2NGMzODE2NTFhNWY4MTM5YmRkZDE0YTFkNWNkNzI1MGZkNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEwODgsIjEiOnsic2t1IjoiREIwNzFBIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjE1MDAwLCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiJOQU5BLU5BLU5BIiwidG9fZGF0ZSI6Ik5BTkEtTkEtTkEiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJyZW50IjoxNTAwMH0sImRpc2NvdW50IjowfQ==	2016-06-11 06:54:21.503866-04
etyn60gqcagsolafyu10au423ivubgdt	YTZkNGQ0YTdkNzk0NmU0OThjOTUwYjM1ZDE1Y2Y2ZDI5YjEyNzQ3ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEwODgsImNhcnRfY291bnQiOjEsImlkcyI6MTUxLCIxIjp7InNrdSI6IkRCMDcxQSIsIm5hbWUiOiJ2ZWx2ZXR5IHB1cnBsZSBsZWhlbmdhIiwic3ViX3RvdGFsIjoxNTAwMCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MTUwMDAsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-06-11 06:56:45.205314-04
gghd08xlwx12n26e3tbujkl8ksia3wh5	ZTAzYWMzYmNkM2IzZmZlMWRhM2QyZWYzZmRiNGNkZjE5ZWY4NzRlYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTcxNTgsInN1bV90b3RhbCI6MTU5OTgsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjExNjAsImlkcyI6MTUyLCIxIjp7InNrdSI6IkRCMDcxQSIsIm5hbWUiOiJ2ZWx2ZXR5IHB1cnBsZSBsZWhlbmdhIiwic3ViX3RvdGFsIjoxNTAwMCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwicmVudCI6MTUwMDB9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRVJHUDE2IiwibmFtZSI6ImJsdWUgcGFydHkgYmF6ZXIiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMzAiLCJyZW50Ijo0OTksInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX19	2016-06-11 06:59:31.864377-04
1fbqgpcr9vkbxmxz4auewcvanx80jkdv	ZDc3MjYyODJmMDYyNDFlYzE1MGFkNjgyM2UzYjU2NWQwYzVjMmE4Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ5OSwibXlfY2FydCI6IldXQVIzMSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldXQVIzMSIsIm5hbWUiOiJibGFjayBncmV5IGRyZXNzIiwic3ViX3RvdGFsIjo0OTksIm1ycCI6MjYwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjQ5OX0sImNhcnRfY291bnQiOjF9	2016-06-26 07:19:26.493285-04
lcjc94c452j72mcagb2yifdghebih9np	NDNhOGY1MjhmNzlmNGEyMDM0ODJjZDE5Mzg2Y2YzNTk0Y2ExZWYzODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjIxNywic3VtX3RvdGFsIjo1Nzk2LCJteV9jYXJ0IjoiTVdTUzE0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQyMSwiY2FydF9jb3VudCI6MiwiaWRzIjoxNzEsIjEiOnsic2t1IjoiTVdTUzE0IiwibmFtZSI6ImdyZWVuIGJyb2NhZGUgYmFuZGkiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo1MjAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTExIiwidG9fZGF0ZSI6IjIwMTYtMDYtMTMiLCJzZWN1cml0eV9kZXBvc2l0IjozOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mzk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNi0xMyIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX19	2016-06-19 11:37:27.376886-04
6qpd8yw4b8wvkkyjdnj9l274smdzifwz	ODM4YzI0Y2U0MzIyOWFjYWQ5ZWRiZDhmMjRlZjUzNTkyYzI2NjEzZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEwODgsImNhcnRfY291bnQiOjEsImlkcyI6MTUzLCIxIjp7InNrdSI6IkRCMDcxQSIsIm5hbWUiOiJ2ZWx2ZXR5IHB1cnBsZSBsZWhlbmdhIiwic3ViX3RvdGFsIjoxNTAwMCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MTUwMDAsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-06-11 07:04:22.885-04
nl6uj3fsyqfh2l70yx9wsx4ht8rquc4p	NjhkMDA0ZjRhNDI1NWJkNTUzN2ZlNmViOWVjZDc0NWI2OTkzZmYyNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyNDksIm15X2NhcnQiOiJKTjEwOEEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJKTjEwOEEiLCJuYW1lIjoidml2YSBsYSBiZWFjaCBsb25nIGhpIGxvIHR1bmljIHRvcCBjb2JhbHQgYmx1ZSIsInN1Yl90b3RhbCI6MTI0OSwibXJwIjoyNDk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MTI0OX0sImNhcnRfY291bnQiOjF9	2016-06-29 22:06:49.932127-04
lkk25k7f5wtiz5uzrsxjfv25fc3krwdi	OThmNWUyM2U5ZDdlNDQzOTM5ODFmZWJjNTgwODQ4NzUxNjdiNWE5NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJNRVJDUDIzIiwib3JkZXJfdHlwZSI6IkJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTA4OCwiMSI6eyJza3UiOiJNRVJDUDIzIiwibmFtZSI6IjMgcGllY2UgYnJvd24gc3VpdCIsInN1Yl90b3RhbCI6MTUwMDAsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsInJlbnQiOjE1MDAwfSwiZGlzY291bnQiOjB9	2016-06-11 07:09:04.283044-04
vj3han5towxdwuf6zx4fd0vjhjhyvfaf	NzgyOTIwMDhlZWEyOGI3MDU3NjZmMTE2MDQ5ZDhkYTM1ZjE2MmJmMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYwODgsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJEQjA3MUEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMDg4LCJjYXJ0X2NvdW50IjoxLCJpZHMiOjE1NSwiMSI6eyJza3UiOiJEQjA3MUEiLCJuYW1lIjoidmVsdmV0eSBwdXJwbGUgbGVoZW5nYSIsInN1Yl90b3RhbCI6MTUwMDAsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjE1MDAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-06-11 08:36:08.666817-04
igj24rrzrmpr2uezhcnbk4mih3k9j4ea	ZDE5N2FmYTg1ZDRjOTcxMGM0YmVmYTA1YjY1NzI1NDA4MWVkOWRkMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzE2NCwic3VtX3RvdGFsIjoyOTUwLCJteV9jYXJ0IjoiV1dDSzQ5Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjIsInRheCI6MjE0LCJpZHMiOjE1OCwiMSI6eyJza3UiOiJXV0NLNDkiLCJuYW1lIjoic3RyaXBlZCBsb25nIGRyZXNzIiwic3ViX3RvdGFsIjo3MDAsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6MzUwLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjM1MH0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IldXQ0s0NiIsIm5hbWUiOiJmbG9yYWwgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjIyNTAsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MjI1MCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9fQ==	2016-06-11 08:46:49.107836-04
vhp35xgzn8qzweb4w9tdcgngu6bra2rc	NTdmNWViZGMwZmMyYzMzMjY3ZGVhZjBmNjkxNDliODhlZDI3OTYzYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3NCwic3VtX3RvdGFsIjoyNDAwLCJteV9jYXJ0IjoiV0VQS1AxMDEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTc0LCIxIjp7InNrdSI6IldFUEtQMTAxIiwibmFtZSI6Ik1hbnlhdmFyIEJlaWdlIEphY2tldCBTaGVyd2FuaSIsInN1Yl90b3RhbCI6MjQwMCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0zMSIsInRvX2RhdGUiOiIyMDE2LTA2LTAyIiwic2VjdXJpdHlfZGVwb3NpdCI6MTIwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMjAwfSwiZGlzY291bnQiOjB9	2016-06-13 00:51:10.099077-04
wjyawcqazof1mh30gahejhrbcuwkrcrz	NTVjNWI1ODY1NzFkNTJmOGQ0YTEyODU3MmJlNzYzZWY5MWUzMWIyMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzQ1MS43LCJzdW1fdG90YWwiOjMyMTcuNywibXlfY2FydCI6IldFSkZQMzQiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MjM0LCIxIjp7InNrdSI6IldFSkZQMzQiLCJuYW1lIjoiZW1yb2lkZXJlZCBvZmYgd2hpdGUgZ293biIsInN1Yl90b3RhbCI6MzIxNy43LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTMiLCJzZWN1cml0eV9kZXBvc2l0IjoxNjA4Ljg1LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE2MDguODV9LCJkaXNjb3VudCI6MH0=	2016-06-14 07:58:05.108748-04
veldq2d8trkkoitbnw356de3r0r908o2	ODFkMDM3ZTkxYzBhYjA3ZGJhYmZhMmI2YjRhNWQzMjkzNzM0MjA4Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MjUsInN1bV90b3RhbCI6MTAwMDAsIm15X2NhcnQiOiJNRUFTUDA3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzI1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FQVNQMDciLCJuYW1lIjoiZW1iZWxsaXNoZWQgY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwMDAwLCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMDAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-06-15 05:19:29.594691-04
rnrvtvtwkxmn7jdf7t6p7129ann290se	N2Q1YjI3MjFjMjg0NTBmNGI4MDJhOTkyNjgwYjZhOGVhNzkzYmIzMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzI4OSwic3VtX3RvdGFsIjo2Nzk2LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NDkzLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjIiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMDkiLCJ0b19kYXRlIjoiMjAxNi0wNi0xMSIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX19	2016-06-15 11:18:39.287362-04
7odjtmr0kr5lvrkvndrk19p27vvn777y	MTEyNTA4MGMxYzhjNGViOTNlYWM0NTJlZTJkMDY3OTM1NWZhZTM0ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1Nywic3VtX3RvdGFsIjozNTk2LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjYxLCJjYXJ0X2NvdW50IjoyLCJpZHMiOjE2MCwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTAzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMDUiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTVdBUjA5IiwibmFtZSI6Im1hdHRlIGdyZXkgZnVsbCBzdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjEwOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTAzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMDUiLCJyZW50Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fX0=	2016-06-17 06:08:42.034086-04
f9fgztk9rsefg581g0p06plltcvqui8n	MWE2NDNhYzFmYWYwZThjZTNmMDRhODQ2MmVlYzVlNTY5NTFhOWZjNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2LCJzdW1fdG90YWwiOjQ5OSwibXlfY2FydCI6IldXQVIzMSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjM3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQVIzMSIsIm5hbWUiOiJibGFjayBncmV5IGRyZXNzIiwic3ViX3RvdGFsIjo0OTksIm1ycCI6MjYwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6NDk5LCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-06-26 07:19:49.513499-04
5acp6puayp9lb6r8moi2485a0dvj7ovj	ZWE0MzFmODAyZTIyZGQ0N2I5YzgxZjdlNTczMGQ1YzZhOWU3ODNiODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2MCwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiSkEwOTVCIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE2MCwiY2FydF9jb3VudCI6MSwiaWRzIjoxNzIsIjEiOnsic2t1IjoiSkEwOTVCIiwibmFtZSI6InphcmRvemkgZW1icm9pZGVyZWQgZ2VvcmdldHRlIHN1aXQiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6Nzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMSIsInRvX2RhdGUiOiIyMDE2LTA2LTEzIiwicmVudCI6MTEwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTAwfSwiZGlzY291bnQiOjB9	2016-06-19 11:44:40.063206-04
a6zsvlijttg7uke56t8ixm8wrm2tjmte	ZWRiNzUyY2EyMTg3NGRjYzYyM2FjZTdmNTRkMDU2MTMzMjQyNzJlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTc5OS42LCJzdW1fdG90YWwiOjE2NzcuNiwibXlfY2FydCI6Ik1FUFBQMTgiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTIyLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUFBQMTgiLCJuYW1lIjoicmVkIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxNjc3LjYsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTYiLCJ0b19kYXRlIjoiMjAxNi0wNi0yMyIsInJlbnQiOjgzOC44LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjgzOC44fSwiZGlzY291bnQiOjB9	2016-06-26 10:53:46.17009-04
hzg3vef0hlz8zluoqsd2awhf0yq0zxsv	NTg0YjI3NTYzYzJmMWQzOTIwZmJlNjczZDE5NTJkMDJmOTJlMmNiNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM1OCwic3VtX3RvdGFsIjoyMTk4LCJteV9jYXJ0IjoiTUtNVFgwM0EwMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTYwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1LTVRYMDNBMDAzIiwibmFtZSI6Im5vdGNoZWQgbGFwZWwgdHV4ZWRvIiwic3ViX3RvdGFsIjoyMTk4LCJtcnAiOjIxMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTAiLCJyZW50IjoxMDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEwOTl9LCJkaXNjb3VudCI6MH0=	2016-06-20 06:26:37.799452-04
e4h8wg0yf0lta0gesmlz113p3lco74e9	YTNiYWMxMjIyN2I5OTc0NDdmMGIwZWU0YzkzNTJkMGE1NWVmMmI4Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FQktQMDIiLCJuYW1lIjoidmVsdmV0eSBibHVlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI0OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTExIiwidG9fZGF0ZSI6IjIwMTYtMDYtMTMiLCJyZW50IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjI0OTl9LCJkaXNjb3VudCI6MCwiMyI6eyJza3UiOiJNRUJLUDAyIiwibmFtZSI6InZlbHZldHkgYmx1ZSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6NDk5OCwibXJwIjoyNDk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMiIsInRvX2RhdGUiOiIyMDE2LTA2LTE0IiwicmVudCI6MjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5fSwiMiI6eyJza3UiOiJNRUJLUDAyIiwibmFtZSI6InZlbHZldHkgYmx1ZSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6NDk5OCwibXJwIjoyNDk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMiIsInRvX2RhdGUiOiIyMDE2LTA2LTE0IiwicmVudCI6MjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiS2F2eWFzaHJlZSIsImlkIjo1NiwiZmJfaWQiOiIxMDIwNTQwMzMwMTgzNjYxNiJ9fQ==	2016-06-18 09:05:58.801356-04
92hni0noaxzwsifhgt1jcnf7mvwc7fx7	MjhiMWExMDg2ZjVkY2M5YzQ4NTU4MDkwYzZiMWZmZGNlODY4MmU3Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVBU1AwNyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOTAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wOCIsInRvX2RhdGUiOiIyMDE2LTA2LTEwIiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-06-21 02:39:48.522798-04
2ks0nvdw4zdys4c1wnu2vbsz6vl3hjqt	ZDY1NmJkMWIxNTgxMTlmMWExODU3Yzk4ZTNhYzEyNzMzMTdkMTg4ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTE4MCwic3VtX3RvdGFsIjoxMTAwLCJteV9jYXJ0IjoiSkEwNTdBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjgwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkpBMDU3QSIsIm5hbWUiOiJwcmludCBwZWdnZWQgZHJlc3MiLCJzdWJfdG90YWwiOjExMDAsIm1ycCI6MjE5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wOSIsInRvX2RhdGUiOiIyMDE2LTA2LTExIiwicmVudCI6NTUwLCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjU1MH0sImRpc2NvdW50IjowfQ==	2016-06-22 04:11:50.372399-04
3y9p9pa496ln7km1pz1neptbo77wuo37	Y2FjNzk1ZTI2MDQ1Y2NlMjM0OGJkMDRiODZiNDE4MjViZjA2NjQ0Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTE3OTgsInN1bV90b3RhbCI6MTEwMDAsIm15X2NhcnQiOiJQU0ZMRTE1QTA1OSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3OTgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiUFNGTEUxNUEwNTkiLCJuYW1lIjoiZ29sZCBhbmQgcmVkIGVtYnJvaWRkZWQgbGVoZW5nYSIsInN1Yl90b3RhbCI6MTEwMDAsIm1ycCI6Mjk3MDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjIiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNCIsInJlbnQiOjU1MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTUwMH0sImRpc2NvdW50IjowfQ==	2016-06-23 00:10:59.527182-04
vfglransublcnqi1m8km15stbfjbzs73	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-06-23 01:28:33.03469-04
u9s8l9ober1po697r0st2dvt8gsdfeit	NmY2ZmVmMDAwNGU5ZWRhNDg0NjYzMjdkNGU0NzcyZTJhN2E3ZDY4Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTI0Nywic3VtX3RvdGFsIjo0ODkyLCJteV9jYXJ0IjoiTVdCQjA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjM1NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0JCMDYiLCJuYW1lIjoibXVzdCBoYXZlIGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo2OTk1LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTEwIiwidG9fZGF0ZSI6IjIwMTYtMDYtMTIiLCJyZW50Ijo2OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTVdCQjA2IiwibmFtZSI6Im11c3QgaGF2ZSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6Njk5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMCIsInRvX2RhdGUiOiIyMDE2LTA2LTEyIiwicmVudCI6Njk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OX19	2016-06-23 16:11:48.463881-04
2qw57k5wrv2ltgsjdrb3323ezyd0p9qp	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-06-24 02:13:10.050756-04
pu1rfk9tyikqyw921cvmbsbpl7unb4dj	MDE1NmIxYjYzMTgzMTZhYTVhZjA4NjQwZjg2NjM4ZjljMWY4ZTBjZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XU1MxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNV1NTMTEiLCJuYW1lIjoiZ3JleSB3YWlzdGNvYXQiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTgiLCJzZWN1cml0eV9kZXBvc2l0IjozOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mzk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-24 02:35:56.833241-04
0av0wegopbzbeeg355xb5y56ovmm9uj4	YjBhZmE2YWE5NWRjNjM5NDliMTliYzc3YzY3ZWZlMTE5NTU2ZjJmNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTc1Nywic3VtX3RvdGFsIjoxNjM4LCJteV9jYXJ0IjoiSkEwMjZCIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjExOSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJKQTAyNkIiLCJuYW1lIjoibGFjZSBwYXJ0eSBnb3duIiwic3ViX3RvdGFsIjoxNjM4LCJtcnAiOjUxOTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMTYiLCJ0b19kYXRlIjoiMjAxNi0wNi0xOCIsInJlbnQiOjgxOSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4MTl9LCJkaXNjb3VudCI6MH0=	2016-06-24 02:48:26.690238-04
jcy5fynrcaffqvq22gsqmnmb6177u5ge	NjQxZjdkNmY2OTFlMGZjZTIwMzBmODMyZDIyYWQ0ZmU3NTk0NTA4ODp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IkNhdGhlcmluZSIsImlkIjo2NCwiZmJfaWQiOiIxMDIwOTU5MDczMjM0MzUxNCJ9fQ==	2016-06-23 01:55:56.130514-04
71p97tivxcz18bn3arwcrj8z60v59txm	NDIxODMwMTA5OWQzZjNkZDY0Mzg0OTYzZWE5ZWUzMTM5OGJiMzRjNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUtNVFgwM0EwMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MH0=	2016-06-17 06:10:54.450212-04
20qj6k5e0h8g373wegdoijcsztv6g2s9	YzU4ZWI1NWU0ZmM4M2UxYmRlYzMxMjk3NGUwYjdhZmUxNzFhYjJhODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjIxOTgsIm15X2NhcnQiOiJNS01UWDAzQTAwMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNS01UWDAzQTAwMyIsIm5hbWUiOiJub3RjaGVkIGxhcGVsIHR1eGVkbyIsInN1Yl90b3RhbCI6MjE5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wMyIsInRvX2RhdGUiOiIyMDE2LTA2LTA1Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTA5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-17 06:11:46.369672-04
1bjgzcknx33ww38ho2h5z6rpwzwcyj0k	YzU4ZWI1NWU0ZmM4M2UxYmRlYzMxMjk3NGUwYjdhZmUxNzFhYjJhODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjIxOTgsIm15X2NhcnQiOiJNS01UWDAzQTAwMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNS01UWDAzQTAwMyIsIm5hbWUiOiJub3RjaGVkIGxhcGVsIHR1eGVkbyIsInN1Yl90b3RhbCI6MjE5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wMyIsInRvX2RhdGUiOiIyMDE2LTA2LTA1Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTA5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-17 06:18:48.199159-04
4k8ksym6ogbnu0s1r1odiwwlostic3v4	YzU4ZWI1NWU0ZmM4M2UxYmRlYzMxMjk3NGUwYjdhZmUxNzFhYjJhODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjIxOTgsIm15X2NhcnQiOiJNS01UWDAzQTAwMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNS01UWDAzQTAwMyIsIm5hbWUiOiJub3RjaGVkIGxhcGVsIHR1eGVkbyIsInN1Yl90b3RhbCI6MjE5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wMyIsInRvX2RhdGUiOiIyMDE2LTA2LTA1Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTA5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMDk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-17 06:20:28.105383-04
pqqok45dyjsjz4fqbcdfmjllwlhaw0wo	ZGVhODdiNGVkODYwOTgxM2Q0MDcxN2ZjYzg2MzA2ODU2ZmJiZjAxYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE2NzcuNiwibXlfY2FydCI6Ik1FQVNQMjAiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVBU1AyMCIsIm5hbWUiOiJibGFjayBibGF6ZXIgMSIsInN1Yl90b3RhbCI6MTY3Ny42LCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMSIsInNlY3VyaXR5X2RlcG9zaXQiOjgzOC44LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjgzOC44fSwiY2FydF9jb3VudCI6MX0=	2016-07-06 06:46:53.524587-04
eoq0bopfo1phwuirz9flqk6e8aljf2fo	MjlkMjI1NDJkOTRlMmNjMzdjOGNiYzYxNTg4ZTRlMTc3NTkzMDc5ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiV0VOQVAyMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOTAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0VOQVAyMSIsIm5hbWUiOiJibHVlIG1pcnJvcmVkIGdvd24iLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMDUiLCJ0b19kYXRlIjoiMjAxNi0wNi0wNyIsInJlbnQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-06-17 06:37:56.798482-04
yluh398bse2eo3lhyn2ovo4h3evma032	ZmViNTQ0YWNiODI5NjViYmM2MDhkMGFmMDRhNTI4ZjE3ZWE2MzRlMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODA0NCwic3VtX3RvdGFsIjo3NTAwLCJteV9jYXJ0IjoiREIwMTUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NDQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwMTUiLCJuYW1lIjoiYmx1ZSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6NzUwMCwibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6NzUwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-06-26 07:23:15.933243-04
uyaejg1y7aiuz5wix1cwh3sx6egxzsxu	NzIyYjU1MTNhMjI1NGUwY2I4ZDU0ZTg0NWVhNzQ5Y2UwOTQ4NzM3MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyNTAwLCJteV9jYXJ0IjoiV0VOQVAxMDVEIiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV0VOQVAxMDVEIiwibmFtZSI6IkRlc2lnbmVyIE11bHRpY29sb3IgU2FyZWUiLCJzdWJfdG90YWwiOjEyNTAwLCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MTI1MDB9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-17 09:34:50.619737-04
7q6rt3cfy9e4qgefqd0ye21xxgkz4dnl	MWMxMWY4OTFmNTJjNzg1Njk3ZTFlNzZlZTYyNGI1MTNkNTE3YzU1Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI1MDAsIm15X2NhcnQiOiJNRUFTUDEyIiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVBU1AxMiIsIm5hbWUiOiJlbWJlbGxpc2hlZCBwdXJwbGUgc2V0Iiwic3ViX3RvdGFsIjoyNTAwLCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjoyNTAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-06 05:31:09.153974-04
o1eqxomgc5z6lizczjo43t6yf0shrq0n	NzNjMGFmNmIwNjE0MDBiNzFiZGIwNTlhZWYyNTY1OWU3Y2EzNjg5YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0NCwic3VtX3RvdGFsIjoxOTk5LCJteV9jYXJ0IjoiQ0sxM0EiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxNDUsImlkcyI6MTY3LCIxIjp7InNrdSI6IkNLMTNBIiwibmFtZSI6InRoZSBib25kIGdpcmwgZHJlc3MiLCJzdWJfdG90YWwiOjE5OTksIm1ycCI6Mzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjE5OTl9LCJkaXNjb3VudCI6MH0=	2016-06-17 11:32:47.763652-04
21pz9wo7o805yszm7pglxmi1kuej7v5w	YmE0ZWI0YmQ0NTM2Zjc1MGY3MGZjZGM4ODA4YThiMDlmNGQ5NjllYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Njg2Miwic3VtX3RvdGFsIjo2Mzk4LCJteV9jYXJ0IjoiV0lBQTA2QSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0NjQsImNhcnRfY291bnQiOjEsImlkcyI6MTY4LCIxIjp7InNrdSI6IldJQUEwNkEiLCJuYW1lIjoiemFyZG96aSBlbWJyb2lkZXJlZCBsZWhlbmdhIiwic3ViX3RvdGFsIjo2Mzk4LCJtcnAiOjI5OTUwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTAiLCJyZW50IjozMTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjMxOTl9LCJkaXNjb3VudCI6MH0=	2016-06-18 05:56:29.144947-04
u1qfpjzs6otha9laur8cxmvfpo2t6axp	YWMzYmQ5ZDBhMzYyMTJhNmZlNWQ3MmVhN2Y5NWNjNTEwODk2YWYwOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUwLCJzdW1fdG90YWwiOjY5OSwibXlfY2FydCI6IldXVk0yNCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjUxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXVk0yNCIsIm5hbWUiOiJncmVlbiBwbGVhdGVkIGRyZXNzIiwic3ViX3RvdGFsIjo2OTksIm1ycCI6Mjg5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6Njk5LCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-06-18 06:08:54.830853-04
m22virntefymq01u70ldz9dcfdhh0xr1	Mjc3ZWFjNTg4NjgzMzc4NTg4MDE4MmJmMzkzYmZjZGQ2OTdlOTU5NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzkwMCwic3VtX3RvdGFsIjozNjM2LCJteV9jYXJ0IjoiSkEwMjYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjY0LCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IkpBMDI2IiwibmFtZSI6ImxhY2UgcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTYzOCwibXJwIjo1MTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDYiLCJzZWN1cml0eV9kZXBvc2l0Ijo4MTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODE5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiSk4xMDMiLCJuYW1lIjoiaG9sbHl3b29kIGNvbGxlY3Rpb24gbGF5ZXJlZCBoaSBsbyBkcmVzcyBzbGltIGZpdCIsInN1Yl90b3RhbCI6MTk5OCwibXJwIjo0Mzk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDYiLCJyZW50Ijo5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6OTk5fX0=	2016-06-18 07:11:16.128686-04
t1n3rops467yj4gadrv21o1y5rc0hw0k	YjQ1YTA2MGJhYTRjNThiYWQyY2Q2ZDJiNzRhYTUwOTE3NGZhNDQ5Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1MiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0NLNTIiLCJuYW1lIjoicGluayBzaGltbWVyIGRyZXNzIiwic3ViX3RvdGFsIjozOTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wNSIsInRvX2RhdGUiOiIyMDE2LTA2LTA3Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE5OX0sImNhcnRfY291bnQiOjF9	2016-06-19 11:14:01.780035-04
1ay7uxndl6dtqh3gxg80tritkjqkr4hy	OTkwMjQ2ZjZiY2JmNzJmM2ZjODIxMmFkODkxMGQ1NmVlMzM5NTk0NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0NCwic3VtX3RvdGFsIjoxOTk5LCJteV9jYXJ0IjoiSk4xMDlBIiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjIsInRheCI6MTQ1LCIxIjp7InNrdSI6IkpOMTA5QSIsIm5hbWUiOiJ2aXZhIGxhIGJlYWNoIGxvbmcgaGkgbG8gdHVuaWMgdG9wIHdoaXRlIiwic3ViX3RvdGFsIjoxMjQ5LCJtcnAiOjI0OTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjEyNDksIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV1dDSzU2IiwibmFtZSI6ImJyb3duIGxvbmcgZ293biIsInN1Yl90b3RhbCI6NzUwLCJtcnAiOjM2MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo3NTB9fQ==	2016-06-18 08:52:05.921203-04
rf3nnclyn5p0q30euzvfgtsi417uob39	NTcxNzA0MDU0OWEzMDU3ODkzNmRlMGY4NDc0ZmMzNjkyMDkxZjE2Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg2MCwic3VtX3RvdGFsIjozNTk5LCJteV9jYXJ0IjoiV1dDSzQ3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjYxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s0NyIsIm5hbWUiOiJncmV5IGV2ZW5pbmcgZ293biIsInN1Yl90b3RhbCI6MzU5OSwibXJwIjo4OTkwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjozNTk5LCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-06-18 23:42:45.323293-04
y4v4129lterlpszfsvqqsn6vqt42lb1a	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-06-19 11:50:59.354015-04
3kp6w10a6mcpnpavrztn0rx5pb22sddk	NTAzNDk5YWViMTQ0NTMwOTM4MTA4NDQwODg1YjYwMTdiMWE1YTQ3Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6Ik1FUkdQMTYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wOCIsInRvX2RhdGUiOiIyMDE2LTA2LTEwIiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImNhcnRfY291bnQiOjF9	2016-06-20 06:44:31.257141-04
d85yjtv8a6u9e089mgtamdizqx4g7oqg	MWRkMzViNTQ2MzNjZjhhZjgxYzk2Yzc0OTY4NTY0M2NhMzQyMTAxODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM1OCwic3VtX3RvdGFsIjoyMTk4LCJteV9jYXJ0IjoiTUtNVFgwM0EwMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTYwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1LTVRYMDNBMDAzIiwibmFtZSI6Im5vdGNoZWQgbGFwZWwgdHV4ZWRvIiwic3ViX3RvdGFsIjoyMTk4LCJtcnAiOjIxMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDciLCJyZW50IjoxMDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEwOTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiUHJhc2hhbnRoIiwiaWQiOjU4LCJmYl9pZCI6IjEwMTU0MTg5NjAwNzk0ODA0In19	2016-06-19 00:26:58.733816-04
78rpf5dn0ffnb73n5s6f6q5tvb10ohbn	ZTI4MmQwOTFjZTlkOTg1NTQxY2Y3MmI1YzY5MGExMjYxOWVhNzkwNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM0OTcsIm15X2NhcnQiOiJNV0JCMDYiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNV0JCMDYiLCJuYW1lIjoibXVzdCBoYXZlIGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MzQ5NywibXJwIjo2OTk1LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MzQ5N30sImNhcnRfY291bnQiOjF9	2016-06-19 10:22:44.633909-04
4bvm53sydxu98dpr9k6h2xkx7ql1x4v9	ZTI4MmQwOTFjZTlkOTg1NTQxY2Y3MmI1YzY5MGExMjYxOWVhNzkwNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM0OTcsIm15X2NhcnQiOiJNV0JCMDYiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNV0JCMDYiLCJuYW1lIjoibXVzdCBoYXZlIGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MzQ5NywibXJwIjo2OTk1LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MzQ5N30sImNhcnRfY291bnQiOjF9	2016-06-19 10:22:44.805256-04
tww8y4krar4baanltylrai892k1y2srw	ZTI4MmQwOTFjZTlkOTg1NTQxY2Y3MmI1YzY5MGExMjYxOWVhNzkwNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM0OTcsIm15X2NhcnQiOiJNV0JCMDYiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNV0JCMDYiLCJuYW1lIjoibXVzdCBoYXZlIGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MzQ5NywibXJwIjo2OTk1LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MzQ5N30sImNhcnRfY291bnQiOjF9	2016-06-19 10:22:44.979117-04
3v0q2570gs4q3d4ogiouf5bnsr38sz9q	YTQ1M2E3NTcwYWYxZjU2MmY3YTQxMTE1NzZhNzY0ZDI3NmUxMDc5NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdCQjA2Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MH0=	2016-06-19 11:12:34.506557-04
dzmw027vhs3sw1cizl3p46kg3bnwaj69	NzRkMDg5ZTE1MzZhZDRlZWRmNzExZWI4ZThhZmQ2ZmY0NTE5MzUyNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdKTTI0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowfQ==	2016-06-20 09:14:10.146469-04
ac97zbx6fgd1cckqg4bmy6dgkmcq5dki	NTgzNThjNmIwNDBjMGZlNzQyMzlmYTEwOWUyOGRhMjE4NDY5MjhmMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODA0NCwic3VtX3RvdGFsIjo3NTAwLCJteV9jYXJ0IjoiV0VYWFAyNSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjU0NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVhYUDI1IiwibmFtZSI6InBpbmsgZW1iZWxsaXNoZWQgbGVoZW5nYSAxIiwic3ViX3RvdGFsIjo3NTAwLCJtcnAiOjE1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50Ijo3NTAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-06-27 08:36:50.769515-04
rzyaj6ln41cuwa3eez8pg1x1f55oj00g	ZGZmOTdiYWRlMTg5NTE3NjRlZDMyYmU2YjcxOTMxMWIyMzNiNmU2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVSR1AxNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-06-21 03:04:39.748704-04
v69lvngvxjlw5lxxjh2igo6x9m0isaxl	ZTE2MTY4ZjNmYzA5ZWE0ODNiNDg5ZDJlMDQ5NWJmNmViMTY5MmY4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjY4Miwic3VtX3RvdGFsIjoyNTAwLCJteV9jYXJ0IjoiTUVSR1AxNiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE4MiwiMSI6eyJza3UiOiJNRVJHUDE2IiwibmFtZSI6ImJsdWUgcGFydHkgYmF6ZXIiLCJzdWJfdG90YWwiOjI1MDAsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjI1MDB9LCJkaXNjb3VudCI6MH0=	2016-06-21 07:46:34.177807-04
gy81frcpubf7oxbp9vzmx1awaaa8drcl	NzAyNTRkM2FhMzNkNTUyZDcwOGRhYzcxMjdhOGI1OWMyNzE1OTQ2Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjU5OTgsIm15X2NhcnQiOiJXRVBEUDA0QSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXRVBEUDA0QSIsIm5hbWUiOiJyZWQgZmlzaGN1dCBsZWhlbmdhIiwic3ViX3RvdGFsIjo1OTk4LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA5IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTEiLCJzZWN1cml0eV9kZXBvc2l0IjoyOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI5OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-23 01:02:50.707636-04
6sb54tuunzu7rlnijojrnkg3nglvg1bd	NTM3MDk1NjBmOTQ2OTExYmJhODk0YmQxMGUyNmE1ODdiNzNlYmQzMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJDSzcwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkNLNzAiLCJuYW1lIjoibGFjZSBhZmZhaXIgbWlkbmlnaHQgYmx1ZSBkcmVzcyIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjozNTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjAiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NTk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-23 07:28:43.950348-04
aoe8y3r4jt4g6yevmueyaoblrz3pol7f	MDkwOGM5Njk4NDk4ZGY3NjhhNGIzNmU0ZWNjYjM4YzU3OGMzZGEzODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzc1Miwic3VtX3RvdGFsIjozNDk4LCJteV9jYXJ0IjoiQ0szMEEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjU0LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkNLMzBBIiwibmFtZSI6ImdvbGRlbiBlbWJyb2lkZXJlZCBjaHVyaWRhciIsInN1Yl90b3RhbCI6MzQ5OCwibXJwIjoxMzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMiIsInRvX2RhdGUiOiIyMDE2LTA2LTE0IiwicmVudCI6MTc0OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNzQ5fSwiZGlzY291bnQiOjB9	2016-06-23 13:13:54.014067-04
oba4q5b4p6i0kbm3d68d6ynvirmiocbv	NDJiMWY0MTZhOTA4MTMwYWIzZTY1MmRkOTRlYzczY2FkYWEyYjYxYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjIyMDAsIm15X2NhcnQiOiJKQTA5NUIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiSkEwOTVCIiwibmFtZSI6InphcmRvemkgZW1icm9pZGVyZWQgZ2VvcmdldHRlIHN1aXQiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6Nzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMSIsInRvX2RhdGUiOiIyMDE2LTA2LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6MTEwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMTAwfSwiY2FydF9jb3VudCI6MX0=	2016-06-19 10:52:57.186335-04
5djh8zp0ikt7kqy2618qxzkcf2inxdv9	NGQ2ZjgxOGVmNTY0Yjg0Y2M3NDdjMTJiMjU3NzIxM2VlYWYwMjUxZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1Niwic3VtX3RvdGFsIjozNTk1LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjYxLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjE3MCwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDgiLCJyZW50Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wNiIsInRvX2RhdGUiOiIyMDE2LTA2LTA4IiwicmVudCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OX19	2016-06-19 11:41:00.425467-04
2htoe3qvxt28vwymm8eep0mmnf5pk8tj	ZDQyMDc1YTk0MzZjMzg5OGYzMjM0ZmMxZWNjZDY1OTUwZmFlMTc0NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY4Ny42OTk5OTk5OTk5OTk5LCJteV9jYXJ0IjoiSk4xMDlBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkpOMTA5QSIsIm5hbWUiOiJ2aXZhIGxhIGJlYWNoIGxvbmcgaGkgbG8gdHVuaWMgdG9wIHdoaXRlIiwic3ViX3RvdGFsIjo2ODcuNjk5OTk5OTk5OTk5OSwibXJwIjoyNDk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJzZWN1cml0eV9kZXBvc2l0IjozNDMuODQ5OTk5OTk5OTk5OTcsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MzQzLjg0OTk5OTk5OTk5OTk3fSwiY2FydF9jb3VudCI6MX0=	2016-06-20 03:39:41.79531-04
7zqc0goqyofhp9dtxyabbmu6xdo4a3ra	NjA0MDEwZjUxNzIyZDhlNTdiZTQwY2I5ODEzMTNkZGRlMjc4ZTg5NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyOTksIm15X2NhcnQiOiJXV0FSNDEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0FSNDEiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gamFja2V0Iiwic3ViX3RvdGFsIjoxMjk5LCJtcnAiOjQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjoxMjk5fSwiY2FydF9jb3VudCI6MX0=	2016-06-20 07:22:29.914317-04
lj1f69zioijd9h32fqmozcfiqzm47hpq	YTA2NjlmMWY5OTgzMDRhNDI4ZGM0OGE5YTAxZTJmYTYzOWI2MGNlZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTE3OTgsInN1bV90b3RhbCI6MTEwMDAsIm15X2NhcnQiOiJQU0ZMRTE1QTA1OSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3OTgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiUFNGTEUxNUEwNTkiLCJuYW1lIjoiZ29sZCBhbmQgcmVkIGVtYnJvaWRkZWQgbGVoZW5nYSIsInN1Yl90b3RhbCI6MTEwMDAsIm1ycCI6Mjk3MDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMDciLCJ0b19kYXRlIjoiMjAxNi0wNi0wOSIsInJlbnQiOjU1MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTUwMH0sImRpc2NvdW50IjowfQ==	2016-06-20 11:51:22.924211-04
jk1s66kgima0r1bu4kjykavq4acbwc6b	OWQzNjI2YzE3ZTA0NWRmYTA4NzFjNmJlYTUzYzY1Y2FjNDYxMjk2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ1MDAsIm15X2NhcnQiOiJXRVBSUzEwNSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjo0NTAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0NTAwfSwiY2FydF9jb3VudCI6MX0=	2016-06-21 12:28:00.242205-04
xwh9fyhdm2roa6799918wz3mytslgez9	NmU4NWViZTMxZGQ4Y2FkMjhkZGZhNzBmYjc3NjgzNTVlM2MzM2RhYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY0NSwic3VtX3RvdGFsIjozMzk4LCJteV9jYXJ0IjoiREIwMjIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjQ3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDIyIiwibmFtZSI6ImRhcmsgcmVkIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjozMzk4LCJtcnAiOjE3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTciLCJyZW50IjoxNjk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE2OTl9LCJkaXNjb3VudCI6MH0=	2016-06-27 04:54:58.461911-04
v1zcb7xxw3ob6swaapta2wk91145as3x	MjI3ZGYxN2FlZGZmYWE1ZjA1ZTUzMmRhYjRjZGI0ZjRiMDE3YTFjZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzUxIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjB9	2016-06-19 11:18:47.771381-04
crj2syksj9oa69kqrg7og16foz3fwbmm	MjRhY2JmYjY4ZmNlMmJlYTg4ZTRkNzBjZDBhNWViMmZhYmQ3MGY0Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjozNTk2LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiY2FydF9jb3VudCI6MiwiMiI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDgiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODk5fSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDgiLCJyZW50Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0wNiIsInRvX2RhdGUiOiIyMDE2LTA2LTA4Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjg5OX19	2016-06-19 11:19:15.463385-04
yz9ppjtkyv2407fordpxl23v85fg28qv	YzIxMTk3OTY2ZDJhMTdjNWUxZjAwMjVhZjBiM2U0ZTA5YjVlNTdmMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQyLCJzdW1fdG90YWwiOjU5OCwibXlfY2FydCI6IldFQURQMjIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NDQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0VBRFAyMiIsIm5hbWUiOiJyZWQgZ29sZGVuIHdvcmsgc2FyZWUiLCJzdWJfdG90YWwiOjU5OCwibXJwIjoyNjAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMDciLCJyZW50IjoyOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mjk5fSwiZGlzY291bnQiOjB9	2016-06-19 11:21:57.745522-04
s5kygt5m2clzw1ejrjows9l0wo5rfc9g	MTRjZTI2ZjBkNmI2ZjM1MGM4NTA1MTI4MTc4YmJkMDA0N2QzMmUyMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjIxNywic3VtX3RvdGFsIjo1Nzk2LCJteV9jYXJ0IjoiTVdTUzE0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjQyMSwiMSI6eyJza3UiOiJNV1NTMTQiLCJuYW1lIjoiZ3JlZW4gYnJvY2FkZSBiYW5kaSIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjUyMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTEiLCJ0b19kYXRlIjoiMjAxNi0wNi0xMyIsInJlbnQiOjM5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozOTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRUJLUDAyIiwibmFtZSI6InZlbHZldHkgYmx1ZSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6NDk5OCwibXJwIjoyNDk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMSIsInRvX2RhdGUiOiIyMDE2LTA2LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoyNDk5fX0=	2016-06-19 11:25:44.683798-04
zuuu3yq9ju41fawm2naobyf3elty8zup	YzMxNmY2YzM0MTMxNTQzMzExNTNkYzc5MmQ0ZDZhYTBhMDM0Y2RiNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjIxNywic3VtX3RvdGFsIjo1Nzk2LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4Ijo0MjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMDUiLCJ0b19kYXRlIjoiMjAxNi0wNi0wNyIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1XU1MxNCIsIm5hbWUiOiJncmVlbiBicm9jYWRlIGJhbmRpIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NTIwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMSIsInRvX2RhdGUiOiIyMDE2LTA2LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjM5OX19	2016-06-19 11:28:59.155366-04
xwmcg3e9tvr4k5crjf740ioggnhh1iar	M2U0YzJiMTljNTc0YzkxOTQ2NjM0OWIwMzkzMWIyMGYzZmI0YzFlMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM1OCwic3VtX3RvdGFsIjoyMTk4LCJteV9jYXJ0IjoiTUtNVFgwM0EwMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTYwLCIxIjp7InNrdSI6Ik1LTVRYMDNBMDAzIiwibmFtZSI6Im5vdGNoZWQgbGFwZWwgdHV4ZWRvIiwic3ViX3RvdGFsIjoyMTk4LCJtcnAiOjIxMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjAiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjEwOTl9LCJkaXNjb3VudCI6MH0=	2016-06-29 12:23:08.397549-04
7jrm66j7ufuqutugzqyxxkuu64bn4q0m	MzdlYzgxZWI4ZGQwMjc4YjgxMGM4ZmZkMWZmMDQyNmFmNjk4Yjk0NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTIwMzYuNywic3VtX3RvdGFsIjoxMTIyMi43LCJteV9jYXJ0IjoiREIxOTkiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6ODE0LCIxIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjozMzMyLjcsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjE2NjYuMzUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTY2Ni4zNX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjozMzMyLjcsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjE2NjYuMzUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTY2Ni4zNX19	2016-06-26 09:27:46.288748-04
2pj8cicn9j5m24404eherzm3bmx36jg7	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-06-26 11:24:53.6537-04
xl3b65tz38wq3gbyb78wor7xfc5m0oz3	MGFlMjU3YmYxNDJlODEyODAzODFhZmY2NTczMjQ1MGRmZDgzMzQwZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODQ2Niwic3VtX3RvdGFsIjo3ODkzLCJteV9jYXJ0IjoiREIxOTkiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NzMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIxOTkiLCJuYW1lIjoic2hpbnkgZ3JleSBibGF6ZXIiLCJzdWJfdG90YWwiOjI4OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNi0zMCIsInJlbnQiOjE0NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ0OX0sImRpc2NvdW50IjowfQ==	2016-06-27 01:55:13.176314-04
sqci1ttdz8qelo7mqhxa5n69rek6n6w9	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-06-27 04:17:55.493543-04
k406i587rhoz2m5nkvnsj7qeuazy2um8	YjJkM2QyY2JiMTdlYTU2ODAyMTlkMTIwMzA2ZDc3NjUzNGFiZjBmNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjkyMiwic3VtX3RvdGFsIjoyNzI0LCJteV9jYXJ0IjoiSkEwMTkiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxOTgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiSkEwMTkiLCJuYW1lIjoiZ2xvc3N5IGRlc2lnbmVyIHN1aXQiLCJzdWJfdG90YWwiOjI3MjQsIm1ycCI6NTQ0OSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MjcyNCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-06-27 05:49:28.697215-04
f95ztdtizulpizo9ldn35cc11jsmvzes	OGRkMWI1MWM4NDZmZTNhNTk0YWE4NzRhNTVhYzc2ZmNmNDE0Njc5YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM1MCwic3VtX3RvdGFsIjoxMjU4LCJteV9jYXJ0IjoiQ0swNyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo5MiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJDSzA3IiwibmFtZSI6InN1cGVybW9kZWwgY2hpYyBkcmVzcyBibGFjayIsInN1Yl90b3RhbCI6MTI1OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTgiLCJyZW50Ijo2MjksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NjI5fSwiZGlzY291bnQiOjB9	2016-06-27 10:26:59.1702-04
zl1p967hn9vbrw4oj7pjw4bt859m6f3z	MDA4YjYzMWI3ZmZkMTlmMzdhMWUzNzA1ZGVhMjBjMDAwMWYzMjIyYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV1dDSzQ2Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-06-27 11:33:54.799813-04
qbyaxwhb2im1mp0eaqkekc1qljm6zmd1	NmNlZTk3ODFhY2YzNmI2Y2IzMTQ3N2VmNzcwZWRiYmI0NDJlYjdlNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIxOTkiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-06-27 13:48:46.656898-04
02togdgml0jfxbupojh16z1ibjhmodw0	MzdhNWVmMmMwYjQzMjY0ZTNmNWM5NmQyYWYwNDYwYjRjNWRiMzUzNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiSk4xMDAiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTAyLCIxIjp7InNrdSI6IkpOMTAwIiwibmFtZSI6ImJsYWNrIHdoaXRlIHN0cmlwZWQgYnV0dG9uIGRvd24gbWluaSBkcmVzcyIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTkiLCJzZWN1cml0eV9kZXBvc2l0Ijo2OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Njk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IkthbmNoYW5hIiwiaWQiOjc0LCJmYl9pZCI6IjExNDgwMjQ3NzUyMTc3NDUifX0=	2016-06-28 03:47:16.576766-04
4yakgvapev2z3luc1tc38knuntissrw3	YWVlMjBhMGYyODMwYjdlZGEzMDI2NzNhNWRmZmM2M2VhZGIxYmQxNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI2LjU5OTk5OTk5OTk5OTksInN1bV90b3RhbCI6Mzk3LjU5OTk5OTk5OTk5OTksIm15X2NhcnQiOiJXV09ZNTYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjksImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dPWTU2IiwibmFtZSI6ImxpdHRsZSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6Mzk4LCJtcnAiOjI1OTAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTUiLCJ0b19kYXRlIjoiMjAxNi0wNi0xNyIsInJlbnQiOjE5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXV09ZNTYiLCJuYW1lIjoibGl0dGxlIGJsYWNrIGRyZXNzIiwic3ViX3RvdGFsIjozOTgsIm1ycCI6MjU5MCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xNSIsInRvX2RhdGUiOiIyMDE2LTA2LTE3IiwicmVudCI6MTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OX0sInVzZXIiOnsiZmlyc3RfbmFtZSI6IlRyaXNcdTAxMjZhIiwiaWQiOjcwLCJmYl9pZCI6IjExMTA5ODMyNTIyODc4MzQifX0=	2016-06-28 04:43:37.133918-04
sjhyvdnfwulkgrokmud01jva4a8lpqmd	N2VmN2M1YjRlNmRiOTUyN2Q0Y2MzODdjNDJhZjkzZjdmZjIxYmZjYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQyLCJzdW1fdG90YWwiOjU5OCwibXlfY2FydCI6IkpOMTA4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ0LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkpOMTA4IiwibmFtZSI6InZpdmEgbGEgYmVhY2ggbG9uZyBoaSBsbyB0dW5pYyB0b3AgY29iYWx0IGJsdWUiLCJzdWJfdG90YWwiOjU5OCwibXJwIjoyNDk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMTciLCJyZW50IjoyOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mjk5fSwiZGlzY291bnQiOjB9	2016-06-28 05:35:03.87548-04
90fgtp4ekbi22vod5ym0x3btlpwcl5jo	NWQ4MmQ4ZjU4ZDMzYjViZGMxYjdlOTRmOWU4MzY1YTU1OGIxOGY0Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODA0NCwic3VtX3RvdGFsIjo3NTAwLCJteV9jYXJ0IjoiREIwNDUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NDQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNDUiLCJuYW1lIjoiZ3JleSAzIHBpZWNlIHN1aXQiLCJzdWJfdG90YWwiOjc1MDAsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjc1MDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-06-28 05:54:03.098376-04
g0vs4g84hz2m5wrtd3vm50qrg8jusrht	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-06-28 07:18:07.140173-04
k5dygygybee7pqxays38ux3jtn7kid8p	ZTY1ODM2MDBjZTA2YTRkNTA0Y2VjNTUwMTI4ZmZhZTNlMWM2Zjk3Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzM0Ny4wLCJzdW1fdG90YWwiOjMxMjAuMCwibXlfY2FydCI6IkRCMDExIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjIyNywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAxMSIsIm5hbWUiOiJibHVlIGJsYXplciIsInN1Yl90b3RhbCI6MzEyMC4wLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDMiLCJ0b19kYXRlIjoiMjAxNi0wOC0xMCIsInJlbnQiOjE1NjAuMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNTYwLjB9LCJkaXNjb3VudCI6MH0=	2016-06-28 07:40:33.251855-04
47h5wpvo3nhes0xmw8obryqe6meunu0d	YjBhMDRiZjhiOWU5ODUxMWE3NTA0YjMyMTJhNTVmNDhhYzcwN2E0Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiQ0swM0EiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTAyLCIxIjp7InNrdSI6IkNLMDNBIiwibmFtZSI6InBpbmsgcGVwbHVtIGRyZXNzIiwic3ViX3RvdGFsIjoxMzk4LCJtcnAiOjMyOTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMTAiLCJ0b19kYXRlIjoiMjAxNi0wNi0xMiIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-06-24 05:33:27.346872-04
zvtrwv1ez138y1iz0hse6dj2wc5sz3sn	MWI1ZjQ5MDgyYjNiYzYxMDExZGM4ZjNmMzYzYjFlZmM2Mzc2NzgwNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyNDk5LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQktQMDIiLCJuYW1lIjoidmVsdmV0eSBibHVlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxMjQ5OSwibXJwIjoyNDk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjEyNDk5fSwiY2FydF9jb3VudCI6MX0=	2016-07-18 04:23:18.607771-04
v0oebc9bykk0c8zmma4e6pik6jtyladb	NTQ5YzZiNjFkNmIxNWE1MDcwOTgxM2Y2MzA0ZjZiY2UxNzg3OTQ4Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjk5OCwic3VtX3RvdGFsIjoyNzk1LCJteV9jYXJ0IjoiQ0swM0EiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjAzLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkNLMDNBIiwibmFtZSI6InBpbmsgcGVwbHVtIGRyZXNzIiwic3ViX3RvdGFsIjoxMzk4LCJtcnAiOjMyOTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMTAiLCJ0b19kYXRlIjoiMjAxNi0wNi0xMiIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-06-24 05:35:22.69217-04
oq7umguf8jiwt3yadfffxa5ngg8r65if	OGI5YTY5ZjUxZDQzYmYwNTMxMTgyMGU5OGI4YTU3M2EzYTAyNzdlYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4Niwic3VtX3RvdGFsIjozOTk2LCJteV9jYXJ0IjoiTVdNSzAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjI5MCwiMSI6eyJza3UiOiJNV01LMDIiLCJuYW1lIjoic2hhd2wgY29sbGFyIGxhcGVsIFR1eGVkbyIsInN1Yl90b3RhbCI6MjE5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xNiIsInRvX2RhdGUiOiIyMDE2LTA2LTE4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTA5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMDk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTVdBUjA5IiwibmFtZSI6Im1hdHRlIGdyZXkgZnVsbCBzdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjEwOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjUiLCJyZW50Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fX0=	2016-07-01 05:31:16.857396-04
8pq3fmb4u12x0j1aj0fa7litgrp2oiun	MjMxYjkwMzM4ZGVjYWU0N2YzNGY3OTQzYTg3MTY5OGRlODgyNjcwMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjo0ODk4LCJteV9jYXJ0IjoiTUVBU1AyMCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjEwMiwiMiI6eyJza3UiOiJNRUFTUDIwIiwibmFtZSI6ImJsYWNrIGJsYXplciAxIiwic3ViX3RvdGFsIjozNTAwLCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjozNTAwfSwiMSI6eyJza3UiOiJNRUFTUDIwIiwibmFtZSI6ImJsYWNrIGJsYXplciAxIiwic3ViX3RvdGFsIjoxMzk4LCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjEiLCJ0b19kYXRlIjoiMjAxNi0wNi0yMyIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-06-24 08:02:41.715972-04
3v0n537sod6v1auso5ppyq1vu7yn9x96	ODFkMDM3ZTkxYzBhYjA3ZGJhYmZhMmI2YjRhNWQzMjkzNzM0MjA4Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MjUsInN1bV90b3RhbCI6MTAwMDAsIm15X2NhcnQiOiJNRUFTUDA3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzI1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FQVNQMDciLCJuYW1lIjoiZW1iZWxsaXNoZWQgY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwMDAwLCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMDAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:31:44.102699-04
fa58yk5dspt1mzsb0dvkkggko4ng07rz	NmI5ZmM3YjZkYjY4YjA2YjA3Y2JlN2RiNGU1ODU5N2NiMGU0ZTA4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiQ0syMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJpZHMiOjE2OSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiQ0syMCIsIm5hbWUiOiJyZWQgbGFjZSBwYXJ0eSBnb3duIiwic3ViX3RvdGFsIjoxNzQwLCJtcnAiOjUxOTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMDQiLCJ0b19kYXRlIjoiMjAxNi0wNi0wNiIsInNlY3VyaXR5X2RlcG9zaXQiOjg3MCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4NzB9fQ==	2016-06-24 08:08:28.765059-04
q6uxiixapsvhse5zx5hvgmogrcxzqwa3	NzU4YmY1NDQ1OTNlMDk1MzZkNjNkZDNlMzgzYzM1ZTQyOTg1MDU2Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIyMDEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-06-26 09:31:11.67718-04
vpehpej3bkawxchja2gcwa8e0six9fkv	YWQxMTNiYmMzZmU3MmIwZjU0YTRkZWYxNDBkZWRiZDc5YjRlNzM0ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUwLCJzdW1fdG90YWwiOjY5OSwibXlfY2FydCI6IldXQVMxNCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjUxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQVMxNCIsIm5hbWUiOiJzdHJpcGVkIHNoZWF0aCBkcmVzcyIsInN1Yl90b3RhbCI6Njk5LCJtcnAiOjMyOTksImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjY5OSwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-06-26 11:54:52.533627-04
41hns1h263k8do20zkrsqkntr2regvu2	NDkwM2UyYmEyYTA1NjgyMmM4YzQ0NThkMWUyMGRmNzEzOTE1YWE0NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI3LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXRUwwNyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0VMMDciLCJuYW1lIjoic2V4eSBibGFjayBkcmVzcyIsInN1Yl90b3RhbCI6Mzk4LCJtcnAiOjM2OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMTQiLCJ0b19kYXRlIjoiMjAxNi0wNi0xNiIsInJlbnQiOjE5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTl9LCJkaXNjb3VudCI6MH0=	2016-06-27 03:07:33.171111-04
beqvp5sfxahqr2dnztw78b2svhewjams	YmUyYWYzNDkxMzkxZDI1YmY4ZTIwZWM3YjY5ZGZjOGZkODE3ZmI2Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI3LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVIyOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0NLNTAiLCJuYW1lIjoibGlnaHQgZ3JlZW4gZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTExIiwidG9fZGF0ZSI6IjIwMTYtMDYtMTMiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV1dDSzUwIiwibmFtZSI6ImxpZ2h0IGdyZWVuIGRyZXNzIiwic3ViX3RvdGFsIjozOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xMSIsInRvX2RhdGUiOiIyMDE2LTA2LTEzIiwicmVudCI6MTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OX19	2016-06-24 23:22:55.648949-04
sg027zrpt9qudv2fcbpkytpmibn6p1bj	MjgxNTkzYThmNGE0YjFiMWE5ODdmMGJmYWExYTQ4ODMwYjNlYTNjMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTc2OSwic3VtX3RvdGFsIjoxNjQ5LCJteV9jYXJ0IjoiSk4xMTEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxMjAsIjEiOnsic2t1IjoiSk4xMTEiLCJuYW1lIjoiYXN0ZXJpYSB3aGl0ZSBzaGVhdGggZHJlc3MiLCJzdWJfdG90YWwiOjE2NDksIm1ycCI6MzI5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjE2NDl9LCJkaXNjb3VudCI6MH0=	2016-06-25 22:52:29.384345-04
37xoyanoqthg4hfg0klmbh1gbfzje6og	MjE4YmRlMTZjNDFlZGJiYjYyYjY3ZjkxMmM4NGQ0ZDE0Y2Q0OTUzYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE4NS42LCJzdW1fdG90YWwiOjIwMzcuNiwibXlfY2FydCI6Ik1FQVNQMzAiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTQ4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FQVNQMzAiLCJuYW1lIjoiYmxhY2sgc2hpbnkgc2hlcndhbmkiLCJzdWJfdG90YWwiOjIwMzcuNiwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTEzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjAiLCJyZW50IjoxMDE4LjgsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTAxOC44fSwiZGlzY291bnQiOjB9	2016-06-26 06:55:44.508843-04
se32zl1hw2y2rf3flz8w0jjqlzxvh3pk	ZTkwZGI4N2ExNTRhYmFkNmFkM2JkY2UyYzkyNGMwMmI2ZTU1Yzc5ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTYiLCJ0b19kYXRlIjoiMjAxNi0wNi0xOCIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-06-28 14:57:02.0401-04
jzrxy4oaotkfbo6fxlbtauj7nc1tcpbw	OTU5MGRhOGEzN2I1YThmNWVjMTJhNDRkNjk4MzgyY2UxNDFkNTYxZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVBDUzEwNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xNiIsInRvX2RhdGUiOiIyMDE2LTA2LTE4IiwicmVudCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-06-28 16:40:17.2563-04
0h724w2etkweobjjx4qi8odjgtstxylw	OGJlN2FjOWI1MTllY2I4MGFlYmQyZTUyMGU3OWQ4NmQ1OTZjMTFjNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTcxNCwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdTUzEzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjExNiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1NTMTMiLCJuYW1lIjoiYmxhY2sgbWFyb29uIGpvZGhwdXJpIGphY2tldCIsInN1Yl90b3RhbCI6MTU5OCwibXJwIjoxNjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMCIsInRvX2RhdGUiOiIyMDE2LTA2LTIyIiwicmVudCI6Nzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjc5OX0sImRpc2NvdW50IjowfQ==	2016-06-30 02:21:09.29889-04
nb5xbfx7jo39cnyt5ryop38ljglbo4p6	ZTczMzE1OTVkZDdlMTNlNjNhZGI3M2UzNzBhN2M2MjkyMjVjZjJiOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTcxNCwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdTUzE1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjExNiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1NTMTUiLCJuYW1lIjoicm95YWwgYmxhY2sgYmxhemVyIHdpdGggZ3JleSBib3JkZXIiLCJzdWJfdG90YWwiOjE1OTgsIm1ycCI6MTg1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNSIsInJlbnQiOjc5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo3OTl9LCJkaXNjb3VudCI6MH0=	2016-07-04 10:24:00.675719-04
7kae1diip5mb6295mu3bcmglwkon71vg	ZTFiZTA2ZDhjZDFiMzc0MjJjY2IwNjEyYTFkNDU3NjQyYzQzNjIwMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjA5NC43LCJzdW1fdG90YWwiOjE5NTIuNjk5OTk5OTk5OTk5OCwibXlfY2FydCI6Ik1FQVNQMzAiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTQyLCJjYXJ0X2NvdW50IjoxLCJpZHMiOjE4NywiMSI6eyJza3UiOiJNRUFTUDMwIiwibmFtZSI6ImJsYWNrIHNoaW55IHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxOTUyLjY5OTk5OTk5OTk5OTgsIm1ycCI6ODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0xNiIsInRvX2RhdGUiOiIyMDE2LTA2LTIxIiwicmVudCI6OTc2LjM0OTk5OTk5OTk5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6OTc2LjM0OTk5OTk5OTk5OTl9LCJkaXNjb3VudCI6MH0=	2016-06-29 03:00:13.720063-04
nhzj6jwe3xqe96efml20lr8bi7sxfp2z	YzZhNjJhZTRkZWQ5MzgyMGRlY2U4YTAyYjZiN2FjMGFmZWUxZTkwMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzM5LjEyNSwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdTUzAzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjExNiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1NTMDMiLCJuYW1lIjoicm95YWwgYmx1ZSBwYXJ0eSB3ZWFyIGJhbmQgZ2FsYSIsInN1Yl90b3RhbCI6MTU5OCwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMCIsInRvX2RhdGUiOiIyMDE2LTA3LTEyIiwicmVudCI6Nzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjc5OX0sImRpc2NvdW50IjoyNDYuMzc1fQ==	2016-06-30 08:00:22.862446-04
8foeesp79cge3mmm03l8ltbwyh9mhhc8	MThkODk4NjUxMTU3NzE4ODVmYzRmNDQ0MTYxYzk3MDM1OTU0Y2E1MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI0MDAsIm15X2NhcnQiOiJXRVBLUDEwMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXRVBLUDEwMSIsIm5hbWUiOiJNYW55YXZhciBCZWlnZSBKYWNrZXQgU2hlcndhbmkiLCJzdWJfdG90YWwiOjI0MDAsIm1ycCI6MTIwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInNlY3VyaXR5X2RlcG9zaXQiOjEyMDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTIwMH0sImNhcnRfY291bnQiOjF9	2016-06-30 09:08:16.14011-04
g6uwl00gy6rh8jvn69o8teezvq6mup0n	MjE3YjMyODQ4OGJlMTJkMWFlMWY1OWE4NmZjZmM3MWZiNzA3MjEyNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1FUkdQMTdBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FUkdQMTdBIiwibmFtZSI6ImNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTciLCJ0b19kYXRlIjoiMjAxNi0wNi0xOSIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjozOTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-06-30 18:06:41.949695-04
kaclvtutzqd1ntii7lf94uxvi16nokp1	ZWI5OWU0OWZmOGY3YzU1MmYwZmNmZjU1MjZhMzVjMDNhNjYyY2Q5Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyMiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-01 04:20:33.345991-04
f5578tv5zdodhln2xp27tovn5yj7k8h7	YThmNGIwNmI5MDg0ODY4NDk3MjMyZWNiMTcwZWJkNzA0YWRjZGVkNTp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IlN3ZWV0eSIsImlkIjo3NywiZmJfaWQiOiIxMDIwODM2NjA2NTM0MDkzMiJ9fQ==	2016-06-29 10:46:33.449937-04
3dt0utybzokp5ewgxty8rdry4m9riagq	NzU1MGFmMGEzMGI1NjE5NjQzZGE1YjQ4Yzc1OGVhZmNlYTZlNWY1NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM5NCwic3VtX3RvdGFsIjoxMjk5LCJteV9jYXJ0IjoiV1dBUjM3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6OTUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dBUjQxIiwibmFtZSI6ImJyb3duaXNoIGNyZWFtIGphY2tldCIsInN1Yl90b3RhbCI6MTI5OSwibXJwIjo0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMjk5LCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IldXQVI0MSIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBqYWNrZXQiLCJzdWJfdG90YWwiOjEyOTksIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MTI5OSwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9fQ==	2016-07-01 07:07:49.175431-04
074h7rqgks3o4dd7fix0dcuz7ie6aiwm	NTg5ZjdmMzYyOWMyZWNjYmE3MjU0M2VjMWUyMmUyNjgyOTQ0M2YyMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiTUVSQ1AyMyIsIm5hbWUiOiIzIHBpZWNlIGJyb3duIHN1aXQiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNi0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ5OX0sIjIiOnsic2t1IjoiTUVSQ1AyMyIsIm5hbWUiOiIzIHBpZWNlIGJyb3duIHN1aXQiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMTgiLCJ0b19kYXRlIjoiMjAxNi0wNi0yMCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ5OX19	2016-07-01 07:13:09.298254-04
h3gvhj0rc96ju0c0iiyf4hmsl0nlj629	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-01 12:12:30.384205-04
mg9hhe0l7utmx1ywmvw2gb3d7rdvy2j8	YWZiZGM1NWUxMTlkYWRiMWZhMWI2MDZhMDhlMDY1YzgyMzYwOTg5NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE5OTgsIm15X2NhcnQiOiJNV01LMjMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTVdNSzIzIiwibmFtZSI6ImJyb2FkIHNoYXdsIGxhcGVsIHR1eGVkbyIsInN1Yl90b3RhbCI6MTk5OCwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMSIsInRvX2RhdGUiOiIyMDE2LTA2LTIzIiwic2VjdXJpdHlfZGVwb3NpdCI6OTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjk5OX0sImNhcnRfY291bnQiOjF9	2016-07-02 02:05:56.67559-04
wl1oulhg68y5fez4gl9atpj4nu9h8dct	NWMyODI0MTk5N2RmYTgwM2MxNDRhZmNhMDExNzgxNDIxY2YwMzJiMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE1MDAsIm15X2NhcnQiOiJEQjA2MiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMDYyIiwibmFtZSI6InNoaW55IGJsdWUgZnVsbCBzZXQiLCJzdWJfdG90YWwiOjE1MDAsIm1ycCI6MzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjE1MDB9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-23 14:31:26.269158-04
4683uo2e63xdqhe1bjik4hagm304aux5	NGQ2NDU3M2MxMGQyNzZiNTExZWRmZWVhMTAwZDc5YzllMmEzNzRmYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XSk0yNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0pNMjQiLCJuYW1lIjoiZ3JleSBmb3JtYWwgYmxhemVyIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6Njk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNCIsInRvX2RhdGUiOiIyMDE2LTA3LTE2IiwicmVudCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OX0sImRpc2NvdW50IjowfQ==	2016-07-18 06:53:09.710391-04
ibujkwaoa0vang43wfjq9xounehkj31o	YzNhMDQ5NGVmNTI2OGQyYWNkYzBjN2ZmODI0YWE3N2I1OTQzZDhhYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY5Ni42LCJzdW1fdG90YWwiOjM0NDYuNiwibXlfY2FydCI6IldFUENTMTA0Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjUwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUENTMTA0IiwibmFtZSI6IkJsYWNrIFNvbGlkIFN1aXQiLCJzdWJfdG90YWwiOjIyNTAsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MjI1MCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjoyMjUwLCJtcnAiOjQ1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjIyNTAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfX0=	2016-07-03 03:18:40.509838-04
mnnnqmvl1cr7806bjnojfajhlye3t4x2	ZTgxNmQ1MTI0M2EwODQ3YWUyNDQ1NWVlYjEwYjU4M2Q4MTBkOWI5Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdTUzA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1XU1MwNSIsIm5hbWUiOiJwcmludGVkIGJyb3duaXNoIG1hcm9vbiBibGF6ZXIiLCJzdWJfdG90YWwiOjE5OTgsIm1ycCI6MTI1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMTIiLCJ0b19kYXRlIjoiMjAxNi0wOC0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo5OTl9fQ==	2016-07-03 09:42:33.268415-04
vuumadd0vpn0rf2cbzis94mrreoroqfy	YzU1ZmVmYWY0NWMwMmQ5OWUxMjFkMDk4NDE2ZGU4ZTJlMTY2NTZlYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzkwOCwic3VtX3RvdGFsIjozNjQzLCJteV9jYXJ0IjoiV0lTTzA0QiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNjUsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiV0lTTzA0QiIsIm5hbWUiOiJkcmFwZWQgc2FyZWUgZHJlc3MiLCJzdWJfdG90YWwiOjg0NSwibXJwIjoxNjkwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50Ijo4NDUsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VKRlAzNCIsIm5hbWUiOiJlbXJvaWRlcmVkIG9mZiB3aGl0ZSBnb3duIiwic3ViX3RvdGFsIjoyNzk4LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIyIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjQiLCJyZW50IjoxMzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEzOTl9fQ==	2016-07-04 11:42:15.079393-04
5dhft1h8ne6i73xjy2mhgkpyda2e8184	N2UzOTI1YjM1NzA1ZmY2MDFmMzEzMjdkZjZhOTEzMzdhNThmYzNkMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjkwNi45OTk5OTk5OTk5OTksInN1bV90b3RhbCI6NjQzOS45OTk5OTk5OTk5OTksIm15X2NhcnQiOiJNRVNCUDA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ2NywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRVNCUDA2IiwibmFtZSI6ImJyb3duaXNoIGNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6NjQzOS45OTk5OTk5OTk5OTksIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDgiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMyIsInJlbnQiOjMyMTkuOTk5OTk5OTk5OTk5NSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozMjE5Ljk5OTk5OTk5OTk5OTV9LCJkaXNjb3VudCI6MH0=	2016-07-05 11:38:40.772633-04
t52l42kcm750jk1cdm06i4u4cnrdfbey	MGNkYTkzYzU1NThmNmFhZjUxZDM1NTUyNDJhZThiOGQ5YTU1MDA4Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdBUjA3Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowfQ==	2016-07-05 20:58:02.568542-04
g9si3bnpeb6srb7bu370zfb9oua7r1cu	OWRmYjY2YTc3NDBhMzJlYjIzNmI0ZDFkMTMxNDI5MzNjNGFkYjRiNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODE5NC4wLCJzdW1fdG90YWwiOjc2NDAuMCwibXlfY2FydCI6Ik1XQVIyMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NTQsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiTVdBUjIwIiwibmFtZSI6InNoaW55IGJsYWNrIGZ1bGwgc3VpdCIsInN1Yl90b3RhbCI6NTAwMCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6NTAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNV0FSMjAiLCJuYW1lIjoic2hpbnkgYmxhY2sgZnVsbCBzdWl0Iiwic3ViX3RvdGFsIjoyNjQwLjAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjkiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNiIsInJlbnQiOjEzMjAuMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMzIwLjB9fQ==	2016-07-06 04:55:07.365407-04
ytvfatf8xylurygfk8d8iyfzjmy0prgi	ZTA5N2U5MDNjMjdmM2UzYWI1MWJkMTZkMTU3MTA5YmU4YmRlYmJhOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTUVQUFAxOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMDIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVQUFAxOCIsIm5hbWUiOiJyZWQgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNSIsInJlbnQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:06:44.077806-04
a7xaksu7z2e07v2s9d0a5gm66a47318g	ZTIzMzZmNWNiYjAwZWQxMmMwZmUyYmZhM2VjOGE4MTYyMmZmNGVlMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiTUVBU1AxMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo4NywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFTUDEyIiwibmFtZSI6ImVtYmVsbGlzaGVkIHB1cnBsZSBzZXQiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMyIsInRvX2RhdGUiOiIyMDE2LTA2LTI1IiwicmVudCI6NTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 05:14:13.72857-04
1nlyv137nwzc7ffdwlbb597gc6mtwed1	MmMwMmRiYjA4ZWU0NTE5YmUxYWQ3ZTc3OTgzN2U1NDc1ZDAyYzFkNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTUVBU1AyMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMDIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AyMCIsIm5hbWUiOiJibGFjayBibGF6ZXIgMSIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIyIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjQiLCJyZW50Ijo2OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5fSwiZGlzY291bnQiOjB9	2016-07-06 05:19:14.475771-04
06ultilmi2m5ajasc58w8m9iuv8kasz5	ODhhYzY0YzU4Zjg3YmFjZGVhNGRkOTZkYjViNGQyYThiMDFiOTAyZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVBU1AwNyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoyOTAsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0zMCIsInRvX2RhdGUiOiIyMDE2LTA3LTAyIiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-07-06 05:35:37.149594-04
a976lieqz949q4h77j0w00ipegmzvzce	ZDdmYjI1NDQ5ZmNmMDlhY2U5NmEzZGQwODQxNjEyNjhmZGFmMTA5MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2MSwic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNjMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNSIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 05:46:59.781555-04
zmjjy1771f9ut4kcca6w92hvlsnxidwg	Y2M5MzY4NDQyYWQ4ZWExNjY1MDZmMGMwOTcxNDI2M2M1MDhjMDVhMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUEtTMTAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjIwNjcuNywibXJwIjo3NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDctMDEiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDMzLjg1LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjEwMzMuODV9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-06 07:48:42.54286-04
c4i9mdvvxvbf0pxfy07hggayvx4vw3a9	Y2M2OGMzZmJjOWZlNTY0YmNkZmVkMTU2NzM2MWM0MzNkNTNjNzRlODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjQxNCwic3VtX3RvdGFsIjoyMjUwLCJteV9jYXJ0IjoiV0VQQ1MxMDQiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxNjQsIjEiOnsic2t1IjoiV0VQQ1MxMDQiLCJuYW1lIjoiQmxhY2sgU29saWQgU3VpdCIsInN1Yl90b3RhbCI6MjI1MCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MjI1MH0sImRpc2NvdW50IjowfQ==	2016-07-03 03:20:30.117823-04
9f6degj4znw2r7j7z7lg99xxvalgw88v	MGUyNmJmOGVkYzMzMzNjNWRmZmRkNDdjYTZkMWNiODFkODVmZDY4NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQVI0MSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0FSNDEiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gamFja2V0Iiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMCIsInRvX2RhdGUiOiIyMDE2LTA2LTIyIiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjM5OX0sImNhcnRfY291bnQiOjF9	2016-07-03 14:20:19.070669-04
mdpyhkmbycedakdexhhyxfbyzvjr5xt3	NWE5NzZlNjY1MDFmNTNjOWY2NTAzMDQ3ZGQ0YzJkMjA4ZWUyNDhlYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU2LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQVI0MyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1OCwiY2FydF9jb3VudCI6MSwiaWRzIjoxOTYsIjEiOnsic2t1IjoiV1dBUjQzIiwibmFtZSI6ImJsYWNrIGZvcm1hbCBibGF6ZXIiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjAiLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV1dBUjQzIiwibmFtZSI6ImJsYWNrIGZvcm1hbCBibGF6ZXIiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTE4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjAiLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiRGl2eWEiLCJpZCI6ODIsImZiX2lkIjoiMTAxNTM3NjI2MzgxNTgzOTEifX0=	2016-07-01 12:31:25.045332-04
o04vdc33g5ia8xe3av6768a4gi2xrs4y	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-04 12:51:49.054455-04
n3fh04bqh6ztgzmy3ma5xksq5gfj4nkv	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-02 04:05:05.47372-04
5f0rhguxljbpfdplfkfsamyepib6z2pq	NTdlN2I1NGY5MGQxMWY4YTEyNGNmYWE5MWJkODljZTNlMjhlYjIyNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiTVdBUjA4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEzMSwiY2FydF9jb3VudCI6MSwiaWRzIjoyMDUsIjEiOnsic2t1IjoiTVdBUjA4IiwibmFtZSI6InNoaW55IGJyb3duIGZ1bGwgc3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMSIsInRvX2RhdGUiOiIyMDE2LTA2LTIzIiwicmVudCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-07-05 12:20:19.084885-04
fleai8ylalgx5wx6azwcofagmj8hgcaw	NzU4YmY1NDQ1OTNlMDk1MzZkNjNkZDNlMzgzYzM1ZTQyOTg1MDU2Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiREIyMDEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-07-02 10:20:00.986093-04
jmos9191qy2uotefhs6z97g4a7bw8j4u	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-06 02:09:54.137477-04
8dewdzwq8e36j476rfuwhdogqtk0ubno	NzIyNThlMDAxNGIyNTdlNTM4NWJiZGM5MGI3M2FjNzhhMTU0OGNmNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjIxNy43LCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUEtTMTAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE1MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBLUzEwMiIsIm5hbWUiOiJCbGFjayBTaGlueSBCYW5kZ2FsYSBTdWl0Iiwic3ViX3RvdGFsIjoyMDY3LjcsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wNSIsInRvX2RhdGUiOiIyMDE2LTA3LTEwIiwicmVudCI6MTAzMy44NSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDMzLjg1fSwiZGlzY291bnQiOjB9	2016-07-06 05:01:42.889674-04
5jay0knwlpsow5dwlh7pq2rhim2wwse0	MjZkM2QzOWY4MTZhMDdmN2RhMmI4ZTMyMmFiNDJmNDAwOWFlYTIwYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY5Ny43LCJzdW1fdG90YWwiOjM0NDcuNywibXlfY2FydCI6Ik1FUkNQMjMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjUwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkNQMjMiLCJuYW1lIjoiMyBwaWVjZSBicm93biBzdWl0Iiwic3ViX3RvdGFsIjozNDQ3LjcsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yOSIsInJlbnQiOjE3MjMuODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTcyMy44NX0sImRpc2NvdW50IjowfQ==	2016-07-06 05:11:51.002429-04
96c8xzum16qo7xo57tcjix3nfwmy8h94	M2M1NmE0NjI3NmExZWM3MGZmMjk0N2VkOWRiZjBmODM2ODIxZGU3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2MCwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiTUVKUlAwMUEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTYwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FSlJQMDFBIiwibmFtZSI6ImJyb3duIDMgcGllY2Ugc2hlcndhbmkiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6MTEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNSIsInJlbnQiOjExMDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTEwMH0sImRpc2NvdW50IjowfQ==	2016-07-06 05:16:08.509156-04
tbdigggx17klz8q4o18lsi27noa588y7	NjY0NjM2MmRhYjQ0OTliMzVjMmFhOWJjZjNhY2YxMTBlZmFmMjcwYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiREIwNDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MjkwLCIxIjp7InNrdSI6IkRCMDQ1IiwibmFtZSI6ImdyZXkgMyBwaWVjZSBzdWl0Iiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjE1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE5OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:24:11.322542-04
hzjfypm0nw08c3bshto3n4lvwvc5iclk	ZTEwZmUxYTc1YjFhNmZjNTIyMWRjMzc2OWFmOWVmOTQ4NDI3YTRhZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNyIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:39:29.447521-04
pl6fh9x14csjn1mvjrnqnm917uy4v43r	OGI4ODNkMDJkZGY0OThlYzQxYTE0MGE0YzhiNTIzNzY1YjU2NDJkNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTMxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTEiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMyIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:48:48.899282-04
8lhuw8mih467mc0bnts0zh8c2a3bdlho	MzI1OWFlOGFkYTQ0OTUzNDE2YTQ4Y2M4NDEwNzZlMjQ5YjY4NmIxYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjIxNy43LCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUEtTMTAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE1MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBLUzEwMiIsIm5hbWUiOiJCbGFjayBTaGlueSBCYW5kZ2FsYSBTdWl0Iiwic3ViX3RvdGFsIjoyMDY3LjcsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yOSIsInRvX2RhdGUiOiIyMDE2LTA3LTA0IiwicmVudCI6MTAzMy44NSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDMzLjg1fSwiZGlzY291bnQiOjB9	2016-07-06 05:53:09.822919-04
s5hacxk8iwr1s4zctsgqp94dxjg3k45r	OGU0NTQ4YTFmZDBmMzY1YzNjYTZiZTQzYWU2NGQ4MmQxMzgzZGNhZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAwNiwic3VtX3RvdGFsIjo1NjAwLCJteV9jYXJ0IjoiTUVTQlAwNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo0MDYsIjEiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU2MDAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNi0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjI4MDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MjgwMH0sImRpc2NvdW50IjowfQ==	2016-07-06 06:48:47.358445-04
zk42fhlnq0fncz8tko0oyh121r2x4b13	YmQ5MmFjNTc2NGZlOTg5ZmIxZDEyMTAyNzc4OTUzNjJlMjRjNTUwYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTVdCQjA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEwMiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0JCMDYiLCJuYW1lIjoibXVzdCBoYXZlIGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo2OTk1LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIxIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjMiLCJyZW50Ijo2OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTVdCQjA2IiwibmFtZSI6Im11c3QgaGF2ZSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6Njk5NSwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMSIsInRvX2RhdGUiOiIyMDE2LTA2LTIzIiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjY5OX19	2016-07-02 12:19:59.744501-04
s8y4kvku2ibfwzpc2gs5xkiei103pptv	NWExZjkyMjgyODE5MWE2YmU2NjZlOTY1ZmZjZWNiMzkxZGQwZDhiMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2MSwic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNjMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMTMiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNSIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 07:16:09.188508-04
6cr4u865cn9ltwfo7gdo55ddzqq1vfgg	NjljYmQ1YTQ4YWNhMWZjOTc5NDliY2JmYzhjM2I0MDU0ODA5MGNiODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTcxNCwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdNSzE3Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjExNiwiMSI6eyJza3UiOiJNV01LMTciLCJuYW1lIjoiY2xhc3NpYyBibGFjayBiYW5kaSIsInN1Yl90b3RhbCI6MTU5OCwibXJwIjoxMDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0zMCIsInRvX2RhdGUiOiIyMDE2LTA3LTAyIiwic2VjdXJpdHlfZGVwb3NpdCI6Nzk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjc5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 07:23:20.313133-04
bjo89f7hw4t1g3v524bs50mi8uwgdi0y	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-07 12:00:38.7582-04
tnscloqb48p3mwr1llhn3u8t60744woq	YWIzZmVkNDE2YmMxMDFhNTQzMmEwZjQ3ZmY5ZjIxMzRjMDBjZjM4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTY3MS43LCJzdW1fdG90YWwiOjUyODcuNywibXlfY2FydCI6IldFQktQMTQiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6Mzg0LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFQktQMTQiLCJuYW1lIjoiYnJpZ2h0IG9yYW5nZSBsZWhlbmdhIiwic3ViX3RvdGFsIjo1Mjg3LjcsIm1ycCI6MjMwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTIiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNyIsInJlbnQiOjI2NDMuODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjY0My44NX0sImRpc2NvdW50IjowfQ==	2016-07-03 07:56:04.955161-04
gmh20xze3aktww32v4dlb3ozl21q8jse	Yjk3YjNlMDRjMTg4MmY3NTBmYzQ3Y2Q3YzRlNDNkYzk0YjVmMWVmZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjc1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNi0yOCIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-07-09 09:39:56.581439-04
xrfxip6crypmpt27zsp7vqp0j08t2raz	ZDgwMDdmZmIyMzdjMjdlYWExZjg3Mzg2NDQ5ODhmMzlhNmM1NjlmNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVQUFAxOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4IjoyOTAsIjEiOnsic2t1IjoiTUVQUFAxOCIsIm5hbWUiOiJyZWQgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTMiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNSIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo2OTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJEQjAxMSIsIm5hbWUiOiJibHVlIGJsYXplciIsInN1Yl90b3RhbCI6MjYwMCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjciLCJyZW50IjoxMzAwLCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEzMDB9fQ==	2016-07-06 08:00:44.404794-04
5wfeyjz0mq0ok7jmng0onav6lzfa9wg5	NzQ2NjIzN2Y2YjdmMjNkOTgxY2Y5ZjY2MTBhZDEyZWI1ZTJlYThkNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM5Niwic3VtX3RvdGFsIjoxMjk4LCJteV9jYXJ0IjoiREIwNTUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6OTgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwNTUiLCJuYW1lIjoicHJpbnRlZCByZWQgZnVsbCBzZXQiLCJzdWJfdG90YWwiOjEyOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yOSIsInRvX2RhdGUiOiIyMDE2LTA3LTAxIiwicmVudCI6NjQ5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjY0OX0sImRpc2NvdW50IjowfQ==	2016-07-09 15:36:24.01198-04
a0l2non2y7cc1bp5c0xgci3267wpphxg	Njg4MjgxNDYzYjY3YTgyYWUzYzNkZmFmOGRkNmVjMGNmNTlmYTA3YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDYzMS41OTk5OTk5OTk5OTksInN1bV90b3RhbCI6NDMxNy41OTk5OTk5OTk5OTksIm15X2NhcnQiOiJNRUFLUDEwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMxNCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFLUDEwIiwibmFtZSI6ImJsYWNrIHN1aXQgd2l0aCBzaGlueSBsYXBlbCIsInN1Yl90b3RhbCI6NDMxNy41OTk5OTk5OTk5OTksIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTIiLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInJlbnQiOjIxNTguNzk5OTk5OTk5OTk5Nywib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyMTU4Ljc5OTk5OTk5OTk5OTd9LCJkaXNjb3VudCI6MH0=	2016-07-06 08:32:18.081888-04
mr2ylxyds4puwp4rvm4rv66pqpvx52mz	MjYxN2VjMGZmNmVlMGZmYTQ1ZjNmYWY2NmU4YTk4MjBkNGZlYzAyZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEwMDAwLCJteV9jYXJ0IjoiTUVOSVAxMSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FTklQMTEiLCJuYW1lIjoib2ZmIHdoaXRlIHNoZXJ3YW5pIHNldCAxIiwic3ViX3RvdGFsIjoxMDAwMCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjEwMDAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-11 07:11:04.18175-04
okp807uzl0m1zn42so1dh9vf9ld6kucl	NDM1MjY2ZTVmZGIzYjZlY2E2NTU2YjZmYjFkOTJkOWQ2M2JjMzQ4MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODI5Ni43LCJzdW1fdG90YWwiOjc3MzUuNywibXlfY2FydCI6Ik1FQUtQMDkiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTYxLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6Ik1FQUtQMDkiLCJuYW1lIjoiYmx1ZSBzaGlueSBzdWl0IHdpdGggYmxhY2sgbGluaW5nIiwic3ViX3RvdGFsIjo0MTM3LjcsIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yOSIsInJlbnQiOjIwNjguODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjA2OC44NX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1FQUtQMDkiLCJuYW1lIjoiYmx1ZSBzaGlueSBzdWl0IHdpdGggYmxhY2sgbGluaW5nIiwic3ViX3RvdGFsIjozNTk4LCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjYiLCJyZW50IjoxNzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE3OTl9fQ==	2016-07-06 09:01:55.386-04
27sjabkipnf6x4ye219n0kdykypz7a9d	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-04 09:45:11.538035-04
k4gypwvsyvt92afe21d9ny66zx9wevai	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-05 02:32:34.221146-04
6y2qk47tvpoom34kkyc8id7kzhz7n8bu	NDhkYWQwNjYzYjM3NWY2MjFiYWVjY2EwMmEzMWE3ZWZjN2Q3MDU0YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjQ1MS4wLCJzdW1fdG90YWwiOjIyODAuMCwibXlfY2FydCI6Ik1XQVIxMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxNzEsIjEiOnsic2t1IjoiTVdBUjEwIiwibmFtZSI6ImdyZXkgZnVsbCBzdWl0IHdpdGggYmxhY2sgbGluaW5nIiwic3ViX3RvdGFsIjoyMjgwLjAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDEiLCJ0b19kYXRlIjoiMjAxNi0wNy0wOCIsInNlY3VyaXR5X2RlcG9zaXQiOjExNDAuMCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMTQwLjB9LCJkaXNjb3VudCI6MH0=	2016-07-07 15:13:47.937923-04
ijo44npybx27rxw58xu3tnaob6ki72p6	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-04 09:49:04.533114-04
1mljci8px13i1abee31qikirx7vwrflb	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-05 08:46:57.816594-04
8pwrnett0a82np3yaeptazn950v1y5la	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-05 13:54:33.647334-04
2rhogg8g65tlaisztmu0pxoqyww2e6j2	ZDU0YWFiZDNjMTMwNDYxYmNkZjJjMzY5MzAxZmQwNDIxOWZiNGJkNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjA1Ny42LCJzdW1fdG90YWwiOjE5MTcuNiwibXlfY2FydCI6Ik1XU1MxNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxNDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTVdTUzE1IiwibmFtZSI6InJveWFsIGJsYWNrIGJsYXplciB3aXRoIGdyZXkgYm9yZGVyIiwic3ViX3RvdGFsIjoxOTE3LjYsIm1ycCI6MTg1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNyIsInJlbnQiOjk1OC44LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjk1OC44fSwiZGlzY291bnQiOjB9	2016-07-06 04:53:16.313765-04
mwu196xhi3otx3lljff480fklepmun66	MTU3NjQwYjRkNzNhMTNkMTJjMGM3MzJhZmRmZmVmMTg5ODJkNWQ4ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTMxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTAiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMiIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:03:02.367184-04
a1orubamfokd0s3hchekmy8aj8cuj9ad	ODcwMjVkNTVkYTlhOTFiNzQ1ZDI5NzQzY2MxMmZhMDZhMDIzYjRmZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAwNiwic3VtX3RvdGFsIjo1NjAwLCJteV9jYXJ0IjoiTUVTQlAwNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0MDYsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU2MDAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjIiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNCIsInJlbnQiOjI4MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjgwMH0sImRpc2NvdW50IjowfQ==	2016-07-06 05:12:41.395315-04
ejdmz5koxjd0iw8cg6v9hepfs4zqvded	YjdlOGVhMDhkNDQ1N2IxNWM3N2RlOTFhNjhiYzQ3ZjZjODM4ZGQwNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjczLCJpZHMiOjIwOCwiMSI6eyJza3UiOiJNRVJHUDE2IiwibmFtZSI6ImJsdWUgcGFydHkgYmF6ZXIiLCJzdWJfdG90YWwiOjk5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIyIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NDk5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IkFuaXRlc2giLCJpZCI6OTMsImZiX2lkIjoiMTAxNTM1MTg2MTQ2MzE5NDkifX0=	2016-07-06 05:19:00.158695-04
qngqmp6v5p9aphkzjslp8ksjxu0fdtjw	YzI5MzdjMWRjOTczNWY5MmQ0YWQxYzdjNDkxNjg5YTdiNTkyOGVkNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3NCwic3VtX3RvdGFsIjoyNDAwLCJteV9jYXJ0IjoiTUVWQlAwMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxNzQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVWQlAwMyIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MjQwMCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wNCIsInRvX2RhdGUiOiIyMDE2LTA3LTA2IiwicmVudCI6MTIwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMjAwfSwiZGlzY291bnQiOjB9	2016-07-06 05:24:58.738538-04
uwz9nbasseyymxr91mk55r7psnavm2ej	ZjJkMmM0ZWVkNzE5OWNkMmM1ZGViODY3MjQ3ZWMwNzQwYTFkZmEyMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODYzMS43LCJzdW1fdG90YWwiOjgwNDcuNywibXlfY2FydCI6IkRCMDY5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjU4NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA2OSIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgbGVoZW5nYSIsInN1Yl90b3RhbCI6ODA0Ny43LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjgiLCJyZW50Ijo0MDIzLjg1LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQwMjMuODV9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:44:57.579511-04
1i0ohg5u5yvrntmst3fffsda6248t3qt	MWNhYjYwZjYwMjJhODQwNDM3YzFiNjhiYzYzODNmNzk2ZjQ0YTNjMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQS1MxMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTMxLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yNCIsInRvX2RhdGUiOiIyMDE2LTA2LTI2Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 05:53:29.9793-04
5bgu6iwetdlu77sqnscavd33tnph3ope	NDZiNWY5NzYxMTQwNjBkN2YwMmJlNDRkYTU1YThlY2VlMDYxNjZlNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDkzMS43LCJzdW1fdG90YWwiOjQ1OTcuNywibXlfY2FydCI6IkRCMDE5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMzNCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjAxOSIsIm5hbWUiOiJicm93biBzaGVyd2FuaSIsInN1Yl90b3RhbCI6NDU5Ny43LCJtcnAiOjE2MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50IjoyMjk4Ljg1LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjIyOTguODV9LCJkaXNjb3VudCI6MH0=	2016-07-06 05:53:58.972994-04
1h38faa6doq7p90xdv6d6yv16qf463rp	Yjk1OTk3Y2I4OTUxNjhkM2QwOGJiZjk0ZjZhOGU1NWJkMDBiMWNhYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQS1MxMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yOSIsInRvX2RhdGUiOiIyMDE2LTA3LTAxIiwicmVudCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 05:59:00.622183-04
jpp2x8rwcrqwmxppjlib4jslp1hs3lva	MjQyZWM3NmQ3YmQ0YjdhOTIxNTIzYWFhNTk4MmVjODI5YWQ3NDJmYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 06:21:42.946136-04
hh0cy5z2l7svo6ubzmop5rmozbf5rx6p	NjY3NzlhZTdkMGViMDQyMGRmYzg5ZDVjNjY0ZWNmNTdiNGUzMTI5OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzIwOC4wLCJzdW1fdG90YWwiOjY3MjAuMCwibXlfY2FydCI6Ik1FU0JQMDYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NDg4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FU0JQMDYiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gc2hlcndhbmkgc2V0Iiwic3ViX3RvdGFsIjo2NzIwLjAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNyIsInJlbnQiOjMzNjAuMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozMzYwLjB9LCJkaXNjb3VudCI6MH0=	2016-07-06 06:25:30.647796-04
xv5gg5d0fwwxx19cekcsy43hy9yyrpr2	ZGNmNDU0NWZmZDQzYzI1YjEzM2UzOTZkZjc1NmI1M2EzYzc1YjA0NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ5OTgsIm15X2NhcnQiOiJNRUJLUDAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQktQMDIiLCJuYW1lIjoidmVsdmV0eSBibHVlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI0OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA4LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDgtMjEiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI0OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-30 15:06:44.585432-04
mrfc0zjoqy3whtsdqurl4o34nhz7r4aq	MjVkNjQxYjZmOGUwZjkwYzY3ZTJlMTY1YzM1NWNmNjYxNjg1MzkzZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjE0OTksIm15X2NhcnQiOiJXV0NLNTIiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4Ijo1OCwiMiI6eyJza3UiOiJXV0VMMTAiLCJuYW1lIjoiaGFsdGVyIG5lY2sgZHJlc3MiLCJzdWJfdG90YWwiOjY5OSwibXJwIjoyNjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6Njk5fSwiMSI6eyJza3UiOiJXV0NLNTIiLCJuYW1lIjoicGluayBzaGltbWVyIGRyZXNzIiwic3ViX3RvdGFsIjo4MDAsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjgwMH0sImRpc2NvdW50IjowfQ==	2016-07-06 06:54:53.803048-04
5cpkk1ly6gd5uyhayaj8lm9cg6tu39r6	ZWY4MmM0ZTY1NDYwNzQ2MTA1YzYwZTkzOTE5ODY2OTUzMTUxNzQxNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyNiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTMwIiwidG9fZGF0ZSI6IjIwMTYtMDctMDIiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjAsInVzZXIiOnsiZmlyc3RfbmFtZSI6IkFzaGlzaCIsImlkIjoxMDMsImZiX2lkIjoiMTIzODA0ODI3OTU2OTA5MSJ9fQ==	2016-07-07 12:12:56.363078-04
mri4s399alq3s3qmkcstlgbqsc3ne5jd	NDMxNzc4YWQ4NmM1ZTdiZTY5ZTE3YmZmZDY2NzkwNGU2Nzk4YTMzNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIyMywic3VtX3RvdGFsIjoyOTk4LCJteV9jYXJ0IjoiTVdNSzE4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjIyNSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV01LMTgiLCJuYW1lIjoiY2xhc3NpYyBibGFjayBiYW5kIGdhbGEiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MjEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNyIsInJlbnQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-07 17:56:09.391252-04
6ozf7njw4ebdpyh9vxn3cyw2x9q3qsjq	ZjAyZWFjYzY5NzY3ZGY1MWNlNWNmYjY0ZjVkOWY4NGJjNzI5Mzc4Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg2OCwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiTUVBS1AxMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNzAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBS1AxMCIsIm5hbWUiOiJibGFjayBzdWl0IHdpdGggc2hpbnkgbGFwZWwiLCJzdWJfdG90YWwiOjM1OTgsIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInJlbnQiOjE3OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTc5OX0sImRpc2NvdW50IjowfQ==	2016-07-08 13:16:56.475435-04
m7w6mal8yzra1ytc78kyszr9hwl7vglb	ZjRhZWMwNTExZTMyYjU1YmQ1ZjgxMzEyYjU4ZmFkZjc1MTY4NTIxYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4Mywic3VtX3RvdGFsIjozOTkzLCJteV9jYXJ0IjoiTUVBS1AwOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoyOTAsIjEiOnsic2t1IjoiV1dBUjI5IiwibmFtZSI6InNob3VsZGVyIHNoaW1tZXIgYmxhY2sgZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjoyNzAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV1dBUjI5IiwibmFtZSI6InNob3VsZGVyIHNoaW1tZXIgYmxhY2sgZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjoyNzAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fX0=	2016-07-06 07:20:56.87207-04
ot5tmubrqxwhbvdcnirbyefa52jja2hm	MjA0ZWQxOGJjNzNhNzlmMTY2OGVkY2M0ODZiMDg0ZjI0NzBkMTNlYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OTgsIm15X2NhcnQiOiJNRU5JUDExIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FTklQMTEiLCJuYW1lIjoib2ZmIHdoaXRlIHNoZXJ3YW5pIHNldCAxIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjUiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE5OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-06 07:23:34.224108-04
kp0algvfmiu1r04lmw1t20bg1bbq5zh5	YjI5NzU0MjBkOTViYjg2MWUzNDQxM2Y1ZWU5YWU3NWYxMmNmNjA4Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI5OTgsIm15X2NhcnQiOiJEQjA1MCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJEQjA1MCIsIm5hbWUiOiJibGFjayBiYW5kIGdhbGEiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MjEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ5OX0sImNhcnRfY291bnQiOjF9	2016-07-06 08:12:48.822861-04
psljcvj81zkdtmo0jeau6fkg0f79hlkz	NzQ4MjA4NjY1NmQ4ZmNiZTRkN2JmZjFlYWJjYTdkYmNlMWI4NDZhZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjIxNTcuNiwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDctMDEiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDc4LjgsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTA3OC44fX0=	2016-07-06 08:35:06.047004-04
dxl6568uqfltab7oppulj1aua3mrah38	NzM2OTRkNzQ1MTc3MTc0MDI4ZTZlNjRjOTU5M2NlOGRmNjcxNzI0Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJXRVBSUzEwNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA3IiwidG9fZGF0ZSI6IjIwMTYtMDctMDkiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODk5fSwiY2FydF9jb3VudCI6MX0=	2016-07-06 09:11:41.114779-04
o3p1u3ced5q8pt8sk9y63e3w42nl73f6	Nzg3NDU5NDg0NzgzMzU0YmViNGRkYzM2ZjYyMWIzODA5YjI0M2FlMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 09:55:37.341635-04
8tmljxkjqrtmrvjfj3dw1snlh5u9ixhv	OWIyOTAyNDdkNjc5ZTZmZWZjZWNiNmNkZmNkY2U5MzRmMWVmODFjMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTAyNy42LCJzdW1fdG90YWwiOjk1Ny41OTk5OTk5OTk5OTk5LCJteV9jYXJ0IjoiTUVSR1AxN0EiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NzAsIjEiOnsic2t1IjoiTUVSR1AxN0EiLCJuYW1lIjoiY3JlYW0gc2hlcndhbmkgc2V0Iiwic3ViX3RvdGFsIjo5NTcuNTk5OTk5OTk5OTk5OSwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI5IiwidG9fZGF0ZSI6IjIwMTYtMDctMDYiLCJzZWN1cml0eV9kZXBvc2l0Ijo0NzguNzk5OTk5OTk5OTk5OTUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NDc4Ljc5OTk5OTk5OTk5OTk1fSwiZGlzY291bnQiOjB9	2016-07-06 10:45:30.314264-04
7dsmy8bxr399l8d306hc2tqmk57bqtxs	ODQwZTE2YmFkOGUyOGUzY2ZlNWRlMzMyYTA3OWU0YTBhYTczNmMyMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVUQlAxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOTAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVUQlAxOSIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSB3aXRoIHJlZCBiYXNlIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjYiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 11:36:41.92294-04
wgvrmo1sp7e1o8gdcthm1x8cs77sz6yt	NmRlNDU4MzY3MzhmODE2YTVlNjE2ZjUyYzExY2Y5MmI1YTE5MDY4NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI1MDAsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjoyNTAwLCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjoyNTAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-06 07:09:10.764803-04
rjjvx055pb2z3qy669fx7avq8bd1c7dm	MTdhMjVmMzk3MmE3OTFiZGZiMDRkZjQ3ZDJhZWEzN2YyMDllZmNlODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjA0Mywic3VtX3RvdGFsIjoxOTAwLCJteV9jYXJ0IjoiTVdBUjEwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE0MywiY2FydF9jb3VudCI6MSwiaWRzIjoyMjYsIjEiOnsic2t1IjoiTVdBUjEwIiwibmFtZSI6ImdyZXkgZnVsbCBzdWl0IHdpdGggYmxhY2sgbGluaW5nIiwic3ViX3RvdGFsIjoxOTAwLCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTAxIiwidG9fZGF0ZSI6IjIwMTYtMDctMDMiLCJyZW50Ijo5NTAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6OTUwfSwiZGlzY291bnQiOjB9	2016-07-15 04:54:51.226364-04
99wnxnum8nriy87cs6f6455iwk10pdan	ZmE0Yjc2OTc4ZGExMDMyOTkxY2ZiMjhmNmUwZGM4OTEyNmQ1NzNhNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQ0Ny41OTk5OTk5OTk5OTksInN1bV90b3RhbCI6NTk5Ny41OTk5OTk5OTk5OTksIm15X2NhcnQiOiJNRUJLUDAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjQ1MCwiMSI6eyJza3UiOiJNRUJLUDAyIiwibmFtZSI6InZlbHZldHkgYmx1ZSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6NTk5Ny41OTk5OTk5OTk5OTksIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMSIsInNlY3VyaXR5X2RlcG9zaXQiOjI5OTguNzk5OTk5OTk5OTk5Nywib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoyOTk4Ljc5OTk5OTk5OTk5OTd9LCJkaXNjb3VudCI6MH0=	2016-07-07 13:11:43.649804-04
1qsgfyihaui0ruqcuqn8ufj0c40qteph	OTcxMmJmZTNjMGM4MzU5ZjliZWUzMGVmNTQzOTBkMTYzN2NlMTIzNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTQzNCwic3VtX3RvdGFsIjo4Nzk2LCJteV9jYXJ0IjoiTVdNSzAxIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50Ijo0LCJ0YXgiOjYzOCwiMSI6eyJza3UiOiJNV01LMDEiLCJuYW1lIjoiYmxhY2sgamFja2V0IHdpdGggZmluIGxhcGVsIiwic3ViX3RvdGFsIjoyMTk4LCJtcnAiOjEzMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjYiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjEwOTl9LCJkaXNjb3VudCI6MCwiMyI6eyJza3UiOiJNV0FSMjAiLCJuYW1lIjoic2hpbnkgYmxhY2sgZnVsbCBzdWl0Iiwic3ViX3RvdGFsIjoyMjAwLCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjYiLCJzZWN1cml0eV9kZXBvc2l0IjoxMTAwLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjExMDB9LCIyIjp7InNrdSI6Ik1XTUswMiIsIm5hbWUiOiJzaGF3bCBjb2xsYXIgbGFwZWwgVHV4ZWRvIiwic3ViX3RvdGFsIjoyMTk4LCJtcnAiOjIxMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjYiLCJyZW50IjoxMDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEwOTl9LCI0Ijp7InNrdSI6Ik1XQVIyMCIsIm5hbWUiOiJzaGlueSBibGFjayBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInNlY3VyaXR5X2RlcG9zaXQiOjExMDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTEwMH19	2016-07-06 06:23:23.476395-04
w6l9x2e3auu4i8wwojsd7vs7jgzicjbp	ZTc0N2MxN2YxYmY5YzE1MmIyZDRhYmU4ODJiYmY1NjVkMGY0NTU2NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI3LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVIyOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOSwiY2FydF9jb3VudCI6MSwiaWRzIjoyMTAsIjEiOnsic2t1IjoiV1dBUjI5IiwibmFtZSI6InNob3VsZGVyIHNoaW1tZXIgYmxhY2sgZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjoyNzAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjgiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fSwiZGlzY291bnQiOjB9	2016-07-06 07:23:11.792479-04
fmze5xnux9awtxy4zdtq3qub7qyi584i	NGIyYTRmMWEzNjYyMWY0MDc3ZmE1YmZiMGMyOTU2ZTFlYmE2MzA2ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjk2MS4wLCJzdW1fdG90YWwiOjI3NjAuMCwibXlfY2FydCI6Ik1FVkJQMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjAxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FVkJQMDMiLCJuYW1lIjoiY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjI3NjAuMCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMiIsInRvX2RhdGUiOiIyMDE2LTA3LTE3IiwicmVudCI6MTM4MC4wLCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEzODAuMH0sImRpc2NvdW50IjowfQ==	2016-07-06 08:16:35.325113-04
i8aqc4q651cqgup601aqbv31md9lu9yk	YjQxZjhkZTM0Y2JjM2VmNTU0MGI2ZjQ3NWU4ZjY4MjQxYjU4ODk1MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTEzMTQuMiwic3VtX3RvdGFsIjoxMDU0OS4yLCJteV9jYXJ0IjoiV0VQS1AxMDEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzY1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDIyIiwibmFtZSI6ImRhcmsgcmVkIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0MDc3LjYsIm1ycCI6MTcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNyIsInJlbnQiOjIwMzguOCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyMDM4Ljh9LCJkaXNjb3VudCI6MH0=	2016-07-06 08:58:12.977358-04
k3kptsmq3ecpc2uueiz607igxvke4em7	OWVlY2RlNTNhZmEzMjhlZDZjZDgwMjFmYTczYWNkYTgzNzhhNGFkMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjU2MDAsIm15X2NhcnQiOiJNRVNCUDA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FU0JQMDYiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gc2hlcndhbmkgc2V0Iiwic3ViX3RvdGFsIjo1NjAwLCJtcnAiOjI4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIyIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjQiLCJzZWN1cml0eV9kZXBvc2l0IjoyODAwLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI4MDB9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-06 09:20:35.911478-04
wwroxfwrmnye5wlqxasza7h1e8tb35s0	ZGM4ZGFhOWY4YzQ1N2RmODJhNTRkMjdjYTI4YmFkMjk2ZmIzYjFiYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVOSVAxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoyOTAsIjEiOnsic2t1IjoiTUVOSVAxMSIsIm5hbWUiOiJvZmYgd2hpdGUgc2hlcndhbmkgc2V0IDEiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjMiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNSIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 09:50:19.277654-04
nezl4c12x7kucg5mfx2vpswys2tinhf3	NzJhNzQzZWM3NGVmZGE2YzkzODVjOWEwYWE3ZDUzZDcwZGJlMTE2Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiTUVBTlAwOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo4NywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFOUDA4IiwibmFtZSI6ImxpZ2h0IHBpbmsgc2hlcndhbmkiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMyIsInRvX2RhdGUiOiIyMDE2LTA2LTI1IiwicmVudCI6NTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 10:02:56.641699-04
44amkf9iwq5wyqi80dx9urvd18k4ib3x	Nzg3NDU5NDg0NzgzMzU0YmViNGRkYzM2ZjYyMWIzODA5YjI0M2FlMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 11:06:23.437685-04
esa50i9sdyzt4k8v6xh385slhiok7u9d	NzEyYmQ3MjJmYzIzNzkzOGEzYWYwZDQzMzAzYzI5MDEzMjJmNDdlNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQS1MxMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMyIsInRvX2RhdGUiOiIyMDE2LTA2LTI1IiwicmVudCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 12:06:21.335617-04
qtv2v6bbhh1n1xl10u4y5tyrhkyc8b00	N2RiNGEwMmFiZTQ0ODlhZjMwNjhmOGIzMjkxNzY0NjUzMGMxYWE5Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU2LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XQVIxNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1OCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0FSMTYiLCJuYW1lIjoiYmxhY2sgd2Fpc3Rjb2F0Iiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wOSIsInRvX2RhdGUiOiIyMDE2LTA3LTExIiwicmVudCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 06:29:00.253416-04
xe1c1w62mo2jjockekrhizyau136ooaz	NDRlNjM1YzEzYjI4OWIyMmJkNGU5YzRmNzk0OTM2ODE4MTA5MjFmYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg1OSwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiTUVBS1AwOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNjEsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBS1AwOSIsIm5hbWUiOiJibHVlIHNoaW55IHN1aXQgd2l0aCBibGFjayBsaW5pbmciLCJzdWJfdG90YWwiOjM1OTgsIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNyIsInJlbnQiOjE3OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTc5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 06:34:45.29388-04
1o4du46dqf5lyjevqyn0zpb5vn7ocuc5	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-06 06:48:59.022889-04
47c4v1rwhwtwsqj7wscrtyvmrz3vmo8n	NjQ1ZTRjMjMyZDdmODE5NzNmZmVhZGJlMjkyNDkxYzExZjRjMzNlNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNyIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-07 13:12:54.141997-04
e51tasbyfmln3c884dxo2sebiml02he1	ZGY5MTU5MWU3NzIxZWNjNzEzYTA0MjAwNjYzZTYxMDg3NWE4NmQ2MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5MCwic3VtX3RvdGFsIjo0MDAwLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjI5MCwiMSI6eyJza3UiOiJNRUFTUDMwIiwibmFtZSI6ImJsYWNrIHNoaW55IHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0MDAwLCJtcnAiOjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0MDAwfSwiZGlzY291bnQiOjB9	2016-07-06 07:16:08.841588-04
qbj44zvfmrrsdnr06er84u46o238wevh	OWY0M2I4NzRmMjc1OTQzMmI5NmU0MDZkYmMyY2NlOTlmNzY4ZGVkYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTM0NCwic3VtX3RvdGFsIjoxMjUwLCJteV9jYXJ0IjoiREIwNTUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo5NCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA1NSIsIm5hbWUiOiJwcmludGVkIHJlZCBmdWxsIHNldCIsInN1Yl90b3RhbCI6MTI1MCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMjUwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-07-09 09:44:33.386675-04
yft80n7olsua58awdxnyld94xaw0z3fc	YTQ3ZDNkMTI5MzU0YmU4YTRlZGNjNWZhNmZiMTY5MDEyM2MwOWYzNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVOSVAxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOTAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVOSVAxMSIsIm5hbWUiOiJvZmYgd2hpdGUgc2hlcndhbmkgc2V0IDEiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInJlbnQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 07:22:28.826291-04
50pzxbb3pgflo7mtyqobb4q864ux922p	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-06 07:46:49.392142-04
eo291di8f23ptx92cvd1287f1j43md24	MWMyNjJkMTQ2OTcyZjRjZTM2ZTY3OTljMWFkMmQ5MWM1NDU2MGExMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE2OTgsIm15X2NhcnQiOiJNRUFTUDMwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQVNQMzAiLCJuYW1lIjoiYmxhY2sgc2hpbnkgc2hlcndhbmkiLCJzdWJfdG90YWwiOjE2OTgsIm1ycCI6ODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yMCIsInRvX2RhdGUiOiIyMDE2LTA3LTIyIiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjg0OX0sImNhcnRfY291bnQiOjF9	2016-07-06 08:27:30.426488-04
rt0ye6uc5gt5cufy657p7b6h8e3200eq	N2Y0MjMxMDFhMzM3NjM5NjExNDMxOTU3ODFiMmFlMmMyNDVhOGFmNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE1MDAwLCJteV9jYXJ0IjoiTUVSQ1AyMyIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FUkNQMjMiLCJuYW1lIjoiMyBwaWVjZSBicm93biBzdWl0Iiwic3ViX3RvdGFsIjoxNTAwMCwibXJwIjozMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjE1MDAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-06 08:55:40.602341-04
uccy57n26omrf5aq7wyay9po739k5est	ODcwMjVkNTVkYTlhOTFiNzQ1ZDI5NzQzY2MxMmZhMDZhMDIzYjRmZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAwNiwic3VtX3RvdGFsIjo1NjAwLCJteV9jYXJ0IjoiTUVTQlAwNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0MDYsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU2MDAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjIiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNCIsInJlbnQiOjI4MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjgwMH0sImRpc2NvdW50IjowfQ==	2016-07-06 09:20:48.0265-04
v8w23kygh81y95qws4ob066mg13hdk0s	YWYwMWM0OTk4MGU1NzJjNjI0ZDRkMzU1MGY1Y2EwNzVhN2EyNmY5Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM3NTAsIm15X2NhcnQiOiJXRVBLUzEwMiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjM3NTAsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjM3NTB9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-06 10:09:32.23091-04
z4nz0yn7fjdsjrb0jmof1k6ikqtqcyuf	YWNkYjg5NzFiNzQwZmZhODA1Mzg2OTBhMTNlZmJlODVlYjEwMDYxNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjIxNy43LCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUEtTMTAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE1MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBLUzEwMiIsIm5hbWUiOiJCbGFjayBTaGlueSBCYW5kZ2FsYSBTdWl0Iiwic3ViX3RvdGFsIjoyMDY3LjcsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wMiIsInRvX2RhdGUiOiIyMDE2LTA3LTA3IiwicmVudCI6MTAzMy44NSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDMzLjg1fSwiZGlzY291bnQiOjB9	2016-07-06 11:17:43.028482-04
nv47o2240ypgvx2rqkryep5hed21j1ar	MzczNDJhOGY5ZDgyY2I3MjQ0ZWNiY2U3NDdjZTA4NGYxNDQ5MjZlMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyMiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI5IiwidG9fZGF0ZSI6IjIwMTYtMDctMDEiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-06 12:15:03.494391-04
cs71s5mbd227dpo4hyyguycjmr21x2fy	OWQzNjI2YzE3ZTA0NWRmYTA4NzFjNmJlYTUzYzY1Y2FjNDYxMjk2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ1MDAsIm15X2NhcnQiOiJXRVBSUzEwNSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjo0NTAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0NTAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-06 12:24:34.096635-04
jnun8r7olv0u8ctwi6complwm07f531u	YjdkZGU1NjdmZjA5NjM5NThlYTlhM2I1NWQ3MDZjOGQ1ZDFlZjY4MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTAyNy42LCJzdW1fdG90YWwiOjk1Ny41OTk5OTk5OTk5OTk5LCJteV9jYXJ0IjoiTVdBUjI2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjcwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1XQVIyNiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgd2Fpc3Rjb2F0Iiwic3ViX3RvdGFsIjo5NTcuNTk5OTk5OTk5OTk5OSwibXJwIjo2MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIyIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50Ijo0NzguNzk5OTk5OTk5OTk5OTUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDc4Ljc5OTk5OTk5OTk5OTk1fSwiZGlzY291bnQiOjB9	2016-07-06 12:15:11.754765-04
5fnp0iwhniuwad4esd9rrjt2htg2un76	MGZiMTI3MzU2NDRiMTFkODllMzM5YWI4NDgxNzA3ZjA4NGVjOTc2Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDk0Mywic3VtX3RvdGFsIjo0NTk4LCJteV9jYXJ0IjoiREIwMDciLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MzQ1LCIxIjp7InNrdSI6IkRCMDA3IiwibmFtZSI6ImJsYWNrIHN1aXQgd2l0aCB2ZWx2ZXQgbGFwZWwiLCJzdWJfdG90YWwiOjQ1OTgsIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjIyOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MjI5OX0sImRpc2NvdW50IjowfQ==	2016-07-07 13:30:39.025105-04
91sjs4cerade9dlamscbxpoimxsjdaws	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-07 22:08:46.827136-04
hr283xc1f023t73axdi9stj2uv69v801	ZGUxZjE1NmMzNmUwM2ZhYjk2MTZlYmExYzc2ZWY3YWYzMjUyZjdmYjp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6IkRCMDI1QyIsIm5hbWUiOiJlbWJyb2lkZXJlZCBncmVlbiBzYXJlZSIsInN1Yl90b3RhbCI6Mjc1Ny43LCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDYiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMSIsInNlY3VyaXR5X2RlcG9zaXQiOjEzNzguODUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTM3OC44NX0sInN1bV90b3RhbCI6NzI0MC40LCJteV9jYXJ0IjoiV0VOQVAxMDVCIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6IldFTkFQMTA1QiIsIm5hbWUiOiJEZXNpZ25lciBNdWx0aWNvbG9yIFNhcmVlIiwic3ViX3RvdGFsIjo0NDgyLjcsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDYiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMSIsInJlbnQiOjI4NzMuODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTYwOC44NX19	2016-07-09 02:33:28.351521-04
tuycek8v6a41tct2yskv3f8wiycxnw24	OWYxYmM1Zjg5Y2ZjYzc4ODM2ZjUwYzg4Mzk1NjM3MmY3YjY1Y2ZmYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-07-16 10:01:45.975215-04
mbrx1i3mz9j2v41qsy28gxsqguuoa88o	ZGZjMTA5YTQzZWJiZmQ4YmFmN2U4MzA3NDNiYjE0ZmZiODQ1ZGFmZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIyMywic3VtX3RvdGFsIjoyOTk4LCJteV9jYXJ0IjoiV0VQSlMxMDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjI1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUEpTMTAzIiwibmFtZSI6IkJsdWUgQmFuZGdhbGEgU3VpdCIsInN1Yl90b3RhbCI6Mjk5OCwibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0zMCIsInRvX2RhdGUiOiIyMDE2LTA3LTAyIiwicmVudCI6MTQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNDk5fSwiZGlzY291bnQiOjB9	2016-07-09 09:52:38.664184-04
r69empkxtr4kxwg6eppxec6vipt10ahe	MGE2NjYwNDZhMmU3NjFmMDkzNDY5NjM2ZjZlNjQ1YmVjYzY2NDcyZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjcxNy43LCJzdW1fdG90YWwiOjI1MjcuNywibXlfY2FydCI6Ik1LTVRYMDNBMDAzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE5MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNS01UWDAzQTAwMyIsIm5hbWUiOiJub3RjaGVkIGxhcGVsIHR1eGVkbyIsInN1Yl90b3RhbCI6MjUyNy43LCJtcnAiOjIxMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDctMTMiLCJyZW50IjoxMjYzLjg1LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEyNjMuODV9LCJkaXNjb3VudCI6MH0=	2016-07-18 07:35:33.926214-04
2xkr613qiyhooygc69bufmezvnqs0x1o	ZTAzMWY5MDA5ZWY3NTUxYTU5MjQzYzBlZTU5YjIxZDA4ZTJiY2Q3Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTQ4MS42OTk5OTk5OTk5OTk4LCJzdW1fdG90YWwiOjEzNzcuNjk5OTk5OTk5OTk5OCwibXlfY2FydCI6Ik1FQU5QMDgiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTA0LCIxIjp7InNrdSI6Ik1FQU5QMDgiLCJuYW1lIjoibGlnaHQgcGluayBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTM3Ny42OTk5OTk5OTk5OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjYiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMSIsInNlY3VyaXR5X2RlcG9zaXQiOjY4OC44NDk5OTk5OTk5OTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjY4OC44NDk5OTk5OTk5OTk5fSwiZGlzY291bnQiOjB9	2016-07-09 12:46:09.808339-04
m5m0o11mz22yxlhh0j6xee28b6vnpdra	MjNjYzY0YzA4YmYxNGY3YmI5OTU1ZDA1NzQzMThiOWM4MTNjZGIxOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVUQlAxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVUQlAxOSIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSB3aXRoIHJlZCBiYXNlIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCJkaXNjb3VudCI6MH0=	2016-07-09 20:18:44.705804-04
czseb9x8ppwpzysf19kpmjf1egw2ziwc	YWI0OGQwYjQ3OTE1MjI4OTBmMTg2NzhjNDRhZGE5YjEyZDAyZTQ1NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzkwOS43LCJzdW1fdG90YWwiOjczNTcuNywibXlfY2FydCI6IldJQUEwNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1NTIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0lBQTA2IiwibmFtZSI6InphcmRvemkgZW1icm9pZGVyZWQgbGVoZW5nYSIsInN1Yl90b3RhbCI6NzM1Ny43LCJtcnAiOjI5OTUwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDctMTciLCJyZW50IjozNjc4Ljg1LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjM2NzguODV9LCJkaXNjb3VudCI6MH0=	2016-07-18 21:09:33.544418-04
s2t4vksp401d17y7lo5sz64kf9oqak0t	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-10 07:37:31.480218-04
1e3dco1vi9e2gyenu7xtfl6eh8xxxpk2	Y2QzODZjMzdiNmVjOGUwZTFkN2UwYzZjNzc4ZDljNGJhMDk4NzgyZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTIzNC42OTk5OTk5OTk5OTk4LCJzdW1fdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXlfY2FydCI6IldFUENTMTA0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjg3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUENTMTA0IiwibmFtZSI6IkJsYWNrIFNvbGlkIFN1aXQiLCJzdWJfdG90YWwiOjExNDcuNjk5OTk5OTk5OTk5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDctMDMiLCJyZW50Ijo1NzMuODQ5OTk5OTk5OTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo1NzMuODQ5OTk5OTk5OTk5OX0sImRpc2NvdW50IjowfQ==	2016-07-10 16:12:21.019443-04
al85k1j7n8pciosu78ph7hyrcxzu7oxm	Yjc4MmY0ZWEzODU0OGEzODhjZWMwNTQ2MGZjMGIyMGY2OTA3NjQwZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODYwLCJzdW1fdG90YWwiOjgwMCwibXlfY2FydCI6IldXQ0s1MiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjYwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s1MiIsIm5hbWUiOiJwaW5rIHNoaW1tZXIgZHJlc3MiLCJzdWJfdG90YWwiOjgwMCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50Ijo4MDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-07-19 05:58:55.388512-04
akt2g1pdlt33trr99dwkulakcrahaeih	Zjg1NTI1N2ZjZWM0M2Y5YjhiMzk1MzkyOTJlZDc5MjI4MDE2NmY3Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY1OCwibXlfY2FydCI6IkNLMThBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkNLMThBIiwibmFtZSI6InN1cGVybW9kZWwgY2hpYyBkcmVzcyByZWQiLCJzdWJfdG90YWwiOjY1OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE0IiwidG9fZGF0ZSI6IjIwMTYtMDctMTYiLCJzZWN1cml0eV9kZXBvc2l0IjozMjksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MzI5fSwiY2FydF9jb3VudCI6MX0=	2016-07-19 09:57:17.694271-04
28djvk7blbpjsinqzsdxw1q98ymjmbhf	MjBlOTRlYTEwZWI4Zjc0NGM0Y2U4MzMxNDcxNDk2YmVjMmYyYzFmMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ3OTcuNTk5OTk5OTk5OTk5LCJteV9jYXJ0IjoiREIwMDgiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiREIwMDgiLCJuYW1lIjoiYmx1ZSBwaW5rIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjQ3OTcuNTk5OTk5OTk5OTk5LCJtcnAiOjE1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA5IiwidG9fZGF0ZSI6IjIwMTYtMDctMTYiLCJzZWN1cml0eV9kZXBvc2l0IjoyMzk4Ljc5OTk5OTk5OTk5OTcsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MjM5OC43OTk5OTk5OTk5OTk3fSwiY2FydF9jb3VudCI6MX0=	2016-07-19 16:42:09.538273-04
zg92r683lzeusacq9xyk9zvmnlnhgo5v	OTNmODQwODAyMWE5NjdjY2I1MzExMGEzMjJkNzJmOTY0NzZiNTA2ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDgyNywic3VtX3RvdGFsIjo0NTAwLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMjcsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjQ1MDAsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6NDUwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-07-06 12:24:46.336438-04
u95rgrgxufhzjkvhpn706c7unq20j2nv	ZDM3MTFkYWY2ZmRlZGZiODdkZWVjZDNmMmU0YmVlYzlkZDlkMzQ3Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyMiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjciLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-06 12:44:22.53032-04
dx786noplp3hroidld621lg5ajsiafp2	M2Q2Y2E4YTM1MWM2OGI1MDZkOTRiYjNiNGU5NGFiZmNiZDYwNGJkMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2MSwic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNjMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMTIiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNCIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 12:44:59.860583-04
82slj79pix5vga6w4dqxwhbpdcy0qh88	ZWNlYWQ1MmYwMDYzMTFiNTRmOThhMGYzYzQ5ZGFiODMxZDE4YjY1Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjIxNy43LCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUFJTMTA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE1MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MjA2Ny43LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yOSIsInJlbnQiOjEwMzMuODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTAzMy44NX0sImRpc2NvdW50IjowfQ==	2016-07-06 13:02:28.88937-04
k3bzzyblc0l2thyqbou0f53angfqclhk	OWQzNjI2YzE3ZTA0NWRmYTA4NzFjNmJlYTUzYzY1Y2FjNDYxMjk2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ1MDAsIm15X2NhcnQiOiJXRVBSUzEwNSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjo0NTAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0NTAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-09 10:56:33.147238-04
skocfxz5l24ecri1lp5z745qdav6yw49	M2I2YTJjNWE3Yzc2OGE1NWUyMzhhYzgzMWVhYzYzNmQzZjQ2M2RlNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY3MjAuMCwibXlfY2FydCI6Ik1FU0JQMDYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjY3MjAuMCwibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yNyIsInRvX2RhdGUiOiIyMDE2LTA3LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MzM2MC4wLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjMzNjAuMH0sImNhcnRfY291bnQiOjF9	2016-07-10 02:54:53.032365-04
2m5xrkbsbniwgzya1ckjdwfj2p1247wz	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-06 13:12:28.114192-04
dehpekwh8hv2wnkmfnw8ozhndgwgbumk	MmEzNjllOGY1M2MzYmQ4ZDE4OWVjOWYxMWZmZjU3MzJjNzNhMDEzNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTUVBU1AyMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMDIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AyMCIsIm5hbWUiOiJibGFjayBibGF6ZXIgMSIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTMwIiwidG9fZGF0ZSI6IjIwMTYtMDctMDIiLCJyZW50Ijo2OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5fSwiZGlzY291bnQiOjB9	2016-07-06 13:22:14.754965-04
nvxgbq2asam6c334xhr50197laj5fhrf	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-06 13:41:10.331582-04
rnnb4peiug1gf3qgjxsomgs47w7ozgwz	NGU5MGM0M2NiMTliZjJlY2U3MDZlY2I3MWY2MDljMmEyNTUzNzhjNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiTUVBTlAwOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo4NywiMSI6eyJza3UiOiJNRUFOUDA4IiwibmFtZSI6ImxpZ2h0IHBpbmsgc2hlcndhbmkiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yMyIsInRvX2RhdGUiOiIyMDE2LTA2LTI1Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjU5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 13:43:08.800081-04
zjblmmx1egneh2o8zt9r437qy8xl6pvg	NjVkMTczMWQ4NTU5ODAwMmQ2MTViZWY1MjcxODZkZGU2ZWM3YzdjZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiTVdBUjA5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEzMSwiMSI6eyJza3UiOiJNV0FSMDkiLCJuYW1lIjoibWF0dGUgZ3JleSBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6MTA5OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiVmlzaGFsIiwiaWQiOjk5LCJmYl9pZCI6IjEwMTU0MjA3NTk1MTk4MzQwIn19	2016-07-06 13:57:14.998714-04
rryevursueldyfm84l5gf6s528j0a3zm	ZjA3MjM2NmY0MjU1YWM5OWY5YjU0ZWIyNWVmZDVkY2UyZjRjZjZhNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVWS1AwNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoyOTAsIjEiOnsic2t1IjoiTUVWS1AwNSIsIm5hbWUiOiJvZmYgd2hpdGUgc2hlcndhbmkgZnVsbCBzZXQiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 14:01:55.538942-04
q4o4qexpyywb9c1wtuv8ahm4gbqke6sc	YWI3ZDE2Y2FkZmQyODQxZTExYmMwODgxMmNlZjUzYzQxZWZhMTM2NDp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IlZhaWJoYXYiLCJpZCI6MTAwLCJmYl9pZCI6IjEwMjYxNDkyNDQxMTc1MjYifX0=	2016-07-06 14:19:26.309472-04
ffk1p0hbfo1ws8gl4newrjt1stlbnkh3	ZjM4NmM5MGEzMmJiZTdkM2UxYWM5OGE2MmY4ZDgzN2Q5MGVmZjIzMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ3OTcuNTk5OTk5OTk5OTk5LCJteV9jYXJ0IjoiTUVOSVAxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNRU5JUDExIiwibmFtZSI6Im9mZiB3aGl0ZSBzaGVyd2FuaSBzZXQgMSIsInN1Yl90b3RhbCI6NDc5Ny41OTk5OTk5OTk5OTksIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMTYiLCJ0b19kYXRlIjoiMjAxNi0wOC0yMyIsInNlY3VyaXR5X2RlcG9zaXQiOjIzOTguNzk5OTk5OTk5OTk5Nywib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoyMzk4Ljc5OTk5OTk5OTk5OTd9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-06 14:37:36.028574-04
0r9vkgkmneepm5cff98namkk1xvmg0dm	ZWE1ZDNlMzY4MjBhMmFlMjI1MTBkOWY1YTkyMWM4MTY1MWM2NDk3Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2Mywic3VtX3RvdGFsIjo1MDAwLCJteV9jYXJ0IjoiREIwMDUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNjMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwMDUiLCJuYW1lIjoiYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjo1MDAwLCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50Ijo1MDAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-07-06 14:43:37.808681-04
1p8cm9p4nbojq5t3mq53r2juwzifrib5	YWVlMTc1ZjQ0ZjA1OWNjY2IzNWE5ZDI1NzdmYjQ1NmZlNjMxNjY4MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3MSwic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjczLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 14:46:12.926461-04
afxgorpzun8ubit70lw7ral1s5kebkje	ZTRjMzc4ZTczMGFmYjMyYmYzYmNmY2Y0OWExOGJhZGY3MTBjNmYwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTUVQUFAxOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMDIsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVQUFAxOCIsIm5hbWUiOiJyZWQgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjIiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNCIsInJlbnQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 14:54:33.826124-04
jzylf6p9pu3pd553s5glaptodp72j8hd	YmNkYzlkNzg1NjJmNjI1YTZkZmVlZDg4YWE1Y2FkZDAxZGY0ZWE1Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiTVdBUjA5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjEzMSwiMSI6eyJza3UiOiJNV0FSMDkiLCJuYW1lIjoibWF0dGUgZ3JleSBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6MTA5OTksImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 14:54:50.790963-04
ujrbsaxgu6ev8t87vdw2b2bmlomia2fn	YjVjZTc5YjMyOTRkNmQ5ZjcwYzk4YmY2NmFhMzg0MjVlNmQ5ZDJkYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEzOTgsIm15X2NhcnQiOiJNRUFTUDIwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQVNQMjAiLCJuYW1lIjoiYmxhY2sgYmxhemVyIDEiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6NzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xOCIsInRvX2RhdGUiOiIyMDE2LTA3LTIwIiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjY5OX0sImNhcnRfY291bnQiOjF9	2016-07-31 00:21:10.603161-04
iff8nkgc2sfl1gh87wc03dfesle78l9l	YTU2ZWI3NmMyYjdlNDI0ZGQwMGNjNmUxYzdlMTlhYjNmNzQ1NTJjZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0NDAsInN1bV90b3RhbCI6MTk5OTAsIm15X2NhcnQiOiJNRVRCUDE5Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTQ1MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRVRCUDE5IiwibmFtZSI6ImNyZWFtIHNoZXJ3YW5pIHdpdGggcmVkIGJhc2UiLCJzdWJfdG90YWwiOjEwMDAwLCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMDAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRVRCUDE5IiwibmFtZSI6ImNyZWFtIHNoZXJ3YW5pIHdpdGggcmVkIGJhc2UiLCJzdWJfdG90YWwiOjEwMDAwLCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMDAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9fQ==	2016-07-06 14:57:05.700214-04
tfx26topyi0ilxgp2eg2ymt30quoqqy2	ZDkxNjQzYzFjNzY0YTFkNDNjZDUwZmNmMjkxNmRiYzk0ZmE0OGY5MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiV1dDSzQ4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjg3LCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDYtMjUiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NTk5fSwiZGlzY291bnQiOjB9	2016-07-06 15:29:16.220953-04
qcw71jtxeya0s5vli78worxudzwkjgyz	Mzk5NmNjMDMyM2E2Mjc4ZTAyNDM4MTExMzE2OGJiZTM0ZGExMzZkZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTExNTQsInN1bV90b3RhbCI6MTA0MDAsIm15X2NhcnQiOiJKQTAzNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3NTQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiSkEwMzQiLCJuYW1lIjoibWFnZW50YSBnb3duIiwic3ViX3RvdGFsIjoxMDQwMCwibXJwIjo0MDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNiIsInRvX2RhdGUiOiIyMDE2LTA3LTE4IiwicmVudCI6NTIwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo1MjAwfSwiZGlzY291bnQiOjB9	2016-07-06 15:29:17.57276-04
qlhop95l0si739j3cqd4xokb5zrn9ym6	ZTFhYjRlNWU3OWExNDMxMjc0Njk3Y2QyOTJhZDE5NTk0MjJkMjY1NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiV1dDSzQ4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjg3LCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMzAiLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NTk5fSwiZGlzY291bnQiOjB9	2016-07-06 15:33:56.09328-04
3m46w1je667su8cydhx34pwvcl467wx0	YjRkMDgyZGFjZmQ2MmZlZTZmM2YwNjNhNDdhYmExOGQ2NTA4MWNjZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2MCwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiTUVKUlAwMUEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTYwLCIxIjp7InNrdSI6Ik1FSlJQMDFBIiwibmFtZSI6ImJyb3duIDMgcGllY2Ugc2hlcndhbmkiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6MTEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDMiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNSIsInNlY3VyaXR5X2RlcG9zaXQiOjExMDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTEwMH0sImRpc2NvdW50IjowfQ==	2016-07-06 15:35:11.815783-04
zld0kgj3d3esohfb3gndmyxwxbot9vrx	MjQyZWM3NmQ3YmQ0YjdhOTIxNTIzYWFhNTk4MmVjODI5YWQ3NDJmYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 17:19:08.716206-04
i2ze3cug597waidxqpc9gfn3tnca6io5	MzM2NDIwZTM2ZTQwZWJiMWIwNDM5NDljMjBlOTA1Mjk2OWViODIxZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQS1MxMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTMxLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wMyIsInRvX2RhdGUiOiIyMDE2LTA3LTA1Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-07-06 17:30:24.670541-04
f5z4t5h7tigwloskzw45bortd8w7013o	NjgxOGRiNzUxODZlYjIxNDNlZThjNDkzZmJlZmE1NDMyYzg2NTRhMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY0NSwic3VtX3RvdGFsIjozMzk4LCJteV9jYXJ0IjoiREIwMDYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjQ3LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDA2IiwibmFtZSI6ImJsYWNrIGJhbmQgZ2FsYSB3aXRoIGdyZXkgbGluaW5nIiwic3ViX3RvdGFsIjozMzk4LCJtcnAiOjEyMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMzAiLCJyZW50IjoxNjk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE2OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 18:11:47.888527-04
tur7rw5xwrj2hduvctt1slptyzhbfw5m	NzZjMWM2MTFiYTE4MWNhNzg0NTkwMGFhZWJmOTcxN2VjYjkwYWIyNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE1OTgsIm15X2NhcnQiOiJNV1NTMTUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTVdTUzE1IiwibmFtZSI6InJveWFsIGJsYWNrIGJsYXplciB3aXRoIGdyZXkgYm9yZGVyIiwic3ViX3RvdGFsIjoxNTk4LCJtcnAiOjE4NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI5IiwidG9fZGF0ZSI6IjIwMTYtMDctMDEiLCJzZWN1cml0eV9kZXBvc2l0Ijo3OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Nzk5fSwiY2FydF9jb3VudCI6MX0=	2016-07-06 19:27:49.240918-04
xwovzykc03jjm7zq5bsq5o01yep2qmsh	OTE0NjAxNjU3NzdhYThlNWRkMmUyMWEzMjc2Mjg0MjlkMWRhN2NhODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTcxNCwic3VtX3RvdGFsIjoxNTk4LCJteV9jYXJ0IjoiTVdTUzE1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjExNiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1NTMTUiLCJuYW1lIjoicm95YWwgYmxhY2sgYmxhemVyIHdpdGggZ3JleSBib3JkZXIiLCJzdWJfdG90YWwiOjE1OTgsIm1ycCI6MTg1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTQiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNiIsInJlbnQiOjc5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo3OTl9LCJkaXNjb3VudCI6MH0=	2016-07-06 19:29:56.743508-04
84h7tpzbmvb44wtlsxaxuqym9wsingho	NjRkMmViY2QzY2RhMDM1MzdmZGNhN2YxOTNmMmZjNTE5ODRkN2YzYjp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IkhlbWFudGgiLCJpZCI6MTAyLCJmYl9pZCI6IjEwMjkxMzMzMjM4MDg4MTMifX0=	2016-07-07 11:23:46.54161-04
iumye1cnix85tk56y6r9zd1d01g5rfmb	MTI1OThiYjA0ODI3YTY5OGU1NDhkZmUyMGU1OTIxN2NkMjZkYTZjZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTAyOS42LCJzdW1fdG90YWwiOjk1Ny41OTk5OTk5OTk5OTk5LCJteV9jYXJ0IjoiTVdNSzE5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjcyLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1XTUsxOSIsIm5hbWUiOiJiZWlnZSBicm9jYWRlIGJhbmRpIiwic3ViX3RvdGFsIjo5NTcuNTk5OTk5OTk5OTk5OSwibXJwIjoxNjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNSIsInRvX2RhdGUiOiIyMDE2LTA3LTIyIiwicmVudCI6NDc4Ljc5OTk5OTk5OTk5OTk1LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ3OC43OTk5OTk5OTk5OTk5NX0sImRpc2NvdW50IjowfQ==	2016-07-16 00:10:56.611266-04
myj7nxgrr3ak3q3fo683zqn56172plo7	NDBjN2FlZWU0MmFlN2RiNWQ3Zjk2MjNkYTc2MDg0MTdkNTNkNjVmMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjgzMi4wLCJzdW1fdG90YWwiOjI2NDAuMCwibXlfY2FydCI6Ik1FSlJQMDFBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE5MiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUpSUDAxQSIsIm5hbWUiOiJicm93biAzIHBpZWNlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoyNjQwLjAsIm1ycCI6MTEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjkiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNiIsInJlbnQiOjEzMjAuMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMzIwLjB9LCJkaXNjb3VudCI6MH0=	2016-07-06 23:30:42.226969-04
crt0e1f5ldnrprwa7nkd7wntiiiot2th	Y2NhYjRiMjNiNTdkZTllNTcyY2UxMjA1OWVmODk0NWNlZDIyMmQ2ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjA1Ny42LCJzdW1fdG90YWwiOjE5MTcuNiwibXlfY2FydCI6Ik1XU1MwMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxNDAsIjEiOnsic2t1IjoiTVdTUzAzIiwibmFtZSI6InJveWFsIGJsdWUgcGFydHkgd2VhciBiYW5kIGdhbGEiLCJzdWJfdG90YWwiOjE5MTcuNiwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yNSIsInRvX2RhdGUiOiIyMDE2LTA3LTAyIiwic2VjdXJpdHlfZGVwb3NpdCI6OTU4LjgsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6OTU4Ljh9LCJkaXNjb3VudCI6MH0=	2016-07-07 01:00:48.760299-04
hkexof5ivboz6w2jcsl3kzpis3k13rwi	MDMwYzg2MTE2OTFiY2NmNTdjYjc2NGE2NzhiODQ0MzdhMjY3MjNmYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1FUkdQMTdBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FUkdQMTdBIiwibmFtZSI6ImNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTIiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNCIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjozOTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-07 01:06:11.864761-04
vrdthiocu5hr3w2vdu147fxt0lc34anb	OWE4OTU2NWEwODI0ZTY0ZDEzOGYzZTZkNzZhNzlkY2NkYzZlNjhiMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEzOTgsIm15X2NhcnQiOiJNRUFTUDIwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQVNQMjAiLCJuYW1lIjoiYmxhY2sgYmxhemVyIDEiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6NzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yNyIsInRvX2RhdGUiOiIyMDE2LTA2LTI5Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjY5OX0sImNhcnRfY291bnQiOjF9	2016-07-07 01:30:20.259637-04
drrczbkc5gz94vvgh88bzsmbgoj7sh3d	NjQ1ZmUxMTVlNTA3MDAwNmExNTMzMmUxZDhjNTA4OWI3YmY3YjdjZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjMxNC42LCJzdW1fdG90YWwiOjIxNTcuNiwibXlfY2FydCI6IldFUFJTMTA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE1NywiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MjE1Ny42LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMTciLCJ0b19kYXRlIjoiMjAxNi0wOC0yNCIsInNlY3VyaXR5X2RlcG9zaXQiOjEwNzguOCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMDc4Ljh9LCJkaXNjb3VudCI6MH0=	2016-07-07 01:31:02.315449-04
99t2n4iyestc93o8eewobm3rlv03yxv9	Nzg3NDU5NDg0NzgzMzU0YmViNGRkYzM2ZjYyMWIzODA5YjI0M2FlMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkyOSwic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTMxLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-07 01:37:51.621966-04
zc7v18vvjd004njd865c7on9ojcij8zw	NDI1Y2FjMGIyYzBiMzUwNTc5YTBlNjEwMTBlNzU5OWEzZDc0YzY3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3NDAsIm15X2NhcnQiOiJDSzIwQSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJDSzIwQSIsIm5hbWUiOiJyZWQgbGFjZSBwYXJ0eSBnb3duIiwic3ViX3RvdGFsIjoxNzQwLCJtcnAiOjUxOTksImZyb21fZGF0ZSI6IjIwMTYtMDctMDEiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMyIsInNlY3VyaXR5X2RlcG9zaXQiOjg3MCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4NzB9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-07 02:10:39.916056-04
750m0o55wmp8hhk1cp6pkuuq98w6tz9r	YzQ3ZmE5YzA0MWJhMDFiOTcyZGZlZmVjODRlNTA3NjNjMTg0NjFmYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjc4OSwic3VtX3RvdGFsIjoyNjAwLCJteV9jYXJ0IjoiREIwMTEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTg5LCIxIjp7InNrdSI6IkRCMDExIiwibmFtZSI6ImJsdWUgYmxhemVyIiwic3ViX3RvdGFsIjoyNjAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjEzMDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTMwMH0sImRpc2NvdW50IjowfQ==	2016-07-07 03:06:39.51618-04
g8cyp6kh49qf8zwxmqfkbv6sbpucjhbk	ODI0NTQxZjgwZWNiZmZmMDBjOWEwYzgxNjk3MzkwOTljYjQxYjA1Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4NSwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiTUVBU1AxMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo4NywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFTUDEyIiwibmFtZSI6ImVtYmVsbGlzaGVkIHB1cnBsZSBzZXQiLCJzdWJfdG90YWwiOjExOTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xOSIsInRvX2RhdGUiOiIyMDE2LTA3LTIxIiwicmVudCI6NTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjU5OX0sImRpc2NvdW50IjowfQ==	2016-07-07 03:14:49.861858-04
mqw8dff8wkggld39xezi59x5p87kakxx	MmJiZWFlNTQ1ZjFjMWFkNjFmYzZmZmU5Mjk0MWIzMTM3NWFhZjA1ZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0Mywic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiTVdTUzA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE0NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1NTMDUiLCJuYW1lIjoicHJpbnRlZCBicm93bmlzaCBtYXJvb24gYmxhemVyIiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjEyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDctMTQiLCJyZW50Ijo5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6OTk5fSwiZGlzY291bnQiOjB9	2016-07-07 03:29:13.364047-04
ylkj5o2p54w44xfvdd99mw04e15kzaqr	NzY0ZTU5ODUyNzUyMTY3ZTg4MTM3NDExZjBkNzU5Y2FlNDI0ZTZkYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM2MSwic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNjMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMDkiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMSIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-07 03:46:16.102236-04
ny6qbvhvm5quxitp6zg0mkvjwxtcpf6h	OGNlNTQwMmNkMjY1NjQ1OTkzMjQ0OTNjODFhMjJjY2RlYWEwNGRjNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJXRVBLUzEwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXRVBLUzEwMiIsIm5hbWUiOiJCbGFjayBTaGlueSBCYW5kZ2FsYSBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjc1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjQiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNiIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-07 03:52:44.175512-04
c2p5h4i0ps9i31zscglkoydvui0x4tbi	ZTY0NjVjYzNjYjI1NjVlYzg5NTUzOGJmYzUxZTc1MGI3ZTc2NDAwYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyMiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjQsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTAxIiwidG9fZGF0ZSI6IjIwMTYtMDctMDMiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-07 04:13:15.264182-04
nzcizot67wptzuyc9rltfphqe9l3jwv1	YmRmM2MwOWUxYjU3YTJkY2Y2OTZmMmFlNmI4YmVlY2Y0NTcwOTRhMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjY4Miwic3VtX3RvdGFsIjoyNTAwLCJteV9jYXJ0IjoiTUVSR1AxNiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE4MiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRVJHUDE2IiwibmFtZSI6ImJsdWUgcGFydHkgYmF6ZXIiLCJzdWJfdG90YWwiOjI1MDAsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MjUwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-07-07 04:44:09.545353-04
vgrkqhjb5r8zsr9suqm9i6kunez7dff2	MmI0NGFlZDkzMWY5MzA2OGYxYzViMGJkMjljNDBiYjA5ZDEyODgxZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTE1Ny41OTk5OTk5OTk5OTksInN1bV90b3RhbCI6NDc5Ny41OTk5OTk5OTk5OTksIm15X2NhcnQiOiJNRUFTUDA3Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjM2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFTUDA3IiwibmFtZSI6ImVtYmVsbGlzaGVkIGNyZWFtIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0Nzk3LjU5OTk5OTk5OTk5OSwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wMiIsInRvX2RhdGUiOiIyMDE2LTA3LTA5IiwicmVudCI6MjM5OC43OTk5OTk5OTk5OTk3LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjIzOTguNzk5OTk5OTk5OTk5N30sImRpc2NvdW50IjowfQ==	2016-07-07 14:58:33.432585-04
oynezvcaj6qoaa1g5twrxklnpdu00dry	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-08 00:13:06.102705-04
0bio2dej7ufgsfy3k1oo4ycf8qnln13n	MjJmMGNiYjYxOWU2OTY5YzYyN2Q0OGIyY2RmYzg5NDNiNTZmYjk3Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiTVdBUjA5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEzNSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0FSMDkiLCJuYW1lIjoibWF0dGUgZ3JleSBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6MTA5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMDQiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiU2hydXRpIiwiaWQiOjExNSwiZmJfaWQiOiIxMDE1NDIxOTA4MTIyNzU3MCJ9fQ==	2016-07-16 06:00:11.082985-04
matfiglv5tfzqi0vbw1i3fvwxz6w0q6o	NmExMDIwYTQ4OTM1ODUzMjgzZWNmYjkxNzliZjA1NTE3NTFmNjk5ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AwNyIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1FQVNQMDciLCJuYW1lIjoiZW1iZWxsaXNoZWQgY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwMDAwLCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MTAwMDB9fQ==	2016-07-07 04:48:02.716778-04
pxu128eilniwkryaqk8rr7e6scshs2dl	ZmFhNmNkMGM5MDc1ZDBlOWE5YzgzNzIyZWE2NzFjNjFkYzIxMWMxMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XU1MxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1NTMTEiLCJuYW1lIjoiZ3JleSB3YWlzdGNvYXQiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo0NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDctMDciLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwiZGlzY291bnQiOjB9	2016-07-18 22:01:59.48746-04
ufx1x7ecbeoj681fku9oeoynu730hxay	ZjQ0YzY0NmRiM2U5NjRhMzgxMDhmNmQxOGUyYzI1Mzc4MGZhYmEyNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMCwic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTVdCQjA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEwMiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0JCMDYiLCJuYW1lIjoibXVzdCBoYXZlIGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MTM5OCwibXJwIjo2OTk1LCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI1IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjciLCJyZW50Ijo2OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5fSwiZGlzY291bnQiOjB9	2016-07-07 06:00:45.699697-04
at1dpepv27da0kljbv9pb07rm9kqu4tc	YjcwY2IyNDYxZDEwNWVmYzM1YTA3MmQyOTdhZTQzZmEzZWYxYzc4Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTIzNjMsInN1bV90b3RhbCI6MTE1MDAsIm15X2NhcnQiOiJEQjAxOSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjg2MywiY2FydF9jb3VudCI6MiwiMSI6eyJza3UiOiJEQjAxOSIsIm5hbWUiOiJicm93biBzaGVyd2FuaSIsInN1Yl90b3RhbCI6ODAwMCwibXJwIjoxNjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6ODAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRUFTUDIwIiwibmFtZSI6ImJsYWNrIGJsYXplciAxIiwic3ViX3RvdGFsIjozNTAwLCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjozNTAwfX0=	2016-07-09 03:45:04.133859-04
cgz4yc0hpjgaxenlx0a1341n4u7h1ybo	MmVkN2ZjYzJhYjUwZWZlMGM0MGQxYWVhMmRjYmIwZWEzMGFhOTc2Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU3OCwic3VtX3RvdGFsIjo3OTk4LCJteV9jYXJ0IjoiV0VZU1AxOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1ODAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0VZU1AxOCIsIm5hbWUiOiJncmVlbiBsb25nIHRvcCBsZWhlbmdhIiwic3ViX3RvdGFsIjo3OTk4LCJtcnAiOjM1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDYtMzAiLCJyZW50IjozOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OTl9LCJkaXNjb3VudCI6MH0=	2016-07-07 07:36:25.842345-04
gf4dzx7zsf9g1yc5ntj12tj78rhfy5w0	YmM2ZWNiNmQ5MWRmZWIxYTFjYjE3N2E2YmFlODY2MTdhODcyY2Q2ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTM1LCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjUiLCJ0b19kYXRlIjoiMjAxNi0wNi0yNyIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-09 09:38:44.620471-04
cd8wesikcc0zju1l6p943y49nqth7rc9	MzI3YjViMWI3MDkwNDBiYjIyMmFkNTNjZjNiYjE1YTNmMTQ2M2MyZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVOSVAxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyOTAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVOSVAxMSIsIm5hbWUiOiJvZmYgd2hpdGUgc2hlcndhbmkgc2V0IDEiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjciLCJ0b19kYXRlIjoiMjAxNi0wNi0yOSIsInJlbnQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-07-07 08:59:07.877436-04
vnge0cpd9qgm8s1m0jia1n8qae9u37v4	NGY5OTE1OWRlY2NlNzRmNGNlMzc4N2JkMDE1ZmUyOWU0YjU4MGI0YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc1MDAsIm15X2NhcnQiOiJNRVBQUDE4Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVQUFAxOCIsIm5hbWUiOiJyZWQgc2hlcndhbmkiLCJzdWJfdG90YWwiOjc1MDAsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo3NTAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-07 11:10:29.469965-04
hjxdjrq59deuhgx2uzsuq1vnz9e4xzrj	OWI0YTU0NGFiNWM0ZWFkYmViNmI5OGVlODQ5YzdhMzMwOGRkYWZkOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXV0NLNDYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dDSzQ2IiwibmFtZSI6ImZsb3JhbCBjcm9wIHRvcCBza2lydCIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjQ1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDYiLCJ0b19kYXRlIjoiMjAxNi0wNy0wOCIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-07-19 06:40:32.801579-04
1z1rzec2wjxt054omyjo3m04h3btmuda	ZmQwNGM0NWY1M2Y1MjBiZTUyZmE1ODAxODY5MTVhZDg5MWI3NTQ2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCJpZHMiOjIxOSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjgiLCJyZW50Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODk5fSwiZGlzY291bnQiOjB9	2016-07-10 12:13:31.40346-04
906v5x8ys1mdinfmakdug9jltkzwg2zg	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-30 09:21:17.409646-04
6i1f2apvydut800w362097r6sjui9x3s	NWYxMzFlZTAxMDUwZWIxZjIzZWZjODRlZDNiN2RlNGY3ZTY5YTNiODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjc1LCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNi0zMCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-07-10 03:42:39.887639-04
dff824xeffjz5hphszd22mpb786kc0kt	ZGJlNGEzMzM5ZTQyMzQyNDM1OTJkYTQzZTZhOWQzMzhiNjBkMTJhMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTY3NSwic3VtX3RvdGFsIjo5MDAwLCJteV9jYXJ0IjoiTUVBS1AxMCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjY3NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFLUDEwIiwibmFtZSI6ImJsYWNrIHN1aXQgd2l0aCBzaGlueSBsYXBlbCIsInN1Yl90b3RhbCI6OTAwMCwibXJwIjoxODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6OTAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-07-10 14:14:49.258884-04
f30nopefmkjlbgglh4jl480edl0jk5wq	MTUxODI5OTBiZWZmY2UxYjhlN2E2ZTEyOGUxZWVjODk3MmVhNGVlMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3OCwic3VtX3RvdGFsIjoyMzk4LCJteV9jYXJ0IjoiREIwMjUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTgwLCIxIjp7InNrdSI6IkRCMDI1IiwibmFtZSI6ImVtYnJvaWRlcmVkIGdyZWVuIHNhcmVlIiwic3ViX3RvdGFsIjoyMzk4LCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTAiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMiIsInNlY3VyaXR5X2RlcG9zaXQiOjExOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTE5OX0sImRpc2NvdW50IjowfQ==	2016-07-23 14:53:12.481934-04
i348317p6zvv180idvo8gl531huomik5	MjVkMzAyNjAyZTcwYzcwZmU4NjZiZmZhMTNmMmFiYzVmYTMzNzNjODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM3Mywic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiV0VTSTQzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjM3NSwiMSI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInNlY3VyaXR5X2RlcG9zaXQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-11 02:34:29.966662-04
xcte45phzfntdv6ltd24u8x4lsg0ifny	NTZhNjdjOGNhMGUxOTRjZmIzNDE0MWNmMDMwODc2NjU1ZjEzNzRhYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyNiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEzIiwidG9fZGF0ZSI6IjIwMTYtMDctMTUiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-24 06:08:40.792488-04
vtu4oztmtno4e7ju32t0a71nf8etdmqr	N2UyNGY3NDUzZTU4OGVjNzU1NTQxNzlmNjc5MzdjYzRkZjc2MWYwZjp7InVzZXIiOnsiZmlyc3RfbmFtZSI6IkRlZXBhayIsImlkIjoxMDcsImZiX2lkIjoiMTMwMTk0MTgzOTgzNDg4NSJ9fQ==	2016-07-11 09:05:08.83055-04
7wb7dmbemj87nw0e432rd445798ijgpq	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-19 04:17:04.901142-04
m9ce0xnr0yp186262ru1u4sj2o4hms67	ZDRkNTk3ZTQ1NzI5NjJhMDY3ZGQ3MDEzMzkxYzIwNTQwNTcwOWE0Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3NTAsInN1bV90b3RhbCI6MTAwMDAsIm15X2NhcnQiOiJNRUFTUDA3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzUwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FQVNQMDciLCJuYW1lIjoiZW1iZWxsaXNoZWQgY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwMDAwLCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxMDAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-07-11 10:16:21.98891-04
plvkn72cuk0h98uek9ypgeqoifb9c48g	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-19 14:40:06.557319-04
3vk65goitqff3dp7cbl9jloiubjiu5gm	OTUwYTEzNjY0MzM3Y2NmOTAxNmU5ZTZlYzk1ZDJhYmVhYjVhOWQ1Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIyMywic3VtX3RvdGFsIjoyOTk4LCJteV9jYXJ0IjoiTUVSQ1AyMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyMjUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVSQ1AyMyIsIm5hbWUiOiIzIHBpZWNlIGJyb3duIHN1aXQiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDgiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMCIsInJlbnQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-19 22:23:33.849899-04
5vfl67nssxbipdqnvrymzz76ijmsukdq	OGZiNWIyY2Y3NzNjM2Q5NjExYmI0ZmUxNjk4NTZhOTYwYzQyNDU1Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY1Mywic3VtX3RvdGFsIjozMzk4LCJteV9jYXJ0IjoiV0lLVTA1QiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNTUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0lLVTA1QiIsIm5hbWUiOiJwaW5rIHNlcXVpbm5lZCBnb3duIDEiLCJzdWJfdG90YWwiOjMzOTgsIm1ycCI6MTQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDYiLCJ0b19kYXRlIjoiMjAxNi0wNy0wOCIsInJlbnQiOjE2OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTY5OX0sImRpc2NvdW50IjowfQ==	2016-07-20 02:50:26.235299-04
87tko8vqqqcvl93cvjsru9whegugguj2	YTFhNmM4MWFlNTE3NmViNzhiMzhlYWJkYTE5MWVkNDM2YTc1YTUxOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ5OTgsIm15X2NhcnQiOiJXRVNJNDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDctMzAiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI0OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-20 12:53:11.390724-04
ro4aqhtemwkjkn8dluw2xhj1bqs9kdzx	NWIyOTZmM2JjNjM2NzFjYjQzOTRiZDVjYzljMmRiZWVhNzQzMDg1ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQzOTgsIm15X2NhcnQiOiJEQjAxMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJEQjAxMCIsIm5hbWUiOiJibHVlIGJsYXplciB3aXRoIGJsYWNrIGxhcGVsIiwic3ViX3RvdGFsIjo0Mzk4LCJtcnAiOjE3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA3IiwidG9fZGF0ZSI6IjIwMTYtMDctMDkiLCJzZWN1cml0eV9kZXBvc2l0IjoyMTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjIxOTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-21 01:14:04.336858-04
1s0j8huwiw8yshmfstirt61sekmzs32k	N2IwZGUzZGNlNDk2N2M1YWRjODE1MTIwYWE4MjU5NzNmNzZjMjAwODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1FUkdQMTdBIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjYwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkdQMTdBIiwibmFtZSI6ImNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjM1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDgiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMCIsInJlbnQiOjM5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozOTl9LCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRVJHUDE3QSIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjc5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDctMTAiLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fX0=	2016-07-21 11:47:15.418977-04
51tqjg2296s05ulokb9h1q474d7umff4	YWY3MzFjODkwMmFiNzBlNjJlYzQxM2FjMDYxODE1MjkyNDBjZWY0Yzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVMxNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0FTMTQiLCJuYW1lIjoic3RyaXBlZCBzaGVhdGggZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDctMDYiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-07-17 12:52:41.326253-04
9ig2m0hr4dm109x756hpbahvywoqzcxx	N2VkNTc3YmQ1OTVjMTAxYmI0ZGQ1NmQ3MzRiODMwNTZhYzhkMDBlNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDk3Mywic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNzUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMTAiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMiIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50Ijo0MDAsIjIiOnsic2t1IjoiTVdTUzAzIiwibmFtZSI6InJveWFsIGJsdWUgcGFydHkgd2VhciBiYW5kIGdhbGEiLCJzdWJfdG90YWwiOjE1OTgsIm1ycCI6MTQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInJlbnQiOjc5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo3OTl9fQ==	2016-07-22 11:54:55.413174-04
quz574i7usu9f5wc1hb4dec6afwntwrn	Y2ZmMjdjOTE1MWYzZDBjNWU3MjVjNDNjNmJiMGI0ZGUxOTRiMzU5ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjk2NC43LCJzdW1fdG90YWwiOjI3NTcuNywibXlfY2FydCI6IkRCMDI1QSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyMDcsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIwMjVBIiwibmFtZSI6ImVtYnJvaWRlcmVkIGdyZWVuIHNhcmVlIiwic3ViX3RvdGFsIjoyNzU3LjcsIm1ycCI6NzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wNCIsInRvX2RhdGUiOiIyMDE2LTA4LTA5IiwicmVudCI6MTM3OC44NSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMzc4Ljg1fSwiZGlzY291bnQiOjB9	2016-07-31 14:13:58.666784-04
5spm8hl2wlpu8kov305wcdtceg4a4czo	ZDA2YTVhODEzMTM3NzQ4NWIzODRkNzI1ZDNhYWVhNGJjNDY4YjA3Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjc1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDYiLCJ0b19kYXRlIjoiMjAxNi0wNy0wOCIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-07-19 07:37:28.083607-04
7wx6dafgjlq9v3v46ei0lfav6h0p7svd	ODRmMDY3OGE2MTcwMDgwMjdkNTg3ODU4YzcwOGQ4MzAzYjNjNTAzNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjA0Mywic3VtX3RvdGFsIjoxOTAwLCJteV9jYXJ0IjoiTVdBUjEwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE0MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0FSMTAiLCJuYW1lIjoiZ3JleSBmdWxsIHN1aXQgd2l0aCBibGFjayBsaW5pbmciLCJzdWJfdG90YWwiOjE5MDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjgiLCJ0b19kYXRlIjoiMjAxNi0wNy0zMCIsInJlbnQiOjk1MCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo5NTB9LCJkaXNjb3VudCI6MH0=	2016-07-19 13:18:55.667226-04
r3a2rhpnw0z6qdvjtdn42pyl9fzy0rlr	MTQ2ODM1YWZmN2MyMmQ1YzY0OWQxYjllZDE3YTZjYzBhY2MxZWYwZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVMxNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0FTMTQiLCJuYW1lIjoic3RyaXBlZCBzaGVhdGggZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEwIiwidG9fZGF0ZSI6IjIwMTYtMDctMTIiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-07-19 23:08:39.762122-04
tynpti5focmeml3ahkce83cswx3nudv7	MDg5ZWUwNjdmZmYyMzkzZjJiZmFmZWU0YTViZjM1YzFlNDZjMjZlNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTM1LCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTEiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMyIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-20 03:09:05.816113-04
6n7w10pwrvdo3umoar97xc9ubnlky58g	ZTYyMGNjNWRjYzZlY2NhZjg4NDFiM2UwNTVhNzkzYzUyN2IzNzBiZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1MiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0NLNTIiLCJuYW1lIjoicGluayBzaGltbWVyIGRyZXNzIiwic3ViX3RvdGFsIjozOTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMiIsInRvX2RhdGUiOiIyMDE2LTA3LTE0IiwicmVudCI6MTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OX0sImRpc2NvdW50IjowfQ==	2016-07-20 15:08:23.760197-04
c2l813wg3p94d1pkpqj0po5smalh6o8m	NDM1NzVjZDliM2E2NWIwMTA4YjZkZDk2NWQ3ZTA1NmE0ZjkzMjZjYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg2OCwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiV0VSU1AxNUIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjcwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUlNQMTVCIiwibmFtZSI6InJlZCBjcmVhbSBlbWJyb2lkZXJlZCBsZWhlbmdhIiwic3ViX3RvdGFsIjozNTk4LCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI5IiwidG9fZGF0ZSI6IjIwMTYtMDctMzEiLCJyZW50IjoxNzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE3OTl9LCJkaXNjb3VudCI6MH0=	2016-07-21 04:54:40.188528-04
3v23gmkpnov3hn00oi7vd4n1gdwgnr17	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-21 05:41:39.233174-04
m2uays6hqtfum8o4r1bd8s8xyvtn2ins	OGM2NjM1ZDIwOTU1NzU0NDAyZGZmZjZjYmE2MTNjMGFmMzE2NGM0ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI0NjYsInN1bV90b3RhbCI6MTE1OTYsIm15X2NhcnQiOiJXRUFTUDI0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjg3MCwiMSI6eyJza3UiOiJXRUFTUDI0IiwibmFtZSI6ImNyZWFtaXNoIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjc1OTgsIm1ycCI6MzgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjAiLCJ0b19kYXRlIjoiMjAxNi0wNy0yMiIsInNlY3VyaXR5X2RlcG9zaXQiOjM3OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mzc5OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1FVEJQMTkiLCJuYW1lIjoiY3JlYW0gc2hlcndhbmkgd2l0aCByZWQgYmFzZSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xOCIsInRvX2RhdGUiOiIyMDE2LTA3LTIwIiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fX0=	2016-07-21 13:24:49.567278-04
6bsrdysgtjejijbt2o1eex7r8vevv73m	MzMzNzFhMmIxNzZkMWIzN2QyMjU4NTFhZGI4MTMzMmNjZDhkZDEzMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJNV1BSUzIwMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV1BSUzIwMSIsIm5hbWUiOiJibGFjayBzaGlueSBsYXBlbCBzdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDkiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMSIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJTdW1hbnRoIiwiaWQiOjEyNywiZmJfaWQiOiIxMDE1MzgxMDUwNDQwNzM5OSJ9fQ==	2016-07-22 02:14:39.918124-04
tark3bfy9su9ujlbf8skue55gjhmulfq	OTE3ZDIyZGQ3ZDM2NTk4Zjc4MmNkNDg3YWFkZTI0OTdmMGJlYzg5Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAyMCwic3VtX3RvdGFsIjo1NjAwLCJteV9jYXJ0IjoiTUVTQlAwNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0MjAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU2MDAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDktMDIiLCJ0b19kYXRlIjoiMjAxNi0wOS0wNCIsInJlbnQiOjI4MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjgwMH0sImRpc2NvdW50IjowfQ==	2016-07-22 08:40:33.104487-04
epborzjliij564dfrk8d3b7jbvav1fh1	YjVhNjhmNmJmOWEzMDdlNGE5OThjZWMxNWY1YWU3ZjYxM2Q1YmU2OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM1OTcuNiwibXlfY2FydCI6IldFUEpTMTAzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUEpTMTAzIiwibmFtZSI6IkJsdWUgQmFuZGdhbGEgU3VpdCIsInN1Yl90b3RhbCI6MzU5Ny42LCJtcnAiOjE1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDctMTEiLCJzZWN1cml0eV9kZXBvc2l0IjoxNzk4LjgsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTc5OC44fSwiY2FydF9jb3VudCI6MX0=	2016-07-11 12:10:21.239622-04
lfkby5httubex27oocpwhihy80trq3q0	MzFmNGU1YzgwZTFjYTg0MTRiZmI0ZTUwNWJkMmYxMmUxY2RkMTE5Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjA0Mywic3VtX3RvdGFsIjoxOTAwLCJteV9jYXJ0IjoiTVdBUjEwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE0MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0FSMTAiLCJuYW1lIjoiZ3JleSBmdWxsIHN1aXQgd2l0aCBibGFjayBsaW5pbmciLCJzdWJfdG90YWwiOjE5MDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInJlbnQiOjk1MCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo5NTB9LCJkaXNjb3VudCI6MH0=	2016-07-30 10:33:13.947793-04
heycwxzq3key5nrptzxo3tjqwgtt4vrz	NzlhZGMzYjQ1NGE0ZjNlOTc3YmU3ZTU3ZDZmNjgwYTdjNzY5MTJiYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjcwNzgsInN1bV90b3RhbCI6MjUxODgsIm15X2NhcnQiOiJNRVBLUzIwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6NiwidGF4IjoxODkwLCIxIjp7InNrdSI6Ik1FUEtTMjAyIiwibmFtZSI6ImNyZWFtIGluZG93ZXN0ZXJuIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCJkaXNjb3VudCI6MCwiMyI6eyJza3UiOiJNRVBBUjIwMyIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSB3aXRoIHN0b25lIHdvcmsiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjciLCJ0b19kYXRlIjoiMjAxNi0wNi0yOSIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ5OX0sIjIiOnsic2t1IjoiTUVQSlMyMDEiLCJuYW1lIjoiY3JlYW0gaG9uZXljb21iIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo4OTk4LCJtcnAiOjUwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJzZWN1cml0eV9kZXBvc2l0Ijo0NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ0OTl9LCI1Ijp7InNrdSI6Ik1FUEFSMjA1IiwibmFtZSI6Im1hcm9vbiBpbmRvd2VzdGVybiBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MjM5OCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yNyIsInRvX2RhdGUiOiIyMDE2LTA2LTI5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTE5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMTk5fSwiNCI6eyJza3UiOiJNRVBSQTIwNCIsIm5hbWUiOiJjcmVhbSB3ZWRkaW5nIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDYtMjkiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI0OTl9LCI2Ijp7InNrdSI6Ik1XUFJTMjAxIiwibmFtZSI6ImJsYWNrIHNoaW55IGxhcGVsIHN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0yNyIsInRvX2RhdGUiOiIyMDE2LTA2LTI5IiwicmVudCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OX19	2016-07-11 12:30:17.030371-04
1paq3rfhmiq4h4b724s34lwjeyge31u6	ZGM0YmYzMGE4NjNlMTcwYzEzYjcxYzRjNTg1NDRmZjU4MDU2N2Q2YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU4MCwic3VtX3RvdGFsIjoyNDAwLCJteV9jYXJ0IjoiV0VQS1AxMDEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTgwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUEtQMTAxIiwibmFtZSI6Ik1hbnlhdmFyIEJlaWdlIEphY2tldCBTaGVyd2FuaSIsInN1Yl90b3RhbCI6MjQwMCwibXJwIjoxMjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0yMSIsInRvX2RhdGUiOiIyMDE2LTA4LTIzIiwicmVudCI6MTIwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMjAwfSwiZGlzY291bnQiOjB9	2016-07-11 13:03:11.327464-04
p06th3327gds0gp4le329rvw3kxvz1op	YzEzNzNhYzU1ZmI5NmQ5ODJhNWVkYzVmNDEwOWFmZDJlMmRlOTdlYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjc1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjkiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMSIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9LCJkaXNjb3VudCI6MH0=	2016-07-11 14:16:01.645222-04
xvz9ynd6j9tlg207udgp0uij9ckpmx3u	M2E0NmM3MjRiYTllZTcwYzgxMzNhN2M3MThiOWY1ZTkzNmYzOGIxMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNi0zMCIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-11 14:29:42.729996-04
jbw15pi76rb2q20swv0zlytwtr176sde	OTJjNTMzNDU0MTljOTIxZjUwNDc1MDllNzIzMmI1NGRjMjA5ODc0ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjMxOS42LCJzdW1fdG90YWwiOjIxNTcuNiwibXlfY2FydCI6IldFUEtTMTAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE2MiwiMSI6eyJza3UiOiJXRVBLUzEwMiIsIm5hbWUiOiJCbGFjayBTaGlueSBCYW5kZ2FsYSBTdWl0Iiwic3ViX3RvdGFsIjoyMTU3LjYsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wNSIsInRvX2RhdGUiOiIyMDE2LTA3LTEyIiwic2VjdXJpdHlfZGVwb3NpdCI6MTA3OC44LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjEwNzguOH0sImRpc2NvdW50IjowfQ==	2016-07-11 16:48:49.634812-04
28laq9zm625ke3b41culc7kagdj23w9g	YjA5NjhmOTljZDc3MTc4YTNjNTVkZGI4MTRkYzM1YTQ5MjcwZDVkNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzc2Mywic3VtX3RvdGFsIjozNTAwLCJteV9jYXJ0IjoiTUVBU1AyMCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjI2MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFTUDIwIiwibmFtZSI6ImJsYWNrIGJsYXplciAxIiwic3ViX3RvdGFsIjozNTAwLCJtcnAiOjcwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjM1MDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-07-12 05:00:28.154097-04
29ecnxv8aib9sunf0im7qq59550l5k5n	ZDMwMGJkOWVhMmNiZGRmODFlNjI5ZDU0YzA0MDI4MDUwZjA0NzRjZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ1MDAsIm15X2NhcnQiOiJEQjAxMSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMDExIiwibmFtZSI6ImJsdWUgYmxhemVyIiwic3ViX3RvdGFsIjo0NTAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0NTAwfSwiY2FydF9jb3VudCI6MX0=	2016-07-12 05:05:33.98251-04
giuh95o8wrrruyktzaslnco3azzd5bb0	ZGFjMDc2MTcyMTgxZDQ2MmVmMWNlOWE0Mzc4MjQxNzg3MzAzNjI0Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjAyMCwic3VtX3RvdGFsIjo1NjAwLCJteV9jYXJ0IjoiV1dPWTU2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQyMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRVNCUDA2IiwibmFtZSI6ImJyb3duaXNoIGNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6NTYwMCwibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0zMCIsInRvX2RhdGUiOiIyMDE2LTA3LTAyIiwicmVudCI6MjgwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyODAwfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU2MDAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMiIsInJlbnQiOjI4MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjgwMH19	2016-07-12 06:59:18.784463-04
odhpnu266xok5pga541i54vl5gqpgeah	MWQzNmM2NGM5OTlmYzczYzNhZWFiNjdmNTJlOTAwYjM4NjUwYWFlYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEyNTAsIm15X2NhcnQiOiJEQjA3MyIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMDczIiwibmFtZSI6IndoaXRlIHNlcXVpbm5lZCBkcmVzcyIsInN1Yl90b3RhbCI6MTI1MCwibXJwIjoyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MTI1MH0sImNhcnRfY291bnQiOjF9	2016-07-12 14:34:45.286655-04
yskya4fxnxvybhtmna5sn0pdl2yoq90e	ZTQxMWE4OWY4NTAxOGQzY2IxZGU2MWQzZTlhN2E3OWNmZWZhNjAyZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjoxMTk5OCwibXlfY2FydCI6IkRCMDE5Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjIsInRheCI6MzAwLCIyIjp7InNrdSI6IkRCMDE5IiwibmFtZSI6ImJyb3duIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo4MDAwLCJtcnAiOjE2MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6ODAwMH0sIjEiOnsic2t1IjoiREIwMTkiLCJuYW1lIjoiYnJvd24gc2hlcndhbmkiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MTYwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMjkiLCJ0b19kYXRlIjoiMjAxNi0wNy0wMSIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-07-12 19:02:30.566818-04
ptxadeqsv34u1pf68f7dcg4ldvwud1bm	MDE2NTljZTUzYzhlOWRlMTcwYjA0MTY2YmVlMjM1OTNjNWE3MDhkOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0OCwic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiTVdTUzA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE1MCwiMSI6eyJza3UiOiJNV1NTMDUiLCJuYW1lIjoicHJpbnRlZCBicm93bmlzaCBtYXJvb24gYmxhemVyIiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjEyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEwIiwidG9fZGF0ZSI6IjIwMTYtMDctMTIiLCJzZWN1cml0eV9kZXBvc2l0Ijo5OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6OTk5fSwiZGlzY291bnQiOjB9	2016-07-13 01:18:36.941708-04
yjz5nf0e9jzns25mopemnlq7hkg0qrsd	YzJmMGNhMDNiYzAwMDQyNWY0ZWQ5NTNjMDFmM2Y5N2ZiZDI3Mzc2Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTc3Mywic3VtX3RvdGFsIjoxNjQ5LCJteV9jYXJ0IjoiQ0swNyIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEyNCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJDSzA3IiwibmFtZSI6InN1cGVybW9kZWwgY2hpYyBkcmVzcyBibGFjayIsInN1Yl90b3RhbCI6MTY0OSwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxNjQ5LCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-07-19 08:13:29.887236-04
6ichpgb5xgky8gsybsse9ag98d9u2hrb	Y2YxN2Q2ZDE1YmNjNGVjYTc1MzY4YWU1NDJhZmM4NDlhN2JmY2Y4NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-07-13 03:16:02.522274-04
7p3w3x0gdbqk1x6es734xgefbiisw4zs	NGNjODc2ODMyZGE2MWRkYTAzMjk0MWU5NjFhYjFiMjY1OTMwM2RkYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyOCwic3VtX3RvdGFsIjoxNzAwLCJteV9jYXJ0IjoiV0VOR1AxMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxMjgsIjEiOnsic2t1IjoiV0VOR1AxMyIsIm5hbWUiOiJ3aGl0ZSByZWQgbGVoZW5nYSIsInN1Yl90b3RhbCI6MTcwMCwibXJwIjo4NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTAxIiwidG9fZGF0ZSI6IjIwMTYtMDctMDMiLCJzZWN1cml0eV9kZXBvc2l0Ijo4NTAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODUwfSwiZGlzY291bnQiOjB9	2016-07-13 03:43:34.498196-04
dpnxtmsb8gv4068zflby1hbbtx78miiw	YzExMDIwNTNlYzZjZTQwNWQwYzkyMzg0Y2ViZTM4ODNhZGZjNTNkODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwNTAsInN1bV90b3RhbCI6MTQwMDAsIm15X2NhcnQiOiJNRVNCUDA2Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTA1MCwiY2FydF9jb3VudCI6MSwiaWRzIjoyMjEsIjEiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjE0MDAwLCJtcnAiOjI4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50IjoxNDAwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-07-13 05:00:53.748467-04
7p360emiyungvv6h7lz6bpm4tt1xumm6	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-13 05:49:25.926447-04
pt3whncttou7ih3cob67b3k4ah0cn8oy	OWY5YmZkOWYzNTU1MWFlOTViZjkzMTgzMDJhMzkwMmNjYzM5ZTZhNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1NSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0NLNTUiLCJuYW1lIjoiYmxhY2sgc2hvcnQganVtcHN1aXQiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTMwIiwidG9fZGF0ZSI6IjIwMTYtMDctMDIiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fSwiZGlzY291bnQiOjB9	2016-07-13 06:58:15.370328-04
muzwj9qoiaq5yvr254f3ycbjlna6hdlb	NjA2OTJlM2RkMGQzMmFjNGYxNGNiY2NjMWJjNmYxYTU2ZjkzNDkyNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyNiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTMwIiwidG9fZGF0ZSI6IjIwMTYtMDctMDIiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-13 07:16:08.435339-04
2z6akocj0k31ey9o1oqaqb74230nkf3i	NWM4ZWZkMjFlNzM1NjE5MmZjODQyZjk5MjY4MzA5ODQxZWFmYjdhZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzYwOS42LCJzdW1fdG90YWwiOjMzNTcuNiwibXlfY2FydCI6IkNLNjBEIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjI1MiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJDSzYwRCIsIm5hbWUiOiJzZWEgZ3JlZW4gcHJpbmNlc3MgZ293biIsInN1Yl90b3RhbCI6MzM1Ny42LCJtcnAiOjEwOTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIwIiwidG9fZGF0ZSI6IjIwMTYtMDctMjciLCJyZW50IjoxNjc4LjgsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTY3OC44fSwiZGlzY291bnQiOjB9	2016-07-13 09:14:30.565516-04
o57r9cwit4opv8154oslubo6qiu25ovt	NDZmMDkzNTY0Y2M1OGYyZjRiZGZhNDYxYTgxYjlmMTY1NTM2ZTQ0OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQzLCJzdW1fdG90YWwiOjU5OCwibXlfY2FydCI6IldXQ0s1NyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0NLNTciLCJuYW1lIjoiYmx1ZSBjcm9wIHRvcCBza2lydCAxIiwic3ViX3RvdGFsIjo1OTgsIm1ycCI6Mzg5MCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wMSIsInRvX2RhdGUiOiIyMDE2LTA3LTAzIiwicmVudCI6Mjk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjI5OX0sImRpc2NvdW50IjowfQ==	2016-07-13 10:12:20.980632-04
i5l2vxkvua5i3yd5kw6cv55dles2tihp	NDQ4ZTczODRkMTA2NjI4Nzk0MmNhYzZhZjdmZGMwMzA1MmJkN2UwMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3Ny42LCJzdW1fdG90YWwiOjIzOTcuNiwibXlfY2FydCI6Ik1XU1MwNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxODAsImlkcyI6MjIzLCIxIjp7InNrdSI6Ik1XU1MwNSIsIm5hbWUiOiJwcmludGVkIGJyb3duaXNoIG1hcm9vbiBibGF6ZXIiLCJzdWJfdG90YWwiOjIzOTcuNiwibXJwIjoxMjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wMSIsInRvX2RhdGUiOiIyMDE2LTA3LTA4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTE5OC44LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjExOTguOH0sImRpc2NvdW50IjowfQ==	2016-07-13 10:39:02.034005-04
761cbgv303dmtqvipcl95hgsh6vdu4e4	ODAyZDhkM2RhNGU2ZjMwNDFmMTdmNmM3NGI3ZjU0ZmYyZGI1NTcxMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjgwNDcuNywibXlfY2FydCI6IkRCMDY5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMDY5IiwibmFtZSI6InZlbHZldHkgYmx1ZSBsZWhlbmdhIiwic3ViX3RvdGFsIjo4MDQ3LjcsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDMiLCJ0b19kYXRlIjoiMjAxNi0wOC0wOCIsInNlY3VyaXR5X2RlcG9zaXQiOjQwMjMuODUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NDAyMy44NX0sImNhcnRfY291bnQiOjF9	2016-07-13 13:52:23.907922-04
dbbw35hms4srr53y5fxcys1q4wapsozi	NmViOTc1Yzg2MTgxMmU1MDRlZWI5ZTM0YTY4Zjc1NmQ1M2U5Y2M3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiSkEwNDMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MzAwLCIxIjp7InNrdSI6IkpBMDQzIiwibmFtZSI6Im11Z2hsYWkgYXF1YSBibHVlIHN1aXQiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6OTk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yMiIsInRvX2RhdGUiOiIyMDE2LTA3LTI0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-07-13 14:17:16.459148-04
s4n0pbzmxdfsvv1tjassdbpqqpl9skqc	MWQ0MDMzM2I1MzIyOTM4YTE5MDQ5Mjg0ZWZhM2Q3ZDRhYWVlMmY0Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTYxMjUsInN1bV90b3RhbCI6MTUwMDAsIm15X2NhcnQiOiJNRVJDUDIzIiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTEyNSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRVJDUDIzIiwibmFtZSI6IjMgcGllY2UgYnJvd24gc3VpdCIsInN1Yl90b3RhbCI6MTUwMDAsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjE1MDAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-07-13 17:07:42.599308-04
ycksi41s701zypn8pxraxw1zuv0hbxal	Mjg2MDVkYjFkYjFlZTEwMmU5ZjRhMDVjYTJhMDdhNjZiYzUwZDU1YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzU0Niwic3VtX3RvdGFsIjozMjk4LCJteV9jYXJ0IjoiREIwMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MjQ4LCIxIjp7InNrdSI6IkRCMDA1IiwibmFtZSI6ImJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MzI5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wNSIsInRvX2RhdGUiOiIyMDE2LTA3LTA3Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTY0OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxNjQ5fSwiZGlzY291bnQiOjB9	2016-07-18 10:09:30.509258-04
9035mq7npjnv5gxi0ry0ot53dpog45h6	ODY2NmUzZjFhMTEwZTU3NzI1MjQwMWQyMTM3MjM5Y2ZlMGRiNjdiNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzExNiwic3VtX3RvdGFsIjoyODk4LCJteV9jYXJ0IjoiREIxOTkiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjE4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTMxIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDIiLCJyZW50IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0NDl9LCJkaXNjb3VudCI6MH0=	2016-08-08 05:42:04.956623-04
2rkf8adrsb58wypaa0ii4axtczx8u8uy	NzVjMzE0ZDIyOTQ2NDBhMzM1N2ViZjgwYzk0YWE1ZjIyMDhiZWU0YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDcyODkuNzk5OTk5OTk5OTk2LCJzdW1fdG90YWwiOjQzOTg5Ljc5OTk5OTk5OTk5NiwibXlfY2FydCI6Ik1FQVNQMDciLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MzMwMCwiMSI6eyJza3UiOiJNRVBKUzIwMSIsIm5hbWUiOiJjcmVhbSBob25leWNvbWIgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwNzk3LjYsIm1ycCI6NTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNyIsInNlY3VyaXR5X2RlcG9zaXQiOjUzOTguOCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo1Mzk4Ljh9LCJkaXNjb3VudCI6MCwiMyI6eyJza3UiOiJNRVBKUzIwMSIsIm5hbWUiOiJjcmVhbSBob25leWNvbWIgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwNzk3LjYsIm1ycCI6NTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNyIsInNlY3VyaXR5X2RlcG9zaXQiOjUzOTguOCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo1Mzk4Ljh9LCIyIjp7InNrdSI6Ik1FUEpTMjAxIiwibmFtZSI6ImNyZWFtIGhvbmV5Y29tYiBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTA3OTcuNiwibXJwIjo1MDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNi0zMCIsInRvX2RhdGUiOiIyMDE2LTA3LTA3Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTM5OC44LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjUzOTguOH0sIjUiOnsic2t1IjoiTUVQSlMyMDEiLCJuYW1lIjoiY3JlYW0gaG9uZXljb21iIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxMDc5Ny42LCJtcnAiOjUwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA2LTMwIiwidG9fZGF0ZSI6IjIwMTYtMDctMDciLCJzZWN1cml0eV9kZXBvc2l0Ijo1Mzk4LjgsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NTM5OC44fSwiNCI6eyJza3UiOiJNRVBKUzIwMSIsIm5hbWUiOiJjcmVhbSBob25leWNvbWIgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEwNzk3LjYsIm1ycCI6NTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDYtMzAiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNyIsInNlY3VyaXR5X2RlcG9zaXQiOjUzOTguOCwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo1Mzk4Ljh9fQ==	2016-07-13 17:31:24.544362-04
te6ohf9vnafgjyq5q9775wdluvtdd0pm	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-13 17:48:39.501146-04
jd4h4ld6nec2cljwsujzltev21yhp62a	NDk5NTNmMTc4Y2JmNmVhZDY4N2IyMDRjY2E3MTBhMzNkNzY5M2E4ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM3NSwic3VtX3RvdGFsIjo1MDAwLCJteV9jYXJ0IjoiTVdBUjIwIiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6Mzc1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1XQVIyMCIsIm5hbWUiOiJzaGlueSBibGFjayBmdWxsIHN1aXQiLCJzdWJfdG90YWwiOjUwMDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjUwMDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-07-14 01:22:38.486235-04
msrsh6en311vpjib2z43oxlzfkogs52g	MThkZjJiNjg0M2ZmZDRkOGZiZTY1MTEzY2I2YmUwODUyNTMyOTM4NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM3Mywic3VtX3RvdGFsIjo0OTk4LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNzUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMDciLCJ0b19kYXRlIjoiMjAxNi0wNy0wOSIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-14 02:37:55.29074-04
2z6yfwlnpi6fgh69nerpjso6ki13pddf	Nzg1NjUxYmY4ODYzOTNiZTdhMDYwMjE2YTI3MWRkM2VhMDQ5NGJhMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzExNiwic3VtX3RvdGFsIjoyODk4LCJteV9jYXJ0IjoiREIyMDEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjE4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMjAxIiwibmFtZSI6InZlbHZldHkgYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTA4IiwidG9fZGF0ZSI6IjIwMTYtMDctMTAiLCJyZW50IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0NDl9LCJkaXNjb3VudCI6MH0=	2016-07-14 03:04:47.752573-04
wlaibixrxwk9giy9dr73caw660rhqsnp	YTEyM2E1OWFhYjZiZWJjMWQyZjQ4MTMzNTIzODVmZDUwZGJiNTRkNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3NTAsInN1bV90b3RhbCI6MTAwMDAsIm15X2NhcnQiOiJNRVRCUDE5Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NzUwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FVEJQMTkiLCJuYW1lIjoiY3JlYW0gc2hlcndhbmkgd2l0aCByZWQgYmFzZSIsInN1Yl90b3RhbCI6MTAwMDAsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjEwMDAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-07-14 04:13:11.133937-04
iv1vnmzfv074ukiu6bcy45y6hbuuguqk	MmIzYzRjNDZiZTdhYWNlOWExN2U3NDkwOWFkNjkyZjZlODBiMGQwZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDQiLCJ0b19kYXRlIjoiMjAxNi0wNy0wNiIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-14 05:34:29.226439-04
rh5xk36gukxa3i3lfwisoi882zww2b5j	MjA2MmUyODIwNWYwMWEyMzBiNzQ3ZjJhNzM4YzNlYmRmMGE3ZGE5OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-07-14 06:30:45.489314-04
poqusj6cbppyfwbcx401m0z0b79r0tgs	OTExMDViYjg3OTk5OGQ4OWUzZjkxN2U4MTk0MjZhYjhiNGI3NGNiNzp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6Ik1FQVNQMjIiLCJuYW1lIjoiZGFyayByZWQgc2hlcndhbmkgMSIsInN1Yl90b3RhbCI6OTAwMCwibXJwIjoxODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjkwMDB9LCJzdW1fdG90YWwiOjIxNDk5LCJteV9jYXJ0IjoiTUVCS1AwMiIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6Ik1FQktQMDIiLCJuYW1lIjoidmVsdmV0eSBibHVlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxMjQ5OSwibXJwIjoyNDk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjEyNDk5fSwidXNlciI6eyJmaXJzdF9uYW1lIjoiVmVlcmFuamFuZXl1bHUiLCJpZCI6MTEyLCJmYl9pZCI6IjEwMjA5Njk0MjkxNjEyNTI2In19	2016-07-15 02:33:19.379223-04
isn8tdnaw4osrxazq0rdmu5y7luo00s3	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-17 13:47:29.153574-04
360d8lewndjgmqrrsd43cdbf07swz6iz	NmVjMDBlYjQ0OGM2ZWQ1NmVjNmQzN2Y4OWExODUyN2RkYmY4Y2EzYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM4OTgsIm15X2NhcnQiOiJXRU5BUDEwNUMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiV0VOQVAxMDVDIiwibmFtZSI6IkRlc2lnbmVyIE11bHRpY29sb3IgU2FyZWUiLCJzdWJfdG90YWwiOjM4OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMjAiLCJ0b19kYXRlIjoiMjAxNi0wOC0yMiIsInNlY3VyaXR5X2RlcG9zaXQiOjEzOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MjQ5OX0sImNhcnRfY291bnQiOjF9	2016-07-18 14:58:24.233133-04
bta7qinrjhz2n9znrkotdqek35n20ktj	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-15 03:16:32.466891-04
71kl23wvqf7fclw5swx3rho7otf48ggh	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-22 08:50:53.885078-04
duklzbcg69mnxbu9mev5kq19uj6sy055	Mzc2ZmI3NDI5ZDYzMjZiNDQzNjliNjQzMWU1NTZmYTlkZjMxN2UxOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVUQlAxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjozMDAsImlkcyI6MjM1LCIxIjp7InNrdSI6Ik1FVEJQMTkiLCJuYW1lIjoiY3JlYW0gc2hlcndhbmkgd2l0aCByZWQgYmFzZSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wNyIsInRvX2RhdGUiOiIyMDE2LTA3LTA5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-07-19 04:54:59.35893-04
jz55i212b4qnh6cvbe4zgofps6f6lump	Njc4MzQ1NmNlZTE3YWY1ZjUxMmM5MWU0N2Y1ODViOThjMWMxN2UzNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2NSwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiTUVKUlAwMUEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTY1LCIxIjp7InNrdSI6Ik1FSlJQMDFBIiwibmFtZSI6ImJyb3duIDMgcGllY2Ugc2hlcndhbmkiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6MTEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTAiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMiIsInNlY3VyaXR5X2RlcG9zaXQiOjExMDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTEwMH0sImRpc2NvdW50IjowfQ==	2016-07-26 02:33:41.153599-04
2oywswvwc8skeu34liwb3axaw9yzwfb1	MzA5YjE5ZTM1OTMzMzAxNzc3N2IxNzhmYmU1YTUzZWUwNWU5MWZlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQVI0M0EiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NjAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dBUjQzQSIsIm5hbWUiOiJibGFjayBmb3JtYWwgYmxhemVyIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wNyIsInRvX2RhdGUiOiIyMDE2LTA3LTA5IiwicmVudCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OX0sImRpc2NvdW50IjowfQ==	2016-07-19 09:24:01.586043-04
txefi672u39rdqrodmhw80ybhzyn5in0	YzhjOWFkMGM0NjQ4ZjI4OWNkNWQ0Y2ZhZWYzN2NjYmZiNzc5YjcwMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg2OCwic3VtX3RvdGFsIjozNTk4LCJteV9jYXJ0IjoiTUVBS1AwOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNzAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBS1AwOSIsIm5hbWUiOiJibHVlIHNoaW55IHN1aXQgd2l0aCBibGFjayBsaW5pbmciLCJzdWJfdG90YWwiOjM1OTgsIm1ycCI6MTgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDkiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMSIsInJlbnQiOjE3OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTc5OX0sImRpc2NvdW50IjowfQ==	2016-07-19 15:00:43.109897-04
x06yhlqfiwwivnzwpipsual7l6djs88q	MjkwZmVlZmFmOGRkMWQ4YzRhNGY0YTVjMWYyMGRiNTQ2NTBmMzY2NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OTgsIm15X2NhcnQiOiJEQjA0NSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJEQjA0NSIsIm5hbWUiOiJncmV5IDMgcGllY2Ugc3VpdCIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wOCIsInRvX2RhdGUiOiIyMDE2LTA4LTEwIiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-08 08:08:18.339034-04
zd4zgsq31rgbramn66bvm0eipg3hbczv	MDhhYTQwMTkwNmYzY2JkYTNkMTBlYmIzOGJlNGEyNTBmMjRmMGZiNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVMxNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0FTMTQiLCJuYW1lIjoic3RyaXBlZCBzaGVhdGggZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEwIiwidG9fZGF0ZSI6IjIwMTYtMDctMTIiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fSwiZGlzY291bnQiOjB9	2016-07-19 23:09:07.143582-04
54jsoshxot4gl66ux1d6bny02ej2lsol	YjcxZGU4MWIyNDA2MGIxNmNjZDU2YjYzZjAyYTgwNGE5ZjMxNWNlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI1MjcuNywibXlfY2FydCI6Ik1LTVRYMDNBMDAzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1LTVRYMDNBMDAzIiwibmFtZSI6Im5vdGNoZWQgbGFwZWwgdHV4ZWRvIiwic3ViX3RvdGFsIjoyNTI3LjcsIm1ycCI6MjEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDciLCJ0b19kYXRlIjoiMjAxNi0wNy0xMiIsInNlY3VyaXR5X2RlcG9zaXQiOjEyNjMuODUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTI2My44NX0sImNhcnRfY291bnQiOjF9	2016-07-20 06:56:16.337339-04
60zsg6r5tyhcctrtmw253twcq0hmljfg	Y2U3NWY3MTMxNDJhOWM3YjFmYzZlNWVhMTMyYjRhMzBkMWQ2MGIxNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XTUsxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV01LMTkiLCJuYW1lIjoiYmVpZ2UgYnJvY2FkZSBiYW5kaSIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjE2NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDciLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwiZGlzY291bnQiOjB9	2016-08-08 23:12:35.601075-04
9sqq2irqpdvtaflm5f6f48ylejth3tfe	MTc0ZTJlMWVkZWQ0OGMzNTY2ZTE4MDA5NzdiMTk2MWQ4YTgzMjhhNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0OCwic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiV0lLVTA3QiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxNTAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0lLVTA3QiIsIm5hbWUiOiJnb2xkIHNlcXVpbm5lZCBibHVlIGFuYXJrYWxpIiwic3ViX3RvdGFsIjoxOTk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMDgiLCJ0b19kYXRlIjoiMjAxNi0wNy0xMCIsInJlbnQiOjk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo5OTl9LCJkaXNjb3VudCI6MCwidXNlciI6eyJmaXJzdF9uYW1lIjoiTWFuaXNoYSIsImlkIjoxMjQsImZiX2lkIjoiMTI2OTE0NTI0OTc3NjI1NSJ9fQ==	2016-07-20 15:36:42.560632-04
cmnj2lnsshe8zu7u75y0qg2m6atzo73o	ODNlZDhmMzUyNzQ0MmI4NjljNzc0NDkwN2QwOWMyZTNlZjA4NDc0MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzcwNi43LCJzdW1fdG90YWwiOjM0NDcuNywibXlfY2FydCI6IldFWFhQMjUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MjU5LCIxIjp7InNrdSI6IldFWFhQMjUiLCJuYW1lIjoicGluayBlbWJlbGxpc2hlZCBsZWhlbmdhIDEiLCJzdWJfdG90YWwiOjM0NDcuNywibXJwIjoxNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wOCIsInRvX2RhdGUiOiIyMDE2LTA3LTEzIiwic2VjdXJpdHlfZGVwb3NpdCI6MTcyMy44NSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxNzIzLjg1fSwiZGlzY291bnQiOjB9	2016-07-21 13:48:23.156417-04
niesx9i59xqtj9dd8lhqr51gu6ai7g12	NzdmMTE2NGVlYzJlMGUzODZkM2E5ODgyYzRkMWQ0ZjdiZTY0MzYzYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzAzNi43LCJzdW1fdG90YWwiOjY1NDUuNywibXlfY2FydCI6Ik1FQktQMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NDkxLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6Ik1FQktQMDIiLCJuYW1lIjoidmVsdmV0eSBibHVlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo1NzQ3LjcsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMjIiLCJ0b19kYXRlIjoiMjAxNi0wNy0yNyIsInJlbnQiOjI4NzMuODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mjg3My44NX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1XTUsxOSIsIm5hbWUiOiJiZWlnZSBicm9jYWRlIGJhbmRpIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6MTY1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjIiLCJ0b19kYXRlIjoiMjAxNi0wNy0yNCIsInJlbnQiOjM5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozOTl9fQ==	2016-07-22 01:44:11.527384-04
x7r6uc6fmoqd0az8l1vksgzcdfz9qmaf	ZjhjN2M0YjdmYWJhYzI1ZWE2ZWEzOTU2NWE1ZjdjZDdiYTY1YTRlZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjUwMDAsIm15X2NhcnQiOiJEQjIwMSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMjAxIiwibmFtZSI6InZlbHZldHkgYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjo1MDAwLCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6NTAwMH0sImNhcnRfY291bnQiOjF9	2016-08-08 09:11:46.63542-04
dv8rzzgu1hlvt4tw3r7invqyavseer52	MTdkYzkwYTY0ODI5NzEzYzEzMTZjNzlmODg1ZjE0ZjVjNTZiM2M0Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDgiLCJ0b19kYXRlIjoiMjAxNi0wOC0xMCIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-08-08 13:47:21.232877-04
vjegef6jcj6ybtiinzmkanmekzzubbaz	MjVlZTM4ZjUyZDZiNmNiMjA3NWQzNjk1MWJhYTY3M2JlYzYzNWViMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdBUjA5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowfQ==	2016-07-22 13:19:44.11544-04
0mvkbllsk1hmi43b3kvg0d2yod0h0ue3	ZDRjMTliY2RmYTAyOWQwOGJmOTliODNiMzY0MWY0ZDZlOGYxMWQ0NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XQVIyNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo2MCwiMSI6eyJza3UiOiJNV0FSMjUiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gd2Fpc3Rjb2F0Iiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NjAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wOSIsInRvX2RhdGUiOiIyMDE2LTA3LTExIiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjM5OX0sImRpc2NvdW50IjowfQ==	2016-07-22 05:07:16.79443-04
x451w7z4x0vizmfi8vwf2trz92el022x	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-24 00:32:40.168532-04
ythj0gzw386n7vqpgzq9g6ssw0qi1rus	YmZkMmEzYWIyNTEwOGE2MjNkYmFjYTUwMzMyMWMyNzEzMDE2NjlkYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVBU1AwNyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMSIsInRvX2RhdGUiOiIyMDE2LTA3LTEzIiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-07-25 06:55:07.307566-04
rz7609tr8eykim8jmibs5o159i2he9fl	MDE4MzlkMTZlNDcxNWFlZWM1ZGJkOTE4YjgxM2YzYmMxNTA4NjU2OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6Ik5FVzAxIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik5FVzAxIiwibmFtZSI6ImZ1bmt5IHNrYXRlciBkcmVzcyIsInN1Yl90b3RhbCI6Mzk4LCJtcnAiOjI5MDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTIiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNCIsInJlbnQiOjE5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTl9LCJkaXNjb3VudCI6MH0=	2016-07-25 13:06:18.923462-04
4scebzrmc0xeagrclfqguj626rc8p18s	Mjk4M2E3ZGIxZjM4Y2ViMzQxNjI4MTc4NmQxYmE3MzZmYzIxOWQxMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVBDUzEwNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo3NSwiMSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMyIsInRvX2RhdGUiOiIyMDE2LTA3LTE1Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-26 03:46:30.358756-04
aipvks1advit0edtawuylt9w3ma4o1jm	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-26 08:28:40.552749-04
joinv168f2dbth6x3e4z0d4k16nffl6f	MzUxYmI3MjU1N2JlOWRiZjBkZDk3ZTliYjliODY4M2I5OGNhMWI4Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjY5OSwibXlfY2FydCI6IldXTFEwMSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldXTFEwMSIsIm5hbWUiOiJrbm90dGVkIGJhY2sgc2thdGVyIGRyZXNzIiwic3ViX3RvdGFsIjo2OTksIm1ycCI6MjE1MCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4Iiwic2VjdXJpdHlfZGVwb3NpdCI6MCwib3JkZXJfdHlwZSI6ImJ1eSIsInJlbnQiOjY5OX0sImNhcnRfY291bnQiOjF9	2016-07-27 07:02:15.138226-04
xdqmxw7exo9a33fhizs4n0s2d9zbqi8b	NTNlYTVmZjU4ZTVkMWUwZTQxOGU1NzUwMjVmMDhiM2QyNjNlNDMyNzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVBDUzEwNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0yNiIsInRvX2RhdGUiOiIyMDE2LTA4LTI4IiwicmVudCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-07-27 12:36:55.515372-04
mwzufg9ft4okvc84r4y0hmzbphyjxwnk	N2Q0MmMxZjAwMWRmYWJlNjU0YzY5ZDgzM2QyZjBjYmFlODBhODljMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4OCwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiV1dDSzQ4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjkwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE1IiwidG9fZGF0ZSI6IjIwMTYtMDctMTciLCJyZW50Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5fSwiZGlzY291bnQiOjB9	2016-07-27 16:35:14.072185-04
am7bc5enyjf6j67lwfgilsvl0gsz0shu	NzZkMzc3ZTU3YjZjMjQxNWIzMWM1NmM5NzRkZjRmYmE3MmFmZWEzZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI4OTgsIm15X2NhcnQiOiJEQjIwMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJEQjIwMSIsIm5hbWUiOiJ2ZWx2ZXR5IGJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6Mjg5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOS0wOCIsInRvX2RhdGUiOiIyMDE2LTA5LTEwIiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ0OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxNDQ5fSwiY2FydF9jb3VudCI6MX0=	2016-07-28 01:34:30.448217-04
sr7s95y2w356ui1cf40u6pn3ndtmpki6	N2Q0MmMxZjAwMWRmYWJlNjU0YzY5ZDgzM2QyZjBjYmFlODBhODljMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4OCwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiV1dDSzQ4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjkwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE1IiwidG9fZGF0ZSI6IjIwMTYtMDctMTciLCJyZW50Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5fSwiZGlzY291bnQiOjB9	2016-07-28 11:20:31.177308-04
xgm417b11thf6wafzj8nwtf5fl75ztj0	ZDZiNGYzMjViNTZkNzZjOGVjZWMxYTZhNzgzNjFhNGJiZDJmNmEyMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI4LCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVMxNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0FTMTQiLCJuYW1lIjoic3RyaXBlZCBzaGVhdGggZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE5IiwidG9fZGF0ZSI6IjIwMTYtMDctMjEiLCJyZW50IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5fSwiZGlzY291bnQiOjB9	2016-07-28 12:09:43.717246-04
duqafv6vnx6tq8sdj9jjwywlstuzt0j3	M2RiZGYwZWZiZjM5MDdiZmFmODlhYWNjZjE4ODc3NTUyYTIwMTAwZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2NSwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiTUVKUlAwMUEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTY1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FSlJQMDFBIiwibmFtZSI6ImJyb3duIDMgcGllY2Ugc2hlcndhbmkiLCJzdWJfdG90YWwiOjIyMDAsIm1ycCI6MTEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTkiLCJ0b19kYXRlIjoiMjAxNi0wNy0yMSIsInJlbnQiOjExMDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTEwMH0sImRpc2NvdW50IjowfQ==	2016-07-31 06:19:59.848594-04
6npgd990g2q9zbhf5igd3cgogqmtbzsb	Y2Q5MGExYjliZmIxNDY0OWM2YTRlZWIwNDM5ZGM2Yzg0OGMzMDY4YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzU0Niwic3VtX3RvdGFsIjozMjk4LCJteV9jYXJ0IjoiREIwMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjQ4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDA1IiwibmFtZSI6ImJsYWNrIGJsYXplciIsInN1Yl90b3RhbCI6MzI5OCwibXJwIjoxMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0wOSIsInRvX2RhdGUiOiIyMDE2LTA3LTExIiwicmVudCI6MTY0OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNjQ5fSwiZGlzY291bnQiOjB9	2016-07-23 01:53:26.321478-04
jo5xwp3q6qqex3xilfm8i8mb4l66zcq7	MWM1ODdkNzQ2Njg2YjJlMjAyZDViY2ZlZWMzYmFhOTA2Mzk1ZWJjODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdKTTI0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1XSk0yNCIsIm5hbWUiOiJncmV5IGZvcm1hbCBibGF6ZXIiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo2OTk5LCJmcm9tX2RhdGUiOiIyMDE2LTA4LTIxIiwidG9fZGF0ZSI6IjIwMTYtMDgtMjMiLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fX0=	2016-08-06 23:48:08.874417-04
ciw53qlv3924mygk5be5iy4w36iibgeg	YmY2ZThjZmE0NmVmZGJlNmU0NmVmZWZkZGQyYjc3NGIwNjdiYThjYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s0OSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0NLNDkiLCJuYW1lIjoic3RyaXBlZCBsb25nIGRyZXNzIiwic3ViX3RvdGFsIjozOTgsIm1ycCI6MzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNSIsInRvX2RhdGUiOiIyMDE2LTA3LTE3Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE5OX0sImNhcnRfY291bnQiOjF9	2016-07-22 07:48:43.53164-04
qp5ko3s624tn2rmky9gk9c959xn9meeu	YTM5NjY3MTE2ODQ2NGRjOTFmNTliNjFhOWM2MjhlYWY0NjEyOTZkZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQVI0M0EiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NjAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV1dBUjQzQSIsIm5hbWUiOiJibGFjayBmb3JtYWwgYmxhemVyIiwic3ViX3RvdGFsIjo3OTgsIm1ycCI6NDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xMiIsInRvX2RhdGUiOiIyMDE2LTA3LTE0IiwicmVudCI6Mzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjM5OX0sImRpc2NvdW50IjowfQ==	2016-07-24 04:44:36.365905-04
3v6m8232mp3e9498gva0d1847cw5pigc	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-24 07:37:49.665591-04
hfx8u627eo9v0ulsif9w0eks3096o1bw	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-25 08:18:13.578923-04
0jf5y8tfto7hwxck4dlriu3u8kh69qya	NGRmZDA5N2JkNWIyMjRkYTMyNzBhZWI0NmVkMjczMjg0NWE3MDE2MTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI1MDAsIm15X2NhcnQiOiJNRUFOUDA4Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVBTlAwOCIsIm5hbWUiOiJsaWdodCBwaW5rIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoyNTAwLCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjoyNTAwfSwiY2FydF9jb3VudCI6MX0=	2016-08-08 14:31:05.036835-04
18yk97mtlzuti2fdmzdh06rbp8d6pg8y	MzY2ZDY0MzZhNGZhMWEwODZiZTQ1NWFkMjZkN2MwMDdkMGU0ODRkNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdTUzA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowfQ==	2016-07-25 20:45:46.041521-04
pkdbhvw0ji0qsc9shdfiptl8ecykwxig	NTBhYTllODY3OWMxNjAxNjE1M2RmOTVkNTcwZjQxMDYzMTg5Y2I2NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY1Mywic3VtX3RvdGFsIjozMzk4LCJteV9jYXJ0IjoiV0lLVTA1QSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyNTUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0lLVTA1QSIsIm5hbWUiOiJwaW5rIHNlcXVpbm5lZCBnb3duIiwic3ViX3RvdGFsIjozMzk4LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI2IiwidG9fZGF0ZSI6IjIwMTYtMDctMjgiLCJyZW50IjoxNjk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE2OTl9LCJkaXNjb3VudCI6MH0=	2016-08-09 02:17:34.648215-04
7c0a00goh33ktavslzrag5goyg1cidtk	NTAwMTAxYzlkNjZlZmQ2MzE4NWJhNDVlM2MwZmMxNDBjZmJlOTdjNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjIyMy43LCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUFJTMTA1Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE1NiwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MjA2Ny43LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjciLCJ0b19kYXRlIjoiMjAxNi0wOC0wMSIsInJlbnQiOjEwMzMuODUsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTAzMy44NX0sImRpc2NvdW50IjowfQ==	2016-08-09 04:48:10.603427-04
x30khr72fdnxj4q54moftdatf44o0qwj	NWQ1MzA2Mzg5N2M5OWRmNWZkNGVhMDhmNDI3OTg1YmQwNDA5YjY0NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjUwMDAsIm15X2NhcnQiOiJEQjE5OSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjo1MDAwLCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6NTAwMH0sImNhcnRfY291bnQiOjF9	2016-07-27 04:41:04.587275-04
f8kghepr66wm2zaseb5op8pg0wjiuh60	ZDljMGJjNGNlMmQzNWVmNzJhOTU4YzE4ZWJjYmI4ZTY0MjAwYWJkNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzAxMCwic3VtX3RvdGFsIjoyODAwLCJteV9jYXJ0IjoiTUVEUlAxNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoyMTAsIjEiOnsic2t1IjoiTUVEUlAxNSIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSAxIiwic3ViX3RvdGFsIjoyODAwLCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDctMTgiLCJzZWN1cml0eV9kZXBvc2l0IjoxNDAwLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE0MDB9LCJkaXNjb3VudCI6MH0=	2016-07-27 09:35:35.282297-04
2ypoe5ewy1rsb6k7u4pkod5ckg8dcpgj	MWQxOTBiZDI0MGQyNjU0ODBmNjcxMmNjMzc2Yzk1ZmQyZjY5NzBkMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjkwMDAsIm15X2NhcnQiOiJNRUFTUDIyIiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVBU1AyMiIsIm5hbWUiOiJkYXJrIHJlZCBzaGVyd2FuaSAxIiwic3ViX3RvdGFsIjo5MDAwLCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6OTAwMH0sImNhcnRfY291bnQiOjF9	2016-07-28 05:29:09.365647-04
vpfulr0airjsbm3wm5u5ym4mf81ja2z7	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-28 10:49:17.166949-04
w63mckf18h9o2h1vx7cal20m0jfks3pq	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-28 11:28:45.872508-04
w5pcjl6lpvsc7655qtt65xjdsbeju1ns	Y2YxN2Q2ZDE1YmNjNGVjYTc1MzY4YWU1NDJhZmM4NDlhN2JmY2Y4NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-07-29 00:45:00.611817-04
y40fj0wgsrzfibjfi4pfr277jvsxs9ky	YjRhOGM2MzNjNzg0MjQ3MDQxNjk4NGY2ZmU3YzRjZGIxNThmY2JlMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjE0OCwic3VtX3RvdGFsIjoxOTk4LCJteV9jYXJ0IjoiREIwNTMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTUwLCIxIjp7InNrdSI6IkRCMDUzIiwibmFtZSI6InBhaW50ZWQgZW52eSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTk5OCwibXJwIjo3MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDctMTgiLCJzZWN1cml0eV9kZXBvc2l0Ijo5OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6OTk5fSwiZGlzY291bnQiOjB9	2016-07-29 10:12:33.264078-04
v0370fskbf8u67gsnw66cca1mtc412tp	MTVjYWRlNDQ2Zjg3YWI3MjA2YzdlYTBmMTNiYjAyNWYyOWZkOTM0ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjE3OS43LCJzdW1fdG90YWwiOjU3NDcuNywibXlfY2FydCI6Ik1FQktQMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6NDMyLCIxIjp7InNrdSI6Ik1FQktQMDIiLCJuYW1lIjoidmVsdmV0eSBibHVlIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo1NzQ3LjcsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDktMDEiLCJ0b19kYXRlIjoiMjAxNi0wOS0wNiIsInNlY3VyaXR5X2RlcG9zaXQiOjI4NzMuODUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mjg3My44NX0sImRpc2NvdW50IjowfQ==	2016-07-31 06:20:38.628783-04
owyhny3889uyq2eoo5ny2okc55otankk	M2Q1YjkzMjM1OWYyMTJjYjc1NzJkZjYwNWFhZmYwNmNlZDk4Y2NlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1NSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0NLNTUiLCJuYW1lIjoiYmxhY2sgc2hvcnQganVtcHN1aXQiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDctMjUiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-01 07:55:48.875708-04
2varwf9090dt52lbc7dq7ys7mcaxli21	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-22 04:46:42.408221-04
7cner8ewkqko71outy7q9b6fuftsn7b7	ZDYwZjNmNTQxMTBkNWU0YjQyODU0ZWQwY2IxMTM0YWY1ZTdlMzFjYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUyNSwic3VtX3RvdGFsIjo3MDAwLCJteV9jYXJ0IjoiV0VBRFAxOSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjUyNSwiY2FydF9jb3VudCI6MSwiaWRzIjoyNDQsIjEiOnsic2t1IjoiV0VBRFAxOSIsIm5hbWUiOiJibGFjayBhbmFya2FsaSAxIiwic3ViX3RvdGFsIjo3MDAwLCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50Ijo3MDAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH0sImRpc2NvdW50IjowfQ==	2016-07-22 10:09:54.240056-04
cblulj75m4otz1g7nc92igkzxj4nvqkw	ODg2MDRlY2Y1YjdiZjEwNTE0ZjQ4YWZmZGY4MWM4OTgxNTM0MmRkZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDMwMCwic3VtX3RvdGFsIjo0MDAwLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjMwMCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFTUDMwIiwibmFtZSI6ImJsYWNrIHNoaW55IHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0MDAwLCJtcnAiOjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjQwMDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-07-23 10:21:56.630032-04
eiv0g4d1id3dy2jerb0879mzaghp8n5m	NDBmZjhjMzcyMTg2NDdiODNjNjU2Y2RjNzliMGFjMjViM2ExMzlkYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6IldXQVI0MiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXV0FSNDIiLCJuYW1lIjoiZGFyayBibHVlIGZvcm1hbCBibGF6ZXIiLCJzdWJfdG90YWwiOjc5OCwibXJwIjo0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTEyIiwidG9fZGF0ZSI6IjIwMTYtMDctMTQiLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwiZGlzY291bnQiOjB9	2016-07-24 04:49:37.442733-04
yexxr4wpiyangj7yuuz5gbjqdd1vz5rz	MWI0YzI2NjhkMDU0MjdlMzI0MmUzOGI2OWIyYWJlZDViNTdkZTQ3Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XTUsxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV01LMTkiLCJuYW1lIjoiYmVpZ2UgYnJvY2FkZSBiYW5kaSIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjE2NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDYiLCJyZW50IjozOTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6Mzk5fSwiZGlzY291bnQiOjB9	2016-07-24 13:13:37.569734-04
mesgy48h58iii5dnvdmep0ayc9dbd631	Y2VkMDM2OWVhY2JlMTNkY2NkY2EwMzQxMWM3OTdmMmEzMGRhM2Q2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTgyNiwic3VtX3RvdGFsIjoxNjk4LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxMjgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDctMjkiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjB9	2016-07-26 03:38:49.332832-04
1a0bm2emzwkr989f5eoew9up8n5yvou1	NjQ3M2IzMmUyODM5MTYzZTg4N2YwODNiN2UzMDFmYmU2ODg5N2M4NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OTgsIm15X2NhcnQiOiJNRVRCUDE5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FVEJQMTkiLCJuYW1lIjoiY3JlYW0gc2hlcndhbmkgd2l0aCByZWQgYmFzZSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNCIsInRvX2RhdGUiOiIyMDE2LTA3LTE2Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fSwiY2FydF9jb3VudCI6MX0=	2016-07-27 02:51:02.330097-04
qihcy3e3dods9cughwq12ys46u54z2ec	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-27 06:19:35.505028-04
2mnmip4y54u2l7yi4nhpjv8s7ceoiflq	MTdkYzkwYTY0ODI5NzEzYzEzMTZjNzlmODg1ZjE0ZjVjNTZiM2M0Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjoxNzk4LCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDgiLCJ0b19kYXRlIjoiMjAxNi0wOC0xMCIsInJlbnQiOjg5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTl9LCJkaXNjb3VudCI6MH0=	2016-07-27 11:58:37.747974-04
jesz75py61vq7glomaigao0rc18j0a07	NmM1M2Q1M2U3YzJkN2VmNjQ1NWU0NDBmMzZlYTQ1Y2JhMjM2ZmU5ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI1MjcuNywibXlfY2FydCI6Ik1LTVRYMDNBMDAzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1LTVRYMDNBMDAzIiwibmFtZSI6Im5vdGNoZWQgbGFwZWwgdHV4ZWRvIiwic3ViX3RvdGFsIjoyNTI3LjcsIm1ycCI6MjEwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTgiLCJ0b19kYXRlIjoiMjAxNi0wNy0yMyIsInNlY3VyaXR5X2RlcG9zaXQiOjEyNjMuODUsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTI2My44NX0sImNhcnRfY291bnQiOjF9	2016-07-27 15:31:15.218428-04
ggw83cmedptpvs5enne9ukiu4ex5wq5y	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-27 23:39:54.157629-04
vl3dljlyyrnw66i6b1w51o8e6fiiiu21	ZjkwMGI4MjEwNzBlMDU4YzA3ZWRmZjBlZmI1OTdhOTZiMzdkNTk1ODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3NDgsInN1bV90b3RhbCI6OTk5OCwibXlfY2FydCI6Ik1XU1MwMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4Ijo3NTAsIjEiOnsic2t1IjoiTVdTUzAzIiwibmFtZSI6InJveWFsIGJsdWUgcGFydHkgd2VhciBiYW5kIGdhbGEiLCJzdWJfdG90YWwiOjcwMDAsIm1ycCI6MTQwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjcwMDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVSQ1AyMyIsIm5hbWUiOiIzIHBpZWNlIGJyb3duIHN1aXQiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTUiLCJ0b19kYXRlIjoiMjAxNi0wNy0xNyIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ5OX19	2016-07-28 11:59:55.369313-04
a79bd8sqxywt7t0z9qpi5vzg3mtp4huz	NzAxNWVjOTFiZjJhZmNlNDg3NzA4N2MxNjNjNDdiNmU3YjcxMTQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2ZmI2ZjQ0NGVhODQzMDFiNDJiZWUyYTU2ZTQ5ZDcyYTM4NDIxYWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-07-28 14:25:01.629055-04
u5ik0k7wwtf4ygwq1j1g06rt4icjbefo	MDNjYzUxMDE3YWVkMzU2ZTM3MGY2MjUzOWE0ZDQ4OTE1YzJiNjc3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6Ik1FUkdQMTYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNyIsInRvX2RhdGUiOiIyMDE2LTA3LTE5Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImNhcnRfY291bnQiOjF9	2016-07-29 14:41:37.797931-04
orf5r81vp7ob35m7lq2rgidi7wjb4mno	MDNjYzUxMDE3YWVkMzU2ZTM3MGY2MjUzOWE0ZDQ4OTE1YzJiNjc3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6Ik1FUkdQMTYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNyIsInRvX2RhdGUiOiIyMDE2LTA3LTE5Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImNhcnRfY291bnQiOjF9	2016-07-29 14:41:37.936554-04
5hui10pr3k216muqvnbvcm75kh17dwa2	MDNjYzUxMDE3YWVkMzU2ZTM3MGY2MjUzOWE0ZDQ4OTE1YzJiNjc3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6Ik1FUkdQMTYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNyIsInRvX2RhdGUiOiIyMDE2LTA3LTE5Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImNhcnRfY291bnQiOjF9	2016-07-29 14:41:39.743143-04
l48yfhq7jqgcqt2p9hbaci5ld2wempno	MDNjYzUxMDE3YWVkMzU2ZTM3MGY2MjUzOWE0ZDQ4OTE1YzJiNjc3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjk5OCwibXlfY2FydCI6Ik1FUkdQMTYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsIjEiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNyIsInRvX2RhdGUiOiIyMDE2LTA3LTE5Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImNhcnRfY291bnQiOjF9	2016-07-29 14:41:39.784113-04
r1nwaq5jgunu91ekvatgkxfmr36hlzcp	MzQ3YzhjYTE3ODYwZGM2YjNkNjg2NGJlMzhlYjJlNjQyMTM0MzkxMDp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo0OTl9LCJzdW1fdG90YWwiOjE5OTYsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9fQ==	2016-07-29 14:41:54.067375-04
2exc7bpd7m6g5o57tv9xj5gbbdt8drs5	MzQ3YzhjYTE3ODYwZGM2YjNkNjg2NGJlMzhlYjJlNjQyMTM0MzkxMDp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo0OTl9LCJzdW1fdG90YWwiOjE5OTYsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9fQ==	2016-07-29 14:41:54.568498-04
qkul1qxml7ksauxdkgvk8tv9ausqlka8	Yzg4ZWU1ODQ2NDFiMjAyMmI4NzNjZTExNGVkYzdjMDc1ODkwZWMxZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJNRUFOUDA4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQU5QMDgiLCJuYW1lIjoibGlnaHQgcGluayBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDciLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-08 14:32:00.673069-04
3p1m5cxvgiw64xmprlrdkxkzkb2rj3vi	ZDRhNjBmNDAwN2Y3YTE3YTA5MzAyYmNmNDQ5N2U5NzM4NjcyZDVmNzp7IjMiOnsic2t1IjoiTUVSR1AxNiIsIm5hbWUiOiJibHVlIHBhcnR5IGJhemVyIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNyIsInRvX2RhdGUiOiIyMDE2LTA3LTE5Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjI5OTQsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjozLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo0OTl9LCIyIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9fQ==	2016-07-29 14:41:55.495536-04
sxtrl4koy1b2rii5xoy39hawl26dciyn	MzQ3YzhjYTE3ODYwZGM2YjNkNjg2NGJlMzhlYjJlNjQyMTM0MzkxMDp7ImxvZ2luX2lkIjoiUmFodWwiLCIyIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo0OTl9LCJzdW1fdG90YWwiOjE5OTYsIm15X2NhcnQiOiJNRVJHUDE2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCIxIjp7InNrdSI6Ik1FUkdQMTYiLCJuYW1lIjoiYmx1ZSBwYXJ0eSBiYXplciIsInN1Yl90b3RhbCI6OTk4LCJtcnAiOjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTciLCJ0b19kYXRlIjoiMjAxNi0wNy0xOSIsInJlbnQiOjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo0OTl9fQ==	2016-07-29 14:41:56.539014-04
xngehcfm8uvdegnfuvl066iwjnrewyhw	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-31 06:23:25.216983-04
0a3txri458nmh323luo9v5enhawlzvk3	ODQ3ODc5YmQyNzFhOTA4ZDBmMTYzOGQwMDQ2YTRhYjE3ZmUzMzdkNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjExMy42LCJzdW1fdG90YWwiOjE5NjUuNiwibXlfY2FydCI6IkpBMDI2QSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxNDgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiSkEwMjZBIiwibmFtZSI6ImxhY2UgcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTk2NS42LCJtcnAiOjUxOTksImZyb21fZGF0ZSI6IjIwMTYtMDctMjAiLCJ0b19kYXRlIjoiMjAxNi0wNy0yNyIsInJlbnQiOjk4Mi44LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjk4Mi44fSwiZGlzY291bnQiOjB9	2016-07-31 15:47:11.038279-04
wlc9v1p5x7gaqkmgp2ltmf7l2o5zezc9	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-07-29 22:18:27.673313-04
u1tjnat8f4951hwbxrajeuypqbvj2z9o	MzdiYTQ1YmQ2N2E1OTQ2Nzg2N2I0NjMzYWZhZmJjMWY5MTk5YjEyNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjIwNjcuNywibXlfY2FydCI6IldFUEtTMTAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjIwNjcuNywibXJwIjo3NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTExIiwidG9fZGF0ZSI6IjIwMTYtMDgtMTYiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDMzLjg1LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjEwMzMuODV9LCJjYXJ0X2NvdW50IjoxfQ==	2016-07-30 03:16:36.143763-04
4h62zmno69d7f4mh3cmzg27chhlj64zo	MGUxZDFiOGY4MThmYzE5YzdjOTM4NzViZmE4ZTUxNjI5OTE4Yzc4Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIl9hdXRoX3VzZXJfaWQiOiI1IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImRpc2NvdW50IjowLCJfYXV0aF91c2VyX2hhc2giOiIyNmZiNmY0NDRlYTg0MzAxYjQyYmVlMmE1NmU0OWQ3MmEzODQyMWFmIiwib3JkZXJfdHlwZSI6InJlbnQifQ==	2016-07-30 03:52:51.29369-04
0gvh7npljhlb6iqskjw09w5tie2flwuq	ZDFhZjNhMmJmNTcwNmQwYzA4MTZhNDUyMWQ4MzY2ZmNmMmI3Njk2NDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdCQjA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowfQ==	2016-07-30 04:23:54.472275-04
tpbk9o6j0arvkti70xkijpkq50b5zhu9	ODM0OGM0ZTcwODc0MjI3MDQxOGQ2NWQwYWZkNDNjMmU5NjRkYjZhODp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY5Mi43LCJzdW1fdG90YWwiOjM0MzQuNywibXlfY2FydCI6Ik1FUlNQMTMiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjU4LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6Ik1FUlNQMTMiLCJuYW1lIjoiYmx1ZSBmb3JtYWwgc3VpdCIsInN1Yl90b3RhbCI6MTgzNy42OTk5OTk5OTk5OTk4LCJtcnAiOjE1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDctMjkiLCJyZW50Ijo5MTguODQ5OTk5OTk5OTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo5MTguODQ5OTk5OTk5OTk5OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1FUlNQMTMiLCJuYW1lIjoiYmx1ZSBmb3JtYWwgc3VpdCIsInN1Yl90b3RhbCI6MTgzNy42OTk5OTk5OTk5OTk4LCJtcnAiOjE1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI0IiwidG9fZGF0ZSI6IjIwMTYtMDctMjkiLCJyZW50Ijo5MTguODQ5OTk5OTk5OTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo5MTguODQ5OTk5OTk5OTk5OX19	2016-08-06 23:58:01.420891-04
1etmeo2fra7luzv1z3or2ej2by2pi6bp	NGRjYjY4NDhjYTI5NGY2NTA5ZTU5Nzc4ZWYxYzUxODE2NjNiZDNhNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVBU1AwNyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yNyIsInRvX2RhdGUiOiIyMDE2LTA3LTI5IiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fSwiZGlzY291bnQiOjB9	2016-08-07 12:07:06.84066-04
5sl7k0vua183l6o30noyxhvyznvidwe9	Yzg4ZWU1ODQ2NDFiMjAyMmI4NzNjZTExNGVkYzdjMDc1ODkwZWMxZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjExOTgsIm15X2NhcnQiOiJNRUFOUDA4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQU5QMDgiLCJuYW1lIjoibGlnaHQgcGluayBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDciLCJzZWN1cml0eV9kZXBvc2l0Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6NTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-08 14:33:28.828121-04
b8gst1eic862t1yb2rc5ih9rotbql95l	YTcxYzA5NDI1ZjU4YWVmOGYwOGUxODEyZDk2ZGQ2ODBhNjAxYTk3Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQVMxNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0FTMTQiLCJuYW1lIjoic3RyaXBlZCBzaGVhdGggZHJlc3MiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozMjk5LCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI3IiwidG9fZGF0ZSI6IjIwMTYtMDctMjkiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-09 08:43:24.218231-04
8wf8n2apmn00cfx231a78767fcs6h28k	N2ViZjBjODFkNzI0NGVkY2QyNDJhZjMxYmRiMzE5ODYwOGQ5NGNiZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTI4OCwic3VtX3RvdGFsIjoxMTk4LCJteV9jYXJ0IjoiV1dDSzQ4Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjkwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldXQ0s0OCIsIm5hbWUiOiJtYXJvb24gcGFydHkgZ293biIsInN1Yl90b3RhbCI6MTE5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTMxIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDIiLCJyZW50Ijo1OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6NTk5fSwiZGlzY291bnQiOjB9	2016-08-10 02:22:03.318951-04
zdnd44tn2oohkgsww7ps2tk0yugbpye1	ZmYzZmY1ODdjNTIwODQyYTRmMDliOTUxZTgyN2QyYTNmNzkzMjIwNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDAxNS42LCJzdW1fdG90YWwiOjM3MzQuNiwibXlfY2FydCI6Ik1FQVNQMzAiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MjgxLCIxIjp7InNrdSI6Ik1FQVNQMzAiLCJuYW1lIjoiYmxhY2sgc2hpbnkgc2hlcndhbmkiLCJzdWJfdG90YWwiOjIwMzcuNiwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE3IiwidG9fZGF0ZSI6IjIwMTYtMDctMjQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMDE4LjgsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTAxOC44fSwiZGlzY291bnQiOjB9	2016-07-31 12:11:54.002541-04
7oazcfp011c8psh9ywcnfya7zsjsc4vg	M2Q1YjkzMjM1OWYyMTJjYjc1NzJkZjYwNWFhZmYwNmNlZDk4Y2NlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1NSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0NLNTUiLCJuYW1lIjoiYmxhY2sgc2hvcnQganVtcHN1aXQiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDctMjUiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-01 07:55:56.463429-04
i3ac8ajzaq0wcg80z8h7al9myptmlvg8	M2Q1YjkzMjM1OWYyMTJjYjc1NzJkZjYwNWFhZmYwNmNlZDk4Y2NlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1NSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0NLNTUiLCJuYW1lIjoiYmxhY2sgc2hvcnQganVtcHN1aXQiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDctMjUiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-01 07:55:57.507172-04
os9ma7674ak9yl1gohmmyb5p0zbxhaxx	MTRjYzY2Mjg5OTIxYzM3YTIxZWUyM2I3MzU3MDE2OTJhZTk0MmU1OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODY1MS43LCJzdW1fdG90YWwiOjgwNDcuNywibXlfY2FydCI6IkRCMDY5Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjYwNCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJEQjA2OSIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgbGVoZW5nYSIsInN1Yl90b3RhbCI6ODA0Ny43LCJtcnAiOjMwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA0IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDkiLCJyZW50Ijo0MDIzLjg1LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQwMjMuODV9LCJkaXNjb3VudCI6MH0=	2016-08-01 08:01:47.972107-04
knv3jbccgkax91fof6tg4cf5v8olr06p	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-01 09:56:30.524387-04
j0frep96phics7t0vnsgzehec86q3dlc	M2VlY2IxNmY0YTNjZjY3MTIyZDc4ZDM2NzBmNDAwMDMxNjNmMjI0Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzg2Ny42LCJzdW1fdG90YWwiOjM1OTcuNiwibXlfY2FydCI6IldFQVhQMTIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjcwLCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFQVhQMTIiLCJuYW1lIjoibmVvbiBwaW5rIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjM1OTcuNiwibXJwIjoxNDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yMCIsInRvX2RhdGUiOiIyMDE2LTA3LTI3IiwicmVudCI6MTc5OC44LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE3OTguOH0sImRpc2NvdW50IjowLCJ1c2VyIjp7ImZpcnN0X25hbWUiOiJSaXNoaSIsImlkIjoxNywiZmJfaWQiOiIxMDE1MzYyOTc0NTIzOTY4MSJ9fQ==	2016-08-02 02:06:35.481237-04
ufigsn16i906cj04zilf0utkezixvu5m	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-02 05:02:47.545918-04
5b44w8jgyfoafm9cbj14cppsj0kk81mh	NjUyOTMzY2ZlNzIyZWViNDE0OGFlYWU4ZjA0Y2JmNzBmMWY2MWFlOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE4NTAsIm15X2NhcnQiOiJKTjEwMkEiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJKTjEwMkEiLCJuYW1lIjoiZmxvcmFsIGxhY2Ugd2hpdGUgZW1waXJlIHNoZWF0aCBkcmVzcyIsInN1Yl90b3RhbCI6MTg1MCwibXJwIjozNzAwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6MTg1MH0sImNhcnRfY291bnQiOjF9	2016-08-02 07:52:17.433372-04
fq6kyqx9askqj346n7ktpb6jo4w95q8t	YTc5M2FkZWUzODdkZDU3OGRmMzc5MmUxMWI5ZTdjNTI0NzZlN2QyZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mzc2MSwic3VtX3RvdGFsIjozNDk4LCJteV9jYXJ0IjoiV1dDSzU0Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjI2MywiMSI6eyJza3UiOiJXV0NLNTQiLCJuYW1lIjoiYmxhY2sgY3JvcCB0b3Agc2tpcnQiLCJzdWJfdG90YWwiOjcwMCwibXJwIjozODkwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJzZWN1cml0eV9kZXBvc2l0IjowLCJvcmRlcl90eXBlIjoiYnV5IiwicmVudCI6NzAwfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VKRlAzNCIsIm5hbWUiOiJlbXJvaWRlcmVkIG9mZiB3aGl0ZSBnb3duIiwic3ViX3RvdGFsIjoyNzk4LCJtcnAiOjE0MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIwIiwidG9fZGF0ZSI6IjIwMTYtMDctMjIiLCJzZWN1cml0eV9kZXBvc2l0IjoxMzk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjEzOTl9fQ==	2016-08-02 08:58:07.846242-04
16jl7llcgdqzoks3k0jcs86l7vu1q836	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-03 01:38:32.136911-04
ohgpdu40hafwtct69cpk69kvhx711mhy	ZDM1ZmE5YTExMzNiYTViNmZhZmVhNmE1ODMyYmRlZTU2ZjAwMGE3Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjc5NSwic3VtX3RvdGFsIjoyNjAwLCJteV9jYXJ0IjoiREIwMTEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTk1LCIxIjp7InNrdSI6IkRCMDExIiwibmFtZSI6ImJsdWUgYmxhemVyIiwic3ViX3RvdGFsIjoyNjAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTkiLCJ0b19kYXRlIjoiMjAxNi0wNy0yMSIsInNlY3VyaXR5X2RlcG9zaXQiOjEzMDAsIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTMwMH0sImRpc2NvdW50IjowfQ==	2016-07-31 13:21:33.485319-04
ff7vjttqk4g808q385t22fzlcb6ukpw6	ZTk1YzRlMzM5Y2UxMzVjZmNiODIyODZlYTE5MzY1ZWUxOGQzNmY1ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzQyNzksInN1bV90b3RhbCI6MzE4ODcsIm15X2NhcnQiOiJNRUJLUDAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjIzOTIsImNhcnRfY291bnQiOjcsIjEiOnsic2t1IjoiTUVCS1AwMiIsIm5hbWUiOiJ2ZWx2ZXR5IGJsdWUgc2hlcndhbmkiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjQ5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMTYiLCJ0b19kYXRlIjoiMjAxNi0wNy0xOCIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX0sImRpc2NvdW50IjowLCIzIjp7InNrdSI6Ik1FQVNQMjIiLCJuYW1lIjoiZGFyayByZWQgc2hlcndhbmkgMSIsInN1Yl90b3RhbCI6NDU5OCwibXJwIjoxODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xNiIsInRvX2RhdGUiOiIyMDE2LTA3LTE4IiwicmVudCI6MjI5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyMjk5fSwiMiI6eyJza3UiOiJNRU1TUDA0IiwibmFtZSI6Im9mZiB3aGl0ZSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU1OTgsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMTYiLCJ0b19kYXRlIjoiMjAxNi0wNy0xOCIsInNlY3VyaXR5X2RlcG9zaXQiOjI3OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mjc5OX0sIjUiOnsic2t1IjoiTUVUQlAxOSIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSB3aXRoIHJlZCBiYXNlIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDctMTgiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCI0Ijp7InNrdSI6Ik1FU0JQMDYiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gc2hlcndhbmkgc2V0Iiwic3ViX3RvdGFsIjo1NjAwLCJtcnAiOjI4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDctMTgiLCJzZWN1cml0eV9kZXBvc2l0IjoyODAwLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI4MDB9LCI3Ijp7InNrdSI6Ik1FQUtQMTAiLCJuYW1lIjoiYmxhY2sgc3VpdCB3aXRoIHNoaW55IGxhcGVsIiwic3ViX3RvdGFsIjozNTk4LCJtcnAiOjE4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDctMTgiLCJyZW50IjoxNzk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE3OTl9LCI2Ijp7InNrdSI6Ik1XQkIwNiIsIm5hbWUiOiJtdXN0IGhhdmUgYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjozNDk3LCJtcnAiOjY5OTUsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjozNDk3fX0=	2016-07-30 06:42:33.982356-04
900i8f84tnbv0xgppzs3lk9t15qoap3x	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-01 03:36:46.759671-04
svoft62ow3y9lxcnfyivtpddgoe5tlg1	YzVkOThkZDRkZTBiZWEzMTIyNmQ4ZTZlNmRkOWRhZDkwOTk2YWM5Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTA3Mywic3VtX3RvdGFsIjo5OTgsIm15X2NhcnQiOiJXRVBDUzEwNCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo3NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRVBDUzEwNCIsIm5hbWUiOiJCbGFjayBTb2xpZCBTdWl0Iiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6NDUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xOSIsInRvX2RhdGUiOiIyMDE2LTA3LTIxIiwicmVudCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX0sImRpc2NvdW50IjowfQ==	2016-08-01 07:35:06.147372-04
yaysul2de8n3dyxxkd7l915j9hlyqnd4	M2Q1YjkzMjM1OWYyMTJjYjc1NzJkZjYwNWFhZmYwNmNlZDk4Y2NlMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OCwibXlfY2FydCI6IldXQ0s1NSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXV0NLNTUiLCJuYW1lIjoiYmxhY2sgc2hvcnQganVtcHN1aXQiLCJzdWJfdG90YWwiOjM5OCwibXJwIjozNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIzIiwidG9fZGF0ZSI6IjIwMTYtMDctMjUiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-01 07:55:57.243546-04
5hjijutrs8z3towd6rbxjhmdnacxe279	YWE1NTYyZjQzOGNmNTc5MjJiYjI4MzJhNjM3ZDc1ODE5Mzg5ZmU0ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2Mywic3VtX3RvdGFsIjoyMTk4LCJteV9jYXJ0IjoiTVdNSzAyIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoxLCJ0YXgiOjE2NSwiMSI6eyJza3UiOiJNV01LMDIiLCJuYW1lIjoic2hhd2wgY29sbGFyIGxhcGVsIFR1eGVkbyIsInN1Yl90b3RhbCI6MjE5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0zMCIsInRvX2RhdGUiOiIyMDE2LTA4LTAxIiwic2VjdXJpdHlfZGVwb3NpdCI6MTA5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxMDk5fSwiZGlzY291bnQiOjB9	2016-08-07 14:43:27.438565-04
a5la0yb2vrjamr06drsfgdakqs9xbyid	ZTljYzNhMTU1M2Q1MDhlZjUzOWU0NDA0NzVkZTdmN2ZjODVhNTc0Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XTUsxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNV01LMTkiLCJuYW1lIjoiYmVpZ2UgYnJvY2FkZSBiYW5kaSIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjE2NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDciLCJzZWN1cml0eV9kZXBvc2l0IjozOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mzk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-08 14:38:44.453769-04
ru68h4tpcs7lu9uq8r5kfj17nhgjq1x3	NDQ1MmRhMGFhOGJiODI0NDI0NzVkNThkY2VkY2FkMjYxN2Q4ODAzMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2Mywic3VtX3RvdGFsIjoyMTk4LCJteV9jYXJ0IjoiTVdNSzAxIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE2NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV01LMDEiLCJuYW1lIjoiYmxhY2sgamFja2V0IHdpdGggZmluIGxhcGVsIiwic3ViX3RvdGFsIjoyMTk4LCJtcnAiOjEzMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTE2IiwidG9fZGF0ZSI6IjIwMTYtMDgtMTgiLCJyZW50IjoxMDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjEwOTl9LCJkaXNjb3VudCI6MH0=	2016-08-09 09:32:17.345631-04
8vl6mht1kjhf9lsoj7b1jrsrosocwpox	MmM1YWFkMWVlZmFjMjY3M2Q3MjAwZWRiMGMzZjBiNDE4ODI2M2RjMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE2MzgsIm15X2NhcnQiOiJKQTAyNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJKQTAyNiIsIm5hbWUiOiJsYWNlIHBhcnR5IGdvd24iLCJzdWJfdG90YWwiOjE2MzgsIm1ycCI6NTE5OSwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yOCIsInRvX2RhdGUiOiIyMDE2LTA3LTMwIiwic2VjdXJpdHlfZGVwb3NpdCI6ODE5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjgxOX0sImNhcnRfY291bnQiOjF9	2016-08-02 00:18:49.527467-04
m9gsbqncwox6hg2nkqapn3hljde4jwur	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-02 04:00:50.245093-04
2zzywpcts8tcu9ya9cbnypqe7bmqn4b9	YjQ3NGRiNDQ5NGEwYTA1MjZiM2NlZWE5MTdhMzRkMzk5NWJmNjEwZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODU4LCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XQVIyMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo2MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0FSMjEiLCJuYW1lIjoidmVsdmV0IGJsYWNrIHdhaXN0Y29hdCIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjYwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjEiLCJ0b19kYXRlIjoiMjAxNi0wNy0yMyIsInJlbnQiOjM5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozOTl9LCJkaXNjb3VudCI6MH0=	2016-08-02 05:13:46.682866-04
4n2vhjysef3ntljjapg54m4fjnw9q4pn	YWMzYTRjYjU1OWUzMzc1YzlkNjA5OTk5NDJiZDI1NjE5NTA1NjViZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVUQlAxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVUQlAxOSIsIm5hbWUiOiJjcmVhbSBzaGVyd2FuaSB3aXRoIHJlZCBiYXNlIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTEzIiwidG9fZGF0ZSI6IjIwMTYtMDgtMTUiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCJkaXNjb3VudCI6MH0=	2016-08-02 08:30:17.977409-04
s8l0a7286h9ummt3cich7dmukmmouvbv	YTAxNjVkN2M1ODQyZjFkNjliZTExMjk3MjA0N2E4ZWM2NThiYzliODp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjU2MDAsIm15X2NhcnQiOiJNRVNCUDA2Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FU0JQMDYiLCJuYW1lIjoiYnJvd25pc2ggY3JlYW0gc2hlcndhbmkgc2V0Iiwic3ViX3RvdGFsIjo1NjAwLCJtcnAiOjI4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTIwIiwidG9fZGF0ZSI6IjIwMTYtMDctMjIiLCJzZWN1cml0eV9kZXBvc2l0IjoyODAwLCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI4MDB9LCJjYXJ0X2NvdW50IjoxfQ==	2016-08-02 11:06:16.836122-04
9y0jg6hgvi1s9yoxkutr7bvqjxsfgksq	OWQzNjI2YzE3ZTA0NWRmYTA4NzFjNmJlYTUzYzY1Y2FjNDYxMjk2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjQ1MDAsIm15X2NhcnQiOiJXRVBSUzEwNSIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFUFJTMTA1IiwibmFtZSI6IkdyZXkgRnVsbCBTdWl0Iiwic3ViX3RvdGFsIjo0NTAwLCJtcnAiOjkwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0NTAwfSwiY2FydF9jb3VudCI6MX0=	2016-08-08 03:20:19.364035-04
9ei3reoilejtfldai9n86x0whj07z82v	ZTljYzNhMTU1M2Q1MDhlZjUzOWU0NDA0NzVkZTdmN2ZjODVhNTc0Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjc5OCwibXlfY2FydCI6Ik1XTUsxOSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJNV01LMTkiLCJuYW1lIjoiYmVpZ2UgYnJvY2FkZSBiYW5kaSIsInN1Yl90b3RhbCI6Nzk4LCJtcnAiOjE2NTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDciLCJzZWN1cml0eV9kZXBvc2l0IjozOTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6Mzk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-08 14:52:18.105069-04
ud2y6pwjt69nukip57tjnlfpiyfl0k6e	ZmIzZDU4ZjBjYmUwOGMzOTZjM2U5Njc1NTNkNjM2MTE4NmU4Yjg2Mzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVTQlAwNiIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRVNCUDA2IiwibmFtZSI6ImJyb3duaXNoIGNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6NTYwMCwibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0xOSIsInRvX2RhdGUiOiIyMDE2LTA3LTIxIiwicmVudCI6MjgwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyODAwfX0=	2016-08-02 11:09:01.474129-04
qp11mtn3mh6cr0ehbr1xecjzxmg02zu0	ZjAxOTVkMDY1OGRlYWZiN2VhYTlhYjI1NWNmMjJkMDA1OTdmYzIyZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDE5MSwic3VtX3RvdGFsIjozODk4LCJteV9jYXJ0IjoiV0VOQVAxMDVDIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjI5MywiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJXRU5BUDEwNUMiLCJuYW1lIjoiRGVzaWduZXIgTXVsdGljb2xvciBTYXJlZSIsInN1Yl90b3RhbCI6Mzg5OCwibXJwIjoyNTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yMCIsInRvX2RhdGUiOiIyMDE2LTA3LTIyIiwicmVudCI6MjQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxMzk5fSwiZGlzY291bnQiOjB9	2016-08-02 14:39:58.160822-04
x7neldp8oylrw1oboniz7rima1csr0vd	ZDcxOTEwNzQ1MDBkYmNjZDZjMDQwMzExMzJjZTExMTMzMGIwYjNhMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDA4Mywic3VtX3RvdGFsIjozNzk4LCJteV9jYXJ0IjoiU09GTEQxNUEwNjYiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6Mjg1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IlNPRkxEMTVBMDY2IiwibmFtZSI6InNlcXVpbm5lZCBzaGltbWVyIG1heGkgZHJlc3MiLCJzdWJfdG90YWwiOjM3OTgsIm1ycCI6MTc5OTksImZyb21fZGF0ZSI6IjIwMTYtMDctMjIiLCJ0b19kYXRlIjoiMjAxNi0wNy0yNCIsInJlbnQiOjE4OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTg5OX0sImRpc2NvdW50IjowfQ==	2016-08-03 03:36:39.429934-04
rnne10c51o5djkcq0ssi96ne07zjzga3	ZWJkMDhjMTA4YWQ5ZDk3NTRhYjU3ZjRhMzNjNWZkN2RjZGE0MDNhNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjEzOTgsIm15X2NhcnQiOiJNRUFTUDIwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FQVNQMjAiLCJuYW1lIjoiYmxhY2sgYmxhemVyIDEiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6NzAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOS0wOSIsInRvX2RhdGUiOiIyMDE2LTA5LTExIiwic2VjdXJpdHlfZGVwb3NpdCI6Njk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjY5OX0sImNhcnRfY291bnQiOjF9	2016-08-03 07:58:00.666283-04
y2cm34v9d2vqothgcp9hekdk56dx31n1	YzNjMDI5MGViMTM1N2I4MmNjZjhlMmRmYWVhYzBiZmNiN2FjMWRkOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIyMywic3VtX3RvdGFsIjoyOTk4LCJteV9jYXJ0IjoiREIwNTAiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjI1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDUwIiwibmFtZSI6ImJsYWNrIGJhbmQgZ2FsYSIsInN1Yl90b3RhbCI6Mjk5OCwibXJwIjoyMTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNy0yMSIsInRvX2RhdGUiOiIyMDE2LTA3LTIzIiwicmVudCI6MTQ5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNDk5fSwiZGlzY291bnQiOjB9	2016-08-03 14:22:11.852738-04
me4mnhd48siyiqvrarae59kv7peed0u4	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-04 05:31:54.061175-04
ocfkrhsee5w2n6axb8j9wlihxgrwi63e	MGEyODcwMjgyMmIzNDc2ODc2MmM2MGY5OWRiODVhZTQ4NDgzY2MyZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3OTgsIm15X2NhcnQiOiJXRVBSUzEwNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiMSI6eyJza3UiOiJXRVBSUzEwNSIsIm5hbWUiOiJHcmV5IEZ1bGwgU3VpdCIsInN1Yl90b3RhbCI6MTc5OCwibXJwIjo5MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA1IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDciLCJzZWN1cml0eV9kZXBvc2l0Ijo4OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODk5fSwiY2FydF9jb3VudCI6MX0=	2016-08-04 14:27:01.402132-04
nrdgf1t93b2tufxwhg1xaqgxy8fl9ek5	NDEyYjk5YzdlMmRkOTg0Nzk3YmJkY2FmOTRhMzk1Mjg3NmE2NzA0Nzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzUyMywic3VtX3RvdGFsIjo2OTk4LCJteV9jYXJ0IjoiREIwNzEiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6NTI1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDcxIiwibmFtZSI6InZlbHZldHkgcHVycGxlIGxlaGVuZ2EiLCJzdWJfdG90YWwiOjY5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMTkiLCJ0b19kYXRlIjoiMjAxNi0wOC0yMSIsInJlbnQiOjM0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MzQ5OX0sImRpc2NvdW50IjowfQ==	2016-08-04 15:54:38.640016-04
elugkodoapzx66ouzmo8e3h60s7529io	YTcxNmY0NDQyMDhkZjAyYTE0OGFlYzcyMDg1Yzk0YmU5NTMyZjUxMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzY1Mywic3VtX3RvdGFsIjozMzk4LCJteV9jYXJ0IjoiREIwNDkiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MjU1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IkRCMDQ5IiwibmFtZSI6Im1hZ2VudGEgYmxhemVyIiwic3ViX3RvdGFsIjozMzk4LCJtcnAiOjEyMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTMxIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDIiLCJyZW50IjoxNjk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE2OTl9LCJkaXNjb3VudCI6MH0=	2016-08-04 17:57:01.983552-04
imuctelggd0idq8t70y3z2408e7u1bwy	ZjMxMGE2MmFiY2MyNzljN2YwMWJkMGJkZTVmMTIxZTM5NThjMzQzMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NTM3NSwic3VtX3RvdGFsIjo1MDAwLCJteV9jYXJ0IjoiREIxOTkiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozNzUsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIxOTkiLCJuYW1lIjoic2hpbnkgZ3JleSBibGF6ZXIiLCJzdWJfdG90YWwiOjUwMDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjUwMDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-08-05 01:28:35.696407-04
vztgwap4p05bvwug2i3fufawpr7gn138	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-05 14:40:19.60298-04
3m4ylmisf6rxdmfydi939gq61te509l9	MDllMzQ0ODc4NTVlZDc5ZjkzY2I3ZjBjYTdkZjJkMTIxMDg5ZDc2ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzMywic3VtX3RvdGFsIjoxNzk4LCJteV9jYXJ0IjoiV0VQS1MxMDIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MTM1LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldFUEtTMTAyIiwibmFtZSI6IkJsYWNrIFNoaW55IEJhbmRnYWxhIFN1aXQiLCJzdWJfdG90YWwiOjE3OTgsIm1ycCI6NzUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0xMyIsInRvX2RhdGUiOiIyMDE2LTA4LTE1IiwicmVudCI6ODk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg5OX0sImRpc2NvdW50IjowfQ==	2016-08-06 01:53:32.76481-04
aeoktknxc8egre42j1swutsoyrm9nche	MDdjNDYwMTMxN2FmMWQ5MjJmYTk5ZWJkZGE4ZDhmYWMxNzk1OTViYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjM2NSwic3VtX3RvdGFsIjoyMjAwLCJteV9jYXJ0IjoiTVdBUjIwIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjE2NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNV0FSMjAiLCJuYW1lIjoic2hpbnkgYmxhY2sgZnVsbCBzdWl0Iiwic3ViX3RvdGFsIjoyMjAwLCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDctMzAiLCJyZW50IjoxMTAwLCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjExMDB9LCJkaXNjb3VudCI6MH0=	2016-08-06 09:56:01.406933-04
ryq7a5t6cil2n2t951wxs9gkxqlk0d3o	MjQ0NWJhOWZiMjEyMDY4MzZkM2YxOTVhODUyNzM3NjRmMzJjYjc3Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VSU1AxNUIiLCJvcmRlcl90eXBlIjoicmVudCIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-08-06 11:58:22.887095-04
0vk3tcj060fvu3n8at6uw0lqunm7fvc4	ZjQ2ZTM0NDg5OGNmNTcwODI2OTAyNTUzNWE3ODViMjgzMzQyOGIyNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdNSzE3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-08-06 17:52:28.084387-04
p4wfyf54mb86xgof22niq45lho5i1joy	M2JhZGE1NmM5ZjQ3OWJkNzJmZjhkZjExNGMzMGRiZmFiZmZiOGU4Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDk0MCwic3VtX3RvdGFsIjo0NTk1LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjozNDUsIjEiOnsic2t1IjoiREIyMDEiLCJuYW1lIjoidmVsdmV0eSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjI4OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0NDksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ0OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IkRCMjAxIiwibmFtZSI6InZlbHZldHkgYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE0NDl9fQ==	2016-08-15 07:39:18.1284-04
ximgg3hix53l8wd4e2dr5d5ws429kdke	ZDM3OTI2ZGJlNTlmZDEzYjUyZTg4ZDY2Y2Q2NjE3Y2E2NmM4ODQzNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjE3NTAwLCJteV9jYXJ0IjoiV0VZU1AxOCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6IldFWVNQMTgiLCJuYW1lIjoiZ3JlZW4gbG9uZyB0b3AgbGVoZW5nYSIsInN1Yl90b3RhbCI6MTc1MDAsIm1ycCI6MzUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50IjoxNzUwMH0sImNhcnRfY291bnQiOjF9	2016-08-08 04:22:15.144766-04
v9v0ml97d978xx9ukfax1q27jczq07r9	NzVkMzA3ZDVlYmI2MGE5MDk1MWYxZmEyMGFjOWMzNDRmMzllZDdmYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTA5LCJzdW1fdG90YWwiOjg0NSwibXlfY2FydCI6IldJU08wNCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjY0LCJjYXJ0X2NvdW50IjoxLCIxIjp7InNrdSI6IldJU08wNCIsIm5hbWUiOiJkcmFwZWQgc2FyZWUgZHJlc3MiLCJzdWJfdG90YWwiOjg0NSwibXJwIjoxNjkwLCJmcm9tX2RhdGUiOiIyMDE2LTA1LTI4IiwidG9fZGF0ZSI6IjIwMTYtMDUtMjgiLCJyZW50Ijo4NDUsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjB9	2016-08-08 16:15:57.526712-04
zabgp3r57g3sdzpvralpov4m5egbuxox	NzBmM2U3YTFmZDNjNGM3N2IyMmNmMTQ2OTIyYzgwZDhhNDAyODFiZjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTUwMywic3VtX3RvdGFsIjoxMzk4LCJteV9jYXJ0IjoiTUVQUFAxOCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoxMDUsIjEiOnsic2t1IjoiTUVQUFAxOCIsIm5hbWUiOiJyZWQgc2hlcndhbmkiLCJzdWJfdG90YWwiOjEzOTgsIm1ycCI6MTUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjkiLCJ0b19kYXRlIjoiMjAxNi0wNy0zMSIsInNlY3VyaXR5X2RlcG9zaXQiOjY5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50Ijo2OTl9LCJkaXNjb3VudCI6MH0=	2016-08-09 11:04:43.33038-04
losfppgn4slqp2f8690ztdqa7k51repm	YzVmNWRlY2YwMDFjMjk1ZWVhYzJjYTI3NmU5M2E5ZWMwYWQ3NzQ4OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJzdW1fdG90YWwiOjM5OTgsIm15X2NhcnQiOiJNRU5JUDExIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCIxIjp7InNrdSI6Ik1FTklQMTEiLCJuYW1lIjoib2ZmIHdoaXRlIHNoZXJ3YW5pIHNldCAxIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTA5IiwidG9fZGF0ZSI6IjIwMTYtMDgtMTEiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE5OTl9LCJjYXJ0X2NvdW50IjoxfQ==	2016-08-09 13:26:46.183637-04
885x8myoi38eshjurxeiimjpmaaifcik	YTEwMDFkMDZkZTczNjg5YTMyMzcwOTUxNDQ3M2IyOTEyZDcwMjQwOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjU3Ny42LCJzdW1fdG90YWwiOjIzOTcuNiwibXlfY2FydCI6Ik1XU1MwNSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoxODAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTVdTUzA1IiwibmFtZSI6InByaW50ZWQgYnJvd25pc2ggbWFyb29uIGJsYXplciIsInN1Yl90b3RhbCI6MjM5Ny42LCJtcnAiOjEyNTAwLCJmcm9tX2RhdGUiOiIyMDE2LTA3LTI5IiwidG9fZGF0ZSI6IjIwMTYtMDgtMDUiLCJyZW50IjoxMTk4LjgsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTE5OC44fSwiZGlzY291bnQiOjB9	2016-08-10 03:11:48.325652-04
yrnisurm4qq5h8sy75naikqvk3a7ll8l	MzliYjIzNDA0MjViODU1NGQ1Yzc1N2JlZGU4ZDJhMDc0ZmRiNTFlMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDgzOCwic3VtX3RvdGFsIjo0NTAwLCJteV9jYXJ0IjoiV0VQUlMxMDUiLCJvcmRlcl90eXBlIjoiYnV5IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMzgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiV0VQUlMxMDUiLCJuYW1lIjoiR3JleSBGdWxsIFN1aXQiLCJzdWJfdG90YWwiOjQ1MDAsIm1ycCI6OTAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6NDUwMCwib3JkZXJfdHlwZSI6ImJ1eSIsInNlY3VyaXR5X2RlcG9zaXQiOjB9LCJkaXNjb3VudCI6MH0=	2016-08-10 05:05:17.445301-04
ger194vqqtyhvpzdzs6km3j8r7a5cus3	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-10 08:18:13.938819-04
y7fcqruaisbrs2r7o959yafe4v97jte0	Mzg4MDkxN2I0NTRlM2NmZWJkODI1ODAwZGJmZWUyOWFjMzIwOTg3OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDI5OCwic3VtX3RvdGFsIjozOTk4LCJteV9jYXJ0IjoiTUVOSVAxMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMDAsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVOSVAxMSIsIm5hbWUiOiJvZmYgd2hpdGUgc2hlcndhbmkgc2V0IDEiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMzAiLCJ0b19kYXRlIjoiMjAxNi0wOC0wMSIsInJlbnQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OX0sImRpc2NvdW50IjowfQ==	2016-08-10 09:19:07.337613-04
c8fuxaeljffnt3o8agikdmhs16suh7ix	OWM1NjYwOTljNDM1NmE2M2I0ZDU0MDY2MTFlMDA2MDkyNTA0MGY0Mjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTVdKTTI0Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsInRheCI6MCwiZGlzY291bnQiOjB9	2016-08-10 13:27:32.817564-04
3rnpvg4kl98ss0o9uvud63z5xlf21uh5	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-11 02:06:58.067288-04
orrp7lh343iyxv8056srnxf5pq0id7dh	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-11 06:39:41.020341-04
6l8po9f5edyciqmh13lvb9wzwwvnybyz	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-11 06:43:29.242945-04
3wqx93dsiktmrkuhmbye7wxdxk87itrp	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-11 12:28:23.038603-04
5z4s05q1yqetcyhxbr2mpy2i39edsxtm	MDAwMmZhMjlmZjNlMDk0NTFkMTFjODE1OThhY2UwZjExMjljOTIzNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIyMywic3VtX3RvdGFsIjoyOTk4LCJteV9jYXJ0IjoiTUVSQ1AyMyIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4IjoyMjUsIjEiOnsic2t1IjoiTUVSQ1AyMyIsIm5hbWUiOiIzIHBpZWNlIGJyb3duIHN1aXQiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMjkiLCJ0b19kYXRlIjoiMjAxNi0wNy0zMSIsInNlY3VyaXR5X2RlcG9zaXQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ5OX0sImRpc2NvdW50IjowfQ==	2016-08-12 04:26:27.719525-04
9dk46wwpafin4escyarfl08nz5z6mmjm	OTJiZDIyNDZjYTlhZGNkMzc3NmNjYmY1NGUyM2ZhYmNiMzM3OWYyYjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzE5OSwic3VtX3RvdGFsIjo2Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4Ijo1MDMsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI0OTl9fQ==	2016-08-15 03:52:57.537051-04
a7a60cib029w48o9jqxu2zjljqmyec1y	MzM4ZjAyNjM2NTYzODllNTlkYjFhODBlMWNmZTZkYmMwN2I4OGNkYzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MjI1NCwic3VtX3RvdGFsIjoyMDk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4IjoxNTgsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV1dDSzUwIiwibmFtZSI6ImxpZ2h0IGdyZWVuIGRyZXNzIiwic3ViX3RvdGFsIjozOTgsIm1ycCI6MjUwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE5OX19	2016-08-15 03:56:52.445734-04
27ld28s4enlymywacbch3jtg5m08kn7v	MDQyZjE0NWFlNDM5OTBiZjE3NTZjOGVmM2JlZjcyM2NiZDY3NGQ1YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODQ4OSwic3VtX3RvdGFsIjo3ODk2LCJteV9jYXJ0IjoiV0VTSTQzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjU5MywiY2FydF9jb3VudCI6MiwiMSI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInNlY3VyaXR5X2RlcG9zaXQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MjQ5OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0NDl9fQ==	2016-08-15 03:58:50.66727-04
3m5a5j9spvd95wi66qb6bxzw4jduibiu	MTUzMTgzYzY3NTgyYzQzZjJmMTljMDE1MjlmMTA2OTJjYTE5OTk1Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX19	2016-08-15 04:05:59.268484-04
8k43qa9otogjo5aq3xluph9xmhgxse25	M2E5ZGFkNWFlOTg4YzQ2NzdmYzFiMTM4OWE5YWEwNzgzY2FkZjhlMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDctMzEiLCJ0b19kYXRlIjoiMjAxNi0wOC0wMiIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX19	2016-08-14 07:39:18.133901-04
71r5bn3yvrqin3hj7u8od21qwsqa53io	NTQwMTE5ODgzYWUzMzc3YTEyYmVhMjM1YWJkMTc0ZWRlY2M3YWVjNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjg5OSwic3VtX3RvdGFsIjoyNjk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4IjoyMDMsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjI0OTl9fQ==	2016-08-15 04:28:45.75063-04
82rysc8gwbe1fwkwcxlyoc0h2mgp73cu	YzFjMzMzMDI5OGYyYmIyMmFiOTQ2YTg0ODAyZDE5ZWYzM2NjYmZjMDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTQ2MTIsInN1bV90b3RhbCI6MTM1OTIsIm15X2NhcnQiOiJNRUFTUDA3Iiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjEwMjAsImNhcnRfY291bnQiOjQsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fSwiZGlzY291bnQiOjAsIjMiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjI0OTl9LCIyIjp7InNrdSI6Ik1FQVNQMzAiLCJuYW1lIjoiYmxhY2sgc2hpbnkgc2hlcndhbmkiLCJzdWJfdG90YWwiOjE2OTgsIm1ycCI6ODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6ODQ5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjg0OX0sIjQiOnsic2t1IjoiREIxOTkiLCJuYW1lIjoic2hpbnkgZ3JleSBibGF6ZXIiLCJzdWJfdG90YWwiOjI4OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjE0NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ0OX19	2016-08-15 04:36:26.623553-04
j4hjapl60rdcxxlub332sp2ew0pz2zpf	MDY1YmI5NWEzZGFlYTg0OTRmMDEzYzJhMDQxNTU0NDcxYWI0ODNhNjp7fQ==	2016-08-14 10:25:45.484987-04
k7xp98lc0cm4x22tgiol29efqvhcx99x	OWYxYmM1Zjg5Y2ZjYzc4ODM2ZjUwYzg4Mzk1NjM3MmY3YjY1Y2ZmYTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MH0=	2016-08-15 03:45:41.583028-04
lb2ysvxzxuljnjcva5jggasrjb15bl4g	OWM4NjhiMTJjOGVhM2JkNmVhZGIwNmVlNGRjMTUxNjUyYWVlNzQyMzp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjEyNCwic3VtX3RvdGFsIjo1Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0MjgsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fX0=	2016-08-15 07:13:38.551096-04
h8gmkbpwmsuygim0ngazysvhzgj52wyj	NzAxNWVjOTFiZjJhZmNlNDg3NzA4N2MxNjNjNDdiNmU3YjcxMTQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2ZmI2ZjQ0NGVhODQzMDFiNDJiZWUyYTU2ZTQ5ZDcyYTM4NDIxYWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2016-08-16 09:03:04.605365-04
z4vjb2q81n2c8ovnypsphcx8fx0scx7n	M2JjMWNhOGFkYTcxYWZlYTc0MTc2NTc3NjcxZjZhNjI1NGM5ZWQ4Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzE5OCwic3VtX3RvdGFsIjo2Njk1LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1MDMsImNhcnRfY291bnQiOjEsIjEiOnsic2t1IjoiREIxOTkiLCJuYW1lIjoic2hpbnkgZ3JleSBibGF6ZXIiLCJzdWJfdG90YWwiOjI4OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0NDksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6MTQ0OX0sImRpc2NvdW50IjowLCIzIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE0NDl9LCIyIjp7InNrdSI6IkRCMTk5IiwibmFtZSI6InNoaW55IGdyZXkgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjE0NDl9fQ==	2016-08-15 04:24:03.195782-04
er180ee9miqz2o8ehh9v3o0xd9oxuqbv	ZWEyNGRlZDJjYjliZmEwNTg4ZTg0NGRlYTQ2YjE0YjE3ZDJjYWQ2MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjEyNCwic3VtX3RvdGFsIjo1Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4Ijo0MjgsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJyZW50IjoxOTk5fX0=	2016-08-15 04:30:54.447944-04
hahjdl5pfuilkizpsymtgjdjtyb5szjl	ZDdiYmU4NzdkMzc4YzMxZTg0NGU0NDU5ZjJlNjA4OTIxZGZhNTBiOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjQ0Niwic3VtX3RvdGFsIjo1OTk2LCJteV9jYXJ0IjoiV0VTSTQzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjQ1MCwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRUFTUDA3IiwibmFtZSI6ImVtYmVsbGlzaGVkIGNyZWFtIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCJkaXNjb3VudCI6MCwiMyI6eyJza3UiOiJNRUFTUDA3IiwibmFtZSI6ImVtYmVsbGlzaGVkIGNyZWFtIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjozOTk4LCJtcnAiOjIwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoxOTk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE5OTl9LCIyIjp7InNrdSI6Ik1FQVNQMDciLCJuYW1lIjoiZW1iZWxsaXNoZWQgY3JlYW0gc2hlcndhbmkiLCJzdWJfdG90YWwiOjM5OTgsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjE5OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTk5OX19	2016-08-15 07:19:43.037321-04
dgpwohh3m7wuy9lj3ksn4z607iuuujh5	MGY0NDA0NzA5OWU0MWEzNmMyNWNhMTBmYTg5YjZkMzI1ZmZmZjg1Yjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTEzOTEsInN1bV90b3RhbCI6MTA1OTYsIm15X2NhcnQiOiJXRUFTUDI0IiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjc5NSwiY2FydF9jb3VudCI6MiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCIxIjp7InNrdSI6IldFQVNQMjQiLCJuYW1lIjoiY3JlYW1pc2ggbGVoZW5nYSIsInN1Yl90b3RhbCI6NzU5OCwibXJwIjozODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6Mzc5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjozNzk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVSQ1AyMyIsIm5hbWUiOiIzIHBpZWNlIGJyb3duIHN1aXQiLCJzdWJfdG90YWwiOjI5OTgsIm1ycCI6MzAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjE0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ5OX0sIl9hdXRoX3VzZXJfaGFzaCI6Ijc1NDkwZDYyYmY3YzBlYzg0M2RhZWVmOTU1YTgxMGVmNzE1Yzg2MWEiLCJvcmRlcl90eXBlIjoicmVudCJ9	2016-08-16 10:39:17.726016-04
d01q44qkjfsvrd19pe4bpprerwjfvl12	MTM1YTZlMzFlZWZlNzEwNGFkZTdhYTQ3OWY5OTQ0YThmMDk2OThkMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzE5OSwic3VtX3RvdGFsIjo2Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1MDMsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjI0OTl9fQ==	2016-08-15 04:37:23.037669-04
cllpxwd7g5ajjuiiwoo364655b356rqg	MmI0MzQxNTkyYjViMjAxYjQ5YzFhNWMzNTk1NzZkZmIwZmViNmFhOTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6OTY3NSwic3VtX3RvdGFsIjo5MDAwLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJidXkiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJjYXJ0X2NvdW50IjoyLCJ0YXgiOjY3NSwiMSI6eyJza3UiOiJNRUFTUDMwIiwibmFtZSI6ImJsYWNrIHNoaW55IHNoZXJ3YW5pIiwic3ViX3RvdGFsIjo0MDAwLCJtcnAiOjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInNlY3VyaXR5X2RlcG9zaXQiOjAsIm9yZGVyX3R5cGUiOiJidXkiLCJyZW50Ijo0MDAwfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiREIyMDEiLCJuYW1lIjoidmVsdmV0eSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjUwMDAsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjUwMDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfX0=	2016-08-15 04:46:49.277951-04
zhn72k3jpfd9s8vm0z2dji4ujaba1tnn	MTM1YTZlMzFlZWZlNzEwNGFkZTdhYTQ3OWY5OTQ0YThmMDk2OThkMTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NzE5OSwic3VtX3RvdGFsIjo2Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo1MDMsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTSTQzIiwibmFtZSI6IndoaXRlIGdvd24gd2l0aCB3b3JrIiwic3ViX3RvdGFsIjo0OTk4LCJtcnAiOjI1MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoyNDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjI0OTl9fQ==	2016-08-15 04:52:30.260829-04
klmiyio7k0bdavezrqp5z86mbyqe4ged	YzQ0YTM2NjBjNGIxYmU1ZWU2ZDgzYjUwNmY1YjZhNjBhZmFkNmY5NTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6ODM4Mywic3VtX3RvdGFsIjo3Nzk4LCJteV9jYXJ0IjoiV0VTSTQzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjU4NSwiY2FydF9jb3VudCI6MSwiMSI6eyJza3UiOiJNRVNCUDA2IiwibmFtZSI6ImJyb3duaXNoIGNyZWFtIHNoZXJ3YW5pIHNldCIsInN1Yl90b3RhbCI6NTYwMCwibXJwIjoyODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6MjgwMCwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoyODAwfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVTQlAwNiIsIm5hbWUiOiJicm93bmlzaCBjcmVhbSBzaGVyd2FuaSBzZXQiLCJzdWJfdG90YWwiOjU2MDAsIm1ycCI6MjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjI4MDAsIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjgwMH19	2016-08-15 07:28:01.016057-04
0imuhw22dalhk643myxdbqyap53u9fkg	MTUzMTgzYzY3NTgyYzQzZjJmMTljMDE1MjlmMTA2OTJjYTE5OTk1Njp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX19	2016-08-15 09:51:30.219808-04
h4ac06m52nybe1e8d8a17gyjnf63hl1z	OWI3MTQ5NmUyYWQ3ZDA2ZWY1ZjYxZTY0ZDQ3YTgyMGI2ZDUzNWU1YTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VTSFAzMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJXRVNJNDMiLCJuYW1lIjoid2hpdGUgZ293biB3aXRoIHdvcmsiLCJzdWJfdG90YWwiOjQ5OTgsIm1ycCI6MjUwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjI0OTksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MjQ5OX19	2016-08-15 05:15:02.841524-04
8kklcrm3nej9x58frv0mmfwjjyx9f7mt	ODAwNGU3NDk1MDMyZDVmZWI0YjA4ZmRmZDFlODgxYTMzZWVhZmU1Zjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjowLCJkaXNjb3VudCI6MCwiMiI6eyJza3UiOiJNRUFTUDMwIiwibmFtZSI6ImJsYWNrIHNoaW55IHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxNjk4LCJtcnAiOjgwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjg0OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4NDl9fQ==	2016-08-15 05:21:54.375892-04
9d9muj49xu7wj7lgko9p9xzrdq4nf8bz	NjVlZDI0NWUxYWI1YTI1YTFiMDZlZTZjYjcwODFjYjkxZTNhOTE5OTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjg5OSwic3VtX3RvdGFsIjoyNjk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjoyMDMsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJzZWN1cml0eV9kZXBvc2l0Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50IiwicmVudCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTSFAzMSIsIm5hbWUiOiJjcmVhbSBzYXJlZSB3aXRoIHJlZCBncmVlbiBib3JkZXJzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6Mzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjQ5OX19	2016-08-15 05:35:12.66112-04
onwtroevrfha7j54ttikonxnb58zm3dc	MGU1YzExNzg3ODgwNDAyYzRlOTEzNmY1ZTNjN2I2YjEwMTI5YWQ3MDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6Mjg5OSwic3VtX3RvdGFsIjoyNjk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4IjoyMDMsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiV0VTSFAzMSIsIm5hbWUiOiJjcmVhbSBzYXJlZSB3aXRoIHJlZCBncmVlbiBib3JkZXJzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6Mzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX19	2016-08-15 05:38:53.1296-04
2fibihf0d78fkjrayvkno97q7spbfdhz	MWM1Y2Y3NjRmODBlMzc2N2I4MzUxNWNlOTg5OWRlNzdiZDZlODIwNjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjEyNCwic3VtX3RvdGFsIjo1Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MSwidGF4Ijo0MjgsIjEiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6Mzk5OCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0IiwicmVudCI6MTk5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTk5fX0=	2016-08-15 07:07:26.026634-04
08oqj1183fhpibyzuxocqjdh8pjzqvja	MjE4YzRmOTQ4YTQzNTM1Mjg4NTliZDMyM2Q0ZWE0YzI4YjZmZTYyZTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MCwic3VtX3RvdGFsIjowLCJteV9jYXJ0IjoiV0VTSTQzIiwib3JkZXJfdHlwZSI6InJlbnQiLCJsb2dpbl9jaGFubmVsIjoiRkIiLCJ0YXgiOjAsImRpc2NvdW50IjowLCIyIjp7InNrdSI6Ik1FQVNQMzAiLCJuYW1lIjoiYmxhY2sgc2hpbnkgc2hlcndhbmkiLCJzdWJfdG90YWwiOjE2OTgsIm1ycCI6ODAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjg0OX19	2016-08-15 06:22:59.39656-04
jfnkibifadr17yny6apxfdahkmklr50a	MmZiNTRhZDVhMjU3OTYxMTZmNzg2NTFiOTM2ZmFlNGVmNWFjMTg3ZDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NDQ1Niwic3VtX3RvdGFsIjo0MTQ1LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4IjozMTEsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiREIyMDEiLCJuYW1lIjoidmVsdmV0eSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjI4OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjE0NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ0OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IkRCMjAxIiwibmFtZSI6InZlbHZldHkgYmxhY2sgYmxhemVyIiwic3ViX3RvdGFsIjoyODk4LCJtcnAiOjEwMDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50IjoxNDQ5LCJvcmRlcl90eXBlIjoicmVudCIsInNlY3VyaXR5X2RlcG9zaXQiOjE0NDl9fQ==	2016-08-15 06:30:15.658647-04
9mmmcpahiinyeaw3uz8flre2sxqultv7	ZDRjNTgzNjk4ZTJlZjg5ZTdlMGI5MTIwMmQyNjZhOTliMzJmNGIyNDp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MzIyMSwic3VtX3RvdGFsIjoyOTk2LCJteV9jYXJ0IjoiV0VTSFAzMSIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwiY2FydF9jb3VudCI6MiwidGF4IjoyMjUsIjEiOnsic2t1IjoiV0VTSFAzMSIsIm5hbWUiOiJjcmVhbSBzYXJlZSB3aXRoIHJlZCBncmVlbiBib3JkZXJzIiwic3ViX3RvdGFsIjo5OTgsIm1ycCI6Mzk5OSwiZnJvbV9kYXRlIjoiMjAxNi0wOC0wMiIsInRvX2RhdGUiOiIyMDE2LTA4LTA0Iiwic2VjdXJpdHlfZGVwb3NpdCI6NDk5LCJvcmRlcl90eXBlIjoicmVudCIsInJlbnQiOjQ5OX0sImRpc2NvdW50IjowLCIyIjp7InNrdSI6IldXQ0s1MCIsIm5hbWUiOiJsaWdodCBncmVlbiBkcmVzcyIsInN1Yl90b3RhbCI6Mzk4LCJtcnAiOjI1MDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjE5OSwib3JkZXJfdHlwZSI6InJlbnQiLCJzZWN1cml0eV9kZXBvc2l0IjoxOTl9fQ==	2016-08-15 07:35:33.353625-04
89coxnj6vs5y9kxuwjq4zsmfbejxdvkx	MTg1OGQwODI0NzZjYThlYThjYTI1MTNmMzg5OGM2ZmQwZDM4ZmYwNTp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6NjEyNCwic3VtX3RvdGFsIjo1Njk2LCJteV9jYXJ0IjoiTUVBU1AzMCIsIm9yZGVyX3R5cGUiOiJyZW50IiwibG9naW5fY2hhbm5lbCI6IkZCIiwidGF4Ijo0MjgsImNhcnRfY291bnQiOjIsIjEiOnsic2t1IjoiTUVBU1AzMCIsIm5hbWUiOiJibGFjayBzaGlueSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTY5OCwibXJwIjo4MDAwLCJmcm9tX2RhdGUiOiIyMDE2LTA4LTAyIiwidG9fZGF0ZSI6IjIwMTYtMDgtMDQiLCJyZW50Ijo4NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6ODQ5fSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiREIyMDEiLCJuYW1lIjoidmVsdmV0eSBibGFjayBibGF6ZXIiLCJzdWJfdG90YWwiOjI4OTgsIm1ycCI6MTAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDgtMDIiLCJ0b19kYXRlIjoiMjAxNi0wOC0wNCIsInJlbnQiOjE0NDksIm9yZGVyX3R5cGUiOiJyZW50Iiwic2VjdXJpdHlfZGVwb3NpdCI6MTQ0OX19	2016-08-15 06:41:41.218302-04
0jgudvylpz9084de0q5zgs3rk5ip33lo	NzlkOWJkYjRkY2ZlMjFiYTAyM2FhOWM1YWVmMjUyOTRiNTg1MjBkMjp7ImxvZ2luX2lkIjoiUmFodWwiLCJncmFuZF90b3RhbCI6MTkzNDQsInN1bV90b3RhbCI6MTc5OTQsIm15X2NhcnQiOiJNRUFTUDA3Iiwib3JkZXJfdHlwZSI6ImJ1eSIsImxvZ2luX2NoYW5uZWwiOiJGQiIsImNhcnRfY291bnQiOjEsInRheCI6MTM1MCwiMSI6eyJza3UiOiJNRUFTUDA3IiwibmFtZSI6ImVtYmVsbGlzaGVkIGNyZWFtIHNoZXJ3YW5pIiwic3ViX3RvdGFsIjoxMDAwMCwibXJwIjoyMDAwMCwiZnJvbV9kYXRlIjoiMjAxNi0wNS0yOCIsInRvX2RhdGUiOiIyMDE2LTA1LTI4IiwicmVudCI6MTAwMDAsIm9yZGVyX3R5cGUiOiJidXkiLCJzZWN1cml0eV9kZXBvc2l0IjowfSwiZGlzY291bnQiOjAsIjIiOnsic2t1IjoiTUVBU1AwNyIsIm5hbWUiOiJlbWJlbGxpc2hlZCBjcmVhbSBzaGVyd2FuaSIsInN1Yl90b3RhbCI6MTAwMDAsIm1ycCI6MjAwMDAsImZyb21fZGF0ZSI6IjIwMTYtMDUtMjgiLCJ0b19kYXRlIjoiMjAxNi0wNS0yOCIsInJlbnQiOjEwMDAwLCJvcmRlcl90eXBlIjoiYnV5Iiwic2VjdXJpdHlfZGVwb3NpdCI6MH19	2016-08-15 06:44:30.416375-04
\.


--
-- Data for Name: ecommerce_accessory; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_accessory (id, sku, name, description, color, image, "timestamp", type_id) FROM stdin;
\.


--
-- Name: ecommerce_accessory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_accessory_id_seq', 1, false);


--
-- Data for Name: ecommerce_accessory_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_accessory_type (id, name) FROM stdin;
\.


--
-- Name: ecommerce_accessory_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_accessory_type_id_seq', 1, false);


--
-- Data for Name: ecommerce_address; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_address (id, name, address_1, address_2, city, state, country, pincode, phone, geolocation, "timestamp", customer_id) FROM stdin;
135	Komal	11649/1 sat nagar karol bagh		New delhi	Delhi	India	110005	9821712990	\N	2016-05-20 16:05:15.57037-04	37
63	raj	23rd main road, ayodhya nagar, jp nagar 5th phrase	jp nagar 6th phrase	bangalore	Karnataka	India	560078	9615472380	\N	2016-04-12 12:27:56.304769-04	27
141	Bharath	1762 , madhuvan, 34th cross	15th main, behind kadirenahalli park	Bangalore	Karnataka	India	560070	9740361830	\N	2016-05-23 11:23:00.588413-04	40
147	Raj	Main Palace ground, near vasanth nagar		bangalore	Karnataka	India	560072	8088552583	\N	2016-05-25 04:04:30.152824-04	43
149	Madan	Linganahalli, kakolu post, hesaragatta hobli, bangalore		Bangalore	Karnataka	India	560089	9591621615	\N	2016-05-25 04:12:46.801444-04	44
151	Preethy	12A VARADARJAPET MAIN ROAD	CHOOLAIMEDU	CHENNAI	Tamil Nadu	India	600094	9551297870	\N	2016-05-27 00:16:26.970458-04	46
153	Hemlata	3253/1, 3rd main road, rajyotsava nagar, kumar swamy layout, 2nd stage		bangalore	Karnataka	India	560078	9035905215	\N	2016-05-27 02:58:04.636161-04	42
171	Aditya	32, 23 B cross, ejipura		Bangalore	Karnataka	India	560047	9620057693	\N	2016-06-03 06:08:30.552099-04	52
173	M.ranjan	Klm	Klm	Bangalore	Karnataka	India	560068	9900921205	\N	2016-06-03 08:48:08.035471-04	53
175	Seema	11/46 A Tilak Nagar		New Delhi	Delhi	India	110018	8177870705	\N	2016-06-03 10:55:14.151468-04	54
177	Seema	11/46 A Tilak Nagar		New Delhi	Delhi	India	110018	8177870705	\N	2016-06-03 11:09:24.634575-04	54
178	Seema	11/46 A Tilak Nagar		New Delhi	Delhi	India	110018	9555234058	\N	2016-06-03 11:32:34.112432-04	54
180	Akshata	101	Manipal hasopatal.rathan bhag	Bangalore	Karnataka	India	560069	9900035891	\N	2016-06-04 10:31:28.226551-04	57
182	Kavya	209, Sky part appartment, 4th cross, doddakammanahalli main road, off begur road, bannerghata main road		Bangalore	Karnataka	India	560047	9632866117	\N	2016-06-05 11:37:15.047511-04	59
184	shweta	202, Raju Mansion, 20-K Chandra reddy layout, Ejipura		Bangalore	Karnataka	India	560047	9686395810	\N	2016-06-05 11:50:51.098501-04	25
186	Saurabh 	Room no:9, Kadur Complex, Rajarajeshwari Nagar, Near raghavendra swami temple, Temple street,Bangalore		Bangalore	Karnataka	India	560098	8951306252	\N	2016-06-08 10:53:53.141343-04	62
188	Priyanka	20/7 purushotam road  Ulsoor 		Bangalore	Karnataka	India	560008	8123338418	\N	2016-06-09 11:40:05.119958-04	65
190	chirag 	#9, 8th main	15th I cross, Bandappa garden, Muthyalanagar	Bangalore	Karnataka	India	560054	9611213247	\N	2016-06-10 03:25:24.803419-04	67
192	Ritasha	304, Shantha unique pg,  green Glen layout,  bellandur		Bangalore	Karnataka	India	560035	9916867177	\N	2016-06-11 09:39:36.973706-04	69
194	Shylaja	001, Plot no 223, Dhanalakshmi Residency, 3rd main, 6th cross, OMBR layout, Banaswadi		Bangalore	Karnataka	India	560043	9844362111	\N	2016-06-13 03:22:54.720491-04	72
196	Joy	Crescent business park		Mumbai	Maharashtra	India	400067	9819521254	\N	2016-06-13 04:17:45.163478-04	73
198	saurabh	your neighbour		Bangalore	Karnataka	India	560042	8884357444	\N	2016-06-15 03:00:03.443587-04	76
200	Mehul	#1910/3 7th main road, E Block,	2nd stage Rajajinagar, Subramanyanagar	Bangalore	Karnataka	India	560010	8088552583	\N	2016-06-16 06:31:14.170547-04	43
202	Somya	1ccross	Rajajinagar	Bangalore 	Karnataka	India	560010	8884980550	\N	2016-06-16 11:37:26.021521-04	78
203	Srijana 	BP Indian public school, 5th main, 11th cross, malleshwaram		Bangalore	Karnataka	India	560003	9845880088	\N	2016-06-17 05:23:59.285395-04	79
205	Prajna	204, A - block, HSR trinity appartment, bandepalya, GB palya		Bangalore	Karnataka	India	560068	8722699600	\N	2016-06-17 12:12:20.428981-04	81
207	Divya Philip	No.15, 3rd main	Shankarnagar	Bangalore	Karnataka	India	560096	9880742930	\N	2016-06-17 12:31:14.54789-04	82
209	Sandeep	F27, Diamond district, Old Airport road		Bangalore	Karnataka	India	560008	9562799777	\N	2016-06-18 04:04:46.87087-04	84
130	naheem	alpine viva,seegahalli,kadugodi(po)		banglore	Karnataka	India	560067	8147230441	\N	2016-05-18 10:49:24.326397-04	32
132	Punith	12A near sent an's convent 	Kasuru kodlipete, somawarapet taluk, Madikeri	Bangalore	Karnataka	India	571321	7406786484	\N	2016-05-19 01:37:40.446771-04	34
134	praveen kumar	sri sai balaji pg, basavanapura ,main road, 4th cross, near wings honda service		Bangalore	Karnataka	India	560049	9535505439	\N	2016-05-19 03:53:14.808865-04	36
211	ARIHANT	593, 44th Cross, 5th Block 	Jayanagar	Bangalore	Karnataka	India	560041	9035216643	\N	2016-06-20 09:44:54.520604-04	86
213	Dehariya	#33, 10th A Cross	Mahadeshwara Layout	Bangalore	Karnataka	India	560023	9442574267	\N	2016-06-20 12:51:37.96931-04	88
215	Abhishek	C2 HOUSE NO 18	Gottigere	Bangalore	Karnataka	India	560083	7259705151	\N	2016-06-21 08:46:48.213657-04	89
217	Dharna	Thermofischer scientific 	3 EPIP,whitefield	Bangalore	Karnataka	India	560066	9066243723	\N	2016-06-21 13:54:17.680697-04	91
219	Anitesh	Flat E-737	Crossings Republik, Near ABES Enginnering	Ghaziabad	Uttar Pradesh	India	201010	8527953505	\N	2016-06-22 05:18:48.99998-04	93
221	NITESH	46, ANNA PILLAI STREET		CHENNAI	Tamil Nadu	India	600001	9884962067	\N	2016-06-22 07:22:59.827436-04	95
223	Pritesh	Rh no 19, dayalji sankul		Nashik	Maharashtra	India	422008	9028136235	\N	2016-06-22 13:12:18.845762-04	97
225	vaibhav 	indira nagr		ujjain	Madhya Pradesh	India	456001	8109100560	\N	2016-06-22 14:17:53.757529-04	101
227	Piyush	P-122	New Block Hostel, IIM Bangalore	Bangalore	Karnataka	India	560076	8511744070	\N	2016-06-23 22:08:38.22702-04	104
229	Phijo	407,Shravanthi Gardens	17th cross,13th main, JP Nagar 5th phase,	Bangalore	Karnataka	India	560078	9035580532	\N	2016-06-26 07:37:22.696682-04	105
231	Deepak	Vishakom,MCRA - 25	Manayilkulangara	Kollam	Kerala	India	691012	9496328815	\N	2016-06-27 09:04:15.246798-04	108
233	Harsh	52, 20th "A" Main, Venkateshwara layout, Near KEB office	BTM 1st stage	Bangalore	Karnataka	India	560068	9019531753	\N	2016-06-29 05:49:06.597286-04	110
235	sibaram	House 20/201, 10th main 11th cross, malleshpallya , maruthi nagar		Bangalore	Karnataka	India	560075	9886009598	\N	2016-06-29 17:48:26.883425-04	111
237	ARUN	11th floor, brigade rubric,no 20 hmt watch factory road	Yeshwantpur	bengaluru	Karnataka	India	560022	7353980567	\N	2016-07-01 04:54:40.894061-04	114
239	Rishabh	53/78,Chinnamuthu Street,	Nasianoor Road, 1st Cross,	Erode	Tamil Nadu	India	638011	9092024765	\N	2016-07-03 13:47:19.661832-04	117
241	Ritu	D-1103,taverekere road, Kormangla 		Bangalore	Karnataka	India	560095	9871927955	\N	2016-07-05 04:08:50.351773-04	119
243	Ritu	D-1103,taverekere road, Kormangla 		Bangalore	Karnataka	India	560095	9871927955	\N	2016-07-05 04:09:06.029901-04	120
245	Ritu	D-1103,taverekere road, Kormangla 		Bangalore	Karnataka	India	560095	9871927955	\N	2016-07-05 04:10:16.184925-04	120
247	Asok	HSR Layout	29th main 	Bangalore	Karnataka	India	560102	9740990663	\N	2016-07-05 04:51:54.894243-04	121
249	A	HSR Layout	29th main 	Bangalore	Karnataka	India	560102	9740990663	\N	2016-07-05 04:54:48.974624-04	121
251	madan	213, 	new bel road	Bangalore	Karnataka	India	560054	8050000393	\N	2016-07-07 04:08:48.737266-04	125
253	madan	213,	new bel road	Bangalore	Karnataka	India	560054	8050000393	\N	2016-07-07 04:32:16.248837-04	125
255	Tilak	Kr puram	Gayathri layout	Bangalore	Karnataka	India	560036	9844261995	\N	2016-07-08 02:55:39.738381-04	128
136	mohammed abdul	#64, 4 th cross near rizwan masjid and mahaveer wilton apartment jp nagar 5 th phase		bangalore	Karnataka	India	560078	9108681876	\N	2016-05-21 12:22:02.975006-04	38
140	Atul	House no 3, 19th main,20th cross, SMS layout	nearCOSMO bakery, JP nagar 5th phase	bangalore	Karnataka	India	560078	8884362543	\N	2016-05-23 01:44:05.864647-04	39
142	mohammed	#64,jp nagar 5 th phase , near rizwan masjid and mahaveer wilton apartment		bangalore	Karnataka	India	560078	9535047658	\N	2016-05-24 05:04:23.167431-04	38
146	Ajith	Scope International pvt ltd, Tower B 6th floor, bridge tech park, near ITPL		bangalore	Karnataka	India	560066	9632919088	\N	2016-05-25 04:00:19.345009-04	42
148	Madan	Linganahalli, kakolu post, hesaragatta hobli, bangalore	560089	Bangalore	Karnataka	India	560089	9591621615	\N	2016-05-25 04:10:41.621207-04	44
150	Sushant	sri sai PG, near to HDFC bank, hunasamaranahalli		Bangalore	Karnataka	India	562157	9036547848	\N	2016-05-25 05:16:14.613219-04	45
152	abd	ASBH	hbk	bangalore	Karnataka	India	560066	9689999999	\N	2016-05-27 00:40:04.249312-04	47
72	raj	24TH MAIN, BIG MARKET, jp nagar 6th phase		Bangalore	Karnataka	India	560078	8904663774	\N	2016-04-15 09:03:54.232517-04	29
154	Radha	52, Adarsh Villa	JPNAGAR	Bangalore	Karnataka	India	560007	8498345967	\N	2016-05-27 09:55:38.773377-04	50
170	Mayank	109, 5th block koramangala		Bangalore	Karnataka	India	560095	7829374754	\N	2016-05-28 09:47:58.371803-04	51
172	M.ranjan	Klm	Klm	Bangalore	Karnataka	India	560068	9900921205	\N	2016-06-03 08:47:59.052482-04	53
174	M.ranjan	Klm	Klm	Bangalore	Karnataka	India	560068	9900921205	\N	2016-06-03 08:48:09.262269-04	53
176	Seema	11/46 A Tilak Nagar		New Delhi	Delhi	India	110018	8177870705	\N	2016-06-03 11:08:32.165372-04	54
179	Vinodhini	Accenture Services, 36/2 DivyaSree technopark	KR Puram Hubli, Whitefield	Bangalore	Karnataka	India	560066	7406055667	\N	2016-06-04 05:56:20.727366-04	55
181	md imran 	511 model colony 	1st b cross yeswanthpur	bangalore	Karnataka	India	560022	8971148113	\N	2016-06-05 11:32:20.027009-04	60
183	Shylaja	001, house no. 223, Bhanalakshmi Residency, 3rd Main, 6th cross, OMBR layout, banaswadi		Bangalore	Karnataka	India	560043	9844362111	\N	2016-06-05 11:44:30.97434-04	25
185	Arindam	G16, SLS Serenity	Opp JP Morgan, Kadubeesanahalli	Bangalore	Karnataka	India	560107	8861953982	\N	2016-06-06 05:43:37.470429-04	61
187	Harshitha	337/3, Harsha kuteera, thimmareddy layout, hulimangala, electronic city		Bangalore	Karnataka	India	560100	9591288136	\N	2016-06-09 01:28:06.748202-04	63
189	sephali	samrudhi suites	dodathogur , electronic city-1	banglore	Karnataka	India	560100	8105716083	\N	2016-06-10 02:12:56.510289-04	66
191	Stanzin	Getttagary, near water tank	Rajarajeshwari nagar	Bangalore	Karnataka	India	560098	8050614410	\N	2016-06-10 11:17:03.360279-04	68
193	abc	acs	acsd	suratgarh	Rajasthan	India	335804	1234	\N	2016-06-12 11:24:45.182475-04	71
195	Joy	Crescent business park		Mumbai	Maharashtra	India	400067	9819521254	\N	2016-06-13 04:17:07.8043-04	73
197	dilip	no 8 7th cross Anepalaya	Bazar street	Bangalore	Karnataka	India	560030	8095745148	\N	2016-06-14 07:17:53.977438-04	75
199	aditi	109, v.s cozy apartment, 23rd main, 18th cross, j.p nagar 6th phase	behind royal school	bangalore	Karnataka	India	560078	7795002058	\N	2016-06-15 07:04:57.397055-04	77
201	Somya	1ccross	Rajajinagar	Bangalore 	Karnataka	India	560010	8884980550	\N	2016-06-16 11:37:15.476373-04	78
204	Vandana	C4,310, kagdasspura main road	vignan Nagar	Bangalore	Karnataka	India	560075	9986031123	\N	2016-06-17 07:00:29.883176-04	80
206	Divya Philip	No.15, 3rd main	Shankarnagar	Bangalore	Karnataka	India	560096	9880742930	\N	2016-06-17 12:25:24.984655-04	82
208	Manjunath 	No 21 14th cross shiva shakthi nilayam l.n puram Srirampuram bangalore 		Bangalore 	Karnataka	India	560021	7899392231	\N	2016-06-18 02:19:35.399725-04	83
210	Chinmay	Royal Orchid 		Bangalore	Karnataka	India	556806	8123000552	\N	2016-06-19 08:58:00.843393-04	85
131	Aashish	#228/4, 5th Main,KG.Nagar		Bangalore	Karnataka	India	560019	8050072038	\N	2016-05-19 01:34:38.013275-04	33
133	Babu	21,laxmi apartments	HSR	Bangalore 	Karnataka	India	560067	802472460	\N	2016-05-19 01:44:18.278837-04	35
212	Kartheek	Saggezza 	Solitaire building, Near Hero Showroom bus stop, Opposite Madurai Idli Shop, Domlur	Bangalore 	Karnataka	India	560071	7353574588	\N	2016-06-20 09:48:50.158551-04	87
214	Manjunath 	No 21 14th cross shiva shakthi nilayam l.n puram Srirampuram bangalore 	123	Bangalore 	Karnataka	India	560021	7899392231	\N	2016-06-21 02:32:25.71663-04	83
216	Anand 	Bangalore		Bangalore	Karnataka	India	560029	9900935097	\N	2016-06-21 12:20:06.914349-04	90
218	Kanaga Ragav	#501, Malabar PG, APJ Abdul Kalam Layout	Marathahalli, Landmark: Opposite ISRO front gate on ORR	Bangalore	Karnataka	India	560037	8123970739	\N	2016-06-22 02:09:45.099308-04	92
220	deepak	ed-1/506 sector d-1 l.d.a colony kanpur road 		Lucknow 	Uttar Pradesh	India	226012	7318254509	\N	2016-06-22 06:48:45.04955-04	94
222	Imran	B/24/1/1/H/4 BRIGHT STREET		Kolkatta	West Bengal	India	700017	8013256239	\N	2016-06-22 07:46:39.795863-04	96
224	Abhishek	5/847	Vikas Nagar	Lucknow	Uttar Pradesh	India	226022	8181001818	\N	2016-06-22 13:41:01.243692-04	98
226	shweta	202, Raju Mansion, 20-K Chandra reddy layout, Ejipura		Bangalore	Karnataka	India	560047	9686395810	\N	2016-06-23 12:00:30.330644-04	25
228	Piyush	Room no. P122	New Block Hostel, IIM Bangalore	Bangalore 	Karnataka	India	560076	9712984720	\N	2016-06-24 00:12:57.226782-04	104
230	Hemanth	HDFC Bank	22/24 Sarjapura main road kormangala 1st block 	Bangalore	Karnataka	India	560034	8884799094	\N	2016-06-26 12:13:21.048382-04	106
232	steve	test test test test	5555	Mumbai	Maharashtra	India	400084	9820728229	\N	2016-06-29 05:00:42.912684-04	109
234	harsh	52, 20 A Main, Venkateshwara layout	BTM 1st stage	Bangalore	Karnataka	India	560068	9019531753	\N	2016-06-29 10:34:38.9535-04	110
236	Mehul	6104 Prestige Tranquility, Budigere Cross	Off Old Madras Road	Bangalore	Karnataka	India	560049	9611387228	\N	2016-07-01 03:16:19.458081-04	113
238	Pradeep	242	4th main,  3rd phase,  JP nagar	Bangalore	Karnataka	India	560078	9742021903	\N	2016-07-03 08:03:59.179467-04	116
240	Vignesh 	#48/63,LAKSHIMINIVAS 	Basavanagudi	Bangalore	Karnataka	India	560004	9844438234	\N	2016-07-04 09:20:55.82068-04	118
242	Ritu	D-1103,taverekere road, Kormangla 		Bangalore	Karnataka	India	560095	9871927955	\N	2016-07-05 04:08:57.856756-04	119
244	Ritu	D-1103,taverekere road, Kormangla 		Bangalore	Karnataka	India	560095	9871927955	\N	2016-07-05 04:09:40.475279-04	120
246	Ritu	Tavereke road, Koramangala		Bangalore	Karnataka	India	560095	9871927955	\N	2016-07-05 04:16:54.585327-04	120
248	A	HSR Layout	29th main 	Bangalore	Karnataka	India	560102	9740990663	\N	2016-07-05 04:54:42.845778-04	121
250	SHANKAR	A32 MAGNOLIA , TATA SHERWOOD APTY	BASAVANAGAR	Bangalore	Karnataka	India	560037	9980560592	\N	2016-07-05 14:39:58.298825-04	123
252	madan	213,	new bel road	Bangalore	Karnataka	India	560054	8050000393	\N	2016-07-07 04:22:29.736289-04	125
254	Nutan	8 main	8cross	Bangalore	Karnataka	India	560061	9880536664	\N	2016-07-07 05:41:26.141218-04	126
256	Anshika	Brigade Metropolis	B 701 garudacharpalya	Bangalore	Karnataka	India	560048	7829816003	\N	2016-07-08 04:46:21.103051-04	129
257	Sumanth	88,surveyor Street. Basavanagudi		Bangalore	KA	India	560004	9880271588	\N	2016-07-08 08:50:43.151839-04	130
258	steve	test test test test test		Bangalore	Karnataka	India	560017	9820728229	\N	2016-07-08 10:09:42.48397-04	109
259	Nabil	Accenture 	Koramangala 	Bangalore	Karnataka	India	560095	9880495413	\N	2016-07-09 03:28:06.808219-04	131
260	Jyoti 	5th main	Cross	BANGALORE	KARNATAKA	India	560098	9740441636	\N	2016-07-10 00:32:32.137979-04	132
261	Murali Krishna	B10-1306, L&T South CIty	Arekere MICO Layout, Off BG Road	Bangalore	Karnātaka	India	560076	9845500755	\N	2016-07-10 06:54:56.13442-04	133
262	Mohammed Aasim	#200 	3rd cross, viveknagar	Bangalore	Karnataka	India	560047	7349521684	\N	2016-07-10 07:37:39.248499-04	134
263	Shirin 	shivananda nagar 	Jp nagar 	Bangalore	Karnataka	India	560078	9886809292	\N	2016-07-11 08:18:04.72175-04	135
264	Divek	A-1,saptagiri homes,bohra layout	Gottigere,banerghatta road	Bangalore	Karnataka	India	560083	9741465712	\N	2016-07-12 08:28:30.683083-04	136
265	Naveen	330 pothalappa garden adugodi		Bangalore	Karnataka	India	560030	9739148207	\N	2016-07-12 10:27:04.965787-04	137
266	shameer	bissmilla nager	bannergatta main road east end	Bangalore	Karnataka	India	560029	8147318074	\N	2016-07-13 06:19:24.69505-04	138
267	Aaron	Saint Josephs Commerce college, Brigade road		Bangalore	Karnataka	India	560084	9738200656	\N	2016-07-13 07:17:38.364893-04	139
268	Diwakar	67, 1st A Main 6th Cross, ISRO Layout Bangalore	105	Bangalore	Karnataka	India	560076	9845285975	\N	2016-07-13 11:56:36.725183-04	140
269	Rampriyan	grape garden 	koramangala 6 th block 	Coimbatore	Tamil Nadu	India	560034	9003550400	\N	2016-07-13 23:39:46.147939-04	142
270	Prajval	369	Old Airport rd	Bangalore	Karnataka	India	560017	9845279367	\N	2016-07-14 10:49:08.502138-04	143
271	Tony	Kinlong, #6richmond road	Richmond road 	Bangalore	Karnataka	India	560023	8939069306	\N	2016-07-14 11:28:36.906719-04	144
272	Sunil	781 28th Main Road	BTM Layout 2nd Stage	Bangalore	Karnataka	India	560076	9449816041	\N	2016-07-15 22:18:19.72117-04	145
273	nagaraj	SLVR luxury PG for gents	190/141516, whitefield road, itpl, near hoodi.	Bangalore	Karnataka	India	560084	8123987109	\N	2016-07-16 09:21:08.387991-04	146
274	Harshitha	Itpl	Park square mall	Bangalore	Karnataka	India	566066	7760090033	\N	2016-07-17 06:23:16.573203-04	147
275	MADHU	ALEBG04,MANAR SILVER SHADOWS	KASAVANAHALLI,SARJAPPUR ROAD	Bangalore	Karnataka	India	560035	8861203241	\N	2016-07-18 03:36:22.835407-04	148
276	Neeraj	368/B,Zone No.6	Birsangar	Jamshedpur	Jharkhnd	India	831019	9576901723	\N	2016-07-18 09:56:17.154715-04	149
277	Aniruddha	Laxmi Homes	Ejipura 4th cross	Bangalore	Karnataka	India	560095	9686024421	\N	2016-07-19 04:00:41.098996-04	150
278	Rashmi 	52/3, Ashajyoti Nilaya,	4th A Cross 	Bangalore	Karnataka	India	560047	9901710296	\N	2016-07-19 05:02:36.814905-04	151
279	Nagaraju	Stp investment	Whitfield	Bangalore	Karnataka	India	560066	8147752347	\N	2016-07-20 01:38:23.654841-04	152
280	Geetha	#103, 7th Main, 	9th Cross, Srinivasnagar , near Bata Showroom	Bangalore	Karnataka	India	560050	9738251614	\N	2016-07-21 05:31:29.562213-04	153
281	Amandeep	1 Floor H No 739, 6th block	Kormangla	Bangalore	KARNATAKA	India	560095	9130751989	\N	2016-07-22 14:39:59.944485-04	154
282	Ashish	#7/1, MSREC Road	Mathikere Extention	Bangalore	Karnataka	India	560054	7411933651	\N	2016-07-24 02:18:29.438854-04	103
283	Ashish	#7/1, MSREC Road	Mathikere Extention	Bangalore	Karnataka	India	5600054	741193651	\N	2016-07-24 02:27:09.936492-04	103
284	Jithesh	21/1 jk padmalaya 1st floor 	Michaelpalya new thippasandra post	Bangalore	Karnataka	India	560075	9591963366	\N	2016-07-24 03:25:54.64117-04	155
285	Jithesh	21/1 jk padmalaya 1st floor 	Michaelpalya new thippasandra post	Bangalore	Karnataka	India	560075	9591963366	\N	2016-07-24 03:26:15.241059-04	155
286	Jithesh	21/1 jk padmalaya 1st floor 	Michaelpalya new thippasandra post	Bangalore	Karnataka	India	560075	9591963366	\N	2016-07-24 03:26:38.769781-04	155
287	Maduri	Hsr	23 cross near Cambridge school	Bangalore's	Karnataka	India	560068	9916173213	\N	2016-07-24 05:26:53.404226-04	156
288	Maduri	Hsr	23 cross near Cambridge school	Bangalore's	Karnataka	India	560068	9916173213	\N	2016-07-24 05:27:15.864014-04	156
289	Sundar	41/A 18th Main, 22 A Cross, 3rd Sector, HSR	HSR Layout	Bangalore	Karnataka	India	560102	9964545666	\N	2016-07-25 09:45:18.543045-04	157
290	Sundar	41/A 18th Main, 22 A Cross, 3rd Sector, HSR	HSR Layout	Bangalore	Karnataka	India	560102	9964545666	\N	2016-07-25 09:45:28.197689-04	157
291	Bulle	G4 building, Cognizant Technology solutions, Manyatha Tech Park	Nagawara, Bangalore, Karnataka, India-560045	Bangalore	Karnataka	India	560045	8553717141	\N	2016-07-25 14:53:23.271442-04	158
292	VenuGopal	Eco Space, block 10, Accenture, Bellandur		Bangalore	Karnataka	India	560037	9030350357	\N	2016-07-27 02:20:34.927084-04	159
293	Sravan	15/1, 3rd D cross, 21st Main road, Btm 2nd stage		Bangalore	Karnataka	India	560076	9632064059	\N	2016-07-27 03:24:30.419252-04	161
294	Meenakshi	1, first floor,  mounashree layout, kothnur dinne main road, JP nagar,  7th Phase, 		Bangalore	Karnataka	India	560078	9448962353	\N	2016-07-27 08:18:04.658118-04	162
295	Riyaz	12/old /4modliyar street		Bangalore	Karnataka	India	560053	9845324591	\N	2016-07-28 02:06:49.397538-04	163
300	Nithin	#3316, 80 feet road, hosakerahalli cross	Banashankari, 3rd stage	Bangalore	Karnataka	India	560085	9036175077	\N	2016-07-31 10:25:37.444297-04	167
\.


--
-- Name: ecommerce_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_address_id_seq', 300, true);


--
-- Data for Name: ecommerce_brand; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_brand (id, name, logo, fb_link, comments, visibility_flag, designer_flag, "timestamp", description, handle) FROM stdin;
154	MANYAVAR		\N	\N	t	f	2016-04-21 13:10:08.375737-04	\N	\N
157	Ruby Mogra		\N	\N	t	f	2016-04-21 13:10:09.151872-04	\N	\N
158	Lambas		\N	\N	t	f	2016-04-21 13:10:09.160892-04	\N	\N
160	Soch		\N	\N	t	f	2016-04-21 13:10:09.599989-04	\N	\N
161	PRAPTI		\N	\N	t	f	2016-04-21 13:10:09.641814-04	\N	\N
162	NEERU'S		\N	\N	t	f	2016-04-21 13:10:09.664644-04	\N	\N
163	Calvin Klein		\N	\N	t	f	2016-04-21 13:10:09.688047-04	\N	\N
164	SANJAY & SHAMMY		\N	\N	t	f	2016-04-21 13:10:10.063311-04	\N	\N
165	ZODEX		\N	\N	t	f	2016-04-21 13:10:10.149651-04	\N	\N
167	Stile		\N	\N	t	f	2016-04-21 13:10:10.648164-04	\N	\N
173	FOREVER 21		\N	\N	t	f	2016-04-21 13:10:11.972693-04	\N	\N
174	ESPIRIT		\N	\N	t	f	2016-04-21 13:10:12.298919-04	\N	\N
177	PROVOGUE		\N	\N	t	f	2016-04-21 13:10:12.504718-04	\N	\N
178	KUDOZ STUDIO		\N	\N	t	f	2016-04-21 13:10:12.996344-04	\N	\N
182	CON-CAVE		\N	\N	t	f	2016-04-21 13:10:13.735121-04	\N	\N
183	PURVA		\N	\N	t	f	2016-04-21 13:10:13.849034-04	\N	\N
184	GIOVANI		\N	\N	t	f	2016-04-21 13:10:14.098447-04	\N	\N
185	RAYMOND		\N	\N	t	f	2016-04-21 13:10:14.350253-04	\N	\N
190	SOUCIKA		\N	\N	t	f	2016-04-21 13:10:15.292447-04	\N	\N
194	AMEENA'S ATTIRE		\N	\N	t	f	2016-04-21 13:10:16.274882-04	\N	\N
199	MANOVIRAJ KHOSLA		\N	\N	t	f	2016-04-21 13:10:18.08849-04	\N	\N
200	JOHN MILLER		\N	\N	t	f	2016-04-21 13:10:18.631252-04	\N	\N
201	BLACKBERRYS		\N	\N	t	f	2016-04-21 13:10:18.873193-04	\N	\N
169	Jaune				t	f	2016-04-21 13:10:11.307518-04		jaune
198	LATIN QUARTERS				t	f	2016-04-21 13:10:17.865646-04		LatinQuarters
197	AND				t	f	2016-04-21 13:10:17.297038-04		And
196	ELLE				t	f	2016-04-21 13:10:16.64629-04		Kazo
195	ALLEN SOLLY				t	f	2016-04-21 13:10:16.491618-04		AllenSolly
193	MANGO				t	f	2016-04-21 13:10:16.040553-04		Kazo
192	HARPA				t	f	2016-04-21 13:10:15.7184-04		Harpa
191	109F				t	f	2016-04-21 13:10:15.707326-04		109
189	WITH				t	f	2016-04-21 13:10:15.064696-04		Kazo
188	CHEMISTRY				t	f	2016-04-21 13:10:14.857463-04		Kazo
187	FLIRTATIOUZ				t	f	2016-04-21 13:10:14.577883-04		Kazo
186	FOREVER21				t	f	2016-04-21 13:10:14.564117-04		Kazo
181	D Muse				t	f	2016-04-21 13:10:13.547101-04		Kazo
180	ZARA				t	f	2016-04-21 13:10:13.260015-04		Kazo
179	LONDON TIMES				t	f	2016-04-21 13:10:13.004283-04		Kazo
176	FOREVER NEW				t	f	2016-04-21 13:10:12.488834-04		Kazo
175	VERO MODA				t	f	2016-04-21 13:10:12.374494-04		Kazo
172	U.S. POLO ASSN.				t	f	2016-04-21 13:10:11.864505-04		Kazo
171	Mini Singh				t	f	2016-04-21 13:10:11.712684-04		Kazo
170	ARROW				t	f	2016-04-21 13:10:11.458708-04		arrow
168	ONLY				t	f	2016-04-21 13:10:11.199736-04		Kazo
166	VAN HEUSEN				t	f	2016-04-21 13:10:10.373133-04		Kazo
159	KAZO				t	f	2016-04-21 13:10:09.469509-04		Kazo
156	CandidKnots				t	f	2016-04-21 13:10:08.82567-04		Kazo
153	Zaayra				t	f	2016-04-21 13:10:08.088498-04		Kazo
155	The Dress Bank				t	f	2016-04-21 13:10:08.561476-04		Kazo
\.


--
-- Name: ecommerce_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_brand_id_seq', 201, true);


--
-- Data for Name: ecommerce_cart; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_cart (id, from_date, to_date, "timestamp", customer_id, product_id, size_id) FROM stdin;
\.


--
-- Name: ecommerce_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_cart_id_seq', 1, false);


--
-- Data for Name: ecommerce_collection; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_collection (id, name, handle, description, comments, visibility_flag, "timestamp") FROM stdin;
6	Women Western	women-western			t	2016-02-03 08:33:31.634781-05
7	Women Ethnic	women-ethnic			t	2016-02-03 08:34:23.592436-05
8	Men Western	men-western			t	2016-02-03 08:34:42.357526-05
9	Men Ethnic	men-ethnic			t	2016-02-03 08:35:06.764948-05
10	INDO WESTERN DRESSES & EVENING	women-indo-western			t	2016-02-03 08:35:32.619011-05
11	80% Flash Sale	sale	\N	\N	t	2016-06-03 10:43:51.08525-04
\.


--
-- Name: ecommerce_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_collection_id_seq', 11, true);


--
-- Data for Name: ecommerce_collection_tags; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_collection_tags (id, collection_id, tag_id) FROM stdin;
\.


--
-- Name: ecommerce_collection_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_collection_tags_id_seq', 1, false);


--
-- Data for Name: ecommerce_customer; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_customer (id, first_name, last_name, email, fb_profile_link, fb_profile_pic, id_proof, birth_date, work, education, signup_ip, signup_ua, "timestamp", id_type_id, signup_medium, fb_id) FROM stdin;
11	rahul	gayakwad	rkg.iitb@gmail.com	\N			\N	\N	\N	\N	\N	2016-02-03 14:58:26.608614-05	\N	\N	\N
12	Rahul	gayakwad	dj@gmail.com	\N			\N	\N	\N	\N	\N	2016-02-03 15:08:06.803405-05	\N	\N	\N
17	Rishi	Poddar	rishipoddar.s@gmail.com	http://fb.com/10153629745239681			\N	\N	\N	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 15:13:42.163088-05	\N	Desktop, Facebook	10153629745239681
21	Devesh	Verma	dvshverma@gmail.com	http://fb.com/1039860322756143			\N	\N	\N	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 04:31:57.033893-04	\N	Desktop, Facebook	1039860322756143
24	Shweta	Poddar	shwetapoddar_s@yahoo.co.in	http://fb.com/10208371204493820			\N	\N	\N	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 05:08:17.591176-04	\N	Desktop, Facebook	10208371204493820
25	shweta	Poddar	shweta.poddar@candidknots.com	\N			\N	\N	\N	\N	\N	2016-04-12 07:30:02.015059-04	\N	\N	\N
26	Raj	Sah	undefined	http://fb.com/956574767744234			\N	\N	\N	103.16.71.15	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:25:58.192963-04	\N	Desktop, Facebook	956574767744234
27	raj	ricky	rajricky6827@gmail.com	\N			\N	\N	\N	\N	\N	2016-04-12 12:27:56.300941-04	\N	\N	\N
28	sfsd	dsfs	dgd	\N			\N	\N	\N	\N	\N	2016-04-14 06:08:47.800496-04	\N	\N	\N
29	raj	sahu	sahu6827@gmail.com	\N			\N	\N	\N	\N	\N	2016-04-15 08:43:13.782193-04	\N	\N	\N
30	dsf	ass	sds@sdfs.com	\N			\N	\N	\N	\N	\N	2016-04-27 08:11:04.209697-04	\N	\N	\N
31	test	sdkj	wdvqjd@kdw.hdg	\N			\N	\N	\N	\N	\N	2016-05-08 10:29:55.838222-04	\N	\N	\N
32	naheem	hs	naheemmohammedc@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-18 10:49:23.639557-04	\N	\N	\N
33	Aashish	Rao	aashishrao03@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-19 01:34:38.008042-04	\N	\N	\N
34	Punith	Kp	kppunith@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-19 01:37:40.442518-04	\N	\N	\N
35	Babu	Rao	babuapte@yahoo.com	\N			\N	\N	\N	\N	\N	2016-05-19 01:44:18.274212-04	\N	\N	\N
36	praveen kumar	s	praveen2020athithi@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-19 03:53:14.800225-04	\N	\N	\N
37	Komal	Kareer	komalkareer43@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-20 16:05:15.564071-04	\N	\N	\N
38	Md	Rehman	abdulrehmanaccacfa@gmail.com	http://fb.com/273734042973762			\N	\N	\N	122.172.169.248	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-21 12:20:12.314144-04	\N	Desktop, Facebook	273734042973762
39	Atul 	Dharma	dharmaatul@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-23 01:24:59.47553-04	\N	\N	\N
40	Bharath	Sharma 	bharathsharman007@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-23 11:23:00.585851-04	\N	\N	\N
41	sushant	magdum	sushantmagdum25@gmail	\N			\N	\N	\N	\N	\N	2016-05-24 15:27:48.635681-04	\N	\N	\N
42	Ajith	Rao	rentsher@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-25 04:00:19.342148-04	\N	\N	\N
43	Raj	Jain	mehul2296@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-25 04:04:30.149834-04	\N	\N	\N
44	Madan	Gowda	madmadan52@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-25 04:10:41.616813-04	\N	\N	\N
45	Sushant	Mugdam	sushantmagdum25@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-25 05:16:14.60983-04	\N	\N	\N
46	Preethy	Senthilkumar	sangeepp@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-27 00:16:26.966583-04	\N	\N	\N
47	abd	DEF	abcd@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-27 00:40:04.246603-04	\N	\N	\N
48	Hemlata	Singh	rentsher-hemlata@gmail.com				\N			\N		2016-05-27 03:37:31.893143-04	\N		
49	Vishnu	Vardhan	vishnu61189@gmail.com	http://fb.com/1320408611308882			\N	\N	\N	49.202.11.151	Mozilla/5.0 (Linux; Android 6.0.1; A0001 Build/MMB29X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36	2016-05-27 06:46:31.993645-04	\N	Desktop, Facebook	1320408611308882
50	Radha	Gupta	guptaradha12@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-27 09:55:38.769518-04	\N	\N	\N
51	Mayank	B	mayankbhatnagar.udr@gmail.com	\N			\N	\N	\N	\N	\N	2016-05-28 09:47:57.339351-04	\N	\N	\N
52	Aditya	UNNIKRISHNAN	adityaunni94@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-03 06:08:30.529342-04	\N	\N	\N
53	M.ranjan	Babu	mranjanbabu991@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-03 08:47:59.049522-04	\N	\N	\N
54	Seema	Chaudhary	prasad.kurmi@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-03 10:55:14.149181-04	\N	\N	\N
55	Vinodhini	Krishnamoorthy	vinodhinimoorthy@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-04 05:56:20.677258-04	\N	\N	\N
56	Kavyashree	Gowda	kavya.shree.jagannath@gmail.com	http://fb.com/10205403301836616			\N	\N	\N	60.243.251.105	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-04 09:05:58.793008-04	\N	Desktop, Facebook	10205403301836616
57	Akshata	Aks	akshata-47@yahoo.com	\N			\N	\N	\N	\N	\N	2016-06-04 10:31:28.215079-04	\N	\N	\N
58	Prashanth	Koppula	koppula@gmail.com	http://fb.com/10154189600794804			\N	\N	\N	106.51.141.159	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-05 00:26:56.897879-04	\N	Desktop, Facebook	10154189600794804
59	Kavya	Shri	kavya.shree.jagannatha@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-05 11:27:23.822861-04	\N	\N	\N
60	md imran 	a	imranimmu280@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-05 11:32:19.973321-04	\N	\N	\N
61	Arindam	Chakraborty	arismart99@gmail.com	http://fb.com/1151944994845326			\N	\N	\N	103.19.212.8	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-06 05:42:47.817091-04	\N	Desktop, Facebook	1151944994845326
62	Saurabh 	Murarka	saurabhmurarka14@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-08 10:53:53.134-04	\N	\N	\N
63	Harshitha	Gowda	anongirlfriend646@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-09 01:28:06.745095-04	\N	\N	\N
64	Catherine	Ammu	caths.n@gmail.com	http://fb.com/10209590732343514			\N	\N	\N	43.247.156.9	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0	2016-06-09 01:55:56.124254-04	\N	Desktop, Facebook	10209590732343514
65	Priyanka	Laxman	priyanka.bubbly3107@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-09 11:40:05.11704-04	\N	\N	\N
66	sephali	dash	sephalidash09@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-10 02:12:56.507757-04	\N	\N	\N
67	chirag 	V	chiruvenkat05@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-10 03:25:24.801379-04	\N	\N	\N
68	Stanzin	Namgyal	stanzinnamgyl@yahoo.in	\N			\N	\N	\N	\N	\N	2016-06-10 11:17:03.358174-04	\N	\N	\N
69	Ritasha	Tasha	ritz.tasha11@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-11 09:39:36.971621-04	\N	\N	\N
70	TrisĦa	MeĦta	tmmehta3005@gmail.com	http://fb.com/1110983252287834			\N	\N	\N	103.226.87.87	Mozilla/5.0 (Linux; Android 6.0.1; SAMSUNG SM-G925I Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/4.0 Chrome/44.0.2403.133 Mobile Safari/537.36	2016-06-12 07:29:59.12529-04	\N	Desktop, Facebook	1110983252287834
71	abc	asf	adskjb@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-12 11:24:45.180143-04	\N	\N	\N
72	Shylaja	Sunaina	shylaja@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-13 03:22:54.718234-04	\N	\N	\N
73	Joy	Dsouza	joy@wyze.com	\N			\N	\N	\N	\N	\N	2016-06-13 04:17:07.80174-04	\N	\N	\N
74	Kanchana	Arandhara	karandhara@rediffmail.com	http://fb.com/1148024775217745			\N	\N	\N	180.151.240.90	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/601.3.9 (KHTML, like Gecko) Version/9.0.2 Safari/601.3.9	2016-06-14 03:44:26.892618-04	\N	Desktop, Facebook	1148024775217745
75	dilip	kumar	dilip_kumar543@yahoo.com	\N			\N	\N	\N	\N	\N	2016-06-14 07:17:53.974453-04	\N	\N	\N
76	saurabh	test	saurabh.bhandari.it@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-15 03:00:03.440977-04	\N	\N	\N
77	Sweety	Vyas	sweetyvyas51@gmail.com	http://fb.com/10208366065340932			\N	\N	\N	180.215.39.250	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-15 06:55:13.203332-04	\N	Desktop, Facebook	10208366065340932
78	Somya	R	g.poornima1993@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-16 11:37:15.472278-04	\N	\N	\N
79	Srijana 	Rahul	srijanapradhan@yahoo.com	\N			\N	\N	\N	\N	\N	2016-06-17 05:23:59.280738-04	\N	\N	\N
80	Vandana	Sharma	vandanasharma.1309@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-17 07:00:29.879983-04	\N	\N	\N
81	Prajna	Mallur	prajna.mallur@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-17 12:12:20.420897-04	\N	\N	\N
82	Divya	Philip	divyaphilip.5.6@gmail.com	http://fb.com/10153762638158391			\N	\N	\N	72.163.217.102	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586	2016-06-17 12:22:29.411327-04	\N	Desktop, Facebook	10153762638158391
83	Manjunath 	Samar 	thanishka30@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-18 02:19:35.396611-04	\N	\N	\N
84	Sandeep	Johnson	sandeep956@yahoo.com	\N			\N	\N	\N	\N	\N	2016-06-18 04:04:46.867345-04	\N	\N	\N
85	Chinmay	Joshi	chinmayjoshi2010@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-19 08:58:00.840322-04	\N	\N	\N
86	ARIHANT	JAIN	arihantmonty@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-20 09:44:54.517658-04	\N	\N	\N
87	Kartheek	Gollanapalli	kartheek6776@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-20 09:48:50.154742-04	\N	\N	\N
88	Dehariya	Nishanth	nishantd03@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-20 12:51:37.966242-04	\N	\N	\N
89	Abhishek	Tiwari	abhishektiwari3112@gmail.com	http://fb.com/10153757875543214			\N	\N	\N	106.51.24.172	Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-21 08:45:49.255055-04	\N	Desktop, Facebook	10153757875543214
90	Anand 	Lakshman	newonestar2u@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-21 12:20:06.911089-04	\N	\N	\N
91	Dharna	Kachroo	dharnakachroo@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-21 13:54:17.6773-04	\N	\N	\N
92	Kanaga Ragav	Kanaga Subramanian	ragav2k@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-22 02:09:45.096543-04	\N	\N	\N
93	Anitesh	Saunders	aniteysh@gmail.com	http://fb.com/10153518614631949			\N	\N	\N	121.244.213.212	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 05:17:51.668557-04	\N	Desktop, Facebook	10153518614631949
94	deepak	sangwan	deepusangwan08@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-22 06:48:45.046451-04	\N	\N	\N
95	NITESH	MALI	NITS388AP@YAHOO.IN	\N			\N	\N	\N	\N	\N	2016-06-22 07:22:59.823643-04	\N	\N	\N
96	Imran	Qureshi	coolsuppzzz@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-22 07:46:39.79305-04	\N	\N	\N
97	Pritesh	Chitte	chitte.pritesh1992@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-22 13:12:18.842112-04	\N	\N	\N
98	Abhishek	Singh	abhisinghinspired@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-22 13:41:01.240827-04	\N	\N	\N
99	Vishal	Saxena	vishal.saxena08@gmail.com	http://fb.com/10154207595198340			\N	\N	\N	27.7.216.159	Mozilla/5.0 (Linux; Android 4.4.2; SM-G7102 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-22 13:56:11.412972-04	\N	Desktop, Facebook	10154207595198340
100	Vaibhav	Ghatiya	vghatiya@gmail.com	http://fb.com/1026149244117526			\N	\N	\N	49.202.150.115	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 14:16:21.295562-04	\N	Desktop, Facebook	1026149244117526
101	vaibhav 	ghatiya	vaibhavghatiya@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-22 14:17:53.754588-04	\N	\N	\N
102	Hemanth	Kadam	kadam134@gmail.com	http://fb.com/1029133323808813			\N	\N	\N	103.228.221.183	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-23 11:23:46.53278-04	\N	Desktop, Facebook	1029133323808813
103	Ashish	Gupta	ashish.2007g@gmail.com	http://fb.com/1238048279569091			\N	\N	\N	43.247.156.14	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36	2016-06-23 12:12:19.705069-04	\N	Desktop, Facebook	1238048279569091
104	Piyush	Kumar	ppiyushkk@yahoo.co.in	\N			\N	\N	\N	\N	\N	2016-06-23 22:08:38.223811-04	\N	\N	\N
105	Phijo	Joseph	phijo_jo@yahoo.com	\N			\N	\N	\N	\N	\N	2016-06-26 07:37:22.691636-04	\N	\N	\N
106	Hemanth	kumar	hemanthkumarw90@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-26 12:13:21.045325-04	\N	\N	\N
107	Deepak	Ajith	deepakakawarlock@gmail.com	http://fb.com/1301941839834885			\N	\N	\N	111.92.47.22	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-27 09:02:56.445414-04	\N	Desktop, Facebook	1301941839834885
108	Deepak	A	dr.deepak.tmc@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-27 09:04:15.24388-04	\N	\N	\N
109	steve	jobs	stevejobs24@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-29 05:00:42.900516-04	\N	\N	\N
110	Harsh	Agrawal	chiksagl@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-29 05:49:06.594475-04	\N	\N	\N
111	sibaram	nayak	sibaram84@gmail.com	\N			\N	\N	\N	\N	\N	2016-06-29 17:48:26.879714-04	\N	\N	\N
112	Veeranjaneyulu	Kacherla	veera.dheerah@gmail.com	http://fb.com/10209694291612526			\N	\N	\N	121.244.55.150	Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-01 02:32:12.787871-04	\N	Desktop, Facebook	10209694291612526
113	Mehul	Khatri	khatri.mehul@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-01 03:16:19.447815-04	\N	\N	\N
114	ARUN	BABU	arunbabusb@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-01 04:54:40.890704-04	\N	\N	\N
115	Shruti	Ranjan	shruti.xyz@gmail.com	http://fb.com/10154219081227570			\N	\N	\N	49.248.46.181	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-02 06:00:06.275908-04	\N	Desktop, Facebook	10154219081227570
116	Pradeep	Javedar	pradeep.javedar@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-03 08:03:59.176729-04	\N	\N	\N
117	Rishabh	Poddar	poddarrishabh@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-03 13:47:19.658063-04	\N	\N	\N
118	Vignesh 	NS	victoryvignesh@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-04 09:20:55.817756-04	\N	\N	\N
119	Ritu	Jain	ritujain1977@yahoo	\N			\N	\N	\N	\N	\N	2016-07-05 04:08:50.34795-04	\N	\N	\N
120	Ritu	Jain	ritujain1977@yahoo.com	\N			\N	\N	\N	\N	\N	2016-07-05 04:09:06.027002-04	\N	\N	\N
121	Asok	RAMACHANDRAN	asoksempire@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-05 04:51:54.89098-04	\N	\N	\N
122	Nandan	Singh	nandan.1345@gmail.com	http://fb.com/1386383374709061			\N	\N	\N	106.51.23.84	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-05 06:44:19.896136-04	\N	Desktop, Facebook	1386383374709061
123	SHANKAR	GANESH	ganesh.shankar@ge.com	\N			\N	\N	\N	\N	\N	2016-07-05 14:39:58.295655-04	\N	\N	\N
124	Manisha	Kashyap	manisha@hopscotch.in	http://fb.com/1269145249776255			\N	\N	\N	43.224.173.222	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-06 15:36:40.358977-04	\N	Desktop, Facebook	1269145249776255
125	madan	kumar	madansmkumar@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-07 04:08:48.72793-04	\N	\N	\N
126	Nutan	Kattapuram	nutankattapuram@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-07 05:41:26.13791-04	\N	\N	\N
127	Sumanth	Gadi	sumanth_gr@yahoo.co.uk	http://fb.com/10153810504407399			\N	\N	\N	122.172.213.39	Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-07-08 02:14:39.907997-04	\N	Desktop, Facebook	10153810504407399
128	Tilak	Singh	tilaksingh1995@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-08 02:55:39.734646-04	\N	\N	\N
129	Anshika	Rai	nshkr04@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-08 04:46:21.099661-04	\N	\N	\N
130	Sumanth	G	sumanth.gadi@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-08 08:50:43.148877-04	\N	\N	\N
131	Nabil	Ashraf	mna.nabil@icloud.com	\N			\N	\N	\N	\N	\N	2016-07-09 03:28:06.804626-04	\N	\N	\N
132	Jyoti 	ADITYA 	jyotiaditya007@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-10 00:32:32.132504-04	\N	\N	\N
133	Murali Krishna	Rambhatla	muralirambhatla@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-10 06:54:56.126509-04	\N	\N	\N
134	Mohammed Aasim	Aasim	asim.xi@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-10 07:37:39.242961-04	\N	\N	\N
135	Shirin 	Nagraj	shirinnagraj1806@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-11 08:18:04.714964-04	\N	\N	\N
136	Divek	Mehta	mehta.divek@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-12 08:28:30.679192-04	\N	\N	\N
137	Naveen	Naveen	bnpd.bnpd@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-12 10:27:04.962119-04	\N	\N	\N
138	shameer	pasha	shameerpasha7786@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-13 06:19:24.691585-04	\N	\N	\N
139	Aaron	K	aaron@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-13 07:17:38.361896-04	\N	\N	\N
140	Diwakar	MB	diwakarmb@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-13 11:56:36.721716-04	\N	\N	\N
141	Ram	Priyan	ramrgcetece@gmail.com	http://fb.com/1099566770090348			\N	\N	\N	122.171.102.156	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-13 23:21:20.796035-04	\N	Desktop, Facebook	1099566770090348
142	Rampriyan	E	ramgallos@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-13 23:39:46.143853-04	\N	\N	\N
143	Prajval	J	prajvalprince@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-14 10:49:08.49514-04	\N	\N	\N
144	Tony	Perayil	tonyperayil@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-14 11:28:36.903741-04	\N	\N	\N
145	Sunil	Nair	nairsunil2404@yahoo.com	\N			\N	\N	\N	\N	\N	2016-07-15 22:18:19.717794-04	\N	\N	\N
146	nagaraj	V	naga4298@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-16 09:21:08.384057-04	\N	\N	\N
147	Harshitha	H	h.harshitha1990@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-17 06:23:16.569843-04	\N	\N	\N
148	Madhu	Mohan	madhumohan4514@gmail.com	http://fb.com/10154408018968413			\N	\N	\N	122.15.156.73	Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko	2016-07-18 03:34:47.155647-04	\N	Desktop, Facebook	10154408018968413
149	Neeraj	Prabhat	psycholoverboy@ymail.com	\N			\N	\N	\N	\N	\N	2016-07-18 09:56:17.151688-04	\N	\N	\N
150	Aniruddha	Purohit	aniruddhakp012@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-19 04:00:41.095592-04	\N	\N	\N
151	Rashmi 	S	rashmift76@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-19 05:02:36.811788-04	\N	\N	\N
152	Nagaraju	Nagaraju	nagaraju.kotapati@yahoo.com	\N			\N	\N	\N	\N	\N	2016-07-20 01:38:23.6509-04	\N	\N	\N
153	Geetha	Raj	geethavinni999@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-21 05:31:29.557046-04	\N	\N	\N
154	Amandeep	Bhatia	bhatia.aman76@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-22 14:39:59.937066-04	\N	\N	\N
155	Jithesh	Ramaiah	jithesh.nemo@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-24 03:25:54.634334-04	\N	\N	\N
156	Maduri	Uddar	madhurihuddar@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-24 05:26:53.400917-04	\N	\N	\N
157	Sundar	Nagaraj	sundar.nagaraju@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-25 09:45:18.538624-04	\N	\N	\N
158	Bulle	Mohd	najeebmd23@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-25 14:53:23.26862-04	\N	\N	\N
159	VenuGopal	K	venugopal@accenture.com	\N			\N	\N	\N	\N	\N	2016-07-27 02:20:34.915285-04	\N	\N	\N
161	Sravan	Kumar	sravanrf@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-27 03:24:30.416055-04	\N	\N	\N
162	Meenakshi	K	sbishiva@yahoo.co.in	\N			\N	\N	\N	\N	\N	2016-07-27 08:18:04.652214-04	\N	\N	\N
163	Riyaz	Pasha	rpasha246@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-28 02:06:49.389552-04	\N	\N	\N
164	Test	Shweta	asdnsa@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-28 06:39:30.025583-04	\N	\N	\N
165	Test	Shweta	sadas@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-28 06:43:18.271014-04	\N	\N	\N
166	Test	Shweta	dsd@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-28 12:28:13.232337-04	\N	\N	\N
167	Nithin	kumar	nithinjain2016@gmail.com	\N			\N	\N	\N	\N	\N	2016-07-31 10:25:37.4386-04	\N	\N	\N
\.


--
-- Data for Name: ecommerce_customer_feedback; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_customer_feedback (id, rating, main_criteria, feedback, "timestamp", customer_id, order_id) FROM stdin;
\.


--
-- Name: ecommerce_customer_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_customer_feedback_id_seq', 1, false);


--
-- Name: ecommerce_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_customer_id_seq', 167, true);


--
-- Data for Name: ecommerce_customer_login; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_customer_login (id, login_ip, login_ua, "timestamp", customer_id, login_medium) FROM stdin;
42	127.0.0.1	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0	2016-02-03 14:58:27.013347-05	11	\N
43	127.0.0.1	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0	2016-02-03 14:59:26.172294-05	11	\N
44	127.0.0.1	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0	2016-02-03 14:59:56.138907-05	11	\N
45	127.0.0.1	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0	2016-02-03 15:08:07.191667-05	12	\N
29	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 12:34:31.509-05	\N	\N
30	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 12:38:45.764-05	\N	\N
31	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 12:39:51.218-05	\N	\N
32	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:08:09.013-05	\N	\N
33	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:08:59.334-05	\N	\N
34	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:08:59.532-05	\N	\N
35	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:10:05.191-05	\N	\N
36	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:11:22.337-05	\N	\N
37	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:12:47.063-05	\N	\N
38	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:23:03.867-05	\N	\N
39	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:23:51.853-05	\N	\N
40	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:44:12.538-05	\N	\N
41	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 13:47:19.594-05	\N	\N
46	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:15:30.324-05	\N	\N
47	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:21:43.822-05	\N	\N
48	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:22:05.886-05	\N	\N
49	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:38:32.638-05	\N	\N
50	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:39:15.776-05	\N	\N
51	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:46:55.153-05	\N	\N
52	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:47:53.325-05	\N	\N
53	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:53:45.815-05	\N	\N
54	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:55:04.755-05	\N	\N
55	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 15:55:51.419-05	\N	\N
56	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 16:01:58.701-05	\N	\N
57	127.0.0.1	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36	2016-02-03 16:05:32.946-05	\N	\N
58	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 15:13:42.16994-05	17	Desktop, Facebook
59	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 15:16:05.305299-05	17	Desktop, Facebook
60	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 15:59:19.423803-05	17	Desktop, Facebook
61	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:01:34.933744-05	17	Desktop, Facebook
62	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:02:54.737681-05	17	Desktop, Facebook
63	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:19:19.424117-05	17	Desktop, Facebook
64	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:20:21.10315-05	17	Desktop, Facebook
65	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:27:31.295635-05	17	Desktop, Facebook
66	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:28:32.918381-05	17	Desktop, Facebook
67	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:30:51.563587-05	17	Desktop, Facebook
68	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:31:20.259772-05	17	Desktop, Facebook
69	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:34:11.696379-05	17	Desktop, Facebook
70	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:34:35.352374-05	17	Desktop, Facebook
71	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:35:05.86207-05	17	Desktop, Facebook
72	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:46:13.958331-05	17	Desktop, Facebook
73	122.167.103.77	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36	2016-02-12 16:46:59.033157-05	17	Desktop, Facebook
74	122.178.210.130	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:11:47.6113-04	17	Desktop, Facebook
75	122.178.210.130	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:15:31.742689-04	17	Desktop, Facebook
76	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:24:38.589766-04	\N	Desktop, Facebook
77	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:25:01.830631-04	\N	Desktop, Facebook
78	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:47:36.123478-04	\N	Desktop, Facebook
79	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:51:06.314756-04	\N	Desktop, Facebook
80	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:51:34.723747-04	\N	Desktop, Facebook
81	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 17:53:55.812383-04	\N	Desktop, Facebook
82	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:02:09.531901-04	\N	Desktop, Facebook
83	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:03:11.713767-04	\N	Desktop, Facebook
84	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:25:41.213933-04	\N	Desktop, Facebook
85	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:26:05.452174-04	\N	Desktop, Facebook
86	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:29:20.53104-04	\N	Desktop, Facebook
87	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:30:44.058639-04	\N	Desktop, Facebook
88	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:31:30.670761-04	\N	Desktop, Facebook
89	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:32:51.521288-04	\N	Desktop, Facebook
90	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:37:47.455746-04	\N	Desktop, Facebook
91	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:40:10.631156-04	\N	Desktop, Facebook
92	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:42:26.49258-04	\N	Desktop, Facebook
93	122.178.210.130	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-02 18:43:00.471793-04	\N	Desktop, Facebook
94	171.48.16.35	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-04 04:01:39.742788-04	\N	Desktop, Facebook
95	122.167.11.137	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-05 05:20:36.86083-04	\N	Desktop, Facebook
96	122.167.11.137	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-05 05:21:24.664554-04	\N	Desktop, Facebook
97	122.167.11.137	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-05 06:22:56.553471-04	\N	Desktop, Facebook
98	122.167.119.241	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-05 11:52:53.319093-04	\N	Desktop, Facebook
99	122.172.193.97	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-06 17:04:18.644652-04	\N	Desktop, Facebook
100	171.48.9.160	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-07 04:40:06.468783-04	\N	Desktop, Facebook
101	171.48.9.160	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-07 05:37:19.654243-04	\N	Desktop, Facebook
102	171.48.9.160	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-07 05:44:07.728619-04	\N	Desktop, Facebook
103	171.48.9.160	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-07 05:54:48.17309-04	\N	Desktop, Facebook
104	122.179.71.202	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-08 06:28:22.510494-04	\N	Desktop, Facebook
105	122.179.71.202	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-08 06:46:23.452947-04	\N	Desktop, Facebook
106	122.179.71.202	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-08 07:06:04.414347-04	\N	Desktop, Facebook
107	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 04:31:57.04046-04	21	Desktop, Facebook
108	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 04:35:06.748465-04	21	Desktop, Facebook
109	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 04:37:31.304546-04	21	Desktop, Facebook
110	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 04:44:43.402945-04	21	Desktop, Facebook
111	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 04:51:11.156419-04	21	Desktop, Facebook
112	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 09:04:35.171083-04	\N	Desktop, Facebook
113	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 09:06:19.464361-04	\N	Desktop, Facebook
114	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 09:18:58.302245-04	\N	Desktop, Facebook
115	122.178.156.146	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-09 09:44:51.095103-04	\N	Desktop, Facebook
116	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 02:19:49.423818-04	\N	Desktop, Facebook
117	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 05:00:31.122421-04	\N	Desktop, Facebook
118	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 05:08:17.596838-04	24	Desktop, Facebook
119	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 06:14:03.532207-04	24	Desktop, Facebook
120	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 06:20:56.801795-04	24	Desktop, Facebook
121	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 06:38:05.441747-04	24	Desktop, Facebook
122	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 07:15:48.400659-04	24	Desktop, Facebook
123	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 07:19:13.304797-04	24	Desktop, Facebook
124	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 07:26:14.542828-04	24	Desktop, Facebook
125	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 07:30:02.034794-04	25	\N
126	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 07:30:02.267919-04	25	\N
127	122.166.144.209	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 07:43:06.429598-04	25	\N
128	103.16.71.15	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:25:58.198374-04	26	Desktop, Facebook
129	103.16.71.15	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:27:56.306989-04	27	\N
130	122.167.242.108	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:34:41.019119-04	24	Desktop, Facebook
131	122.167.242.108	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:36:43.100334-04	25	\N
132	122.167.242.108	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:48:18.900532-04	25	\N
133	122.167.242.108	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:50:44.614653-04	25	\N
134	122.167.242.108	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:59:00.072864-04	24	Desktop, Facebook
135	122.167.242.108	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36	2016-04-12 12:59:23.87481-04	25	\N
136	122.171.40.103	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-14 06:08:47.810227-04	28	\N
137	122.171.40.103	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-14 07:45:22.576435-04	21	\N
138	122.171.40.103	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-14 07:46:50.629885-04	21	\N
139	103.16.71.15	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-15 08:42:13.639851-04	26	Desktop, Facebook
140	103.16.71.15	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-15 08:43:13.790609-04	29	\N
141	103.16.71.15	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-15 09:03:54.235852-04	29	\N
142	122.167.10.207	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-25 08:00:28.385416-04	24	Desktop, Facebook
143	122.167.10.207	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-25 08:15:17.275899-04	24	Desktop, Facebook
144	122.167.10.207	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-25 08:21:26.975808-04	24	Desktop, Facebook
145	122.172.248.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-25 08:44:36.372112-04	24	Desktop, Facebook
146	122.167.112.78	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-25 10:33:06.532724-04	24	Desktop, Facebook
147	122.167.112.78	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-25 10:35:18.435424-04	24	Desktop, Facebook
148	122.166.152.39	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-26 07:30:07.993162-04	25	\N
149	122.166.152.39	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-26 07:31:49.601367-04	25	\N
150	122.166.152.39	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-26 07:34:08.436966-04	25	\N
151	122.166.152.39	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-26 07:36:49.518824-04	25	\N
152	122.166.152.39	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-26 07:58:52.77687-04	25	\N
153	122.166.154.250	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 08:11:04.217158-04	30	\N
154	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 14:37:11.818607-04	25	\N
155	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 14:46:07.261662-04	25	\N
156	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 14:54:27.087487-04	25	\N
157	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 15:05:11.764775-04	25	\N
158	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 15:10:06.730703-04	25	\N
159	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 15:12:48.642568-04	25	\N
160	122.178.204.189	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 15:14:08.21822-04	25	\N
161	122.178.204.189	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-04-27 16:32:52.920882-04	17	Desktop, Facebook
162	106.51.132.244	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-08 10:29:55.864268-04	31	\N
163	106.51.132.244	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-08 10:30:35.333032-04	31	\N
164	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 02:37:16.659398-04	25	\N
165	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 03:06:30.382468-04	25	\N
166	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 03:20:56.795305-04	25	\N
167	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 03:37:38.457866-04	25	\N
168	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 04:06:57.063661-04	25	\N
169	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 04:20:44.540575-04	25	\N
170	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 04:39:56.078475-04	25	\N
171	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 04:48:08.852606-04	25	\N
172	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 06:32:41.968719-04	25	\N
173	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 06:38:44.089958-04	25	\N
174	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 06:41:33.749441-04	25	\N
175	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 06:53:47.53556-04	25	\N
176	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 07:02:58.455947-04	25	\N
177	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 07:50:41.634862-04	25	\N
178	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 08:09:21.816618-04	25	\N
179	171.48.14.81	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 08:17:59.747643-04	25	\N
180	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 10:41:06.636178-04	25	\N
181	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 10:52:01.482634-04	25	\N
182	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 10:55:26.277098-04	25	\N
183	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 11:14:22.177785-04	25	\N
184	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 11:20:00.796164-04	25	\N
185	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 11:21:39.513325-04	25	\N
186	122.172.203.177	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-12 11:29:50.701146-04	25	\N
187	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 04:09:53.19751-04	25	\N
188	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 04:18:23.75305-04	25	\N
189	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 04:20:17.61195-04	25	\N
190	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 04:27:28.840622-04	25	\N
191	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 04:48:29.619521-04	25	\N
192	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 04:57:48.387205-04	25	\N
193	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 05:01:31.033371-04	25	\N
194	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 05:10:41.898311-04	25	\N
195	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 05:16:03.512026-04	25	\N
196	122.167.119.175	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 06:18:47.971858-04	25	\N
197	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 07:43:47.037171-04	25	\N
198	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 07:46:35.557812-04	25	\N
199	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 07:46:49.760776-04	25	\N
200	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 08:01:10.53073-04	25	\N
201	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 08:30:46.145424-04	25	\N
202	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 08:35:13.122202-04	25	\N
203	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 08:40:54.839982-04	25	\N
204	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 08:42:40.288419-04	25	\N
205	122.167.119.248	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-14 11:10:06.493769-04	25	\N
206	122.172.179.242	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-18 10:49:25.902067-04	32	\N
207	122.172.202.40	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-19 01:34:38.018977-04	33	\N
208	122.172.202.40	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-19 01:37:40.449231-04	34	\N
209	122.172.202.40	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-19 01:44:18.284191-04	35	\N
210	122.166.170.77	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-19 03:53:14.817547-04	36	\N
211	116.75.232.151	Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13F69 Safari/601.1	2016-05-20 16:05:15.574055-04	37	\N
212	122.172.169.248	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-21 12:20:12.339168-04	38	Desktop, Facebook
213	122.172.169.248	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-21 12:22:03.101238-04	38	\N
214	122.171.84.225	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-23 01:24:59.485486-04	39	\N
215	122.171.84.225	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-23 01:33:36.094041-04	39	\N
216	122.171.219.185	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-23 01:42:41.957003-04	25	\N
217	122.171.84.225	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36	2016-05-23 01:44:05.869292-04	39	\N
218	64.233.173.82	Mozilla/5.0 (Linux; Android 4.4.4; XT1033 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36	2016-05-23 11:23:00.590479-04	40	\N
219	122.167.152.95	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-24 05:04:23.1716-04	38	\N
220	43.247.158.6	Mozilla/5.0 (Android; Mobile; rv:35.0) Gecko/35.0 Firefox/35.0	2016-05-24 15:27:48.645031-04	41	\N
221	43.247.158.6	Mozilla/5.0 (Android; Mobile; rv:35.0) Gecko/35.0 Firefox/35.0	2016-05-24 16:11:20.877869-04	41	\N
222	43.247.158.6	Mozilla/5.0 (Android; Mobile; rv:35.0) Gecko/35.0 Firefox/35.0	2016-05-24 21:48:36.358633-04	41	\N
223	122.167.91.107	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-25 04:00:19.347598-04	42	\N
224	122.167.91.107	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-25 04:04:30.15459-04	43	\N
225	122.167.91.107	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-25 04:10:41.624847-04	44	\N
226	122.167.91.107	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-25 04:12:46.805355-04	44	\N
227	122.171.48.47	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-25 05:16:14.616137-04	45	\N
228	59.99.217.86	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-27 00:16:26.974559-04	46	\N
229	122.172.247.164	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-27 00:40:04.251711-04	47	\N
230	122.166.147.38	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-27 02:58:04.639857-04	42	\N
231	49.202.11.151	Mozilla/5.0 (Linux; Android 6.0.1; A0001 Build/MMB29X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36	2016-05-27 06:46:32.00018-04	49	Desktop, Facebook
232	106.51.21.188	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-27 09:55:38.776763-04	50	\N
233	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:33:58.956096-04	25	\N
234	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:41:14.820405-04	25	\N
235	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:43:58.930432-04	25	\N
236	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:49:44.635312-04	25	\N
237	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:51:44.888153-04	25	\N
238	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:53:06.490636-04	25	\N
239	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:54:29.320018-04	25	\N
240	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:56:40.890342-04	25	\N
241	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 06:59:25.129669-04	25	\N
242	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 07:04:17.763816-04	25	\N
243	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 07:09:21.918231-04	25	\N
244	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 08:36:04.027889-04	25	\N
245	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 08:37:37.041273-04	25	\N
246	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 08:38:41.732174-04	25	\N
247	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 08:46:42.623114-04	25	\N
248	122.167.82.30	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-28 09:47:59.502654-04	51	\N
249	122.171.45.184	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-05-31 05:31:07.529318-04	24	Desktop, Facebook
250	122.167.108.100	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-03 06:08:30.556832-04	52	\N
251	122.166.145.126	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.77 Mobile Safari/537.36	2016-06-03 08:47:59.055581-04	53	\N
252	122.166.145.126	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.77 Mobile Safari/537.36	2016-06-03 08:48:08.03882-04	53	\N
253	122.166.145.126	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.77 Mobile Safari/537.36	2016-06-03 08:48:09.265395-04	53	\N
254	123.201.144.189	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36	2016-06-03 10:55:14.153736-04	54	\N
255	123.201.144.189	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36	2016-06-03 11:08:32.168393-04	54	\N
256	123.201.144.189	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36	2016-06-03 11:09:24.638135-04	54	\N
257	123.201.144.189	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36	2016-06-03 11:32:34.117964-04	54	\N
258	122.172.184.41	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-04 05:56:20.739311-04	55	\N
259	60.243.251.105	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-04 09:05:58.79656-04	56	Desktop, Facebook
260	122.167.225.5	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-04 10:31:28.230566-04	57	\N
261	106.51.141.159	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-05 00:26:56.901452-04	58	Desktop, Facebook
262	1.23.173.88	Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-05 11:32:20.02956-04	60	\N
263	122.178.229.105	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-05 11:37:15.05185-04	59	\N
264	122.178.229.105	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-05 11:44:30.989264-04	25	\N
265	122.178.229.105	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-05 11:50:51.101342-04	25	\N
266	103.19.212.8	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-06 05:42:47.820731-04	61	Desktop, Facebook
267	103.19.212.8	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-06 05:43:37.473441-04	61	\N
268	122.167.187.249	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-08 10:53:53.146821-04	62	\N
269	122.172.229.220	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-09 01:28:06.752633-04	63	\N
270	43.247.156.9	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0	2016-06-09 01:55:56.126931-04	64	Desktop, Facebook
271	122.166.173.22	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-06-09 11:40:05.122674-04	65	\N
272	106.216.168.151	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-10 01:36:33.263628-04	61	Desktop, Facebook
273	115.99.48.205	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-10 02:12:56.512758-04	66	\N
274	122.166.175.207	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36	2016-06-10 03:25:24.805581-04	67	\N
275	122.167.144.9	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-06-10 11:17:03.362626-04	68	\N
276	122.171.33.119	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-06-11 09:39:36.975893-04	69	\N
277	103.226.87.87	Mozilla/5.0 (Linux; Android 6.0.1; SAMSUNG SM-G925I Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/4.0 Chrome/44.0.2403.133 Mobile Safari/537.36	2016-06-12 07:29:59.128091-04	70	Desktop, Facebook
278	14.96.26.145	Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-12 11:24:45.185016-04	71	\N
279	122.167.224.172	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-13 03:22:54.722672-04	72	\N
280	159.203.134.134	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-13 04:17:07.806268-04	73	\N
281	159.203.134.134	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-13 04:17:45.16618-04	73	\N
282	180.151.240.90	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/601.3.9 (KHTML, like Gecko) Version/9.0.2 Safari/601.3.9	2016-06-14 03:44:26.895678-04	74	Desktop, Facebook
283	122.167.185.193	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-14 07:17:53.985611-04	75	\N
284	1.39.62.173	Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-15 03:00:03.44597-04	76	\N
285	180.215.39.250	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-15 06:55:13.20633-04	77	Desktop, Facebook
286	180.215.39.250	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-15 07:04:57.399452-04	77	\N
287	116.202.85.54	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-15 10:46:33.442707-04	77	Desktop, Facebook
288	106.51.235.14	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-16 06:31:14.179734-04	43	\N
289	223.227.57.20	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-16 11:37:15.479215-04	78	\N
290	223.227.57.20	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-16 11:37:26.024538-04	78	\N
291	122.167.199.195	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-17 05:23:59.289993-04	79	\N
292	122.167.199.195	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-17 07:00:29.88612-04	80	\N
293	122.171.209.124	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-17 12:12:20.431785-04	81	\N
294	72.163.217.102	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586	2016-06-17 12:22:29.416123-04	82	Desktop, Facebook
295	72.163.217.102	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586	2016-06-17 12:25:24.988013-04	82	\N
296	72.163.217.102	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586	2016-06-17 12:31:14.552308-04	82	\N
297	182.156.167.111	Mozilla/5.0 (Linux; Android 5.1; E5563 Build/29.1.B.0.87) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36	2016-06-18 02:19:35.402338-04	83	\N
298	122.179.4.49	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-18 04:04:46.878365-04	84	\N
299	122.167.9.192	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-06-19 08:58:00.84589-04	85	\N
300	106.51.18.71	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-20 09:44:54.523535-04	86	\N
301	122.171.193.174	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-20 09:48:50.162016-04	87	\N
302	106.51.19.209	Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-06-20 12:51:37.971877-04	88	\N
303	182.156.150.172	Mozilla/5.0 (Linux; Android 5.1; E5563 Build/29.1.B.0.87) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36	2016-06-21 02:32:25.719983-04	83	\N
304	106.51.24.172	Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-21 08:45:49.258654-04	89	Desktop, Facebook
305	106.51.24.172	Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-21 08:46:48.216555-04	89	\N
306	223.227.137.103	Mozilla/5.0 (Linux; Android 6.0.1; Micromax AQ4501 Build/MOB30N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-21 12:20:06.917461-04	90	\N
307	49.249.41.136	Mozilla/5.0 (Linux; Android 5.0; Lenovo K50a40 Build/LRX21M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-21 13:54:17.6838-04	91	\N
308	217.140.105.40	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-22 02:09:45.108009-04	92	\N
309	121.244.213.212	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 05:17:51.671872-04	93	Desktop, Facebook
310	121.244.213.212	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 05:18:49.002796-04	93	\N
311	107.167.107.57	Opera/9.80 (Android; Opera Mini/17.0.2211/37.8603; U; en) Presto/2.12.423 Version/12.16	2016-06-22 06:48:45.052464-04	94	\N
312	182.65.105.138	Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 07:22:59.831091-04	95	\N
313	202.142.125.182	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 07:46:39.798813-04	96	\N
314	1.186.126.77	Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13F69 Safari/601.1	2016-06-22 13:12:18.848826-04	97	\N
315	115.252.223.26	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 13:41:01.246557-04	98	\N
316	27.7.216.159	Mozilla/5.0 (Linux; Android 4.4.2; SM-G7102 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-06-22 13:56:11.417726-04	99	Desktop, Facebook
317	49.202.150.115	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 14:16:21.299011-04	100	Desktop, Facebook
318	49.202.150.115	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 14:17:53.760268-04	101	\N
319	49.202.150.115	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-22 14:19:26.302861-04	100	Desktop, Facebook
320	103.228.221.183	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36	2016-06-23 11:23:46.53641-04	102	Desktop, Facebook
321	122.171.174.33	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-23 12:00:30.334922-04	25	\N
322	43.247.156.14	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36	2016-06-23 12:12:19.712611-04	103	Desktop, Facebook
323	14.139.157.22	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36	2016-06-23 22:08:38.23177-04	104	\N
324	14.139.157.23	Mozilla/5.0 (Linux; Android 6.0.1; SM-G925I Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36	2016-06-24 00:12:57.230053-04	104	\N
325	122.171.42.32	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-26 07:37:22.700104-04	105	\N
326	122.167.154.188	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-26 12:13:21.051294-04	106	\N
327	111.92.47.22	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-27 09:02:56.450716-04	107	Desktop, Facebook
328	111.92.47.22	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-27 09:04:15.250354-04	108	\N
329	111.92.47.22	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-27 09:05:08.824653-04	107	Desktop, Facebook
330	103.42.192.45	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-29 05:00:42.919794-04	109	\N
331	106.51.22.48	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-29 05:49:06.599814-04	110	\N
332	106.51.22.48	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-06-29 10:34:38.958549-04	110	\N
333	103.252.25.170	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0	2016-06-29 17:48:26.88649-04	111	\N
334	121.244.55.150	Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-01 02:32:12.797947-04	112	Desktop, Facebook
335	122.166.183.16	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-01 03:16:19.464578-04	113	\N
336	223.238.18.229	Mozilla/5.0 (Linux; Android 4.4.4; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-01 04:54:40.896766-04	114	\N
337	49.248.46.181	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-02 06:00:06.280605-04	115	Desktop, Facebook
338	223.227.110.98	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-07-03 08:03:59.181962-04	116	\N
339	117.213.65.81	Mozilla/5.0 (Linux; Android 6.0.1; Spice Mi-498 Build/MOB30N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-03 13:47:19.665314-04	117	\N
340	106.51.23.68	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-04 09:20:55.82333-04	118	\N
341	106.51.19.197	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:08:50.3547-04	119	\N
342	106.51.19.197	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:08:57.859836-04	119	\N
343	106.51.19.197	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:09:06.032492-04	120	\N
344	106.51.19.197	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:09:40.478867-04	120	\N
345	106.51.19.197	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:10:16.18831-04	120	\N
346	106.51.19.197	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-05 04:16:54.588435-04	120	\N
347	106.216.188.61	Mozilla/5.0 (Linux; Android 5.1.1; ONE E1003 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:51:54.89729-04	121	\N
348	106.216.188.61	Mozilla/5.0 (Linux; Android 5.1.1; ONE E1003 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:54:42.849931-04	121	\N
349	106.216.188.61	Mozilla/5.0 (Linux; Android 5.1.1; ONE E1003 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-05 04:54:48.977358-04	121	\N
350	106.51.23.84	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-05 06:44:19.901147-04	122	Desktop, Facebook
351	122.172.124.82	Mozilla/5.0 (iPad; CPU OS 9_3_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13F69 Safari/601.1	2016-07-05 14:39:58.304979-04	123	\N
352	43.224.173.222	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-06 15:36:40.362781-04	124	Desktop, Facebook
353	122.171.189.171	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-07 04:08:48.742244-04	125	\N
354	122.171.189.171	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-07 04:22:29.739885-04	125	\N
355	122.171.189.171	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-07 04:32:16.252221-04	125	\N
356	223.238.111.229	Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13F69 Safari/601.1	2016-07-07 05:41:26.144073-04	126	\N
357	122.172.213.39	Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-07-08 02:14:39.911536-04	127	Desktop, Facebook
358	122.167.14.39	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-08 02:55:39.741-04	128	\N
359	122.167.203.48	Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36	2016-07-08 04:46:21.10677-04	129	\N
360	223.227.232.41	Mozilla/5.0 (Linux; Android 5.0.2; HTC_E9pw Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36	2016-07-08 08:50:43.154926-04	130	\N
361	103.42.192.47	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-08 10:09:42.486969-04	109	\N
362	122.171.195.130	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-07-09 03:28:06.810808-04	131	\N
363	171.78.248.249	Mozilla/5.0 (Linux; Android 5.0.2; Mi 4i Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-10 00:32:32.14273-04	132	\N
364	122.172.58.2	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-10 06:54:56.140082-04	133	\N
365	106.51.31.27	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-10 07:37:39.251531-04	134	\N
366	43.246.236.104	Mozilla/5.0 (Linux; Android 6.0.1; SM-G935W8 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-11 08:18:04.727404-04	135	\N
367	122.172.60.243	Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13F69 Safari/601.1	2016-07-12 08:28:30.686889-04	136	\N
368	122.171.164.147	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-07-12 10:27:04.968815-04	137	\N
369	122.166.173.173	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-13 06:19:24.697615-04	138	\N
370	122.166.173.173	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-13 07:17:38.367646-04	139	\N
371	117.208.161.105	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-13 11:56:36.728474-04	140	\N
372	122.171.102.156	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-13 23:21:20.8001-04	141	Desktop, Facebook
373	122.171.102.156	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-13 23:39:46.150956-04	142	\N
374	122.171.212.174	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-07-14 10:49:08.505269-04	143	\N
375	122.178.250.211	Mozilla/5.0 (Linux; Android 4.4.4; HM NOTE 1LTE Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-14 11:28:36.909131-04	144	\N
376	117.192.244.38	Mozilla/5.0 (iPad; CPU OS 9_3_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13E238 Safari/601.1	2016-07-15 22:18:19.724225-04	145	\N
377	122.171.203.125	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-16 06:50:05.507082-04	122	Desktop, Facebook
378	122.172.248.98	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-16 09:21:08.392333-04	146	\N
379	106.216.188.214	Mozilla/5.0 (Linux; Android 5.1.1; KIW-L22 Build/HONORKIW-L22) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36	2016-07-17 06:23:16.575434-04	147	\N
380	115.99.53.101	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-17 14:27:52.689369-04	122	Desktop, Facebook
381	122.15.156.73	Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko	2016-07-18 03:34:47.164614-04	148	Desktop, Facebook
382	122.15.156.73	Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko	2016-07-18 03:35:52.428778-04	148	Desktop, Facebook
383	122.15.156.73	Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko	2016-07-18 03:36:22.838742-04	148	\N
384	106.78.60.109	Mozilla/5.0 (Linux; Android 5.1; InFocus M680 Build/LMY47D; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/43.0.2357.121 Mobile Safari/537.36 ACHEETAHI/2100502042	2016-07-18 09:56:17.157332-04	149	\N
385	196.15.16.108	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-19 02:06:33.231319-04	17	Desktop, Facebook
386	122.171.167.229	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-19 04:00:41.101948-04	150	\N
387	185.89.218.236	Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13F69 Safari/601.1	2016-07-19 05:02:36.817487-04	151	\N
388	122.167.219.184	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-20 01:38:23.658077-04	152	\N
389	101.222.235.23	Mozilla/5.0 (Linux;U;Android 4.4.2;Lenovo A328 Build/KOT49H) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Chrome/537.306 Mobile Safari/534.30;	2016-07-21 05:31:29.567487-04	153	\N
390	103.16.69.17	Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-22 14:39:59.947679-04	154	\N
391	103.57.82.76	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36	2016-07-24 02:16:25.548397-04	103	Desktop, Facebook
392	103.57.82.76	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36	2016-07-24 02:18:29.442411-04	103	\N
393	103.57.82.76	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36	2016-07-24 02:26:25.132161-04	103	Desktop, Facebook
394	103.57.82.76	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.108 Safari/537.36	2016-07-24 02:27:09.939661-04	103	\N
395	122.179.69.54	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-24 03:25:54.64367-04	155	\N
396	122.179.69.54	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-24 03:26:15.243448-04	155	\N
397	122.179.69.54	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-24 03:26:38.772536-04	155	\N
398	122.179.12.144	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-24 05:26:53.407038-04	156	\N
399	122.179.12.144	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-24 05:27:15.867687-04	156	\N
400	122.167.149.138	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-25 09:45:18.546221-04	157	\N
401	122.167.149.138	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3 Build/MPI24.107-55) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-25 09:45:28.200436-04	157	\N
402	116.75.117.131	Mozilla/5.0 (Linux; Android 6.0.1; MotoG3-TE Build/MPD24.107-56) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Mobile Safari/537.36	2016-07-25 14:53:23.27399-04	158	\N
403	122.179.24.239	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-27 02:20:34.934181-04	159	\N
404	122.179.24.239	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-27 03:24:30.42227-04	161	\N
405	122.171.203.89	Mozilla/5.0 (Linux; U; Android 4.4.4; en-us; 2014818 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/42.0.0.0 Mobile Safari/537.36 XiaoMi/MiuiBrowser/2.1.1	2016-07-27 08:18:04.661819-04	162	\N
406	122.179.66.178	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-28 02:06:49.402818-04	163	\N
407	122.172.190.119	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-28 06:39:30.04009-04	164	\N
408	122.172.190.119	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-28 06:43:18.276251-04	165	\N
409	122.172.190.119	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-28 12:28:13.24018-04	166	\N
410	122.171.150.106	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36	2016-07-29 04:25:53.861218-04	25	\N
411	122.167.37.90	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0	2016-07-31 10:25:37.447783-04	167	\N
\.


--
-- Name: ecommerce_customer_login_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_customer_login_id_seq', 411, true);


--
-- Data for Name: ecommerce_discounts; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_discounts (id, name, start_date, expiry_date, discount_percent, max_discount) FROM stdin;
\.


--
-- Name: ecommerce_discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_discounts_id_seq', 5, true);


--
-- Data for Name: ecommerce_fashion_model; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_fashion_model (id, name, email, phone, fb_profile_link, height, complexion, preference, comments, "timestamp", sex_id) FROM stdin;
\.


--
-- Name: ecommerce_fashion_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_fashion_model_id_seq', 1, false);


--
-- Data for Name: ecommerce_fashion_model_payment; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_fashion_model_payment (id, total_payment, "timestamp", fashion_model_id, photoshoot_id) FROM stdin;
\.


--
-- Name: ecommerce_fashion_model_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_fashion_model_payment_id_seq', 1, false);


--
-- Data for Name: ecommerce_id_card; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_id_card (id, card) FROM stdin;
\.


--
-- Name: ecommerce_id_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_id_card_id_seq', 1, false);


--
-- Data for Name: ecommerce_image; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_image (id, name, image) FROM stdin;
1	123	/home/django/django_project/django_project/static/blog/123.jpg
2	blog2_1	/home/django/django_project/django_project/static/blog/blog2_1.jpg
4	blog2_2	/home/django/django_project/django_project/static/blog/blog2_2.jpg
5	blog2_3	/home/django/django_project/django_project/static/blog/blog2_3.jpg
6	blog2_4	/home/django/django_project/django_project/static/blog/blog2_4.jpg
7	blog3_1	/home/django/django_project/django_project/static/blog/blog3_1.jpg
8	blog3_2	/home/django/django_project/django_project/static/blog/blog3_2.jpg
9	blog3_3	/home/django/django_project/django_project/static/blog/blog3_3.jpg
10	blog3_4	/home/django/django_project/django_project/static/blog/blog3_4.jpg
11	blog3_5	/home/django/django_project/django_project/static/blog/blog3_5.jpg
12	blog3_6	/home/django/django_project/django_project/static/blog/blog3_6.jpg
13	blog3_7	/home/django/django_project/django_project/static/blog/blog3_7.jpg
14	blog4	/home/django/django_project/django_project/static/blog/blog4.jpg
15	blog5_1	/home/django/django_project/django_project/static/blog/blog5_1.jpg
16	b61	/home/django/django_project/django_project/static/blog/blog6_1.jpg
17	b62	/home/django/django_project/django_project/static/blog/blog6_2.jpg
18	b63	/home/django/django_project/django_project/static/blog/blog6_3.jpg
19	b64	/home/django/django_project/django_project/static/blog/blog6_4.jpg
20	b65	/home/django/django_project/django_project/static/blog/blog6_5.jpg
21	b66	/home/django/django_project/django_project/static/blog/blog6_6.jpg
22	b67	/home/django/django_project/django_project/static/blog/blog6_7.jpg
23	b68	/home/django/django_project/django_project/static/blog/blog6_8.jpg
24	b69	/home/django/django_project/django_project/static/blog/blog6_9.jpg
25	b610	/home/django/django_project/django_project/static/blog/blog6_10.jpg
26	b71	/home/django/django_project/django_project/static/blog/blog7_1.jpg
27	b72	/home/django/django_project/django_project/static/blog/blog7_2.jpg
28	b73	/home/django/django_project/django_project/static/blog/blog7_3.jpg
29	b74	/home/django/django_project/django_project/static/blog/blog7_4.jpg
30	b75	/home/django/django_project/django_project/static/blog/blog7_5.jpg
31	Science_featured	/home/django/django_project/django_project/static/blog/Science_Featured.jpg
32	heels	/home/django/django_project/django_project/static/blog/heels.jpg
33	lipstick	/home/django/django_project/django_project/static/blog/lipstick.jpg
\.


--
-- Name: ecommerce_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_image_id_seq', 33, true);


--
-- Data for Name: ecommerce_order; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_order (id, no_of_products, "timestamp", address_id, customer_id, login_id_id, order_price, payment_status, return_delivery, payment_request_id, payment_mode, security_deposit) FROM stdin;
167	1	2016-06-03 11:32:34.123691-04	178	54	257	2144	\N	\N	3b78cd7595f04f5095887aa9907e7a18	online	\N
168	1	2016-06-04 05:56:20.743677-04	179	55	258	6862	\N	\N	\N	cod	\N
169	1	2016-06-04 10:31:28.236331-04	180	57	260	1867	\N	\N	\N	cod	\N
170	1	2016-06-05 11:32:20.034305-04	181	60	262	1929	\N	\N	\N	cod	\N
171	2	2016-06-05 11:37:15.056187-04	182	59	263	6217	\N	\N	\N	cod	\N
172	1	2016-06-05 11:44:30.994633-04	183	25	264	2360	\N	\N	\N	cod	\N
173	1	2016-06-05 11:50:51.106092-04	184	25	265	427	\N	\N	\N	cod	\N
174	1	2016-06-06 05:43:37.478051-04	185	61	267	3859	\N	\N	\N	cod	\N
175	1	2016-06-08 10:53:53.15282-04	186	62	268	2143	\N	\N	\N	cod	\N
176	5	2016-06-09 01:28:06.757388-04	187	63	269	9106	\N	\N	\N	cod	\N
177	1	2016-06-09 11:40:05.12703-04	188	65	271	3216	\N	\N	\N	cod	\N
178	2	2016-06-10 02:12:56.517176-04	189	66	273	12437	\N	\N	\N	cod	\N
179	1	2016-06-10 03:25:24.80945-04	190	67	274	2143	\N	\N	\N	cod	\N
180	5	2016-06-10 11:17:03.366631-04	191	68	275	9323	\N	\N	\N	cod	\N
181	3	2016-06-11 09:39:36.980192-04	192	69	276	3641	\N	\N	\N	cod	\N
182	1	2016-06-12 11:24:45.188873-04	193	71	278	7972	\N	\N	\N	cod	\N
183	1	2016-06-13 03:22:54.726565-04	194	72	279	1394	\N	\N	\N	cod	\N
184	1	2016-06-13 04:17:07.810306-04	195	73	280	7508	\N	\N	3afb0d9096844aa4b1cb3641bb185ec7	online	\N
134	1	2016-05-24 05:04:23.181491-04	142	38	219	1714	done	done	\N	\N	\N
123	3	2016-05-19 01:34:38.033898-04	131	33	207	2850	done	done	\N	\N	\N
122	1	2016-05-18 10:49:26.736737-04	130	32	206	850	done	done	\N	\N	\N
126	2	2016-05-19 03:53:14.826441-04	134	36	210	1900	done	done	\N	\N	\N
132	1	2016-05-23 01:44:05.879299-04	140	39	217	1500	done	done	f2929f0935494df99c506a669baa9a4c	\N	\N
133	1	2016-05-23 11:23:00.595674-04	141	40	218	2789	done	done	\N	\N	\N
185	1	2016-06-13 04:17:45.170136-04	196	73	281	7508	\N	\N	\N	cod	\N
138	1	2016-05-25 04:00:19.3523-04	146	42	223	1900	done		\N	\N	\N
139	1	2016-05-25 04:04:30.158552-04	147	43	224	1800	done	done	\N	\N	\N
143	1	2016-05-27 00:16:26.98008-04	151	46	228	1071	NA	NA	\N	\N	\N
144	1	2016-05-27 00:40:04.258877-04	152	47	229	901	NA	NA	8075070e972c4f6f8fe58be8afd4c23f	\N	\N
186	2	2016-06-14 07:17:53.996019-04	197	75	283	4286	\N	\N	\N	cod	\N
140	2	2016-05-25 04:10:41.630292-04	148	44	225	13725	done	done	\N	\N	\N
127	1	2016-05-20 16:05:15.578546-04	135	37	211	706	NA	NA	\N	\N	\N
125	1	2016-05-19 01:44:18.292332-04	133	35	209	4288	NA	NA	\N	\N	\N
124	1	2016-05-19 01:37:40.453383-04	132	34	208	2360	NA	NA	\N	\N	\N
146	1	2016-05-27 09:55:38.784476-04	154	50	232	1822	\N	\N	c022a48e29f94e9b8840972cae9cb691	\N	\N
187	1	2016-06-15 03:00:03.450043-04	198	76	284	2094	\N	\N	dea44b3df5a740c5a66942b23f8b411d	online	\N
188	1	2016-06-15 07:04:57.403446-04	199	77	286	1071	\N	\N	\N	cod	\N
189	3	2016-06-16 06:31:14.186308-04	200	43	288	9034	\N	\N	\N	cod	\N
190	1	2016-06-16 11:37:15.484443-04	201	78	289	750	\N	\N	\N	cod	\N
191	1	2016-06-16 11:37:26.029513-04	202	78	290	750	\N	\N	\N	cod	\N
192	4	2016-06-17 05:23:59.296694-04	203	79	291	11360	\N	\N	3ca3603646304890b468028aa139721c	online	\N
193	2	2016-06-17 07:00:29.890505-04	204	80	292	2785	\N	\N	\N	cod	\N
194	1	2016-06-17 12:12:20.439865-04	205	81	293	535	\N	\N	\N	cod	\N
195	1	2016-06-17 12:25:24.992829-04	206	82	295	856	\N	\N	e3734af3980f41888e9dcdae6306cd0e	online	\N
145	1	2016-05-27 02:58:04.645819-04	153	42	230	1500	done	done	\N	cod	\N
141	1	2016-05-25 04:12:46.810448-04	149	44	226	400	done	done	\N		\N
142	3	2016-05-25 05:16:14.620627-04	150	45	227	2100	done	done	\N		\N
159	1	2016-05-28 09:48:00.319849-04	170	51	248	658	done		\N	cod	\N
160	2	2016-06-03 06:08:30.562947-04	171	52	250	3857	\N	\N	\N	cod	\N
161	1	2016-06-03 08:47:59.059775-04	172	53	251	2358	\N	\N	\N	cod	\N
162	1	2016-06-03 08:48:08.044384-04	173	53	252	2358	\N	\N	\N	cod	\N
163	1	2016-06-03 08:48:09.270219-04	174	53	253	2358	\N	\N	\N	cod	\N
164	1	2016-06-03 10:55:14.157937-04	175	54	254	2144	\N	\N	23b5745154e247b28737a18d6ba27fed	online	\N
165	1	2016-06-03 11:08:32.172587-04	176	54	255	2144	\N	\N	d87bfa7804324e16943d9fcf9fb6b9bc	online	\N
166	1	2016-06-03 11:09:24.644836-04	177	54	256	2144	\N	\N	71243c0728964fe39ae2783e2d6e5320	online	\N
196	1	2016-06-17 12:31:14.559164-04	207	82	296	856	\N	\N	e62b4d149da241d7a89ba110c4ef7609	online	\N
197	5	2016-06-18 02:19:35.40776-04	208	83	297	11462	\N	\N	\N	cod	\N
198	3	2016-06-18 04:04:46.884838-04	209	84	298	6000	\N	\N	\N	cod	\N
199	1	2016-06-19 08:58:00.850984-04	210	85	299	1929	\N	\N	\N	cod	\N
200	2	2016-06-20 09:44:54.528438-04	211	86	300	2599	\N	\N	\N	cod	\N
201	2	2016-06-20 09:48:50.16753-04	212	87	301	2570	\N	\N	\N	cod	\N
202	1	2016-06-20 12:51:37.977051-04	213	88	302	53625	\N	\N	\N	cod	\N
203	1	2016-06-21 02:32:25.725156-04	214	83	303	2143	\N	\N	\N	cod	\N
204	1	2016-06-21 08:46:48.220713-04	215	89	305	5918	\N	\N	\N	cod	\N
205	1	2016-06-21 12:20:06.922062-04	216	90	306	1929	\N	\N	757a2c22295842c5add1419273ff3e31	online	\N
206	2	2016-06-21 13:54:17.689297-04	217	91	307	2765	\N	\N	\N	cod	\N
207	1	2016-06-22 02:09:45.116016-04	218	92	308	1529	\N	\N	\N	cod	\N
208	1	2016-06-22 05:18:49.00688-04	219	93	310	1071	\N	\N	c931616359d245fb839e9341ad9d7dae	online	\N
209	1	2016-06-22 06:48:45.056945-04	220	94	311	3859	\N	\N	\N	cod	\N
210	1	2016-06-22 07:22:59.845335-04	221	95	312	427	\N	\N	bb4d9dff67bb46e08e2b8d71dac2cb81	online	\N
211	1	2016-06-22 07:46:39.80335-04	222	96	313	5361	\N	\N	\N	cod	\N
212	1	2016-06-22 13:12:18.85428-04	223	97	314	2574	\N	\N	\N	cod	\N
213	1	2016-06-22 13:41:01.251043-04	224	98	315	427	\N	\N	\N	cod	\N
214	1	2016-06-22 14:17:53.765067-04	225	101	318	856	\N	\N	\N	cod	\N
215	1	2016-06-23 12:00:30.339543-04	226	25	321	1933	\N	\N	\N	cod	\N
216	1	2016-06-23 22:08:38.237089-04	227	104	323	1288	\N	\N	\N	cod	\N
217	1	2016-06-24 00:12:57.23546-04	228	104	324	1933	\N	\N	\N	cod	\N
218	1	2016-06-26 07:37:22.706708-04	229	105	325	2148	\N	\N	\N	cod	\N
219	1	2016-06-26 12:13:21.056008-04	230	106	326	1933	\N	\N	1ba06c1b33c647a4b474d3561ada9a09	online	\N
220	1	2016-06-27 09:04:15.255087-04	231	108	328	858	\N	\N	\N	cod	\N
221	1	2016-06-29 05:00:42.925685-04	232	109	330	15050	\N	\N	d7896e88f6ce42febc31b09e2e98c90d	online	\N
222	2	2016-06-29 05:49:06.607498-04	233	110	331	7521	\N	\N	\N	cod	\N
223	1	2016-06-29 10:34:38.96354-04	234	110	332	2577	\N	\N	e149d46ca99e42c0bbc7f1a3c6cdca83	online	\N
224	1	2016-06-29 17:48:26.891451-04	235	111	333	5157	\N	\N	\N	cod	\N
225	2	2016-07-01 03:16:19.470152-04	236	113	335	8596	\N	\N	\N	cod	\N
226	1	2016-07-01 04:54:40.901315-04	237	114	336	2043	\N	\N	0c2b972353e142f58bd5aa11750b797f	online	\N
227	1	2016-07-03 08:03:59.187232-04	238	116	338	5373	\N	\N	4753712686eb4c15be30ad4865346d58	online	\N
228	1	2016-07-03 13:47:19.670622-04	239	117	339	3867	\N	\N	\N	cod	\N
229	6	2016-07-04 09:20:55.828422-04	240	118	340	11922	\N	\N	\N	cod	\N
230	1	2016-07-05 04:08:50.35912-04	241	119	341	3761	\N	\N	\N	cod	\N
231	1	2016-07-05 04:08:57.864593-04	242	119	342	3761	\N	\N	\N	cod	\N
232	1	2016-07-05 04:16:54.593401-04	246	120	346	3761	\N	\N	\N	cod	\N
233	1	2016-07-05 04:51:54.902285-04	247	121	347	4298	\N	\N	d25e536c5ba94b7cbd8d47b3e8b23103	online	\N
234	1	2016-07-05 04:54:42.854867-04	248	121	348	4298	\N	\N	\N	cod	\N
235	1	2016-07-05 04:54:48.982246-04	249	121	349	4298	\N	\N	3e9cc2f310e8434f9d9b45a5844534d8	online	\N
236	1	2016-07-05 14:39:58.311018-04	250	123	351	858	\N	\N	\N	cod	\N
237	2	2016-07-07 04:08:48.74893-04	251	125	353	8381	\N	\N	\N	cod	\N
238	2	2016-07-07 04:22:29.744987-04	252	125	354	3632	\N	\N	\N	cod	\N
239	1	2016-07-07 04:32:16.257117-04	253	125	355	1933	\N	\N	\N	cod	\N
240	1	2016-07-07 05:41:26.14925-04	254	126	356	1073	\N	\N	\N	cod	\N
241	2	2016-07-08 02:55:39.74577-04	255	128	358	7736	\N	\N	\N	cod	\N
242	3	2016-07-08 04:46:21.111719-04	256	129	359	16119	\N	\N	\N	cod	\N
243	1	2016-07-08 08:50:43.159565-04	257	130	360	2363	\N	\N	\N	cod	\N
244	1	2016-07-08 10:09:42.491833-04	258	109	361	7525	\N	\N	08b0dc109e1e4febbc28fd35e2c0f9f8	online	\N
245	1	2016-07-09 03:28:06.815847-04	259	131	362	1933	\N	\N	\N	cod	\N
246	1	2016-07-10 00:32:32.147452-04	260	132	363	3223	\N	\N	\N	cod	\N
247	1	2016-07-10 06:54:56.145166-04	261	133	364	858	\N	\N	\N	cod	\N
248	1	2016-07-10 07:37:39.256589-04	262	134	365	2717	\N	\N	\N	cod	\N
249	1	2016-07-11 08:18:04.733163-04	263	135	366	5373	\N	\N	\N	cod	\N
250	1	2016-07-12 08:28:30.692521-04	264	136	367	2363	\N	\N	\N	cod	\N
251	1	2016-07-12 10:27:04.974649-04	265	137	368	4298	\N	\N	\N	cod	\N
252	1	2016-07-13 06:19:24.702679-04	266	138	369	1933	\N	\N	\N	cod	\N
253	1	2016-07-13 07:17:38.37356-04	267	139	370	858	\N	\N	\N	cod	\N
254	1	2016-07-13 11:56:36.735799-04	268	140	371	1933	\N	\N	\N	cod	\N
255	1	2016-07-13 23:39:46.156034-04	269	142	373	4942	\N	\N	\N	cod	\N
256	1	2016-07-14 10:49:08.511875-04	270	143	374	2363	\N	\N	\N	cod	\N
257	1	2016-07-14 11:28:36.913636-04	271	144	375	2363	\N	\N	\N	cod	\N
258	1	2016-07-15 22:18:19.728632-04	272	145	376	1718	\N	\N	\N	cod	\N
259	1	2016-07-16 09:21:08.40309-04	273	146	378	6179	\N	\N	\N	cod	\N
260	1	2016-07-17 06:23:16.5797-04	274	147	379	1871	\N	\N	\N	cod	\N
261	4	2016-07-18 03:36:22.843306-04	275	148	383	6227	\N	\N	\N	cod	\N
262	1	2016-07-18 09:56:17.161671-04	276	149	384	3010	\N	\N	\N	cod	\N
263	1	2016-07-19 04:00:41.106927-04	277	150	386	2363	\N	\N	\N	cod	\N
264	1	2016-07-19 05:02:36.82209-04	278	151	387	2148	\N	\N	\N	cod	\N
265	1	2016-07-20 01:38:23.663102-04	279	152	388	1933	\N	\N	\N	cod	\N
266	4	2016-07-21 05:31:29.572659-04	280	153	389	2060	\N	\N	\N	cod	\N
267	2	2016-07-22 14:39:59.952437-04	281	154	390	7522	\N	\N	\N	cod	\N
268	4	2016-07-24 02:18:29.446949-04	282	103	392	13429	\N	\N	\N	cod	\N
269	2	2016-07-24 02:27:09.944623-04	283	103	394	5801	\N	\N	\N	cod	\N
270	4	2016-07-24 03:25:54.647928-04	284	155	395	12892	\N	\N	\N	cod	\N
271	4	2016-07-24 03:26:15.247518-04	285	155	396	12892	\N	\N	\N	cod	\N
272	4	2016-07-24 05:26:53.411611-04	287	156	398	2037	\N	\N	\N	cod	\N
273	4	2016-07-24 05:27:15.873679-04	288	156	399	2037	\N	\N	\N	cod	\N
274	1	2016-07-25 09:45:18.551395-04	289	157	400	2363	\N	\N	\N	cod	\N
275	1	2016-07-25 09:45:28.205117-04	290	157	401	2363	\N	\N	\N	cod	\N
276	3	2016-07-27 02:20:34.93932-04	292	159	403	5154	\N	\N	\N	cod	\N
277	1	2016-07-27 03:24:30.42774-04	293	161	404	1718	\N	\N	\N	cod	\N
278	1	2016-07-27 08:18:04.666907-04	294	162	405	1073	\N	\N	\N	cod	\N
279	1	2016-07-28 02:06:49.408664-04	295	163	406	3223	\N	\N	\N	cod	\N
284	1	2016-07-31 10:25:37.455086-04	300	167	411	1933	\N	\N	\N	cod	\N
\.


--
-- Name: ecommerce_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_order_id_seq', 284, true);


--
-- Data for Name: ecommerce_order_product; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_order_product (id, order_id, product_id, from_date, to_date, product_price, order_type) FROM stdin;
116	127	2974	2016-05-21	2016-05-23	329	\N
122	133	2912	2016-05-24	2016-05-26	1300	\N
128	139	3044	2016-05-25	2016-05-27	899	\N
131	141	2777	2016-05-25	2016-05-27	2800	\N
135	143	2794	2016-05-27	2016-05-29	499	\N
137	145	2813	2016-05-27	2016-05-29	1499	\N
149	160	3048	2016-06-03	2016-06-05	899	rent
150	160	2928	2016-06-03	2016-06-05	899	rent
152	162	3039	2016-06-04	2016-06-06	1099	rent
154	164	2973	2016-05-28	2016-05-28	1999	buy
156	166	2973	2016-05-28	2016-05-28	1999	buy
157	167	2973	2016-05-28	2016-05-28	1999	buy
159	169	2958	2016-06-04	2016-06-06	870	rent
161	171	3031	2016-06-11	2016-06-13	399	rent
162	171	2820	2016-06-11	2016-06-13	2499	rent
164	173	2815	2016-06-05	2016-06-07	199	rent
166	175	3041	2016-06-10	2016-06-12	999	rent
172	177	2808	2016-06-18	2016-06-20	1499	rent
175	179	3041	2016-06-10	2016-06-12	999	rent
181	181	2847	2016-06-11	2016-06-13	599	rent
182	181	2978	2016-06-11	2016-06-13	399	rent
183	181	2970	2016-06-11	2016-06-13	699	rent
185	183	2870	2016-05-28	2016-05-28	1299	buy
187	185	2883	2016-05-28	2016-05-28	7000	buy
190	187	2770	2016-06-16	2016-06-21	976	rent
192	189	2820	2016-07-11	2016-07-13	2499	rent
193	189	2819	2016-07-11	2016-07-13	1100	rent
194	189	3029	2016-07-11	2016-07-13	799	rent
196	191	2985	2016-05-28	2016-05-28	699	buy
197	192	2923	2016-06-18	2016-06-20	399	rent
32	\N	\N	2016-02-22	2016-02-25	\N	\N
33	\N	\N	2016-02-25	2016-02-27	\N	\N
34	\N	\N	2016-02-22	2016-02-25	\N	\N
35	\N	\N	2016-02-22	2016-02-25	\N	\N
36	\N	\N	2016-02-25	2016-02-27	\N	\N
37	\N	\N	2016-02-22	2016-02-25	\N	\N
38	\N	\N	2016-02-25	2016-02-27	\N	\N
39	\N	\N	2016-02-22	2016-02-25	\N	\N
40	\N	\N	2016-02-25	2016-02-27	\N	\N
41	\N	\N	2016-02-22	2016-02-25	\N	\N
198	192	2820	2016-06-18	2016-06-20	2499	rent
199	192	2927	2016-06-18	2016-06-20	899	rent
200	192	3045	2016-06-18	2016-06-20	1499	rent
203	194	2996	2016-06-17	2016-06-19	249	rent
205	196	2868	2016-06-18	2016-06-20	399	rent
211	198	3041	2016-06-18	2016-06-20	999	rent
212	198	2927	2016-06-18	2016-06-20	899	rent
213	198	2927	2016-06-18	2016-06-20	899	rent
28	\N	\N	2015-10-11	2016-12-16	\N	\N
29	\N	\N	2015-10-11	2016-12-16	\N	\N
30	\N	\N	2015-10-11	2016-12-16	\N	\N
31	\N	\N	2015-10-11	2016-12-16	\N	\N
215	200	2827	2016-06-22	2016-06-24	699	rent
216	200	3040	2016-06-22	2016-06-24	699	rent
219	202	2805	2016-05-28	2016-05-28	50000	buy
221	204	2821	2016-07-03	2016-07-10	2758	rent
223	206	2964	2016-06-22	2016-06-24	659	rent
224	206	2962	2016-06-22	2016-06-24	630	rent
226	208	2825	2016-06-22	2016-06-24	499	rent
228	210	2865	2016-06-26	2016-06-28	199	rent
230	212	2803	2016-06-23	2016-06-25	1200	rent
232	214	3030	2016-06-25	2016-06-27	399	rent
234	216	2830	2016-06-24	2016-06-26	599	rent
236	218	3041	2016-06-27	2016-06-29	999	rent
238	220	3025	2016-06-27	2016-06-29	399	rent
240	222	2820	2016-07-01	2016-07-03	2499	rent
241	222	3026	2016-07-01	2016-07-03	999	rent
243	224	2780	2016-06-30	2016-07-07	2398	rent
246	226	2926	2016-07-01	2016-07-03	950	rent
248	228	2826	2016-07-04	2016-07-11	1798	rent
255	230	2932	2016-07-09	2016-07-11	1749	rent
257	232	2932	2016-07-09	2016-07-11	1749	rent
259	234	2780	2016-07-07	2016-07-09	1999	rent
261	236	2868	2016-07-07	2016-07-09	399	rent
264	238	2958	2016-07-09	2016-07-11	870	rent
265	238	2959	2016-07-09	2016-07-11	819	rent
267	240	3046	2016-07-07	2016-07-09	499	rent
270	242	2937	2016-07-09	2016-07-11	1999	rent
271	242	2876	2016-07-09	2016-07-11	2199	rent
272	242	2875	2016-07-09	2016-07-11	3299	rent
274	244	2791	2016-05-28	2016-05-28	7000	buy
276	246	3045	2016-07-10	2016-07-12	1499	rent
278	248	3039	2016-07-13	2016-07-18	1263	rent
280	250	3039	2016-07-12	2016-07-14	1099	rent
282	252	3049	2016-07-24	2016-07-26	899	rent
284	254	3048	2016-08-09	2016-08-11	899	rent
286	256	3042	2016-07-15	2016-07-17	1099	rent
288	258	2828	2016-07-17	2016-07-19	799	rent
290	260	2958	2016-07-17	2016-07-19	870	rent
295	262	2802	2016-07-23	2016-07-25	1400	rent
297	264	2995	2016-07-22	2016-07-24	999	rent
299	266	2832	2016-07-23	2016-07-25	199	rent
300	266	2998	2016-07-23	2016-07-25	199	rent
301	266	2996	2016-07-23	2016-07-25	249	rent
302	266	2835	2016-07-23	2016-07-25	299	rent
305	268	2820	2016-07-29	2016-07-31	2499	rent
306	268	2829	2016-07-29	2016-07-31	599	rent
307	268	2917	2016-07-29	2016-07-31	2299	rent
308	268	2770	2016-07-29	2016-07-31	849	rent
311	270	2808	2016-07-24	2016-07-26	1499	rent
312	270	2808	2016-07-24	2016-07-26	1499	rent
313	270	2808	2016-07-24	2016-07-26	1499	rent
314	270	2808	2016-07-24	2016-07-26	1499	rent
319	272	2831	2016-07-24	2016-07-26	199	rent
320	272	2832	2016-07-24	2016-07-26	199	rent
321	272	2946	2016-07-24	2016-07-26	250	rent
108	122	2822	2016-05-18	2016-05-20	1799	\N
109	123	2927	2016-05-19	2016-05-21	899	\N
110	123	3026	2016-05-19	2016-05-21	999	\N
111	123	3048	2016-05-19	2016-05-21	899	\N
112	124	2819	2016-05-19	2016-05-21	1100	\N
113	125	2789	2016-05-24	2016-05-26	1999	\N
114	126	3023	2016-05-19	2016-05-21	1099	\N
115	126	3042	2016-05-19	2016-05-21	1099	\N
44	\N	\N	2016-04-19	2016-04-21	\N	\N
45	\N	\N	2016-04-19	2016-04-21	\N	\N
46	\N	\N	2016-04-19	2016-04-21	\N	\N
48	\N	\N	2016-04-18	2016-04-20	\N	\N
49	\N	\N	2016-04-18	2016-04-20	\N	\N
50	\N	\N	2016-04-18	2016-04-20	\N	\N
51	\N	\N	2016-04-19	2016-04-21	\N	\N
52	\N	\N	2016-04-20	2016-04-22	\N	\N
42	\N	\N	2016-02-13	2016-02-27	\N	\N
43	\N	\N	2016-02-13	2016-02-23	\N	\N
47	\N	\N	2016-04-14	2016-04-16	\N	\N
53	\N	\N	2016-05-19	2016-05-21	\N	\N
54	\N	\N	2016-05-19	2016-05-21	\N	\N
55	\N	\N	2016-04-15	2016-04-17	\N	\N
56	\N	\N	2016-04-15	2016-04-17	\N	\N
57	\N	2769	2016-04-26	2016-04-28	\N	\N
58	\N	2769	2016-04-26	2016-04-28	\N	\N
59	\N	2769	2016-04-26	2016-04-28	\N	\N
60	\N	2773	2016-04-26	2016-04-28	\N	\N
61	\N	2787	2016-04-26	2016-04-28	\N	\N
62	\N	2856	2016-04-20	2016-04-22	\N	\N
63	\N	2874	2016-05-19	2016-05-21	\N	\N
64	\N	2790	2016-04-28	2016-04-30	\N	\N
65	\N	2790	2016-04-28	2016-04-30	\N	\N
66	\N	2773	2016-04-28	2016-04-30	\N	\N
67	\N	2773	2016-04-28	2016-04-30	\N	\N
68	\N	2790	2016-04-28	2016-04-30	\N	\N
69	\N	2793	2016-04-28	2016-04-30	\N	\N
70	\N	2856	2016-04-20	2016-04-22	\N	\N
71	\N	2874	2016-05-19	2016-05-21	\N	\N
72	\N	2856	2016-04-20	2016-04-22	\N	\N
73	\N	2874	2016-05-19	2016-05-21	\N	\N
74	\N	2831	2016-05-12	2016-05-14	\N	\N
75	\N	2822	2016-05-12	2016-05-14	\N	\N
76	\N	2831	2016-05-12	2016-05-14	\N	\N
77	\N	2818	2016-05-12	2016-05-14	\N	\N
79	\N	2788	2016-05-12	2016-05-14	\N	\N
80	\N	2788	2016-05-12	2016-05-14	\N	\N
81	\N	2788	2016-05-12	2016-05-14	\N	\N
82	\N	2788	2016-05-12	2016-05-14	\N	\N
83	\N	2788	2016-05-12	2016-05-14	\N	\N
84	\N	2788	2016-05-12	2016-05-14	\N	\N
85	\N	2788	2016-05-12	2016-05-14	499	\N
86	\N	2782	2016-05-12	2016-05-14	350	\N
87	\N	2782	2016-05-12	2016-05-14	350	\N
88	\N	2788	2016-05-12	2016-05-14	499	\N
89	\N	2830	2016-05-12	2016-05-14	699	\N
90	\N	2830	2016-05-12	2016-05-14	699	\N
91	\N	2830	2016-05-12	2016-05-14	699	\N
92	\N	2787	2016-05-14	2016-05-16	499	\N
93	\N	2787	2016-05-14	2016-05-16	499	\N
94	\N	2787	2016-05-14	2016-05-16	499	\N
95	\N	2787	2016-05-14	2016-05-16	499	\N
96	\N	2787	2016-05-14	2016-05-16	499	\N
97	\N	2787	2016-05-14	2016-05-16	499	\N
98	\N	2787	2016-05-14	2016-05-16	499	\N
99	\N	2787	2016-05-14	2016-05-16	499	\N
100	\N	2787	2016-05-14	2016-05-16	499	\N
101	\N	2787	2016-05-14	2016-05-16	499	\N
102	\N	2787	2016-05-14	2016-05-16	499	\N
103	\N	2787	2016-05-14	2016-05-16	499	\N
104	\N	2787	2016-05-14	2016-05-16	499	\N
105	\N	2787	2016-05-14	2016-05-16	499	\N
106	\N	2787	2016-05-14	2016-05-16	499	\N
107	\N	2787	2016-05-14	2016-05-16	499	\N
121	132	3040	2016-05-23	2016-05-25	699	\N
123	134	3029	2016-05-24	2016-05-26	799	\N
127	138	2798	2016-05-25	2016-05-27	850	\N
129	140	3037	2016-05-25	2016-05-27	799	\N
130	140	3033	2016-05-25	2016-05-27	399	\N
132	142	2826	2016-05-25	2016-05-27	1499	\N
133	142	2926	2016-05-25	2016-05-27	950	\N
134	142	2930	2016-05-25	2016-05-27	1100	\N
136	144	2782	2016-05-31	2016-06-07	420	\N
117	\N	2778	2016-05-25	2016-05-27	699	\N
138	146	2770	2016-05-28	2016-05-30	849	\N
148	159	2825	2016-05-28	2016-05-30	499	rent
151	161	3039	2016-06-04	2016-06-06	1099	rent
153	163	3039	2016-06-04	2016-06-06	1099	rent
78	\N	\N	2016-05-12	2016-05-14	\N	\N
155	165	2973	2016-05-28	2016-05-28	1999	buy
158	168	3013	2016-06-08	2016-06-10	3199	rent
160	170	3048	2016-06-06	2016-06-08	899	rent
163	172	2936	2016-06-11	2016-06-13	1100	rent
165	174	2823	2016-06-10	2016-06-12	1799	rent
167	176	2830	2016-06-12	2016-06-14	599	rent
169	176	2956	2016-06-12	2016-06-14	1199	rent
170	176	2975	2016-06-09	2016-06-11	699	rent
171	176	2841	2016-06-12	2016-06-14	749	rent
173	178	2780	2016-06-10	2016-06-12	1999	rent
174	178	2799	2016-06-10	2016-06-12	3799	rent
168	176	\N	2016-06-12	2016-06-14	999	rent
176	180	2926	2016-06-10	2016-06-12	950	rent
177	180	2927	2016-06-10	2016-06-12	899	rent
178	180	2928	2016-06-10	2016-06-12	899	rent
179	180	3048	2016-06-10	2016-06-12	899	rent
180	180	3040	2016-06-10	2016-06-12	699	rent
184	182	2780	2016-07-04	2016-07-11	2398	rent
186	184	2883	2016-05-28	2016-05-28	7000	buy
188	186	3041	2016-06-14	2016-06-16	999	rent
189	186	3041	2016-06-14	2016-06-16	999	rent
191	188	2825	2016-06-17	2016-06-19	499	rent
195	190	2985	2016-05-28	2016-05-28	699	buy
201	193	3048	2016-06-19	2016-06-21	899	rent
202	193	2869	2016-06-19	2016-06-21	399	rent
204	195	2868	2016-06-17	2016-06-19	399	rent
206	197	3041	2016-06-21	2016-06-23	999	rent
207	197	3026	2016-06-21	2016-06-23	999	rent
208	197	3025	2016-06-21	2016-06-23	399	rent
209	197	2825	2016-06-21	2016-06-23	499	rent
210	197	2771	2016-06-21	2016-06-23	1449	rent
214	199	2927	2016-06-19	2016-06-21	899	rent
217	201	2827	2016-06-21	2016-06-23	699	rent
218	201	3046	2016-06-21	2016-06-23	499	rent
220	203	3026	2016-06-21	2016-06-23	999	rent
222	205	2927	2016-06-21	2016-06-23	899	rent
225	207	3044	2016-06-22	2016-06-24	899	rent
227	209	2823	2016-07-10	2016-07-12	1799	rent
229	211	2820	2016-06-27	2016-06-29	2499	rent
231	213	2860	2016-07-13	2016-07-15	199	rent
233	215	3044	2016-06-23	2016-06-25	899	rent
235	217	2927	2016-06-24	2016-06-26	899	rent
237	219	3048	2016-06-26	2016-06-28	899	rent
239	221	2777	2016-05-28	2016-05-28	14000	buy
242	223	3026	2016-07-01	2016-07-08	1198	rent
244	225	3013	2016-07-01	2016-07-03	3199	rent
245	225	3029	2016-07-01	2016-07-03	799	rent
247	227	2769	2016-07-22	2016-07-24	2499	rent
249	229	2825	2016-07-05	2016-07-07	499	rent
250	229	2926	2016-07-05	2016-07-07	950	rent
251	229	2931	2016-07-05	2016-07-07	899	rent
252	229	3025	2016-07-05	2016-07-07	399	rent
253	229	2822	2016-07-05	2016-07-07	1799	rent
254	229	3041	2016-07-05	2016-07-07	999	rent
256	231	2932	2016-07-09	2016-07-11	1749	rent
258	233	2780	2016-07-07	2016-07-09	1999	rent
260	235	2780	2016-07-07	2016-07-09	1999	rent
262	237	2820	2016-07-09	2016-07-11	2499	rent
263	237	2784	2016-07-09	2016-07-11	1399	rent
266	239	2928	2016-07-09	2016-07-11	899	rent
268	241	3039	2016-07-08	2016-07-10	1099	rent
269	241	2820	2016-07-08	2016-07-10	2499	rent
273	243	3039	2016-07-10	2016-07-12	1099	rent
275	245	3048	2016-07-16	2016-07-18	899	rent
277	247	2868	2016-07-12	2016-07-14	399	rent
279	249	2769	2016-07-11	2016-07-13	2499	rent
281	251	3051	2016-09-06	2016-09-08	1999	rent
283	253	2781	2016-07-13	2016-07-15	399	rent
285	255	2918	2016-07-14	2016-07-19	2298	rent
287	257	3039	2016-07-14	2016-07-16	1099	rent
289	259	2820	2016-09-01	2016-09-06	2873	rent
291	261	2928	2016-07-19	2016-07-21	899	rent
292	261	2931	2016-07-19	2016-07-21	899	rent
293	261	3040	2016-07-19	2016-07-21	699	rent
294	261	3025	2016-07-19	2016-07-21	399	rent
296	263	3042	2016-07-20	2016-07-22	1099	rent
298	265	3048	2016-07-20	2016-07-22	899	rent
303	267	2819	2016-08-12	2016-08-14	1100	rent
304	267	2918	2016-08-10	2016-08-17	2398	rent
309	269	2778	2016-07-29	2016-07-31	699	rent
310	269	2780	2016-07-29	2016-07-31	1999	rent
315	271	2808	2016-07-24	2016-07-26	1499	rent
316	271	2808	2016-07-24	2016-07-26	1499	rent
317	271	2808	2016-07-24	2016-07-26	1499	rent
318	271	2808	2016-07-24	2016-07-26	1499	rent
322	272	2948	2016-07-24	2016-07-26	299	rent
323	273	2831	2016-07-24	2016-07-26	199	rent
324	273	2832	2016-07-24	2016-07-26	199	rent
325	273	2946	2016-07-24	2016-07-26	250	rent
326	273	2948	2016-07-24	2016-07-26	299	rent
327	274	3023	2016-08-04	2016-08-06	1099	rent
328	275	3023	2016-08-04	2016-08-06	1099	rent
329	276	2828	2016-07-27	2016-07-29	799	rent
330	276	2828	2016-07-27	2016-07-29	799	rent
331	276	2828	2016-07-27	2016-07-29	799	rent
332	277	2828	2016-07-27	2016-07-29	799	rent
333	278	3046	2016-07-29	2016-07-31	499	rent
334	279	2826	2016-07-28	2016-07-30	1499	rent
339	284	3049	2016-08-18	2016-08-20	899	rent
335	\N	2773	2016-07-28	2016-07-30	499	rent
336	\N	2772	2016-07-28	2016-07-30	1449	rent
337	\N	2912	2016-07-28	2016-07-30	1300	rent
338	\N	2791	2016-07-29	2016-07-31	2199	rent
\.


--
-- Data for Name: ecommerce_order_product_accessory; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_order_product_accessory (id, "timestamp", accessory_id, order_product_id) FROM stdin;
\.


--
-- Name: ecommerce_order_product_accessory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_order_product_accessory_id_seq', 1, false);


--
-- Name: ecommerce_order_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_order_product_id_seq', 339, true);


--
-- Data for Name: ecommerce_page; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_page (id, handle, title, content, "timestamp") FROM stdin;
2	cancellation-policy	Cancellation Policy	<p>This policy governs the cancellation of any Order for a Product placed by you as the user of the candidknots.com web portal ("Site") (domain name– www.candidknots.com) ("Cancellation Policy") while renting a Product. It is here by clarified that Site Owner shall not accept the cancellation of Orders placed by a User for purchasing Products listed for sale on the Site and all such Orders shall be final and binding on the User placing such Orders. However, the Site Owner shall have the right to cancel an Order placed for purchase of Products listed for Sale in accordance with the terms specified below.</p>\n<p><br />Any reference to "you" or "User" or "User's" in this Cancellation Policy, means you the User of the Site, renting the Products) displayed by the Green LifeTechnologies Private Limited (hereinafter referred to as "the Site Owner" "we" "us" or "our") solely for personal use and/or accessing and using the Site ("Services") in the manner as set out in the terms and conditions available at ("Terms and Conditions"). Each capitalized term not defined but used in this Cancellation Policy shall have the same meaning as ascribed to such term in the Terms and Conditions.</p>\n<p><br />Please note that there may be certain orders, made by you for any of the Products displayed on the Site, which the Company may be unable to accept. We reserve the right, at our sole discretion, to refuse or cancel any Order for any reason. This Cancellation Policy identifies and sets out some situations that may result in cancellation of your Order for renting by the Site Owner.</p>\n<p><br />Accordingly, an Order for the identified Product (s) may be cancelled by the Site Owner on occurrence of the following circumstances:<br />i. the Product is no longer available or is temporarily unavailable;<br />ii. there are limited quantities of the identified Product (s) available for renting by the User registered on the Site and the same Product has been ordered by another User prior to your Order;<br />iii. a problem (s) is identified by the Company in relation to the payment made by the User for any Product displayed on the Site;<br />iv. inaccurate or insufficient Shipping Address or other detail (s) have been provided by the User at the time of placing an Order of any Product;<br />v. the Product is requested to be delivered at a location where the Site Owner does not cater or is otherwise inaccessible; or<br />vi. there are inaccuracies, defect or errors in the identified Product (s) or its pricing information; or<br />vii. Any malpractice or abuse is identified by the Site Owner on part of the User while placing any Order for a Product or any malpractice or abuse by the User of the Services rendered by the Site Owner.</p>\n<p>We may also require additional verification or information before accepting any Order placed by you. We will contact you on the details provided by you during your registration on the Site, subject to the Terms and Conditions, if all or any portion of your Order is cancelled or if additional information is required by us to accept your Order. If your Order is cancelled after you have transferred the money via NEFT or any other modes of payment linked to a bank account, it shall be refunded back in the same account.</p>\n<p>Cancellation request by the User in relation to renting of Products:<br />In case of requests for Order cancellations, we reserve the right to accept or reject requests for Order cancellations for any reason. As part of usual business practice, if we receive a cancellation request by you in accordance with the cancellation terms specified below, the Site Owner shall cancel the Order and we shall refund you in your bank account relation to the Rental Fee paid by you, however, it is clarified that you shall be liable to pay cancellation fee in the manner detailed below.<br />i. In the event you have requested for cancellation of the Order in 24 hours of product placement then entire amount shall be refunded to you.<br />ii. In the event you have requested for cancellation after 24 hours of placing the order then 70% of the rental fee shall be refunded to you and out of the remaining 30% shall be deducted as a cancellation fee.<br />iii. Cancellation on the booking date is not possible.<br />iv. In all the above cases your security deposit shall be fully refunded to you.<br />The time at which any Order is made by you for any of the Product (s) shall be recorded by the Site Owner at its sole discretion and such time shall not be disputed by you.<br />The User agrees not to dispute the decision made by the Site Owner in relation to the determination of the applicable Cancellation Fee and accept the Site Owner's decision made in response to any cancellation request made by the User.</p>\n<p>In case you want to cancel an Order please send a written request at the following email address – care@candidknots.com.</p>\n<p>Any dispute regarding a cancellation request will be governed by this Cancellation Policy and by the laws of India and courts of Bangalore shall have exclusive jurisdiction.</p>\n<p>Version 1: 28.09.2015</p>	2016-01-23 13:11:53.226-05
1	return-policy	Return Policy	<p>This return policy governs the return of any product (defined below) ordered by you, as the user of the candidknots.com web portal ("site") (domain name – candidknots.com) ("return policy"). Any reference to "you" or "user" or "user's" in this return policy, means you the user of the site, ordering and renting the products (defined below) displayed by Green Life Technologies Private Limited(hereinafter referred to as "the site owner" "we" "us" or "our") solely for your personal use and/or accessing and using the site ("services") in the manner as set out in the terms and conditions available at ("terms and conditions"). Each capitalized term not defined but used in this return policy shall have the same meaning as ascribed to such term in the terms and conditions.</p>\n<p>Please note that for all the orders, made by you for renting any of the products displayed on the site, you agree that you shall return such product, in a satisfactory condition as specified herein and in the terms and conditions, to the site owner in the manner as set out in this return policy. It is here by clarified that this return policy is not applicable for products that are being purchased by you through the site.<br />You hereby agree and acknowledge that you shall be solely responsible to return the products delivered to you within a period of 3 (three) or 6 (six) days from the date of delivery ("return date") in a satisfactory condition and subject to the terms and conditions. Further, you agree that the site owner is entitled to and authorized to charge the applicable late fee as detailed below ("late fee") in the event you fail to return the product to the site owner in the manner set out below in this return policy, before the expiry of the return date.</p>\n<p><br />i. In the event the Product is not returned within 2 (Two) days from the Return Date, the Site Owner shall have the right to charge you a Late Fee equivalent to an amount of 25% of the Rental Fee, plus all applicable taxes for each day of delay in returning the Product.</p>\n<p>ii. Thereafter, in the eventuality that the Product is not returned within 3 (Three) to 9 (Nine) days from the Return Date, the Site Owner shall have the right to charge you a Late Fee equivalent to an amount of 50% of the Rental Fee per day, plus all applicable taxes for each day of delay in returning the Product.</p>\n<p>iii. Thereafter, in the eventuality that the product is not returned within 10 (ten) days from the return date, the site owner shall have the right to charge you a late fee equivalent to an amount of 100% of the retail price of the product, plus all applicable taxes, less the penalty amount already paid by you on account of delay in return of the products as late fee, calculated in the manner specified in sub-clauses (I) and (II) above.<br />It is hereby clarified that the late fee chargeable by the site owner shall be in addition to the rental fee payable by you for each product, ordered and delivered to you by the site owner and any additional payment due and payable on account of any material damage done to the product by you at the time of using such product in accordance with the terms and conditions.</p>\n<p>We may also require additional verification or information before accepting any Order placed by you. We will contact you on the details provided by you during your registration on the Site, subject to the Terms and Conditions, if all or any portion of your Order is cancelled or if additional information is required by us to accept your Order. If your Order is cancelled after you have transferred the money via NEFT <span>or any other modes of payment linked to a bank account, it shall be refunded back in the same account </span>it shall be refunded back in the same account.</p>\n<p>The Site Owner shall have the right to adjust the Security Deposit being equivalent to the Rental Fee of the Product given by you in accordance with the Terms and Conditions, against the Late Fee payable by you in accordance with the terms of this Return Policy. In the event the amount of Late Fee payable by you is higher than the Security Deposit, you hereby authorize the Site Owner to immediately charge the balance Late Fee, on the credit card/debit card of the User registered with the Site. Further, in the event the Late Fee payable by you is an amount lower than the Security Deposit, the Site Owner shall refund the balance Security Deposit in accordance with the Terms and Conditions.</p>\n<p>You hereby agree and acknowledge that you shall be solely liable for returning the product in the same conditions (excluding normal wear and tear) as the product was delivered to you. It is hereby clarified that you shall be liable for all costs incurred by the site owner in relation to any substantial damage or major loss to the product caused by you. The cost assessment of the site owner in this regard shall be final and binding on the user. The site owner shall have the right to deduct such costs for substantial damage or major loss, as the case maybe, from the security deposit provided by you.</p>\n<p>At the time of returning the product, you are required to package the product in the original packing in which it was delivered to you or any return packing provided to you by the site owner at the time of delivery of the product. Kindly ensure that you seal the package properly.<br />It is further agreed that the product shall be returned in a safe and acceptable manner, only to the person designated by the site owner, who shall pick up the product from your shipping address on or before the return date, as per your instructions.</p>\n<p>You hereby explicitly agree not to dispute the decision made by the site owner in relation to the determination of a material damage done to the product during its delivery on your part and/or any substantial damage or major loss in accordance with the terms and conditions.<br />Any dispute regarding return of any product or any of the terms of this return policy will be governed by this return policy and by the laws of India and courts of Bangalore shall have exclusive jurisdiction.</p>\n<p>Version 1: 28.09.2015</p>	2016-01-23 13:10:55.73-05
3	privacy-policy	Privacy Policy	<p>This Privacy Policy governs the manner in which Green Life Technologies Private Limited ("Company") collects, uses, maintains and discloses information collected from users (each, a "User") of the candidknots.com website ("Site"). <br /> <br /><strong>Personal identification information</strong></p>\n<p>We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our site, register on the site, place an order, fill out a form, respond to a survey, and in connection with other activities, services, features or resources we make available on our Site. Users may be asked for, as appropriate, name, email address, mailing address, phone number. Users may, however, visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities. Kindly note that we may also require your CREDIT CARD /debit card details for facilitating the payments in relation to the Order placed by you, also such details shall may be stored or used by us in any manner other than in accordance with the Terms and Conditions. Kindly note that the Site Owner uses an online payment gateway operated by third parties and the information that you provide at the time of placing an Order on the Site is held and stored by such third party payment gateway operator. <br /> <br /><strong>Non-personal identification information</strong></p>\n<p>We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users means of connection to our Site, such as the operating system and the Internet service providers’ utilized and other similar information. <br /> <br /><strong>Web browser cookies</strong></p>\n<p>Our Site may use "cookies" to enhance User experience. User's web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly. <br /> <br /><strong>How we use collected information</strong></p>\n<p>The Site may collect and use Users personal information for the following purposes:<br />To run and operate our Site We may need your information display content on the Site correctly.<br />To improve customer service Information you provide helps us respond to your customer service requests and support needs more efficiently.<br />To personalize user experience We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site.<br />To improve our Site We may use feedback you provide to improve our products and services.<br />To run a promotion, contest, survey or other Site feature<br />To send Users information they agreed to receive about topics we think will be of interest to them.<br />To send periodic emails We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</p>\n<p><strong>How we protect your information</strong></p>\n<p>We adopt appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our Site.</p>\n<p><strong>Sharing your personal information</strong></p>\n<p>We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above.</p>\n<p><strong>Electronic newsletters</strong></p>\n<p>If User decides to opt-in to our mailing list, they will receive emails that may include company news, updates, related product or service information, etc. If at any time the User would like to unsubscribe from receiving future emails, we include detailed unsubscribe instructions at the bottom of each email or User may contact us via our Site.</p>\n<p><strong>Changes to this privacy policy</strong></p>\n<p>The Site has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page and send you an email. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</p>\n<p><strong>Your acceptance of these terms</strong></p>\n<p>By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes. </p>\n<p> </p>\n<p><strong>Contacting us</strong></p>\n<p>If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us. </p>\n<p>Version 1: 28.09.2015</p>	2016-01-23 13:12:32.731-05
4	terms-conditions	Terms & Conditions	<p>This document is published in accordance with the provisions of Rule 3(1) of the Information Technology (Intermediaries Guidelines) Rules, 2011 which require the publishing of the rules and regulations governing the use and access of candidknots.com ("Site") which are the products of the Green Life Technologies Private Limited ("Company").</p>\n<p><br /><strong>Introduction</strong></p>\n<p>1.1 These terms and conditions ("Terms and Conditions") and all applicable Policies (as defined below) which are herein incorporated by way of reference govern your rights and obligations as a User (defined below) of the Site while accessing and using the Site and/or availing the Services (defined below), as may be rendered by the Company, having its registered office at 9/2, Jagannath Sarkar Lane, Khidderpore, Kolkata- 700023, West Bengal through the Site to Users from time to time.</p>\n<p>Any reference to "you" or "User" or "User's" in these Terms and Conditions, means you the User of the Site, placing order for the products, displayed on the Site ("Products") for taking on rent such Product (s) or purchasing the Product (s) listed for sale on the Site, solely for personal use and/or accessing and using the Site Content (defined below) ("Services") in the manner as set out in these Terms and Conditions.</p>\n<p>1.2 As a User, your access to and use of the Site and/or the Services are conditional upon your acceptance of and continuous compliance with these Terms and Conditions at all times and all applicable Policies (as defined below). There is an explicit understanding that these Terms and Conditions and all the Policies shall be adhered to by you. By accessing, browsing and/or using the Site and/or availing any of the Services, you agree to be bound by these Terms and Conditions, the cancellation policy governing cancellation of an order for any Product placed by you ("Cancellation Policy"), the return policy governing the return of any Product rented to you ("Return Policy"), the privacy policy governing your access to the Site ("Privacy Policy"), other guidelines, policies, terms and conditions applicable to the Site and/or Services being provided by the Site Owner (collectively as "Policies"), as may be modified by the Site Owner from time to time at its own discretion, which shall be deemed to be incorporated in these Terms and Conditions by reference, unconditionally and at all times. Further, by accessing, browsing and/or using the Site and/or availing any of the Services, you explicitly agree to receive communications, in written and/or verbal form, from the Site Owner or its authorized representatives with regard to any matter relating to the Site, Products or the Services.</p>\n<p>1.3 The Site Owner shall have the sole right to change, modify, add or remove these Terms and Conditions or any or all of its Policies relating to the provisions of Services on the Site and access to the Site, at any time without any prior written notice or intimation to you. It is hereby clarified that each User shall be responsible for reviewing the Terms and Conditions and Policies on the Site periodically and keep themselves updated.<br /><strong></strong></p>\n<p><strong>User Eligibility</strong></p>\n<p>2.1 The Services on the Site are only available to persons who are competent to enter into legally binding contracts under the Indian Contract Act, 1872 ("Contract Act"). Any person who shall be considered as incompetent to contract as per the provisions of the Contract Act including minors, un-discharged insolvents etc. are not eligible to use the Site ("User"). Any person using the Services on behalf of any other person/ proprietorship/ partnership/ firm/ company, represents and warrants that it is duly authorized by such person/ proprietorship/ partnership/ firm/ company being the User to accept the Terms and Conditions and the Policies and that such person has the authority to bind the User to these Terms and Conditions and all the Policies.<br /><strong></strong></p>\n<p><strong>Sale and Renting of Products</strong></p>\n<p>3.1 The Site is a platform provided by the Site Owner to its Users, after registration of such User on the Site ("Registration") and their access to the Site through the account created on the Site by using the account details entered by such User ("Account Information"), to browse and take on rent the products displayed on the Site for a period of 3 (Three) or 6 (Six) days starting from the date of delivery of the Product to the User ("Rental Period") or to purchase certain Products listed for sale on the Site. The Site Owner shall also provide such other services, including sale of Products, as may be included, removed and/or modified by the Site Owner from time to time.</p>\n<p>3.2 The Services and the Site are governed by these Terms and Conditions and all applicable Policies of the Site, as may be amended from time to time and shall be deemed to be incorporated in these Terms and Conditions by way of reference. Unless expressly stated otherwise, any new features that augment or enhance the current Services and the Site shall be subject to these Terms and Conditions and all the Policies.<br /><strong></strong></p>\n<p><strong>Terms of Use</strong></p>\n<p>4.1 Use of the Services</p>\n<p>(a) Placing of orders by the User </p>\n<p>All orders shall be placed by a User by signing in on the Site using his/her Account Information. It is hereby clarified that the Site Owner shall have the sole right to accept or reject order placed for a Product by a User. Once an order is approved by the Site Owner, the User, placing such order shall receive a confirmation from the Site Owner in relation to the acceptance of his/her order ("Order"). The Products ordered will be delivered in accordance with Section 4.1 (c) (i) or Section 4.1 (c) (ii), as may be applicable, of these Terms and Conditions. It is explicitly agreed by you that you shall not avail the Services and/or access and use the Site for any other purposes except for your personal use. <br />It is hereby clarified that the Products may appear different in color and style than as displayed on the Site. The size and measurements may vary depending on the Products.</p>\n<p>(b) Restriction of Orders placed by the User and cancellation of Orders by the Site Owner <br />The Site Owner may impose limitation or restriction on the maximum number of Orders placed by a single User for any of the Products listed on the Site through his/her account on the Site. The Site Owner further has the right to cancel any Order placed by the User or prohibit any User from taking on rent or purchasing any of the Products (s) listed for sale on the Site, for any reason, including but not limited to any likelihood that the User, as per Site Owner's discretion, will abuse the Services or any of the reasons or circumstances specified in the Cancellation Policy. </p>\n<p>The Site Owner shall deliver the Products ordered by a User including the size, color and design on or before the delivery date. It is hereby clarified that in the event a Product ordered by you is not available, the Site Owner shall take reasonable efforts to notify you of such unavailability and you shall have the right to order a replacement Product.</p>\n<p>(c) Delivery and shipping of Products </p>\n<p>(i) Delivery of Orders placed for renting Products</p>\n<p>The delivery of all Orders placed for renting any Product shall be made on the first day of the Rental Period for such Product. It is hereby clarified that the Site Owner shall undertake best efforts to ensure that the Products are delivered within the timelines specified, however the Site Owner shall not be liable for any delay in the delivery of the Products for reasons beyond the Site Owner's reasonable control. </p>\n<p>(ii) Delivery of Orders placed for purchasing the Products </p>\n<p>The delivery of all Orders placed for purchasing the Products listed for sale on the Site shall be made within 10 days from the date of confirmation of an Order in accordance with Section 4.1 (a) above. It is hereby clarified that the Site Owner shall undertake best efforts to ensure that the Products are delivered within the timelines specified, however the Site Owner shall not be liable for any delay in the delivery of the Products for reasons beyond the Site Owner's reasonable control. </p>\n<p>The User hereby agrees and acknowledges that for all Orders that are shipped and delivered by the Site Owner to the User, for either Section 4.1 (c) (i) or Section 4.1 (c) (ii) above, a delivery charge as specified on the Site may be payable by the User on account of delivery of the Product by the Site Owner ("Delivery Charges"). <br />The shipping of the Orders for either Section 4.1 (c) (i) or Section 4.1 (c) (ii) above, is at the discretion of the Site Owner and shall generally be done through shipping partners, which are subject to change from time to time at the discretion of the Site Owner. It is clarified that the shipping and delivery of the Product will be initiated by the Site Owner only after the payment of Total Fee (defined below) or Sale Price (defined below), as the case maybe, by the User, to the satisfaction of the Site Owner. <br />The details pertaining to the shipping, delivery locations, the timelines for expected delivery and Delivery Charges, as may be applicable, for all Products are/may be specified on the Site.</p>\n<p>(d) Payment by the User </p>\n<p>(i) Payment by User renting the Product(s)<br />It is clarified that the User shall pay rental fee as specified on the Site for every Order placed by such User ("Rental Fee") along with a security deposit being an amount equal to the Rental Fee ("Security Deposit") and, if applicable, the Delivery Charges as may be displayed on the Site for each of the Products, from time to time (collectively "Total Fee"). It is clarified that the Total Fee is exclusive of any taxes, fees, duties or any other charges that the User is required to pay under the applicable law. All/any such tax or charge, as is payable by the User, shall be paid directly by the User. The Security Deposit shall be refunded to the User upon return of the Products ordered after making such deductions as maybe applicable in accordance with these Terms and Conditions, the Cancellation Policy and the Return Policy. </p>\n<p>(ii) Payment by User purchasing the Product (s) <br />It is hereby clarified that the User shall pay the sale price as specified on the Site for every Order placed by such User to purchase a Product listed for sale on the Site ("Sale Price") and the Delivery Charges as may be displayed on the Site for each of the Products, if applicable, from time to time. It is clarified that the Sale Price is exclusive of any taxes, fees, duties or any other charges that the User is required to pay under the applicable law. All/any such tax or charge, as is payable by the User, shall be paid directly by the User. <br />It is clarified that upon confirmation of an Order for either Section 4.1 (d) (i) or Section 4.1 (d) (ii) above, for a Product placed by a User, the Site Owner becomes authorized by the User to immediately charge the applicable Total Fee or Sale Price, as the case maybe, along with the Delivery Charges, if applicable, on the credit card/debit card of the User registered with the Site.</p>\n<p>The User hereby undertakes and agrees that all payment details in relation to the credit card/debit card registered by the User on the Site and being used to place an Order for a Product, for either Section 4.1 (d) (i) or Section 4.1 (d) (ii) above, shall be valid and accurate. It is agreed that the Site Owner reserves the right to take, at its discretion, any legal action if the payment details are found to be invalid or inaccurate. It is clarified that you are responsible for maintaining confidentiality and security of the payment details and ensuring proper use of the credit card/debit card used by you in relation to the Services. It is clarified that the Site Owner shall not have any liability for any consequence arising out of unauthorized use of your credit card/debit card or the details thereof. </p>\n<p>(e) Mode of Payment <br />The payment of the Total Fee or the Sale Price, as the case maybe, in relation to the Order, shall be made by the User through any of the payment methods available on the Site. By making such payment, you explicitly authorize the Site Owner or its authorized representatives to charge the applicable Total Fee or Sale Price, as the case may be, or any other amounts, including damages and penalties, as may be due and payable by you to the Site Owner, through such payment method as may be availed by you. It is clarified that by placing an Order for any Product on the Site and authorizing the Site Owner to charge the Total Fee or the Sale Price, as the case may be, or any other amounts, including damages and penalties, as may be due and payable by you to the Site Owner, you are entering into a binding agreement with the Site Owner.</p>\n<p>(f) Cancellation of the Order <br />It is clarified that any request for cancellation of any order of Products (s) which is being rented, may be made by the User, subject to the Cancellation Policy. All the provisions of the Cancellation Policy shall govern such cancellation request made in relation to any Order placed by a User using the Site.</p>\n<p>(g) Receipt of the Product <br />The Products shall be shipped to the shipping address provided by you at the time of placing an Order ("Shipping Address"). It is clarified that the Shipping Address provided by you shall be accurate and secured and that the Site Owner shall not be liable for any delay in delivery if such Shipping Address is found to be inaccurate or insecure at the time of delivery of the Product. In the event the Shipping Address is found to be inaccurate or insecure, additional delivery charges, as may be computed at the sole discretion of the Site Owner, shall be paid by you.</p>\n<p>(h) Use of the Products (applicable for Users renting the Products) <br />All Products delivered pursuant an Order are professionally dry cleaned prior to delivery and ready to wear upon receipt of delivery. The Site Owners take all reasonable care to dry clean and inspect each Product prior to delivery but use of the Product is at your own risk and the Site Owner shall not be liable for any health related complaints in relation to the Products. Upon delivery of the Product by the Site Owner at the Shipping Address provided by you, you shall have the entire responsibility in relation to the use, maintenance, and safety of the Product ordered by you and delivered by the Site Owner to you.<br />You shall be solely responsible for protecting the Product delivered to you from any loss, destruction or damage caused due to any reason, including but not limited to theft, fire stains, other stains, alterations, tearing, rubbing-off ("Substantial Damage"). You shall further be responsible for protecting the Product delivered to you from any loss which may result in any form of diminution in the Product's commercial value ("Major Loss"). You shall be responsible for handling the Products, during the Rental Period, with the same extent of care and precaution as you will exercise with regard to any of your personal properties. <br />If any damage is done to the Product which has the effect of mere normal wear and tear as per the determination of the Site Owner, you shall not be liable for such extent of damage to the Product. However, if the Site Owner determines that a Substantial Damage has been done to the Product on your part, an additional charge of upto the maximum of the security, shall be payable by you on account of such Substantial Damage to the Product. It is clarified that such amount, as is required to be paid by you on account of any Substantial Damage, shall be determined at the sole and absolute discretion of the Site Owner. </p>\n<p>In the event the Site Owner determines that a Major Loss has been done to the Product on your part, an additional charge of up to 100% of the retail value of such Product, as determined by the Site Owner, shall be payable by you on account of such Major Loss. </p>\n<p>You hereby explicitly agree to such levy of additional charge on account of any Substantial Damage or Major Loss as may be determined by the Site Owner to have caused to the Product on your part while using such Product. It is clarified that in the event of any Substantial Damage or Major Loss caused to the Product during the Rental Period, the Site Owner becomes authorized to adjust the penalties for such Substantial Damage or Major Loss, as specified above, against the Security Deposit paid by you. In the event the penalty for such Substantial Damage or Major Loss, as specified above, is an amount higher than the Security Deposit, the Site Owner is hereby authorized by the User to immediately charge the User the penalties for the balance of such Substantial Damage or Major Loss, as per the sole and absolute determination of the Site Owner. Further, in the event the penalty for such Substantial Damage or Major Loss, as specified above, is an amount lower than the Security Deposit, the balance of the Security Deposit shall be refunded to you by the Site Owner in accordance with these Terms and Conditions.<br />In the event the Product delivered to you does not fit you then you shall notify the Site Owner by email or calling on designated number within 3 hours from the time of delivery of the Product and the Product shall be picked up by the Site Owner from the Shipping Address on the date of receipt of such intimation in the manner specified above and in accordance with the terms of the Return Policy. The time at which you notify the Site Owner shall be recorded by the Site Owner at its sole discretion and such time shall not be disputed by you. In such an event the Site Owner shall issue you a credit note for the Rental Fee excluding the Delivery Charges, if applicable, for renting of a Product at a future date subject to the satisfaction of the Site Owner that the Product has not been worn or used.</p>\n<p>(i) Return of the Product (applicable only for Users renting the Products) <br />It is clarified that you shall return the Products (s) ordered from the Site, in accordance with the terms of the Return Policy. All the provisions of the Return Policy shall govern the Product as displayed on the Site and delivered to you by the Site Owner in pursuance to your Order for renting such Product. It is clarified that in the event of any delay on the part of the User to return the Product within the stipulated period, the Site Owner is hereby authorized by the User to immediately charge the User the penalties for such delay, as per the terms and conditions prescribed in the Return Policy. <br />It is hereby clarified that the Site Owner shall not accept any return in case of Products being purchased by a User using the Site and the Site Owner shall not be liable for any loss incurred by a User if the Product purchased does not fit the User or is it appears different in color and style than as displayed on the Site.</p>\n<p>(j) Delay in Service <br />It is clarified that the Services and/or the Site may involve deficiencies, including but not limited to omissions, interruptions, loss of data, and inaccuracies, delay in delivery and the Site Owner shall not have any liability on occurrence of such deficiencies in the operation of the Services and/or the Site, including but not limited to any omission, interruption, loss of data, in accuracy and delay in delivery that may be experienced by you at the time of browsing or ordering any Product displayed on the Site. The Site Owner hereby disclaims any liability or responsibility for such deficiencies. The Site Owner shall put best efforts to ensure smooth operation of the Service and/or the Site however, it does not guarantee against the possibility of any of the identified deficiencies in the Services and/or the Site. You acknowledge that the Site Owner may direct any precautions to you for ensuring that there is no breach of security and integrity of the Site and on such directions you shall provide the necessary support to the Site Owner. The Site Owner disclaims any responsibility for a loss that may be incurred by you due to any failed or incomplete transaction on the Site.</p>\n<p>4.2 Content on the Site</p>\n<p>a. It is hereby clarified that the Services provided to you may involve references to or links of any third-party or its products, services or other content ("Third-Party Content"). You acknowledge that the Site Owner is not liable for any such Third-Party Content as may be displayed on the Site or that you may be re-directed to while accessing the Site and/or availing the Services. It is further clarified that the Site Owner shall not be liable for any persons who may have provided such Third-Party Content. The Third-Party Content displayed on the Site or re-directed to by the Site does not suggest that the Site Owner has endorsed such Third-Party Content or provider of the Third-Party Content. It is clarified that the Site Owner shall not be liable for any privacy practices of a third-party providing such Third-Party Content.</p>\n<p>b. The copyright and the design right of the Products listed on this Site are owned by the specific designer, as the case may be, and the Site Owner does not own and/or have any interest in the copyright and design rights associated with any of the Product. All photographs used on this Site are the copyright of the Site Owner. The Site Owner has undertaken its best efforts to ensure that the Products listed on this Site are authentic and original works of the specified designer.</p>\n<p>c. It is hereby clarified that any content made available by the Site Owner to you while providing the Services or access to the Site, including but not limited to specification of any the Products, images of the Product or any comments or reviews by other Users on the Site (collectively as "Site Content") is available on "as is" and "as available" basis and is displayed solely for informational purposes. It is clarified that the Site Content made available by the Site Owner to you does not constitute and shall not be relied on by you as any information that substitutes professional advice or service (s). It is further clarified that any update of or modification to the Site Content shall be done at the sole discretion of the Site Owner. The use of the Site and/or the Services shall be governed by the terms of these Terms and Conditions and the Policies as amended and updated. The User hereby agrees and acknowledges that the Site Owner is not liable for any non-disclosure or incomplete disclosure of any information in relation to the Products displayed on the Site and/or the Services provided by the Site Owner.</p>\n<p>d. If any information is made available by you to the Site Owner or uploaded on the Site, including but not limited to images, reviews pertaining to your use of the Product (s) or any other materials in relation to the Services ("User Content"), the Site Owner becomes entitled to a perpetual, non-exclusive, royalty-free, irrevocable and transferable license to use, reproduce, transfer, display, amend or exploit in any other manner the User Content in any media format at the discretion of the Site Owner. You hereby explicitly agree and accept that the Site Owner has the sole and absolute discretion to remove any User Content uploaded by you on the Site or restrict the publication of any User Content on the Site, for any reason whatsoever. You hereby explicitly agree that the Site Owner may use the User Content for any purpose as it may think fit, including but not limited to promotion, marketing, and advertisement of the Services and/or the Site without your consent and without any payment by the Site Owner in relation to such use of the User Content. It is clarified that you are responsible to ensure that the User Content submitted or uploaded by you is in consonance with these Terms and Conditions. It is further clarified that the Site Owner shall not be liable for any disclosure, use, modification or transfer of the User Content.</p>\n<p>e. The User undertakes and agrees not to host, display, upload, modify, publish, transmit, update or share any User Content including any information, image or graphic that:</p>\n<p>• belongs to another person and to which a User does not have any right to;<br />• is grossly harmful, harassing, blasphemous, defamatory, obscene, pornographic, paedophilic, libelous, invasive of another's privacy, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or gambling, or otherwise unlawful in any manner whatever;<br />• harm minors in any way;<br />• infringes any patent, trademark, copyright or other proprietary rights;<br />• violates any law for the time being in force;<br />• deceives or misleads the addressee about the origin of such messages or communicates any information which is grossly offensive or menacing in nature;<br />• impersonate another person;<br />• contains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer resource;<br />• Threatens the unity, integrity, defense, security or sovereignty of India, friendly relations with foreign states, or public order or causes incitement to the commission of any cognizable offence or prevents investigation of any offence or is insulting any other nation.<br />f. You agree that you shall, at all times, comply with the requirements of the Information Technology Act, 2000 ("IT Act") as also rules, regulations, guidelines, bye laws and notifications made there under while assessing the Site Content or submitting to the Site Owner or uploading on the Site any User Content. You further unequivocally declare that in case of any violation of any provisions of the IT Act and/or rules, regulations, guidelines, bye-laws and notifications made there under, you shall be solely responsible, at your sole cost and expenses for all acts, deeds and things and that you alone shall be liable for civil and criminal liability there under or under any other law for the time being in force.</p>\n<p>4.3 Account created on the Site</p>\n<p>(a) It is clarified that you will be solely responsible or liable for any unauthorized use of the account created by you on Registration on the Site after entering the Account Information. The Site Owner disclaims any responsibility or liability for an unauthorized disclosure of the Account Information and/or any other details pertaining to your account created on the Site. It is clarified that you shall notify the Site Owner of any unauthorized use of the account or the Account Information or breach of security. It is agreed that you shall be solely liable for any loss that may be caused due to such unauthorized use of the account or the Account Information or any other act that results from your failure of keeping the account and the Account Information secure and confidential. It is further clarified that you are solely liable for any charges that may be incurred while using the account created on the Site. It is clarified that you are responsible for entering accurate Account Information and updating the Account Information. It is explicitly agreed that the Site Owner reserves the right to terminate, at its discretion, the account created by you on the Site, if the Account Information is found as untrue, inaccurate, outdated, incomplete or inconsistent.</p>\n<p>4.4 Service license<br />(a) It is clarified that the Site Owner has granted you a limited, non-transferable, non-exclusive and revocable right, which is subject to these Terms and Conditions and all the Policies referred herein, to access and use the Services and/or the Site solely for your personal and non-commercial use. It is clarified that the Site Owner reserves an absolute right to restrict or prohibit your access to or availing the Services and/or the Site, at its sole discretion and without assigning any reason thereto.</p>\n<p>(b) You, while accessing and using the Site and/or the Services, shall duly comply with all requirements specified in these Terms and Conditions and all other applicable Policies, including but not limited to the Privacy Policy, Return Policy and Cancellation Policy, as may be amended from time to time by the Site Owner.</p>\n<p>4.5 Claims of Copyright infringement <br />If you are of the opinion that any of the Products displayed on the Site infringes your copyright, a request may be made to the Site Owner, on the details provided on the Site, for removal of the said Product from the Site. The request shall be accompanied with a statement identifying the Product which is alleged to have infringed your copyright and a statement declaring that the claims made by you are in good faith and accurate. On the receipt of such request and verification of the alleged infringement, the Site Owner may, at its sole discretion, remove such Product from the Site or take any other action as it may deem fit.</p>\n<p>4.6 Indemnity<br />(a) You hereby agree that you shall keep the Site Owner, its affiliates and group companies, successors, assigns and its respective officers, directors and agents, shareholders, representatives indemnified and defend and hold harmless from and against all actions, proceedings, claims, liabilities (including statutory liability), penalties, demands and costs (including without limitation, legal costs), awards, damages, losses and/or expenses however arising directly or indirectly, including but not limited to, as a result of:<br />• any breach or non-performance by you of any of your undertakings, warranties, covenants, declarations or obligations under these Terms and Conditions; or<br />• any hacking or lapse in security of the Site or the data on the Site; or<br />• Any act, deed, omission or non-performance on your part which renders the transaction undertaken through the Site invalid.</p>\n<p>(b) The indemnities provided herein and provisions making reference to the indemnities shall survive the termination of these Terms and Conditions and all the Policies, including but not limited to the Privacy Policy, Cancellation Policy and Return Policy.</p>\n<p>4.7 Limitation of liability<br />(a) Notwithstanding anything stated under these Terms and Conditions and the Policies, in the unlikely and rare event, you hereby acknowledge that the Site Owner's aggregate liability with respect to the Services and/or the Site shall be limited to and not exceed, in any event, the sum equivalent to the Rental Fee or Sale Price, as the case maybe, of your single, most recent transaction and shall be as per these Terms and Conditions (excluding the Delivery Charges, if applicable).<br />(b) You hereby agree and confirm that the sole and exclusive responsibility and obligation of the Site Owner is to ensure that the Services are being provided in compliance of all applicable laws, rules and regulations.</p>\n<p>4.8 Disclaimer of warranties and liabilities<br />(a) It is hereby clarified that all Products displayed on the Site and made available to you are provided on an 'as is' and 'as available' basis, without any representations and warranties, express or implied by the Site Owner. The Site Owner does not make any representations pertaining to the information or content, including but not limited to the Site Content or Products displayed on the Site and made available to a User through the Site.</p>\n<p>4.9 Intellectual Property<br />(a) You acknowledge that the Site shall provide information pertaining to other User's availing the Services and information pertaining to the Site Owner, in addition to the Site Content. You hereby agree that you shall not copy, modify or distribute or misuse any information provided on the Site for any purpose, including but not limited to your personal use or gain. You acknowledge that the Site Owner is the sole and rightful owner of the Intellectual Property and you agree not to register, use or file in your own name or in the name of any other person or company any trademarks same or similar or resembling, in any manner, the Intellectual Property and not to associate the Intellectual Property with your own business, except for the purpose as specified in these Terms and Conditions and all the Policies. In this regard "Intellectual Property" shall mean any and all property in any name, signature, word, letter, numeral or any combination thereof, trademark, brand name, service mark, trade name, copyright, design, logo, know-how, trade secrets, photographs/images of the Products displayed on the Site whether registered or not, belonging to the Site Owner.</p>\n<p>4.10 Confidentiality<br />(a) You hereby agree that you shall keep confidential and not disclose to any third-party, all/any Confidential Information pertaining to the Services, the Site or any transaction undertaken on the Site, including but not limited to the Site Content that you may receive or access while browsing or ordering a Product, or transacting on the Site. Breach by you of this Section and terms of the Privacy Policy, available at, will be considered a material breach and result in immediate discontinuation of the Services and your access to the Site provided by the Site Owner to you. You hereby acknowledge and agree that a breach of the confidentiality provisions here in and under any of the Policies by you shall cause immediate termination of the Services and/or access to the Site and appropriate legal action being initiated against you by the Site Owner.</p>\n<p>(b) "Confidential Information" shall mean all the information of a confidential nature disclosed (whether in writing, verbally or by any other means and whether directly or indirectly) by the Site Owner to you whether before or after the date of these Terms and Conditions. You shall not, where applicable and during the dependency of these Terms and Conditions or at any time after these Terms and Conditions and the Policies expire or terminate, divulge or use any Confidential Information for the benefit of any other person, corporation, partnership, proprietorship, association, or other entity, nor will you, directly or indirectly, permit the disclosure of any Confidential Information or aid any third party to imitate any Confidential Information.</p>\n<p>4.11 Termination<br />(a) The Site Owner may terminate these Terms and Conditions, the Policies, Services and/or access to the Site hereunder for any reason, including but not limited for reasons of breach, by you, of these Terms and Conditions or all/any of the Policies, including the Privacy Policy, Cancellation Policy and Return Policy. Your sole right to terminate these Terms and Conditions and the Policies, including the Cancellation Policy, Return Policy and Privacy Policy is by not using the Site and/or Services and deleting your account on the Site.</p>\n<p>4.12 Consequences of termination<br />(a) It is clarified that the termination of these Terms and Conditions, the Policies, the Services and/or access to the Site shall not affect any liabilities incurred by you prior to such termination or for acts performed during the pendency of these Terms and Conditions and the Policies which may result in a dispute post-termination of these Terms and Conditions, nor any provision expressed to survive or to be effective on termination and the obligations set out in this Section shall remain in full force and effect notwithstanding the termination.<br />(b) All Products taken on rent and in possession of a User shall be returned to the Site Owner immediately upon termination of these Terms and Conditions. Further any materials issued by the Site Owner from time to time in respect of these Terms and Conditions and/or Policies, whether in respect of accessing the Site or renting a Product or otherwise, shall be returned immediately to the Site Owner on termination of these Terms and Conditions, the Policies, the Services and/or access to the Site.<br /><strong></strong></p>\n<p><strong>5 General Provisions</strong></p>\n<p>5.1 It is clarified that if you do not agree to the applicability of any of the Terms and Conditions and the Policies contained herein, including the Privacy Policy, Cancellation Policy and Return Policy on the Site, then the only remedy you shall have will be to not use the Services and discontinue using your account created on the Site. However, till such time that you use the Site and avail the Services it shall be deemed that you agree to and shall continue to adhere and abide by the Terms and Conditions and all the Policies.<br />5.2 You will be required to provide a valid phone number, credit card/debit card details, accurate and full Shipping Address in order to avail the Services provided by the Site Owner, including and not limited to placing orders for renting or purchasing the Products displayed on the Site. By registering your phone number with the Site Owner, you consent to be contacted by the Site Owner via phone calls and/or SMS notifications, in case of any Order or shipment or delivery related updates.<br />5.3 You acknowledge you shall be aware of all the terms of these Terms and Conditions and all the Policies before placing an Order for a Product displayed on the Site. You further acknowledge that the Services are being provided by the Site Owner as an independent contractor, and the Site Owner is in no manner acting as your agent.<br />5.4 The Site Owner may assign, in whole or in part, the benefits or obligations of these Terms and Conditions and any/all the Policies to its associates or affiliates or other group company or any other company, in circumstances, including but not limited to pursuant to a restructuring or re-organization or merger of its organization or operations causing a change in management or something of the nature. The Site Owner shall not require your approval or consent for an assignment of the benefits or obligations under these Terms and Condition, the Polices or any other policy in relation to the Services and/or the Site. It will be at the discretion of the Site Owner to decide if you should be intimated of such assignment. However, you shall not assign, in whole or in part, the benefits or obligations of these Terms and Conditions, the Policies or other policy in relation to the Services and/or the Site, without the prior written permission of the Site Owner.<br />5.5 The Site Owner shall not be liable for its failure to perform under these Terms and Conditions and the Policies as a result of occurrence of any force majeure events like acts of God, fire, wars, sabotage, civil unrest, labor unrest, action of statutory authorities or local or central governments, change in laws, rules and regulations, affecting the performance of the Site Owner.<br />5.6 Any dispute or claim relating to it, its enforceability or its termination under these Terms and Conditions and the Policies shall be governed by the Arbitration and Conciliation Act, 1996 by a sole arbitrator appointed by the Site Owner. The arbitration proceedings shall be held in English language at Bangalore. The courts at Mumbai shall have exclusive jurisdiction over any disputes relating to the subject matter herein.<br />5.7 Unless otherwise expressly stated, failure to exercise or delay in exercising a right or remedy, hereunder shall not constitute a waiver of the right or remedy or a waiver of any other rights or remedies, and no single or partial exercise of any right or remedy, hereunder shall prevent any further exercise of the right or remedy or the exercise of any other right or remedy.<br />5.8 The terms and provisions of these Terms and Conditions and the Policies, as identified herein and by their nature or content, are intended to survive the performance hereof and shall so survive termination.<br />5.9 If any provision of these Terms and Conditions and/or the Policies, hereunder becomes, in whole or in part, invalid or unenforceable but would be valid or enforceable if some part of that provision was deleted, that provision shall apply with such deletions as may be necessary to make it valid. If any court/tribunal of competent jurisdiction holds any of the provisions, hereunder unlawful or otherwise ineffective, the remainder shall remain in full force and the unlawful or otherwise ineffective provision shall be substituted by a new provision reflecting the intent of the provision so substituted.<br />5.10 You warrant that you shall not directly or indirectly solicit for employment, nor offer employment to, nor enter into any contract of services with any person employed by the Site Owner.<br />5.11 It is agreed and clarified that the arrangement set out by these Terms and Conditions and the Policies between you and the Site Owner is on a non-exclusive basis.<br />5.12 All notices, requests, demands, waivers and other communications required or permitted to be given hereunder shall be sent to care@candidknots.com, if to the Site Owner, if to you, it shall be to the email address and/or postal address registered with the Site Owner.<br />5.13 These Terms and Conditions and Policies may be varied, amended or modified by the Site Owner at any time and at its sole discretion without any intimation to you. The last amended version shall be available on the Site at all times. It is clarified that you shall be responsible for reviewing the Terms and Conditions and Policies on the Site periodically and keep updated.<br />You have read and understood the above Terms and Conditions. You agree that by accessing the Site and/or availing the Services you hereby accept the Terms and Conditions and the Policies displayed on the Site and further agree to be bound by these Terms and Conditions and the Policies as may be modified by the Site Owner from time to time. You further agree that the Services and the Site the access to which is being provided to you by the Site Owner is subject to change.</p>\n<p>Version 1: 28.09.2015</p>	2016-01-23 13:13:03.894-05
\.


--
-- Name: ecommerce_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_page_id_seq', 4, true);


--
-- Data for Name: ecommerce_photographer; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_photographer (id, name, email, phone, fb_profile_link, comments, "timestamp", sex_id) FROM stdin;
\.


--
-- Name: ecommerce_photographer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_photographer_id_seq', 1, false);


--
-- Data for Name: ecommerce_photographer_payment; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_photographer_payment (id, total_payment, "timestamp", photographer_id, photoshoot_id) FROM stdin;
\.


--
-- Name: ecommerce_photographer_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_photographer_payment_id_seq', 1, false);


--
-- Data for Name: ecommerce_photoshoot; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_photoshoot (id, no_of_products, shoot_date, "timestamp", fashion_model_id, photographer_id, stylist_id) FROM stdin;
\.


--
-- Name: ecommerce_photoshoot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_photoshoot_id_seq', 1, false);


--
-- Data for Name: ecommerce_post; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_post (id, title, link, text, created_date, published_date, author_id, slug) FROM stdin;
12	Style steals: 10 dreamy date dresses	/static/blog/blog6_1.jpg	If you’ve gone all out on that perfect gift for your love interest, but find yourself lacking in funds for a wardrobe update, we have the perfect edit of date wear lined up. Style yourself in a lace dress for a candlelit dinner. If you plan to settle in for an intimate home-cooked meal, ditch the comfy cotton dress for something short and flirty. Nothing says romance like pink—and since the occasion calls for it, pick a floaty number. A cold-shoulder dress adds just the right amount of sexy for Valentine’s dinner. Get busy picking the right dress.\r\n\r\nRent these 10 looks at just 10% of MRP. Rental starts from Rs.300. Get a complete new look this valentine. Quit Buying. Start Renting from [candidknots](http://candidknots.com)\r\n\r\n\r\n![img](/static/blog/blog6_2.jpg)\r\n![img](/static/blog/blog6_3.jpg)\r\n![img](/static/blog/blog6_4.jpg)\r\n![img](/static/blog/blog6_5.jpg)\r\n![img](/static/blog/blog6_6.jpg)\r\n![img](/static/blog/blog6_7.jpg)\r\n![img](/static/blog/blog6_8.jpg)\r\n![img](/static/blog/blog6_9.jpg)\r\n![img](/static/blog/blog6_10.jpg)\r\n![img](/static/blog/blog6_1.jpg)	2016-07-16 14:16:51-04	2016-02-13 13:16:51-05	5	Dreamy-Date-Dresses
11	Here's how to freshen up your work wardrobe without breaking the bank	/static/blog/blog5_1.jpg	Workwear can be more than just tops and trousers. If you want to spin things around, look at your wardrobe from a different perspective. Marry a boho necklace with your basic white shirt. Ditch the navy blazer in favour of a brick red. Work a pair of denim culottes with block heels. Small details such as a fun keychain on a sombre bag will lift your everyday look. Look through our gallery of stylish work pieces that will make dressing for work more fun.\r\n\r\nWith CandidKnots – Fashion on rent startup now in Bangalore, you can have a new look for any special office event.\r\n\r\ncheck out [candidknots](http://CandidKnots.com)\r\n![img](https://candidknotsblog.files.wordpress.com/2016/02/work4.jpg) ![img](https://candidknotsblog.files.wordpress.com/2016/02/work5.jpg) ![img](https://candidknotsblog.files.wordpress.com/2016/02/work6.jpg)	2016-07-16 13:57:32-04	2016-02-19 12:57:32-05	2	Work-Wardrobe
9	Arjun Kapoor Dancing In High Heels Is Your Entertainment Dose Of The Day	/static/blog/blog4.jpg	It is the season of reviving dance numbers and joining the league of another party rocking track is Honey Singh’s ‘High heels’, which is now being featured in the Kareena Kapoor and Arjun Kapoor starrer ‘Ki and Ka’. The song is sung by Jaz Dhami and Aditi Singh Sharma and has Arjun Kapoor strutting around in a pair of high heels, literally!\r\n![img](http://img.youtube.com/vi/N_KpjLhJa1k/0.jpg)\r\n\r\nPut on your dancing shoes for this one\r\n\r\n<iframe width="560" height="315" src="https://www.youtube.com/embed/N_KpjLhJa1k" frameborder="0" allowfullscreen></iframe>\r\n\r\nFashion is changing and so is the industry. These days people are opting for unpopular choices. One Such is the advancement of the renting fashion.\r\n\r\nCheck out [candidknots](http://CandidKnots.com)	2016-07-16 13:45:48-04	2016-02-22 12:45:48-05	3	High-heels-move
4	Traditional Throw Down: How To Rock The Wedding Season	/static/blog/blog3_1.jpg	A great little virtual handbook to get you through all the wedding outfit madness. We’re not complaining though, we’re Indian – it comes with the territory!\r\n\r\nConstantly stressing out about wedding-outfits when it isn’t even your wedding? Here’s something to lighten the load! ‪\\#‎Hallelujah‬\r\n\r\nHow many times have you worn that expensive dress you bought for your friends or cousins wedding. I know. We hardly get a chance to wear our heavy ethnic dresses in this selfie stuck world. Why spend so much on just one occasion? Dont worry, here comes an easy solution to it. Just Rent-Wear-Return!!\r\n\r\nCheck out [candidknots](http://candidknots.com)\r\n\r\nFew of the must have wedding collections are listed here.\r\n\r\nRent this at [candidknots](http://candidknots.com/product/zardozi-embroidered-lehenga/)   \r\n![img1](/static/blog/blog3_2.jpg)\r\n\r\n![img2](/static/blog/blog3_1.jpg)\r\n\r\n\r\n![img3](/static/blog/blog3_3.jpg)\r\n\r\n\r\n![img4](/static/blog/blog3_4.jpg)\r\n\r\n\r\n![img5](/static/blog/blog3_5.jpg)\r\n\r\nrent this looks at [candidknots](http://candidknots.com/product/creamish-lehenga/)   \r\n![img6](/static/blog/blog3_6.jpg)\r\n\r\nrent this looks at [candidknots](http://candidknots.com/product/pink-embellished-lehenga-1/) \r\n![img7](/static/blog/blog3_7.jpg)	2016-07-16 13:04:55-04	2016-02-24 12:04:55-05	5	Rocking-Wedding-Dresses
3	Science Says These 7 Items Make You Instantly More Attractive	/static/blog/Science_Featured.jpg	Infinite information is out there on fashion and what makes certain trends so appealing, which colors are best to wear, which pieces make the biggest impact. It’s no secret that we’re fascinated by the psychology behind our sartorial obsessions—and making style choices backed by science is what any savvy woman should do. But with so many facts and findings floating around the Internet, it’s hard to apply it all to your real-life look.\r\n\r\nTo make it easier, *WhoWhatWear* compiled a list of five items that will make you instantly more attractive—all based on studies and surveys conducted by legitimate research teams. See these must-haves below, plus two more essentials we thought the list was incomplete without.\r\n\r\n#######1. Heels\r\n\r\nAccording to this study published in the Archives of Sexual Behavior, not only was heel height found to be directly proportional to a woman’s attractiveness to men, but men were increasingly likely to exhibit helpful behavior and to spontaneously approach a woman the higher her heels were.\r\n\r\n![img1](/static/blog/heels.jpg)\r\n\r\n######2. The Little Black Dress\r\n\r\nBlack has been determined by many sources to be the number-one color associated with characteristics such as sexiness, confidence, and intelligence.\r\n\r\nGet this look from [candidknots](http://candidknots.com/product/the-showstopper-dress-black/)\r\n![img1](/static/blog/blog2_1.jpg)\r\n\r\n\r\n######3. Shoulder-Baring Styles\r\n\r\nThought breasts and butts were the only features men cared about? Think again. Researchers at the University of New South Wales discovered that men were highly attracted to women’s shoulders and arms.\r\n\r\nget this look from [candidknots](http://candidknots.com/product/strapless-bodycon-dress/)\r\n![img1](/static/blog/blog2_2.jpg)\r\n\r\n\r\n######4. Something Red\r\n\r\nThe color of passion, love and romance is a favorite of men for women and of women for themselves. Surprise, surprise. The journey of personality and social psychology just made official what we already knew.\r\n\r\nGet this look from [CandidKnots](http://candidknots.com/product/painted-envy-jumpsuit/)\r\n![img3](/static/blog/blog2_3.jpg)\r\n\r\n\r\n######5. A Bodycon Silhouette\r\n\r\nWhile long limbs (as indicated above) are still high on the list of attractors, there’s no denying the seductive appeal of a buxom hourglass figure. A paper published in the Archives of Sexual Behavior indicates that women with larger bust-to-waist and waist-to-hip ratios tend to catch men’s eyes  faster and keep their gaze longer than their longer, lankier girlfriends. If you have those Kim Kardashian curves, flaunt them.\r\n\r\nGet this look from [CandidKnots](http://candidknots.com/product/the-bond-girl-dress/)\r\n![img1](/static/blog/Science_Featured.jpg)\r\n\r\n######6. Lipstick \r\n\r\nOn a bad day, there’s always lipstick. Nothing provides the instant pick-me-up quite like a swipe of your signature shade—and apparently others will respond to it, too. Researchers at a French university found that  waitresses who wore red lipstick saw boosted tips from male customers. Similarly, a study conducted by Boston University women wearing a moderate application of makeup were perceived as more attractive, competent, and trustworthy.\r\n\r\n![img](/static/blog/lipstick.jpg)\r\n\r\n#######7. Sunglasses\r\n\r\nWhile not technically supported by any official study (that we know of), every fashion girl knows the power of a good pair of shades for making her look put-together and hiding tired eyes. Not to mention adding a touch of mystery and intrigue that’s guaranteed to turn heads.\r\n\r\n![img](/static/blog/blog2_4.jpg)	2016-07-16 02:00:01-04	2016-07-16 02:00:01-04	5	Look-Attractive
27	22 Important Style Rules You Need To Know About Suits	/static/blog/suit1.jpg	There’s nothing like too much information when it comes to talking about a man’s suit simply because it is one of the most important outfit for a man. Any man can look dapper in a suit! But still that comes with a lot of conditions attached to it.\r\n\r\nWe got a lot of queries asking about suit tips, so here is the complete rule book you should be keeping in mind whenever wearing a suit or when buying one.\r\n\r\nYou can try this new startup to get the prefect suit/Tuxedo look – http://CandidKnots.com\r\n\r\n######1. Fitting Of The Suit Should Always Be On Point. \r\n\r\n![img1](/static/blog/suit2.jpg)\r\n\r\n######2. Always Check The Shoulder Fitting Of The Suit. It’s One Of The Most Important Fitting Areas To Look At! \r\n\r\n![img1](/static/blog/suit3.jpg)\r\n\r\n######3. Tip Of The Tie Should Fall On Or Just Above The Belt Buckle (Even Your Waistcoat For That Matter) \r\n\r\n![img1](/static/blog/suit4.jpg)\r\n\r\n######4. Tie’s Width Should Match That Of The Suit’s Lapel! \r\n\r\n![img1](/static/blog/suit5.jpg)\r\n\r\n######5. Hem Of The Trousers Should Fall Just Over The Top Of Your Shoe, And Also, No Baggy Trousers Please! \r\n\r\n![img1](/static/blog/suit6.jpg)\r\n\r\n######6. Colour Of The Tie Should Overpower That Of Your Dress Shirt (Avoid Clashing Of Patterns)\r\n \r\n![img1](/static/blog/suit7.jpg)\r\n\r\n######7. Pocket Square Is An Interesting Detail In Your Suit, Make It Different From The Tie In All Cases – \r\n\r\n![img1](/static/blog/suit8.jpg)\r\n\r\n######8. The Blazer Of Your Suit Should Be Just Long Enough To Cover The Hips And Front Zip\r\n\r\n![img1](/static/blog/suit9.jpg)\r\n\r\n######9. Another Interesting Way To Maintain A Good Fit Of The Blazer Is Making Sure That The Top Button Of A Two-Button Or The Middle Button Of A Three-Button Blazer Should Fall On Or Above The Navel\r\n\r\n![img1](/static/blog/suit10.jpg)\r\n\r\n######10. If Wearing A Tie, Then The Collars Of Your Dress Shirt Should Be Long Enough To Hide Below The Lapels. And If Not Wearing A Tie, The Collars Can Be Small\r\n\r\n![img1](/static/blog/suit11.jpg)\r\n\r\n######11. The Last Button Of Your Suit Should Always Be Left Open (The Same Goes For Waistcoats Too)\r\n\r\n![img1](/static/blog/suit12.jpg)\r\n\r\n######12. The Length Of The Sleeves Should Be Such That The Shirt Sleeves Are Exposed About Half An Inch\r\n\r\n![img1](/static/blog/suit13.jpg)\r\n\r\n######13. Unbutton The Suit While Sitting Down Or You Might Ruin It! \r\n\r\n![img1](/static/blog/suit14.jpg)\r\n\r\n######14. Casual Suits Look Great With A Single Button \r\n\r\n![img1](/static/blog/suit15.jpg)\r\n\r\n######15. To Make The Outfit More Formal, Go In For A Double-Breasted Suit!  \r\n\r\n![img1](/static/blog/suit16.jpg)\r\n\r\n######16. Two Slits In A Suit Is Considered Modern These Days! \r\n\r\n![img1](/static/blog/suit17.jpg)\r\n\r\n######17. Match The Colour Of Your Belt With The Shoes! \r\n\r\n![img1](/static/blog/suit18.jpg)\r\n\r\n######18. In Order To Check If The Suit Fits Properly, You Should Be Able To Just Slip Your Hand Between The Chest And Your Button Jacket. If There Is Too Much Gap, Then You Know It’s Too Big!\r\n \r\n![img1](/static/blog/suit19.jpg)\r\n\r\n######19. If Planning To Put A Tie Clip, Here Is Where You Need To Put It!\r\nAnd, also it shouldn’t be wider than the tie!\r\n\r\n![img1](/static/blog/suit20.jpg)\r\n\r\n######20. Respect The Occasion; Never Wear A Sports Watch With A Formal Suit! \r\n\r\n![img1](/static/blog/suit21.jpg)\r\n\r\n######21. The Usual Mistake You’d Make – Wear Belts With Suspenders! Never Do That \r\n\r\n![img1](/static/blog/suit22.jpg)\r\n\r\n######22. Always Fold Your Jackets In The Way Given Below To Save Them From Wrinkling\r\n\r\n![img1](/static/blog/suit23.jpg)	2016-07-17 10:43:51-04	2016-07-17 10:43:51-04	2	Style-Rules-for-Suits
26	9 Easy Ways To Make A Good First Impression	/static/blog/fawad1.jpg	There’s a lot to people than meets the eye. But unfortunate as it may be, most people you meet will only know you for what you appear to be. And that’s why, it’s important to make a fabulous first impression, especially on the career front. Be it an interview or a regular board meeting, you’d be surprised to know how much it can help you move ahead in life. Here we tell you 8 things you need to keep in mind to make sure people look forward to meeting you a second time.\r\n\r\n######1. Firm Handshake\r\n\r\nSaid a thousand times before, this one still hasn’t lost its significance. It is the very first insight into the kind of person you are. A firm handshake says you’re confident.\r\n\r\n\r\n######2. Eye Contact\r\n\r\nMaintaining eye contact with the other person shows you know what you’re talking about. It also shows you have a strong personality and cannot be taken for a ride.\r\n\r\n\r\n######3. Talk Less\r\n\r\nThe more you talk, the more are the chances of you saying something stupid or unintelligent that you may regret later. Especially when you’re in a group, do not get carried away in discussions. Talk sense, and say something that hasn’t been said before. Whatever you say, needs to make an impact, even if it is just one line. Be that intelligent guy who always has something intelligent to say, be the guy people can’t wait to hear.\r\n\r\n\r\n######4. Smile\r\n\r\nDon’t let your nervousness show on your face. Smile, even if you’re being grilled in an interview. Take a moment, and then respond with the best argument you have. It shows you don’t let criticism hassle you and that you’re as smart as the interviewer.\r\n\r\n\r\n######5. Grooming\r\n\r\nBe well groomed. It doesn’t matter even if you think you’re not the best looking guy around. It’s all about being presentable, at the end of it. Even a chiseled jaw line looks lousy with a scruffy beard. Make sure your hair is proper and your facial hair well groomed. You’d be surprised to know the difference it makes to your appearance.\r\n\r\n\r\n######6. Dress Well\r\n\r\nAnd when we say dress well, we don’t mean wear expensive or stylish clothes. Even if it is a basic white shirt with a pair of black trousers, make sure they look tidy. The tie knot should be perfect, the shirt properly ironed, the pants should fall till the right length, and the shoes need to be clean. The idea is to dress smart, whatever you wear. For any formal meeting, office party or any event, where you have to dress smart – you can now rent suits, blazers, Tuxedos, Ethnic dresses in india. \r\n\r\nTo rent, check the website – [candidknots](http://candidknots.com)\r\n![img1](/static/blog/fawad2.jpg)\r\n\r\n\r\n######7. Cologne\r\n\r\nYou need to smell good to win hearts even before you actually say anything. Be that breath of fresh air whenever you enter the room. A nice cologne will make people want to be around you and interact with you.\r\n\r\n######8. Bring Out Your Happy Side\r\n\r\nPeople always tend to be attracted to happy people. Everybody wants to be around people who give out positive vibes. Whenever you talk to someone, make sure you come across as a happy, jovial, positive person.  Laugh a lot, smile generously, say things that are nice to hear. Even in the most awkward situations, try to find a way to make it light.\r\n\r\n######9. Stay Calm\r\n\r\nDon’t fidget with your phone, or tap your feet, or shuffle in your seat. Nervousness is easy to spot. Don’t panic or get jittery even if you made the biggest blunder in your interview. Maintain your cool. That’s when you’ll be able to come up with the best possible solutions to the situation.	2016-07-17 10:35:35-04	2016-07-17 10:35:35-04	3	Dress-For-First-Impression
25	Tiger Shroff Paid A Tribute To Hrithik Roshan By Dancing On You are My Soniya & It Was Amazing	/static/blog/Tiger1.jpg	Tiger Shroff is a crazy Hrithik Roshan fan, and who wouldn’t be of course! He decided to pay a small fan tribute to Hrithik by doing what he does the best—dancing! He recreated the iconic number of ‘You’re My Soniya’ from ‘Kabhi Khushi Kabhie Gham’ and needless to say he nailed it, absolutely!\r\n<div align="center">\r\n<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:28.125% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BEa1BvxyphN/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">A small fun fan tribute to our favourite! @hrithikroshan</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A video posted by Tiger Shroff (@tigerjackieshroff) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2016-04-20T10:45:26+00:00">Apr 20, 2016 at 3:45am PDT</time></p></div></blockquote>\r\n<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>\r\n</div>	2016-07-17 10:28:15-04	2016-07-17 10:28:15-04	5	Bollywood-Tribute
23	20 Office-Appropriate Bottoms That Are as Easy and Breezy as a Pair of Shorts	/static/blog/summer1.jpg	Summer office dress code for Bengaluru!\r\n\r\n![img](/static/blog/summer2.jpg)\r\n![img](/static/blog/summer3.jpg)\r\n![img](/static/blog/summer4.jpg)\r\n![img](/static/blog/summer5.jpg)\r\n![img](/static/blog/summer6.jpg)\r\n![img](/static/blog/summer7.jpg)\r\n![img](/static/blog/summer8.jpg)\r\n![img](/static/blog/summer9.jpg)\r\n![img](/static/blog/summer10.jpg)\r\n![img](/static/blog/summer11.jpg)\r\n![img](/static/blog/summer12.jpg)\r\n![img](/static/blog/summer13.jpg)\r\n![img](/static/blog/summer14.jpg)\r\n![img](/static/blog/summer15.jpg)\r\n![img](/static/blog/summer16.jpg)\r\n![img](/static/blog/summer17.jpg)\r\n![img](/static/blog/summer18.jpg)\r\n![img](/static/blog/summer19.jpg)\r\n![img](/static/blog/summer20.jpg)	2016-07-17 10:16:30-04	2016-07-17 10:16:30-04	3	Western-Dress-As-Office-Wear
22	This fairytale wedding lehenga actually details the couple's love story	/static/blog/lehenga1.jpg	Kresha Bajaj’s Udaipur wedding may have happened three months ago, but it’s still taking over social media one flawless photo at a time. The newly-wed has been sharing glimpses from her big day over the last few weeks and the photo album is basically what wedding dreams are made of.\r\n\r\n![img](/static/blog/lehenga2.jpg)\r\n![img](/static/blog/lehenga3.jpg)\r\n\r\nIf the regal venues aren’t enough to catch your attention, you have to check out the details on Bajaj’s lehengas, especially the one she designed for the pheras. A beautiful ivory and gold ensemble, the entire look is based on Bajaj and new husband Vanraj Zaveri’s love story. Can’t imagine how? “As I knew my wedding lehenga would be something I would only wear once, I decided to make it a piece of artwork that I would later frame,” says Bajaj. “In order to make it into a special piece of art I decided to embroider my entire lehenga with Vanraj and my story—our milestones, the proposal, and all our important moments up until the wedding. I used traditional embroidery techniques and materials, and all around the lehenga you will see hidden elements sewn into the garment. Our names are embroidered into the garments, pictures of our story framed with embroidery and finished with a hem of jumping dolphins, which was the beginning of our story as we worked together on a protest against cetacean captivity.”\r\n\r\n![img](/static/blog/lehenga4.jpg)\r\n![img](/static/blog/lehenga5.jpg)\r\n![img](/static/blog/lehenga6.jpg)\r\n![img](/static/blog/lehenga7.jpg)\r\n![img](/static/blog/lehenga8.jpg)\r\n![img](/static/blog/lehenga9.jpg)\r\n![img](/static/blog/lehenga10.jpg)\r\n![img](/static/blog/lehenga11.jpg)\r\n![img](/static/blog/lehenga12.jpg)\r\n![img](/static/blog/lehenga13.jpg)\r\n![img](/static/blog/lehenga14.jpg)\r\n![img](/static/blog/lehenga15.jpg)\r\n![img](/static/blog/lehenga16.jpg)	2016-07-17 10:07:17-04	2016-07-17 10:07:17-04	2	Fairytale-Wedding-Lehenga
18	Bollywood's guide to Valentine's dressing	/static/blog/blog7_1.jpg	With so much fuss around Valentine’s Day, picking the perfect ensemble for February 14 can become a daunting task. The key is to keep it simple yet pretty, impactful yet seemingly effortless. And who better to inspire you than Bollywood’s best dressed?\r\n\r\n######Day date\r\n\r\nGot a laid-back day planned with your beau? Pull a Anushka and pair comfy jeans with a cutesy top. For the girls stepping out for a loved-up brunch, nothing beats the charm of a feminine dress. A classic white number will never fail you. We love sonam’s pick. Think you need to go a little more literal with the theme? Sonakshi’s red dress is the perfect choice.\r\n\r\n![img](/static/blog/blog7_2.jpg)\r\n\r\n\r\n![img](/static/blog/blog7_3.jpg)\r\n\r\n\r\n######Night date\r\n\r\nEvenings out are the perfect excuse to pull out your favourite LBD a la Kangana Ranaut – simple yet classy, but nothing makes a statement quite like a off shaoulder dress like Priyanka Chopra’s.\r\n\r\nRent Similar styles at CandidKnots. Rent dress in bangalore from candidknots and live life celebrity style. Visit [canddknots](www.CandidKnots.com)\r\n\r\n![img](/static/blog/blog7_4.jpg)\r\n\r\n\r\n![img](/static/blog/blog7_5.jpg)	2016-02-11 13:49:54-05	2016-02-11 13:49:54-05	3	Valentine-Day-Dressing
1	This Website Tells You Whether Your Face Is Attractive Or Ugly, And Also Guesses Your Age	https://candidknotsblog.files.wordpress.com/2016/05/ugly2.jpg	Frankly, in the same way you don’t need a machine or a scale to tell you if you’re fat, you don’t need a website to tell you you’re ugly. As Pakalu Papito would rightly say, you just have to look into the mirror. Or if you have any doubt, just ask your best friend. He’ll never lie. <br/>\r\n    This website made by Zurich university uses artificial intelligence to guess your attractiveness and your age. \r\n\r\n![img1](https://candidknotsblog.files.wordpress.com/2016/05/ugly1.jpg)\r\n\r\nThis website is perfect for all those selfie-obsessed, bunch of narcissists who get furiously competitive when it comes to vanity or to determine which girl they want to date is kind of the hottest. <br/>\r\n Here’s the [link](https://howhot.io/) of the site.\r\n\r\nSo, we went ahead and figured out the hotness quotient of different celebrities. Sometimes it was pretty believable…\r\n\r\n![img2](https://candidknotsblog.files.wordpress.com/2016/05/ugly2.jpg)\r\n\r\n![img3](https://candidknotsblog.files.wordpress.com/2016/05/ugly3.jpg)\r\n\r\n![img4](https://candidknotsblog.files.wordpress.com/2016/05/ugly4.jpg)\r\n\r\n![img4](https://candidknotsblog.files.wordpress.com/2016/05/ugly5.jpg)\r\n\r\n![img4](https://candidknotsblog.files.wordpress.com/2016/05/ugly6.jpg)\r\n\r\n![img4](https://candidknotsblog.files.wordpress.com/2016/05/ugly7.jpg)\r\n\r\n![img4](https://candidknotsblog.files.wordpress.com/2016/05/ugly8.jpg)	2016-07-14 13:44:32-04	2016-05-04 13:44:32-04	5	Rate-Your-Beauty
\.


--
-- Name: ecommerce_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_post_id_seq', 27, true);


--
-- Data for Name: ecommerce_post_images; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_post_images (id, post_id, image_id) FROM stdin;
\.


--
-- Name: ecommerce_post_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_post_images_id_seq', 1, false);


--
-- Data for Name: ecommerce_product; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product (id, product_id, name, description, style, fabric, fit, mrp, rent, visibility_flag, comments, brand_id, photoshoot_id, category_id, vendor_id, ideal_for_id, security_deposit, purchase_date, buy_flag, buy_price) FROM stdin;
2784	emroidered-off-white-gown	emroidered off white gown		Gown			14000	1399	t		153	\N	39	3	5	1399	\N	t	7000
2770	black-shiny-sherwani	black shiny sherwani	\N		\N	\N	8000	849	t	\N	154	\N	54	3	4	849	\N	t	4000
2771	shiny-grey-blazer	shiny grey blazer	\N		\N	\N	10000	1449	t	\N	155	\N	47	4	4	1449	\N	t	5000
2772	velvety-black-blazer	velvety black blazer	\N		\N	\N	10000	1449	t	\N	156	\N	47	4	4	1449	\N	t	5000
2774	embellished-cream-sherwani	embellished cream sherwani	\N		\N	\N	20000	1999	t	\N	154	\N	54	3	4	1999	\N	t	10000
2775	off-white-sherwani-full-set	off white sherwani full set	\N		\N	\N	20000	1999	t	\N	154	\N	54	3	4	1999	\N	t	10000
2776	off-white-sherwani-set-1	off white sherwani set 1	\N		\N	\N	20000	1999	t	\N	154	\N	54	3	4	1999	\N	t	10000
2777	brownish-cream-sherwani-set	brownish cream sherwani set	\N		\N	\N	28000	2800	t	\N	154	\N	54	3	4	2800	\N	t	14000
2778	red-sherwani	red sherwani	\N		\N	\N	15000	699	t	\N	157	\N	54	5	4	699	\N	t	7500
2779	light-pink-sherwani	light pink sherwani	\N		\N	\N	5000	599	t	\N	157	\N	54	3	4	599	\N	t	2500
2780	cream-sherwani-with-red-base	cream sherwani with red base	\N		\N	\N	20000	1999	t	\N	154	\N	54	3	4	1999	\N	t	10000
2787	pink-shimmer-dress	pink shimmer dress		Dress			5000	199	t		153	\N	42	3	5	199	\N	t	800
2769	white-gown-with-work	white gown with work		Gown			25000	2499	t		153	\N	39	3	5	2499	\N	t	12500
2783	white-bow-tie-gown	white bow tie gown		Gown			7000	799	t		153	\N	39	3	5	799	\N	t	3500
2826	3-piece-brown-suit	3 piece brown suit		Suit			30000	1499	t		165	\N	48	3	4	1499	\N	t	15000
2815	green-satin-dress	green satin dress		Dress			2500	199	t		153	\N	42	3	5	199	\N	t	450
2789	blue-mirrored-gown	blue mirrored gown		Dress			20000	1999	f		160	\N	43	3	5	1999	\N	t	10000
2816	brown-long-gown	brown long gown		Dress			3600	199	t		153	\N	43	3	5	199	\N	t	750
2831	little-black-dress	little black dress		Dress			2590	199	t		168	\N	42	3	5	199	\N	t	699
2790	cream-anarkali	cream anarkali	\N		\N	\N	9995	999	t	\N	161	\N	10	3	5	999	\N	t	4997
2791	black-anarkali-1	black anarkali 1	\N		\N	\N	14000	2199	t	\N	161	\N	10	3	5	2199	\N	t	7000
2792	green-long-top-lehenga	green long top lehenga	\N		\N	\N	35000	3999	t	\N	160	\N	12	3	5	3999	\N	t	17500
2794	yellow-embellished-saree	yellow embellished saree	\N		\N	\N	5000	499	t	\N	157	\N	36	3	5	499	\N	t	2500
2795	red-golden-work-saree	red golden work saree	\N		\N	\N	2600	299	t	\N	162	\N	36	3	5	299	\N	t	1300
2796	gold-pink-lehenga	gold pink lehenga	\N		\N	\N	8000	1199	t	\N	157	\N	12	3	5	1199	\N	t	4000
2797	blue-lehenga	blue lehenga	\N		\N	\N	7000	700	t	\N	157	\N	12	3	5	700	\N	t	3500
2798	white-red-lehenga	white red lehenga	\N		\N	\N	8500	850	t	\N	157	\N	12	3	5	850	\N	t	4250
2799	creamish-lehenga	creamish lehenga	\N		\N	\N	38000	3799	t	\N	157	\N	12	3	5	3799	\N	t	19000
2800	bright-orange-lehenga	bright orange lehenga	\N		\N	\N	23000	2299	t	\N	156	\N	12	3	5	2299	\N	t	11500
2825	blue-party-bazer	blue party bazer		Suit			5000	499	t		164	\N	47	3	4	499	\N	t	2500
2801	off-white-sherwani-set	off white sherwani set		Sherwani			28000	2799	t		156	\N	54	3	4	2799	\N	t	14000
2804	cream-red-lehenga	cream red lehenga	\N		\N	\N	19000	1899	t	\N	157	\N	12	3	5	1899	\N	t	9500
2805	cream-white-embellished-lehenga	cream white embellished lehenga	\N		\N	\N	100000	10199	t	\N	157	\N	12	3	5	10199	\N	t	50000
2806	red-cream-embellished-lehenga	red cream embellished lehenga	\N		\N	\N	55000	5499	t	\N	157	\N	12	3	5	5499	\N	t	27500
2807	embroidered-green-red-lehenga	embroidered green red lehenga	\N		\N	\N	55000	5499	t	\N	157	\N	12	3	5	5499	\N	t	27500
2808	pink-embellished-lehenga-1	pink embellished lehenga 1	\N		\N	\N	15000	1499	t	\N	157	\N	12	3	5	1499	\N	t	7500
2809	velvet-embroidered-lehenga	velvet embroidered lehenga	\N		\N	\N	100000	10000	t	\N	157	\N	12	3	5	10000	\N	t	50000
2811	red-cream-embroidered-lehenga	red cream embroidered lehenga	\N		\N	\N	18000	1799	t	\N	157	\N	12	3	5	1799	\N	t	9000
2812	pink-embellished-lehenga	pink embellished lehenga	\N		\N	\N	15000	1499	t	\N	157	\N	12	3	5	1499	\N	t	7500
2813	neon-pink-lehenga	neon pink lehenga	\N		\N	\N	14000	1499	t	\N	160	\N	12	3	5	1499	\N	t	7000
2814	red-embroidered-lehenga	red embroidered lehenga	\N		\N	\N	23000	2300	t	\N	157	\N	12	3	5	2300	\N	t	11500
2818	grey-evening-gown	grey evening gown		Dress			8990	850	t		153	\N	43	3	5	850	\N	t	3599
2830	maroon-party-gown	maroon party gown		Dress			8000	599	t		153	\N	43	3	5	599	\N	t	4000
2832	black-short-jumpsuit	black short jumpsuit		Dress			3500	199	t		153	\N	3	3	5	199	\N	t	699
2833	off-shoulder-purple-dress	off shoulder purple dress		Dress			3500	199	t		153	\N	42	3	5	199	\N	t	699
2819	brown-3-piece-sherwani	brown 3 piece sherwani	\N		\N	\N	11000	1100	t	\N	154	\N	54	3	4	1100	\N	t	5500
2820	velvety-blue-sherwani	velvety blue sherwani	\N		\N	\N	24999	2499	t	\N	154	\N	54	3	4	2499	\N	t	12499
2821	dark-red-sherwani-1	dark red sherwani 1	\N		\N	\N	18000	2299	t	\N	154	\N	54	3	4	2299	\N	t	9000
2827	black-blazer-1	black blazer 1		Suit			7000	699	t		166	\N	47	3	4	699	\N	t	3500
2823	black-suit-with-shiny-lapel	black suit with shiny lapel	\N		\N	\N	18000	1799	t	\N	164	\N	48	3	4	1799	\N	t	9000
2828	blue-formal-suit	blue formal suit		Suit			15000	799	t		167	\N	48	3	4	799	\N	t	7500
2793	blue-embellished-suit	blue embellished suit	\N		\N	\N	6500	749	t	\N	160	\N	\N	3	5	749	\N	t	3250
2781	cream-sherwani-set	cream sherwani set		Kurta			3500	399	t		158	\N	45	3	4	399	\N	t	1750
2834	blue-crop-top-skirt-1	blue crop top skirt 1		Dress			3890	299	t		153	\N	40	3	5	299	\N	t	700
2835	black-crop-top-skirt	black crop top skirt		Dress			3890	299	t		153	\N	40	3	5	299	\N	t	700
2839	velvet-purple-lehenga	velvet purple lehenga		Sherwani			30000	3499	t		157	\N	12	4	5	3499	\N	t	22000
2782	striped-long-dress	striped long dress		Dress			3500	199	t		153	\N	11	3	5	199	\N	t	700
2786	light-green-dress	light green dress		Dress			2500	199	t		159	\N	42	3	5	199	\N	t	500
2803	cream-sherwani	cream sherwani		Sherwani			12000	1200	t		154	\N	54	3	4	1200	\N	t	6000
2836	embellished-red-lehenga	embellished red lehenga	\N		\N	\N	23000	2300	t	\N	157	\N	12	3	5	2300	\N	t	11500
2837	red-fishcut-lehenga	red fishcut lehenga	\N		\N	\N	30000	2999	t	\N	157	\N	12	3	5	2999	\N	t	15000
2838	pink-embroidered-lehenga	pink embroidered lehenga	\N		\N	\N	25000	2500	t	\N	157	\N	12	3	5	2500	\N	t	12500
2841	asteria-white-sheath-dress	asteria white sheath dress	\N		\N	\N	3299	749	t	\N	169	\N	42	5	5	749	\N	t	1649
2842	viva-la-beach-long-hi-lo-tunic-top-white	viva la beach long hi lo tunic top white	\N		\N	\N	2499	299	t	\N	169	\N	42	5	5	299	\N	t	1249
2843	viva-la-beach-long-hi-lo-tunic-top	viva la beach long hi lo tunic top	\N		\N	\N	2499	299	t	\N	156	\N	42	5	5	299	\N	t	1249
2845	premium-black-skater-dress	premium black skater dress	\N		\N	\N	4199	999	t	\N	169	\N	42	5	5	999	\N	t	2099
2846	miami-vibes-two-piece-halter-chevron-print-mini-jumpsuit	miami vibes two piece halter chevron print mini jumpsuit	\N		\N	\N	3399	649	t	\N	169	\N	3	5	5	649	\N	t	1699
2847	lace-affair-midnight-blue-dress	lace affair midnight blue dress	\N		\N	\N	3599	599	t	\N	169	\N	42	3	5	599	\N	t	1799
2848	hollywood-collection-multicolor-vibes-midi-dress	hollywood collection multicolor vibes midi dress	\N		\N	\N	4599	799	t	\N	169	\N	42	5	5	799	\N	t	2299
2850	floral-lace-white-empire-sheath-dress	floral lace white empire sheath dress	\N		\N	\N	3700	799	t	\N	169	\N	42	3	5	799	\N	t	1850
2852	black-white-striped-button-down-mini-dress	black white striped button down mini dress	\N		\N	\N	3299	699	t	\N	169	\N	42	5	5	699	\N	t	1649
2853	blue-embroidered-saree	blue embroidered saree	\N		\N	\N	3500	799	t	\N	156	\N	36	3	5	799	\N	t	1750
2859	deep-back-black-dress	deep back black dress		Dress			2670	199	t		170	\N	42	3	5	199	\N	t	799
2855	red-champagne-dress	red champagne dress	\N		\N	\N	2500	599	t	\N	171	\N	42	4	5	599	\N	t	1250
2860	printed-brown-jumpsuit	printed brown jumpsuit		Dress			2899	199	t		170	\N	3	3	5	199	\N	t	699
2857	gold-sequin-blue-dress	gold sequin blue dress	\N		\N	\N	2500	649	t	\N	155	\N	42	3	5	649	\N	t	1250
2858	single-strap-magenta-dress	single strap magenta dress	\N		\N	\N	2500	699	t	\N	173	\N	42	3	5	699	\N	t	1250
2865	shoulder-shimmer-black-dress	shoulder shimmer black dress		Dress			2700	199	t		170	\N	42	3	5	199	\N	t	699
2868	black-formal-blazer	black formal blazer		Dress			4000	399	t		170	\N	47	3	5	399	\N	t	1299
2861	halter-neck-jumpsuit	halter neck jumpsuit	\N		\N	\N	6000	999	t	\N	174	\N	3	3	5	999	\N	t	3000
2862	shimmer-black-dress	shimmer black dress	\N		\N	\N	3500	699	t	\N	175	\N	42	3	5	699	\N	t	1750
2863	off-shoulder-party-dress	off shoulder party dress	\N		\N	\N	4000	849	t	\N	176	\N	42	3	5	849	\N	t	2000
2864	full-sleeve-red-dress	full sleeve red dress	\N		\N	\N	8999	999	t	\N	155	\N	42	3	5	999	\N	t	4499
2867	gray-formal-blazer	gray formal blazer		Dress			4000	399	t		170	\N	47	3	5	399	\N	t	999
2866	strapped-purple-dress	strapped purple dress	\N		\N	\N	3000	649	t	\N	177	\N	42	3	5	649	\N	t	1500
2870	brownish-cream-jacket	brownish cream jacket		Dress			4000	399	t		170	\N	6	3	5	399	\N	t	1299
2872	black-grey-dress	black grey dress		Dress			2600	199	t		170	\N	42	3	5	199	\N	t	499
2898	sky-blue-jumpsuit	sky blue jumpsuit		Dress			4000	299	t		180	\N	3	3	5	299	\N	t	899
2884	magenta-gown	magenta gown		Dress			40000	5200	t		155	\N	43	4	5	5200	\N	t	20000
2885	blue-shimmer-gown	blue shimmer gown		Dress			17999	1899	t		155	\N	43	3	5	1899	\N	t	8999
2886	pink-sequinned-gown	pink sequinned gown		Dress			14000	1699	t		178	\N	38	3	5	1699	\N	t	7000
2874	gold-shimmer-pink-anarkali	gold shimmer pink anarkali	\N		\N	\N	27000	3299	t	\N	155	\N	10	4	5	3299	\N	t	13500
2875	blue-anarkali	blue anarkali	\N		\N	\N	28000	3299	t	\N	155	\N	10	4	5	3299	\N	t	14000
2876	black-anarkali	black anarkali	\N		\N	\N	14000	2199	t	\N	155	\N	10	4	5	2199	\N	t	7000
2877	blue-shimmer-anarkali	blue shimmer anarkali	\N		\N	\N	28000	3299	t	\N	155	\N	10	4	5	3299	\N	t	14000
2878	gold-sequinned-cream-lehenga	gold sequinned cream lehenga	\N		\N	\N	20000	2649	t	\N	155	\N	12	4	5	2649	\N	t	10000
2879	pink-sequinned-gown-1	pink sequinned gown 1	\N		\N	\N	14000	1699	t	\N	178	\N	38	3	5	1699	\N	t	7000
2880	embroidered-magenta-anarkali	embroidered magenta anarkali	\N		\N	\N	27000	3299	t	\N	155	\N	10	4	5	3299	\N	t	13500
2881	shimmer-anarkali	shimmer anarkali	\N		\N	\N	27000	3299	t	\N	155	\N	10	4	5	3299	\N	t	13500
2882	blue-salwar-suit	blue salwar suit	\N		\N	\N	4500	749	t	\N	155	\N	48	4	5	749	\N	t	2250
2900	blue-sheath-dress	blue sheath dress		dress			2800	199	t		170	\N	42	3	5	199	\N	t	700
2854	black-party-dress	black party dress		Dress			2600	199	t		170	\N	42	3	5	199	\N	t	700
2856	printed-shift-dress	printed shift dress		Dress			2499	199	t		172	\N	42	3	5	199	\N	t	699
2887	velvety-purple-lehenga	velvety purple lehenga	\N		\N	\N	30000	3499	t	\N	155	\N	12	4	5	3499	\N	t	15000
2888	velvety-blue-lehenga	velvety blue lehenga	\N		\N	\N	30000	3499	t	\N	155	\N	12	4	5	3499	\N	t	15000
2889	gloden-sequinned-lehenga	gloden sequinned lehenga	\N		\N	\N	23500	2999	t	\N	155	\N	12	4	5	2999	\N	t	11750
2890	blue-pink-lehenga	blue pink lehenga	\N		\N	\N	15000	1999	t	\N	155	\N	12	4	5	1999	\N	t	7500
2891	gold-sequinned-purple-lehenga	gold sequinned purple lehenga	\N		\N	\N	28000	3399	t	\N	155	\N	12	4	5	3399	\N	t	14000
2892	golden-shimmer-saree	golden shimmer saree	\N		\N	\N	9500	1349	t	\N	155	\N	36	4	5	1349	\N	t	4750
2893	pink-embroidered-saree	pink embroidered saree	\N		\N	\N	15000	1999	t	\N	155	\N	36	4	5	1999	\N	t	7500
2894	embroidered-green-saree	embroidered green saree	\N		\N	\N	7000	1199	t	\N	155	\N	36	4	5	1199	\N	t	3500
2895	green-blue-saree	green blue saree	\N		\N	\N	18000	2299	t	\N	155	\N	36	4	5	2299	\N	t	9000
2896	white-sequinned-dress	white sequinned dress	\N		\N	\N	2500	599	t	\N	155	\N	42	4	5	599	\N	t	1250
2897	maroon-party-dress	maroon party dress	\N		\N	\N	2500	649	t	\N	179	\N	42	3	5	649	\N	t	1250
2899	sequinned-black-jumpsuit	sequinned black jumpsuit	\N		\N	\N	3500	699	t	\N	181	\N	3	3	5	699	\N	t	1750
2901	black-blazer	black blazer	\N		\N	\N	10000	1649	t	\N	166	\N	47	3	4	1649	\N	t	5000
2904	heavy-red-full-set	heavy red full set		Kurta Pyjama			3000	649	t		155	\N	45	4	4	649	\N	t	1500
2905	printed-red-full-set	printed red full set		kurta			2500	649	t		155	\N	45	4	4	649	\N	t	1250
2906	embroidered-red-suit	embroidered red suit		Kurta Pyjama			3000	699	t		155	\N	45	4	4	699	\N	t	1500
2908	threaded-cream-set	threaded cream set		Kurta Pyjama			3750	725	t		183	\N	45	4	4	725	\N	t	1875
2909	embroidered-cream-set	embroidered cream set		Kurta Pyjama			3750	649	t		155	\N	45	4	4	649	\N	t	1875
2913	brownish-cream-waistcoat	brownish cream waistcoat		Nehru Coat			6000	399	t		170	\N	56	3	4	399	\N	t	3000
2912	blue-blazer	blue blazer		Suit			9000	1300	t		155	\N	48	3	4	1300	\N	t	4500
2916	painted-envy-sherwani	painted envy sherwani		Jacket			7000	999	t		155	\N	46	4	4	999	\N	t	3500
2915	magenta-blazer	magenta blazer		blazer			12000	1699	t		184	\N	47	3	4	1699	\N	t	6000
2924	black-waistcoat	black waistcoat		Waist Coat			6000	399	t		156	\N	56	3	4	399	\N	t	3000
2917	black-blue-sherwani	black blue sherwani	\N		\N	\N	15000	2299	t	\N	155	\N	54	4	4	2299	\N	t	7500
2918	brown-sherwani	brown sherwani	\N		\N	\N	16000	1999	t	\N	155	\N	54	4	4	1999	\N	t	8000
2919	dark-red-sherwani	dark red sherwani	\N		\N	\N	17000	1699	t	\N	154	\N	54	4	4	1699	\N	t	8500
2920	blue-sherwani	blue sherwani	\N		\N	\N	15000	1999	t	\N	154	\N	54	4	4	1999	\N	t	7500
2910	grey-3-piece-suit	grey 3 piece suit		Suit			15000	1999	t		155	\N	48	4	4	1999	\N	t	7500
2926	grey-full-suit-with-black-lining	grey full suit with black lining		Suit			10000	950	t		170	\N	48	3	4	950	\N	t	5000
2927	shiny-brown-full-suit	shiny brown full suit		Suit			10000	899	t		170	\N	48	3	4	899	\N	t	5000
2925	black-suit-with-velvet-lapel	black suit with velvet lapel		Tux			18000	2299	t		166	\N	48	3	4	2299	\N	t	9000
2928	matte-grey-full-suit	matte grey full suit		Suit			10999	899	t		170	\N	48	3	4	899	\N	t	5499
2931	shiny-brown-blazer	shiny brown blazer		Suit			11000	899	t		170	\N	48	3	4	899	\N	t	5500
2911	velvety-blue-waistcoat	velvety blue waistcoat		Waist Coat			6000	399	t		170	\N	56	3	4	399	\N	t	3000
2930	shiny-black-full-suit	shiny black full suit	\N		\N	\N	10000	1100	t	\N	170	\N	48	3	4	1100	\N	t	5000
2902	sky-blue-full-set	sky blue full set		Kurta Pyjama			3500	649	t		154	\N	45	4	4	649	\N	t	1750
2932	golden-embroidered-churidar	golden embroidered churidar	\N		\N	\N	13999	1749	t	\N	169	\N	10	3	5	1749	\N	t	6999
2933	light-coral-suit	light coral suit	\N		\N	\N	14999	1799	t	\N	169	\N	38	3	5	1799	\N	t	7499
2934	sea-green-princess-gown	sea green princess gown	\N		\N	\N	10999	1399	t	\N	169	\N	38	3	5	1399	\N	t	5499
2935	pink-blanched-almond-suit	pink blanched almond suit	\N		\N	\N	11999	1499	t	\N	169	\N	38	3	5	1499	\N	t	5999
2937	mughlai-aqua-blue-suit	mughlai aqua blue suit	\N		\N	\N	9999	1999	t	\N	169	\N	10	5	5	1999	\N	t	4999
2938	glossy-designer-suit	glossy designer suit	\N		\N	\N	5449	1449	t	\N	169	\N	10	5	5	1449	\N	t	2724
2939	black-elegant-tulip-suit	black elegant tulip suit	\N		\N	\N	5449	1449	t	\N	169	\N	38	5	5	1449	\N	t	2724
2940	raven-suit	raven suit	\N		\N	\N	3990	1229	t	\N	169	\N	38	5	5	1229	\N	t	1995
2941	vintage-pink-suit	vintage pink suit	\N		\N	\N	7499	1150	t	\N	169	\N	38	5	5	1150	\N	t	3749
2942	magenta-glamorous-party-gown	magenta glamorous party gown	\N		\N	\N	11999	2599	t	\N	169	\N	43	5	5	2599	\N	t	5999
2944	copper-shimmer-jacket	copper shimmer jacket		Dress			2100	199	t		156	\N	6	3	5	199	\N	t	499
2946	sequinned-pink-dress	sequinned pink dress		Dress			3900	250	t		169	\N	42	3	5	250	\N	t	699
2947	off-shoulder-black-dress	off shoulder black dress		Dress			3500	199	t		169	\N	42	3	5	199	\N	t	499
2948	net-embroidered-black-dress	net embroidered black dress		Dress			3500	299	t		186	\N	42	3	5	299	\N	t	699
2943	funky-skater-dress	funky skater dress		Dress			2900	199	t		169	\N	42	3	5	199	\N	t	499
2945	printed-halter-neck-dress	printed halter neck dress		Dress			3200	199	t		169	\N	42	3	5	199	\N	t	399
2949	vertical-phases-bodycon-dress	vertical phases bodycon dress	\N		\N	\N	3299	659	t	\N	169	\N	42	3	5	659	\N	t	1649
2950	flower-bloom-dress	flower bloom dress	\N		\N	\N	4599	999	t	\N	169	\N	42	5	5	999	\N	t	2299
2951	midnight-blue-slip-dress	midnight blue slip dress	\N		\N	\N	3199	820	t	\N	169	\N	42	3	5	820	\N	t	1599
2953	midnight-blue-dress	midnight blue dress	\N		\N	\N	3299	599	t	\N	169	\N	42	3	5	599	\N	t	1649
2954	floral-graphic-bodycon-dress	floral graphic bodycon dress	\N		\N	\N	3999	699	t	\N	169	\N	42	3	5	699	\N	t	1999
2955	floral-pastels-sheath-dress	floral pastels sheath dress	\N		\N	\N	3599	859	t	\N	169	\N	42	3	5	859	\N	t	1799
2956	the-showstopper-dress	the showstopper dress	\N		\N	\N	3299	1199	t	\N	169	\N	42	5	5	1199	\N	t	1649
2957	sequin-embellished-skater-dress	sequin embellished skater dress	\N		\N	\N	4699	1269	t	\N	169	\N	42	3	5	1269	\N	t	2349
2958	red-lace-party-gown	red lace party gown	\N		\N	\N	5199	870	t	\N	169	\N	43	3	5	870	\N	t	2599
2959	lace-party-gown	lace party gown	\N		\N	\N	5199	819	t	\N	169	\N	43	5	5	819	\N	t	2599
2960	hot-dress-salmon-red	hot dress salmon red	\N		\N	\N	3299	999	t	\N	169	\N	42	5	5	999	\N	t	1649
2961	monochrome-maxi-dress	monochrome maxi dress	\N		\N	\N	2999	720	t	\N	169	\N	42	5	5	720	\N	t	1499
2962	floral-lace-emprire-dress	floral lace emprire dress	\N		\N	\N	3300	630	t	\N	169	\N	42	3	5	630	\N	t	1650
2963	the-velvety-mystique-dress	the velvety mystique dress	\N		\N	\N	2999	1020	t	\N	169	\N	42	5	5	1020	\N	t	1499
2964	the-showstopper-dress-black	the showstopper dress black	\N		\N	\N	3299	659	t	\N	169	\N	42	3	5	659	\N	t	1649
2965	print-pegged-dress	print pegged dress	\N		\N	\N	2199	550	t	\N	169	\N	42	3	5	550	\N	t	1099
2967	the-floral-extravaganza	the floral extravaganza	\N		\N	\N	3399	659	t	\N	169	\N	42	5	5	659	\N	t	1699
2968	tan-coloured-chiffon-jump-suit	tan coloured chiffon jump suit	\N		\N	\N	3199	1050	t	\N	169	\N	3	5	5	1050	\N	t	1599
2969	honeycomb-glamour-dress	honeycomb glamour dress	\N		\N	\N	4499	699	t	\N	169	\N	42	3	5	699	\N	t	2249
2970	pink-peplum-dress	pink peplum dress	\N		\N	\N	3299	699	t	\N	169	\N	42	3	5	699	\N	t	1649
2971	black-lace-full-jumpsuit	black lace full jumpsuit	\N		\N	\N	3749	670	t	\N	169	\N	3	5	5	670	\N	t	1874
2972	supermodel-chic-dress-black	supermodel chic dress black	\N		\N	\N	3299	629	t	\N	169	\N	42	5	5	629	\N	t	1649
2973	the-bond-girl-dress	the bond girl dress	\N		\N	\N	3999	699	t	\N	169	\N	42	3	5	699	\N	t	1999
2975	peplum-turquoise-dress	peplum turquoise dress	\N		\N	\N	3099	699	t	\N	169	\N	42	3	5	699	\N	t	1549
2976	vivid-magenta-dress	vivid magenta dress	\N		\N	\N	4499	799	t	\N	169	\N	42	3	5	799	\N	t	2249
2977	midnight-blue-lace-jumpsuit	midnight blue lace jumpsuit	\N		\N	\N	3399	649	t	\N	169	\N	3	3	5	649	\N	t	1699
2979	mirror-sequin-maxi-dress	mirror sequin maxi dress		Dress			8000	850	t		178	\N	42	3	5	850	\N	t	4000
2980	embroidded-pink-maxi-dress	embroidded pink maxi dress		Dress			4800	599	t		178	\N	42	3	5	599	\N	t	2400
2982	cant-miss-suave-orange-dress	cant miss suave orange dress		Dress			3990	250	t		180	\N	42	3	5	250	\N	t	699
2984	v-neck-wrap-dress	v neck wrap dress		Dress			2099	199	t		188	\N	42	3	5	199	\N	t	699
2985	printed-bow-tie-jumpsuit	printed bow tie jumpsuit		Dress			1899	199	t		189	\N	3	3	5	199	\N	t	699
2978	mellow-yellow-sheath-dress	mellow yellow sheath dress		Dress			4999	399	t		180	\N	42	3	5	399	\N	t	999
2986	closed-neck-sheath-dress	closed neck sheath dress		Dress			2690	199	t		180	\N	42	3	5	199	\N	t	499
2992	printed-v-line-dress	printed v line dress		Style			1799	199	t		191	\N	42	3	5	199	\N	t	399
2989	painted-envy-jumpsuit	painted envy jumpsuit		Dress			2990	199	t		180	\N	3	3	5	199	\N	t	699
2994	sleeveless-asymmetrical-dress	sleeveless asymmetrical dress		Dress			2999	199	t		192	\N	42	3	5	199	\N	t	499
2988	draped-saree-dress	draped saree dress	\N		\N	\N	1690	300	t	\N	190	\N	42	3	5	300	\N	t	845
2990	sequinned-shimmer-maxi-dress	sequinned shimmer maxi dress	\N		\N	\N	17999	1899	t	\N	190	\N	11	3	5	1899	\N	t	8999
2991	embellished-with-pearl-chiffon-dress	embellished with pearl chiffon dress	\N		\N	\N	6999	799	t	\N	190	\N	42	3	5	799	\N	t	3499
2998	green-pleated-dress	green pleated dress		Dress			2895	199	t		175	\N	42	3	5	199	\N	t	699
2993	floor-touching-deep-back-anarkali	floor touching deep back anarkali	\N		\N	\N	28990	2999	t	\N	178	\N	10	3	5	2999	\N	t	14495
3000	classic-black-dress	classic black dress		Dress			2399	199	t		195	\N	42	3	5	199	\N	t	699
2995	gold-sequinned-blue-anarkali	gold sequinned blue anarkali	\N		\N	\N	9000	999	t	\N	178	\N	10	3	5	999	\N	t	4500
3001	raw-silk-yoke-maxi-dress	raw silk yoke maxi dress		dress			8999	999	t		190	\N	11	3	5	999	\N	t	4499
3002	halter-neck-dress	halter neck dress		Dress			2699	249	t		196	\N	42	3	5	249	\N	t	699
2999	shibori-print-maxi-dress	shibori print maxi dress	\N		\N	\N	6800	780	t	\N	194	\N	11	3	5	780	\N	t	3400
3004	pink-bodycon-dress	pink bodycon dress		Dress			3000	199	t		172	\N	42	3	5	199	\N	t	499
3006	halter-neck-glitz-dress	halter neck glitz dress		dress			3955	199	t		166	\N	42	3	5	199	\N	t	699
3008	sexy-black-dress	sexy black dress		Dress			3699	199	t		196	\N	42	3	5	199	\N	t	699
3003	straight-cut-top-with-embroidded-lehenga	straight cut top with embroidded lehenga	\N		\N	\N	34850	4500	t	\N	194	\N	12	3	5	4500	\N	t	17425
3010	printed-peplum-dress	printed peplum dress		Dress			2499	199	t		197	\N	42	3	5	199	\N	t	699
3005	gold-and-red-embroidded-lehenga	gold and red embroidded lehenga	\N		\N	\N	29700	5500	t	\N	194	\N	12	3	5	5500	\N	t	14850
3014	top-sequinned-skater-dress	top sequinned skater dress		Dress			3450	250	t		198	\N	42	3	5	250	\N	t	799
3007	mirrored-georgette-straight-cut	mirrored georgette straight cut	\N		\N	\N	10000	1099	t	\N	178	\N	42	3	5	1099	\N	t	5000
3015	sunshine-day-dress	sunshine day dress		Dress			2999	299	t		196	\N	42	3	5	299	\N	t	699
3009	sequinned-georgette-pink-maxi-dress	sequinned georgette pink maxi dress	\N		\N	\N	10000	1199	t	\N	178	\N	11	3	5	1199	\N	t	5000
3016	full-sleeves-shift-dress	full sleeves shift dress		Dress			8999	999	t		190	\N	42	3	5	999	\N	t	4499
3011	embroidded-pink-anarkali	embroidded pink anarkali	\N		\N	\N	32000	3299	t	\N	178	\N	10	3	5	3299	\N	t	16000
3012	embroided-chiffon-maxi-dress	embroided chiffon maxi dress	\N		\N	\N	6500	750	t	\N	194	\N	11	3	5	750	\N	t	3250
3013	zardozi-embroidered-lehenga	zardozi embroidered lehenga	\N		\N	\N	29950	3199	t	\N	194	\N	12	3	5	3199	\N	t	14975
3018	pretty-pink-pleated-dress	pretty pink pleated dress		Dress			2299	230	t		197	\N	42	3	5	230	\N	t	699
3019	textured-shift-dress	textured shift dress		Dress			2599	199	t		170	\N	42	3	5	199	\N	t	699
3020	printed-sheath-white-dress	printed sheath white dress		Dress			2199	199	t		197	\N	42	3	5	199	\N	t	699
3024	striped-sheath-dress	striped sheath dress		Dress			3299	199	t		195	\N	42	3	5	199	\N	t	699
3027	floral-snowwhite-dress	floral snowwhite dress		Dress			2295	199	t		175	\N	42	3	5	199	\N	t	699
2981	strapless-bodycon-dress	strapless bodycon dress		Dress			3000	199	t		187	\N	42	3	5	199	\N	t	699
2996	glitz-beaded-dress	glitz beaded dress		Dress			2695	249	t		175	\N	42	3	5	249	\N	t	699
3026	printed-brownish-maroon-blazer	printed brownish maroon blazer		Suit			12500	999	t		164	\N	48	3	4	999	\N	t	6250
3030	maroon-brocade-waistcoat	maroon brocade waistcoat		Waist Coat			5200	399	t		164	\N	49	3	4	399	\N	t	2600
3036	royal-black-blazer-with-grey-border	royal black blazer with grey border		Suit			18500	799	t		164	\N	46	3	4	799	\N	t	9250
3045	blue-bandgala-suit	Blue Bandgala Suit		Bandgala			15000	1499	t		154	\N	46	3	4	1499	\N	t	7500
2914	black-band-gala-with-grey-lining	black band gala with grey lining		Indo			12000	1699	t		166	\N	46	3	4	1699	\N	t	6000
2922	black-band-gala	black band gala		Indo			21000	1499	t		155	\N	46	3	4	1499	\N	t	10500
3029	royal-blue-party-wear-band-gala	royal blue party wear band gala		Indo			14000	799	t		164	\N	46	3	4	799	\N	t	7000
3031	green-brocade-bandi	green brocade bandi		Indo			5200	399	t		164	\N	56	3	4	399	\N	t	2600
3032	beige-brocade-bandi	beige brocade bandi		Indo			16500	399	t		199	\N	56	3	4	399	\N	t	8250
3033	dark-maroon-brocade-bandi	dark maroon brocade bandi		Indo			16500	399	t		199	\N	56	3	4	399	\N	t	8250
3037	classic-black-bandi	classic black bandi		Indo			10500	799	t		199	\N	56	3	4	799	\N	t	5250
2802	cream-sherwani-1	cream sherwani 1		Sherwani			14000	1400	t		154	\N	54	3	4	1400	\N	t	7000
3043	manyavar-beige-sherwani	Manyavar Beige Jacket Sherwani		Sherwani			12000	1200	t		154	\N	54	3	4	1200	\N	t	6000
3044	black-shiny-bandgala-suit	Black Shiny Bandgala Suit		Bandi			7500	899	t		154	\N	46	3	4	899	\N	t	3750
3038	classic-black-band-gala	classic black band gala	\N		\N	\N	21000	1499	t	\N	199	\N	\N	3	4	1499	\N	t	10500
3025	grey-formal-blazer	grey formal blazer		Blazer			6999	399	t		200	\N	47	3	4	399	\N	t	1299
2773	cream-saree-with-red-green-borders	cream saree with red green borders	\N		\N	\N	3999	499	t	\N	156	\N	36	3	5	499	\N	t	1999
2822	blue-shiny-suit-with-black-lining	blue shiny suit with black lining		Suit			18000	1799	t		164	\N	48	3	4	1799	\N	t	9000
2810	green-embellished-lehenga	green embellished lehenga	\N		\N	\N	26000	2599	t	\N	157	\N	12	3	5	2599	\N	t	13000
2829	embellished-purple-set	embellished purple set	\N		\N	\N	5000	599	t	\N	154	\N	34	3	4	599	\N	t	2500
2840	copy-of-viva-la-beach-long-hi-lo-tunic-top-sky-blue	copy of viva la beach long hi lo tunic top sky blue	\N		\N	\N	2499	299	t	\N	169	\N	42	5	5	299	\N	t	1249
2844	viva-la-beach-long-hi-lo-tunic-top-cobalt-blue	viva la beach long hi lo tunic top cobalt blue	\N		\N	\N	2499	299	t	\N	169	\N	42	5	5	299	\N	t	1249
2883	bright-pink-orange-anarkali	bright pink orange anarkali	\N		\N	\N	14000	1899	t	\N	155	\N	10	4	5	1899	\N	t	7000
2903	shiny-blue-full-set	shiny blue full set		aed			3000	649	t		155	\N	45	4	4	649	\N	t	1500
2907	purple-embroidered-print-set	purple embroidered print set		Kurta Pyjama			3000	699	t		182	\N	45	4	4	699	\N	t	1500
2923	velvet-black-waistcoat	velvet black waistcoat		Waist Coat			6000	399	t		170	\N	49	3	4	399	\N	t	3000
2936	zardozi-embroidered-georgette-suit	zardozi embroidered georgette suit	\N		\N	\N	7999	1100	t	\N	169	\N	10	3	5	1100	\N	t	3999
2952	floral-grafitti-lace-neck-dress	floral grafitti lace neck dress	\N		\N	\N	3599	659	t	\N	169	\N	42	3	5	659	\N	t	1799
2974	supermodel-chic-dress-red	supermodel chic dress red	\N		\N	\N	3299	329	t	\N	169	\N	42	3	5	329	\N	t	1649
3028	black-maroon-jodhpuri-jacket	black maroon jodhpuri jacket		Indo			16500	799	t		164	\N	46	3	4	799	\N	t	8250
3035	grey-waistcoat	grey waistcoat		Suit			4500	399	t		164	\N	49	3	4	399	\N	t	2250
3039	shawl-collar-lapel-blazer	shawl collar lapel Tuxedo		Tux			21000	1099	t		199	\N	48	3	4	1099	\N	t	10500
3040	must-have-black-blazer	must have black blazer		Blazer			6995	699	t		201	\N	47	3	4	699	\N	t	3497
2921	blue-blazer-with-black-lapel	blue blazer with black lapel		Tux			17000	2199	t		185	\N	48	4	4	2199	\N	t	8500
3023	black-jacket-with-fin-lapel	black jacket with fin lapel		Tux			13000	1099	t		199	\N	48	3	4	1099	\N	t	6500
3041	broad-shawl-lapel-tuxedo	broad shawl lapel tuxedo		Tux			14000	999	t		199	\N	\N	3	4	999	\N	t	7000
3042	notched-lapel-tuxedo	notched lapel tuxedo		Tux			21000	1099	t		199	\N	48	3	4	1099	\N	t	10500
3048	grey-full-suit	Grey Full Suit		Suit			9000	899	t		195	\N	48	3	4	899	\N	t	4500
3047	designer-multicolor-saree	Designer Multicolor Saree		Saree			25000	2499	t		158	\N	36	3	4	1399	\N	t	12500
3046	black-solid-suit	Black Solid Suit		Blazer			4500	499	t		166	\N	47	3	4	499	\N	t	2250
2788	floral-crop-top-skirt	floral crop top skirt		Dress			4500	499	t		153	\N	42	3	5	499	\N	t	2350
2871	shimmer-black-pencil-skirt	shimmer black pencil skirt		Dress			3500	299	t		170	\N	40	3	5	299	\N	t	699
2983	single-strap-printed-maxi-dress	single strap printed maxi dress		Dress			2295	229	t		175	\N	42	3	5	229	\N	t	799
2869	dark-blue-formal-blazer	dark blue formal blazer		Dress			4000	399	t		170	\N	47	3	5	399	\N	t	999
3017	knotted-back-skater-dress	knotted back skater dress		Dress			2150	199	t		198	\N	42	3	5	199	\N	t	699
2997	shimmer-copper-jumpsuit	shimmer copper jumpsuit		Dress			2990	199	t		193	\N	3	3	5	199	\N	t	599
3051	cream-indowestern-sherwani	cream indowestern sherwani		Sherwani			20000	1999	t		154	\N	54	3	4	1999	\N	t	14000
3050	cream-honeycomb-sherwani	cream honeycomb sherwani		Sherwani			50000	4499	t		154	\N	54	3	4	4499	\N	t	39000
3049	black-shiny-lapel-suit	black shiny lapel suit		Suit			9000	899	t		195	\N	48	3	4	899	\N	t	5000
3052	cream-sherwani-with-stone-work	cream sherwani with stone work		Sherwani			15000	1499	t		154	\N	54	3	4	1499	\N	t	11000
3053	cream-wedding-sherwani	cream wedding sherwani		Sherwani			25000	2499	t		154	\N	54	3	4	2499	\N	t	17000
3054	maroon-indowestern-sherwani	maroon indowestern sherwani		Sherwani			12000	1199	t		154	\N	54	3	4	1199	\N	t	9000
\.


--
-- Data for Name: ecommerce_product_category; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_category (id, name, lead_time, lag_time, cut_off_time, handle, collection) FROM stdin;
54	Sherwani	0	0	0	sherwani	men-ethnic
45	Kurta Pyjama	0	0	0	kurtapyjama	men-ethnic
46	Indo Western Suit	0	0	0	indowesternsuit	men-ethnic
47	Blazer	0	0	0	blazer	men-western
49	Waist Coat	0	0	0	waistcoat	men-western
37	Saree Gown	0	0	0	sareegown	women-ethnic
56	Nehru Coat	0	0	0	nehrucoat	men-ethnic
48	Full Suit & Tuxedo	0	0	0	fullsuit	men-western
42	Dress	0	0	0	dress	women-western
41	Formals	0	0	0	formals	women-western
43	Gown	0	0	0	gown	women-western
6	Jacket	0	0	0	jacket	women-western
40	Skirt	0	0	0	skirt	women-western
11	Maxi Dress	0	0	0	maxidress	women-western
3	Jumpsuit	0	0	0	jumpsuit	women-western
10	Anarkali	1	1	0	anarkali	women-ethnic
38	Indo Western Gown	0	0	0	indowesterngown	women-ethnic
34	Kurta Sets	1	1	0	kurtasets	women-ethnic
12	Lehenga	1	1	0	lehenga	women-ethnic
36	Sarees	0	0	0	sarees	women-ethnic
39	Wedding Gown	0	0	0	weddinggown	women-ethnic
\.


--
-- Data for Name: ecommerce_product_collections; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_collections (id, product_id, collection_id) FROM stdin;
1162	2770	9
1163	2771	8
1164	2772	8
1165	2773	7
1166	2774	9
1167	2775	9
1168	2776	9
1169	2777	9
1170	2778	9
1171	2779	9
1172	2780	9
1173	2781	9
1174	2782	6
1178	2786	6
1179	2787	6
1180	2788	6
1182	2790	7
1183	2791	7
1184	2792	7
1185	2793	7
1186	2794	7
1187	2795	7
1188	2796	7
1189	2797	7
1190	2798	7
1191	2799	7
1192	2800	7
1196	2804	7
1197	2805	7
1198	2806	7
1199	2807	7
1200	2808	7
1201	2809	7
1202	2810	7
1203	2811	7
1204	2812	7
1205	2813	7
1206	2814	7
1207	2815	6
1208	2816	6
1210	2818	6
1211	2819	9
1212	2820	9
1213	2821	9
1214	2822	8
1215	2823	8
1217	2825	8
1218	2826	8
1219	2827	8
1220	2828	8
1221	2829	9
1222	2830	6
1223	2831	6
1224	2832	6
1225	2833	6
1226	2834	6
1227	2835	6
1228	2836	7
1229	2837	7
1230	2838	7
1231	2839	7
1232	2840	6
1233	2841	6
1234	2842	6
1235	2843	6
1236	2844	6
1237	2845	6
1238	2846	6
1239	2847	6
1240	2848	6
1242	2850	6
1244	2852	6
1245	2853	7
1246	2854	6
1247	2855	6
1248	2856	6
1249	2857	6
1250	2858	6
1251	2859	6
1252	2860	6
1253	2861	6
1254	2862	6
1255	2863	6
1256	2864	6
1257	2865	6
1258	2866	6
1259	2867	6
1260	2868	6
1261	2869	6
1262	2870	6
1263	2871	6
1264	2872	6
1266	2874	7
1267	2875	7
1268	2876	7
1269	2877	7
1270	2878	7
1271	2879	7
1272	2880	7
1273	2881	7
1274	2882	7
1275	2883	7
1279	2887	7
1280	2888	7
1281	2889	7
1282	2890	7
1283	2891	7
1284	2892	7
1285	2893	7
1286	2894	7
1287	2895	7
1288	2896	6
1289	2897	6
1290	2898	6
1291	2899	6
1292	2900	6
1293	2901	8
1294	2902	9
1295	2903	9
1296	2904	9
1297	2905	9
1298	2906	9
1299	2907	9
1300	2908	9
1301	2909	9
1302	2910	8
1304	2912	8
1305	2913	9
1306	2914	9
1307	2915	8
1308	2916	9
1309	2917	9
1310	2918	9
1311	2919	9
1312	2920	9
1313	2921	8
1314	2922	9
1315	2923	8
1317	2925	8
1318	2926	8
1319	2927	8
1320	2928	8
1322	2930	8
1323	2931	8
1324	2932	7
1325	2933	7
1326	2934	7
1327	2935	7
1328	2936	7
1329	2937	7
1330	2938	7
1331	2939	7
1332	2940	7
1333	2941	7
1334	2942	7
1335	2943	6
1336	2944	6
1337	2945	6
1338	2946	6
1339	2947	6
1340	2948	6
1341	2949	6
1342	2950	6
1343	2951	6
1344	2952	6
1345	2953	6
1346	2954	6
1347	2955	6
1348	2956	6
1349	2957	6
1350	2958	6
1351	2959	6
1352	2960	6
1353	2961	6
1354	2962	6
1355	2963	6
1356	2964	6
1357	2965	6
1359	2967	6
1360	2968	6
1361	2969	6
1362	2970	6
1363	2971	6
1364	2972	6
1365	2973	6
1366	2974	6
1367	2975	6
1368	2976	6
1369	2977	6
1370	2978	6
1373	2981	6
1374	2982	6
1375	2983	6
1376	2984	6
1377	2985	6
1378	2986	6
1380	2988	7
1381	2989	6
1382	2990	7
1383	2991	7
1384	2992	6
1385	2993	7
1386	2994	6
1387	2995	7
1388	2996	6
1389	2997	6
1390	2998	6
1391	2999	7
1392	3000	6
1394	3002	6
1395	3003	7
1396	3004	6
1397	3005	7
1398	3006	6
1399	3007	7
1400	3008	6
1401	3009	7
1402	3010	6
1403	3011	7
1404	3012	7
1405	3013	7
1406	3014	6
1407	3015	6
1409	3017	6
1410	3018	6
1411	3019	6
1412	3020	6
1415	3023	8
1416	3024	6
1417	3025	8
1418	3026	8
1419	3027	6
1420	3028	9
1421	3029	9
1422	3030	9
1423	3031	9
1424	3032	9
1425	3033	9
1427	3035	8
1428	3036	9
1429	3037	9
1430	3038	9
1431	3039	8
1432	3040	8
1433	3041	8
1434	3042	8
1435	2803	9
1436	2802	9
1437	2801	9
1438	2784	7
1439	2783	7
1440	2769	7
1441	3043	9
1442	3044	9
1443	3045	9
1444	3046	8
1445	3047	7
1446	3048	8
1448	2924	9
1449	2911	9
1450	2789	7
1451	2884	7
1452	2885	7
1453	2886	7
1454	2979	7
1455	2980	7
1456	2985	11
1457	2986	11
1458	2989	11
1459	2992	11
1460	2994	11
1461	2996	11
1462	2998	11
1463	3000	11
1464	3001	7
1465	3002	11
1466	3004	11
1467	3006	11
1468	3008	11
1469	3010	11
1470	3014	11
1471	3015	11
1472	3016	7
1473	3018	11
1474	3019	11
1475	3020	11
1476	3024	11
1477	3027	11
1478	2869	11
1479	2997	11
1480	3017	11
1481	2782	11
1482	2786	11
1483	2787	11
1484	2815	11
1485	2816	11
1486	2831	11
1487	2832	11
1488	2833	11
1489	2834	11
1490	2835	11
1491	2856	11
1492	2859	11
1493	2860	11
1494	2865	11
1495	2868	11
1496	2867	11
1497	2870	11
1498	2872	11
1499	2898	11
1500	2900	11
1501	2854	11
1502	2945	11
1503	2946	11
1504	2947	11
1505	2948	11
1506	2943	11
1507	2981	11
1508	2982	11
1509	2984	11
1510	2978	11
1511	3049	8
1512	3050	9
1513	3051	9
1514	3052	9
1515	3053	9
1516	3054	9
\.


--
-- Name: ecommerce_product_collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_collections_id_seq', 1516, true);


--
-- Data for Name: ecommerce_product_cost; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_cost (id, cost, paid, "timestamp", product_id) FROM stdin;
\.


--
-- Name: ecommerce_product_cost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_cost_id_seq', 1, false);


--
-- Name: ecommerce_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_id_seq', 3054, true);


--
-- Data for Name: ecommerce_product_rent_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_rent_log (id, rent, "timestamp", product_id) FROM stdin;
\.


--
-- Name: ecommerce_product_rent_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_rent_log_id_seq', 1, false);


--
-- Data for Name: ecommerce_product_review; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_review (id, rating, title, review, visibility_flag, "timestamp", customer_id, product_id) FROM stdin;
\.


--
-- Name: ecommerce_product_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_review_id_seq', 1, false);


--
-- Data for Name: ecommerce_product_size; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_size (id, size) FROM stdin;
\.


--
-- Name: ecommerce_product_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_size_id_seq', 16, true);


--
-- Data for Name: ecommerce_product_tags; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_tags (id, product_id, tag_id) FROM stdin;
\.


--
-- Name: ecommerce_product_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_tags_id_seq', 1, false);


--
-- Name: ecommerce_product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_type_id_seq', 56, true);


--
-- Data for Name: ecommerce_product_variants; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_variants (id, sku, size, color, length, bust_size, waist_size, hip_size, visibility_flag, product_id, shoulder_size) FROM stdin;
688	WESI43	M		\N	\N	\N	\N	t	2769	\N
690	DB199	M		\N	\N	\N	\N	t	2771	\N
691	DB201	M		\N	\N	\N	\N	t	2772	\N
692	WESHP31	M		\N	\N	\N	\N	t	2773	\N
701	WWCK49	S		\N	\N	\N	\N	t	2782	\N
702	WESIP33	XS		\N	\N	\N	\N	t	2783	\N
703	WEJFP34	M		\N	\N	\N	\N	t	2784	\N
705	WWCK50	S		\N	\N	\N	\N	t	2786	\N
706	WWCK52	M		\N	\N	\N	\N	t	2787	\N
707	WWCK46	S		\N	\N	\N	\N	t	2788	\N
708	WENAP21	M		\N	\N	\N	\N	t	2789	\N
709	WEADP20	S		\N	\N	\N	\N	t	2790	\N
712	WESBP17	S		\N	\N	\N	\N	t	2793	\N
714	WEADP22	M		\N	\N	\N	\N	t	2795	\N
715	WEBMP23	S		\N	\N	\N	\N	t	2796	\N
716	WEXXP28	S		\N	\N	\N	\N	t	2797	\N
717	WENGP13	S		\N	\N	\N	\N	t	2798	\N
718	WEASP24	S		\N	\N	\N	\N	t	2799	\N
723	WERAP11	S		\N	\N	\N	\N	t	2804	\N
726	WESAP08	XS		\N	\N	\N	\N	t	2807	\N
727	WEXXP25	S		\N	\N	\N	\N	t	2808	\N
728	WEAKP09	S		\N	\N	\N	\N	t	2809	\N
729	WEAKP10	M		\N	\N	\N	\N	t	2810	\N
731	WEBMP07	S		\N	\N	\N	\N	t	2812	\N
732	WEAXP12	S		\N	\N	\N	\N	t	2813	\N
734	WWCK53	M		\N	\N	\N	\N	t	2815	\N
735	WWCK56	M		\N	\N	\N	\N	t	2816	\N
737	WWCK47	S		\N	\N	\N	\N	t	2818	\N
749	WWCK48	S		\N	\N	\N	\N	t	2830	\N
750	WWOY56	S		\N	\N	\N	\N	t	2831	\N
751	WWCK55	M		\N	\N	\N	\N	t	2832	\N
752	WWCK51	L		\N	\N	\N	\N	t	2833	\N
753	WWCK57	S		\N	\N	\N	\N	t	2834	\N
754	WWCK54	S		\N	\N	\N	\N	t	2835	\N
755	WESJP27	S		\N	\N	\N	\N	t	2836	\N
822	DB062	L	Blue					t	2903	42
820	DB005	L	Black			30, 32 , 34, 36  (custom fit)		t	2901	42
819	WWAR30	S	Blue	Thigh Length				t	2900	
818	DB060	M	Black					t	2899	
816	DB051	M	Maroon					t	2897	
815	DB073	L	White					t	2896	
814	DB042	S	Green					t	2895	
813	DB025	XS	Green					t	2894	
812	DB054	XS	Pink					t	2893	
811	DB041	XS	Cream					t	2892	
809	DB008	M	Blue		34 ( +2 & -2 custom fit)	30 (+2 & -2 custom fir)		t	2890	
807	DB069	S	Blue		34 (+2 & -2 custom fit)	30 (+2 & -2 custom fit)		t	2888	
804	DB012	S	Blue		custom fit	custom fit		t	2885	
803	JA034	S	Purple		Custom fit	Custom Fit		t	2884	
802	DB017	S	Pink		34 (+2 custom fit)	28 (+2 custom fit)		t	2883	
801	DB013	S	Blue		34 (+2 custom fit)	28 (+2 custom fit)		t	2882	
799	DB027	S	Purple		34 (+2 custom fit)	28 (+2 custom fit)		t	2880	
797	DB034	M	Cream		34 (+2 custom fit)	30 (+2 custom fit)		t	2878	
795	DB002	S	Black		34 (+4 custom fit)	28 (+4 custom fit)		t	2876	
793	DB039	S	Pink		34 (+2 custom fit)	28 (+2 custom fit)		t	2874	
770	JN101	M		\N	\N	\N	\N	t	\N	\N
791	WWAR31	XL	Grey	Thigh Length				t	2872	
790	WWAR28	M	Black			30		t	2871	
788	WWAR42	S	Blue					t	2869	
787	WWAR43	S	Black					t	2868	
786	WWAR39	S	Grey					t	2867	
785	DB066	L	Purple					t	2866	
784	WWAR29	S	Black	Thigh Length				t	2865	
783	DB021	M	Red	Thigh Length				t	2864	
781	DB061	M	Black	Thigh Length				t	2862	
780	DB046	S	Black					t	2861	
779	WWAR36	M	Brown					t	2860	
778	WWAR38	S	Black	Thigh Length				t	2859	
775	WWAR32	L	Purple					t	2856	
776	DB032	XL	Blue	Knee Length				t	2857	
772	WESHP30	XS	Blue					t	2853	
773	WWAR35	XL	Black	Thigh Length				t	2854	
771	JN100	S	White	Knee Length				t	2852	
769	JN102	S	White					t	2850	
767	JN104	M	Multicolor					t	2848	
766	CK70	M	Blue					t	2847	
765	JN106	M	Black					t	2846	
763	JN108	L	Blue					t	2844	
762	JN110	L	blue					t	2843	
761	JN109A	L	White					t	2842	
760	JN111	S	White					t	2841	
759	JN109	M	Blue					t	2840	
748	MEASP12	M	Purple			Free Size		t	2829	40
747	MERSP13	S	Blue			32, 34, 36 (custom fit)		t	2828	38
745	MERCP23	L	Brown					t	2826	42
744	MERGP16	M	Blue					t	2825	40
736	WWSBP01	S		\N	\N	\N	\N	t	\N	\N
742	MEAKP10	S	Black			28, 30, 32  (custom fit)		t	2823	38
740	MEASP22	S	Red			Free Size		t	2821	38
739	MEBKP02	M	Blue			Free Size		t	2820	40
738	MEJRP01A	M	Brown			Free Size		t	2819	40
720	MEMSP04	S	White			Free Size		t	2801	38
721	MEDRP15	S	Cream			Free Size		t	2802	38
700	MERGP17A	S	Cream			Free Size		t	2781	38
698	MEANP08	L	Pink			Free Size		t	2779	42
696	MESBP06	S	Cream			Free Size		t	2777	38
697	MEPPP18	L	Red			Free Size		t	2778	42
694	MEVKP05	L	White			Free Size		t	2775	42
693	MEASP07	M	Cream			Free Size		t	2774	40
758	WEYMP01	S	Pink		32 (+4 custom fit)	38 ( -4 custom fit)		t	2839	
756	WEPDP04	S	Red		30 ( +8 custom fit)	34 ( +3 custom fit)		t	2837	
730	WERSP15	M	Cream		42 (-8 custom fit)	40 (-6 custom fit)		t	2811	
725	WENAP06	M	Cream		30 (+8 cm custom fit)	34		t	2806	
719	WEBKP14	L	Orange	46 cm	34 (+2 & -2 custom fit)	38 (+2 & -2 custom fit)		t	2800	
711	WEYSP18	M	Green	43 cm	34 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)		t	2792	
704	WEJMP32	S		\N	\N	\N	\N	t	\N	\N
743	MESBP14	S	Red					t	\N	38
792	WWAR34	XL	Purple	Thigh Length				t	\N	
768	JN103	S		\N	\N	\N	\N	t	\N	\N
862	NEW01	M		\N	\N	\N	\N	t	2943	\N
863	NEW02	M		\N	\N	\N	\N	t	2944	\N
864	NEW03	M		\N	\N	\N	\N	t	2945	\N
865	NEW04	M		\N	\N	\N	\N	t	2946	\N
866	NEW05	M		\N	\N	\N	\N	t	2947	\N
867	NEW06	M		\N	\N	\N	\N	t	2948	\N
899	KUFLD15A050	M		\N	\N	\N	\N	t	2980	\N
918	PSFLD15A056	M		\N	\N	\N	\N	t	2999	\N
922	PSFLE15A058	M		\N	\N	\N	\N	t	3003	\N
924	PSFLE15A059	M		\N	\N	\N	\N	t	3005	\N
926	KUFAN15A060	M		\N	\N	\N	\N	t	3007	\N
958	MWMK02	L	Black					t	3039	42
957	MWMK18	L	Black					t	3038	42
955	MWSS15	M	Black					t	3036	40
954	MWSS11	M	Grey					t	3035	40
885	JA047	M	Black					t	\N	
952	MWMK04	M	Brown					t	3033	40
951	MWMK19	L	Creamish Beige					t	3032	42
950	MWSS14	M	Green					t	3031	40
948	MWSS03	M	Blue					t	3029	40
947	MWSS13	M	Maroon					t	3028	40
946	WWVM17	S	White					t	3027	
945	MWSS05	M	Dark Brown					t	3026	40
944	MWJM24	M	Grey					t	3025	40
943	WWAS14	S	Black					t	3024	
942	MWMK01	L	Black					t	3023	42
953	MKMWC03A010	M	Purple					t	\N	40
939	WWAN13	M	White					t	3020	
938	WWAR05	M	Black					t	3019	
937	WWAN22	M	Pink					t	3018	
936	WWLQ01	S	Blue					t	3017	
935	SOFLD15A065	S	Pink		34	Free size	Free Size	t	3016	
931	PSFLD15A063	M	Orange					t	3012	
933	WWLQ03	S	Blue					t	3014	
930	KUFAN15A062	S	Pink		39 (+1 & -4 custom fit)	32 (+2 & -2 custom fit)	Free Size	t	3011	
929	WWAN06	S	Multicolor					t	3010	
927	WWEL07	M	Black					t	3008	
925	WWVH26	M	pink					t	3006	
923	WWUS23	M	pink					t	3004	
921	WWEL10	L	Pink					t	3002	
920	WISO01	XS	Black		34 (+2 & -2 custom fit)	28 (+2 & -2 custom fit)	Free size	t	3001	
919	WWAS19	M	Black					t	3000	
915	WWVM02	S	White	Thigh length				t	2996	
916	WWMA21	M	grey	Thigh length				t	2997	
913	WWHP20	M	Blue	Knee Length				t	2994	
911	WW1011	S	Multicolor	Thigh Length				t	2992	
910	SOFLD15A053	XS	Green	57 cm	34 (+2 & -2 custom fit)	26 (+2 & -2 custom fit)	Free Size	t	2991	
908	WWZR12	L	Red	Thigh Length				t	2989	
907	WISO04	S	Blue	58 cm	36 (+2 & -2 custom fit)	Free size	Free size	t	2988	
905	WWZA27	S	Black	3/4 th Length				t	2986	
903	WWCM09	S	Black	Knee Length				t	2984	
904	WWWT18	S	Black					t	2985	
901	WWZR04	S	Orange					t	2982	
900	WWFL25	M	Orange					t	2981	
897	WWZR08	M	Yellow	Knee Length				t	2978	
896	JA037	S	Blue					t	2977	
895	JA092	S	Pink					t	2976	
894	JA049	S	Green					t	2975	
893	CK18	L	Red					t	2974	
892	CK13	S	Black					t	2973	
891	CK07	M	Black					t	2972	
890	CK10	S	Black					t	2971	
889	CK03	S	Pink					t	2970	
888	CK15	S	White					t	2969	
887	JA074	S	Brown					t	2968	
886	JA078	S	Multicolor					t	2967	
884	JA057	S	Brown					t	2965	
883	CK11	S	Black					t	2964	
882	JA086	S	Blue					t	2963	
881	CK12	S	Black					t	2962	
880	JA041	S	Black					t	2961	
879	JA024	S	Pink					t	2960	
877	CK20	S	Red					t	2958	
876	JA068	XS	Black					t	2957	
875	JA080	S	White					t	2956	
874	JA013	S	White					t	2955	
873	JA008	M	Multicolor					t	2954	
872	CK09	S	Blue					t	2953	
871	CK04	M	White					t	2952	
870	JA039	M	Blue					t	2951	
869	JA016	S	White					t	2950	
868	JA088	M	Grey					t	2949	
861	JA030	S	Pink					t	2942	
860	JA089	S	Pink					t	2941	
858	JA003	M	Black					t	2939	
857	JA019	M	Black					t	2938	
856	JA043	S	Blue					t	2937	
855	JA095	S	Black					t	2936	
854	CK16	S	Pink					t	2935	
853	CK60	S	Green					t	2934	
852	CK05	S	Orange					t	2933	
851	CK30	S	Red					t	2932	
849	MWAR20	M	Black			30, 32 , 34, 36  (custom fit)		t	2930	40
941	MKMTX04A005	M	Black					t	\N	40
846	MWAR08	L	Brown			30, 32 , 34, 36  (custom fit)		t	2927	42
844	DB007	M	Black			30, 32 , 34, 36  (custom fit)		t	2925	40
843	MWAR16	S	Black					t	2924	38
842	MWAR21	M	Black					t	2923	40
841	DB050	XL	Black			30, 32 , 34, 36  (custom fit)		t	2922	44
839	DB015	M	Blue			Free Size		t	2920	40
838	DB022	L	Red			Free Size		t	2919	42
836	DB001	L	Blue			Free Size		t	2917	42
835	DB053	S	Red			Free Size		t	2916	38
833	DB006	L	Black			30, 32 , 34, 36  (custom fit)		t	2914	42
837	DB019	L	Brown			Free Size		t	2918	42
832	MWAR25	M	Brown					t	2913	40
830	MWAR26	M	Blue					t	2911	40
829	DB045	S	Grey			28, 30, 32  (custom fit)		t	2910	38
828	DB024	L	Cream			Free Size		t	2909	42
827	DB068	M	Cream			Free Size		t	2908	40
825	DB029	S	Red			Free Size		t	2906	38
824	DB055	XS	Red					t	2905	36
848	MWAR22	S	Grey			30, 32 , 34, 36  (custom fit)		t	\N	38
961	MKMTX03A003	L	Black					t	3042	42
960	MWMK23	M	Black					t	3041	40
959	MWBB06	S	Black					t	3040	38
956	MWMK17	M	Black					t	3037	40
949	MWSS12	M	Maroon Red					t	3030	40
963	SOFLD15A065A	M		\N	36	Free size	Free size	t	3016	\N
964	SOFLD15A065B	L		\N	38	Free size	Free size	t	3016	\N
934	WWEL15	M	Yellow					t	3015	
966	WIAA06A	M	pink	\N	36 (+2 & -2 custom fit)	32 (+2 & -2 custom fit)	Free size	t	3013	\N
967	WIAA06B	L	pink	\N	36 (+2 & -2 custom fit)	32 (+2 & -2 custom fit)	Free size	t	3013	\N
932	WIAA06	S	Pink		36 (+2 & -2 custom fit)	32 (+2 & -2 custom fit)	Free Size	t	3013	
969	KUFAN15A062A	M	pink	\N	39 (+1 & -4 custom fit)	32 (+2 & -2 custom fit)	Free size	t	3011	\N
970	KUFAN15A062B	L	pink	\N	39 (+1 & -4 custom fit)	32 (+2 & -2 custom fit)	Free size	t	3011	\N
971	KUFLD15A061A	XL	pink	\N	41 (+1 & -3 custom fit)	36 (+2 & -2 custom fit)	42 (+1 & -3 custom fit)	t	3009	\N
928	KUFLD15A061	L	Pink		41 (+1 & -3 custom fit)	36 (+2 & -2 custom fit)	42 (+1 & -3 custom fit)	t	3009	
972	WISO01A	S	black	\N	34 (+2 & -2 custom fit)	28 (+2 & -2 custom fit)	Free size	t	3001	\N
974	WISO01B	M	black	\N	34 (+2 & -2 custom fit)	28 (+2 & -2 custom fit)	Free size	t	3001	\N
917	WWVM24	M	Green	Thigh Length				t	2998	
975	WWMA21A	L	Grey	Thigh length				t	2997	
976	WIKU07A	M	blue	\N	36 (+2 & -2 custom fit)	31 (+2 & -2 custom fit)	Free size	t	2995	\N
977	WIKU07B	L	blue	\N	36 (+2 & -2 custom fit)	31 (+2 & -2 custom fit)	Free size	t	2995	\N
914	WIKU07	S	Blue		36 ( +2 & -2 custom fit)	31 ( +2 & -2 custom fit)	Free size	t	2995	
978	KUFAN15A054A	M	multicolor	60 cm	36 (+2 & -2 custom fit)	31 (+2 & -2 custom fit)	Free size	t	2993	\N
979	KUFAN15A054B	L	multicolor	60 cm	36 (+2 & -2 custom fit)	31 (+2 & -2 custom fit)	Free size	t	2993	\N
912	KUFAN15A054	S	Multicolor	60 cm	36 (+2 & -2 custom fit)	31 (+2 & -2 custom fit)	Free size	t	2993	
980	SOFLD15A053A	S	green	57 cm	34 (+2 & -2 custom fit)	26 (+2 & -2 custom fit)	Free size	t	2991	\N
982	SOFLD15A066A	S	blue	62 cm	32 (+2 & -2 custom fit)	26 (+2 & -2 custom fit)	Free size	t	2990	\N
909	SOFLD15A066	XS	Blue	62 cm	32 (+2 & -2 custom fit)	26 (+2 & -2 custom fit)	Free Size	t	2990	
984	WISO04A	M	blue	58 cm	36 (+2 & -2 custom fit)	Free size	Free size	t	2988	\N
985	WISO04B	XS	blue	58 cm	36 (+2 & -2 custom fit)	Free size	Free size	t	2988	\N
1008	JA047A	L	Black	\N	\N	\N	\N	t	\N	\N
989	WWZA27A	M	Black	3/4th length	\N	\N	\N	t	2986	\N
990	WWZA27B	M	Black	3/4th length	\N	\N	\N	t	2986	\N
991	WWWT18A	M	Black	\N	\N	\N	\N	t	2985	\N
902	WWVM16	S	Multicolor	Full Length				t	2983	
992	WIKU02A	M	pink	57 cm	39 (+1 & -3 custom fit)	30 (+1 & -2 custom fit)	Free Size	t	2979	\N
898	WIKU02	S	Pink	57 cm	39 (+1 & -3 custom fit)	30 (+1 & -2 custom fit)	Free size	t	2979	
994	JA037A	M	blue	\N	\N	\N	\N	t	2977	\N
995	JA092A	M	magenta	\N	\N	\N	\N	t	2976	\N
996	JA092B	L	magenta	\N	\N	\N	\N	t	2976	\N
997	JA049A	M	green	\N	\N	\N	\N	t	2975	\N
998	CK18A	M	red	\N	\N	\N	\N	t	2974	\N
999	CK13A	M	Black	\N	\N	\N	\N	t	2973	\N
1000	CK10A	M	Black	\N	\N	\N	\N	t	2971	\N
1001	CK07A	L	Black	\N	\N	\N	\N	t	2972	\N
1002	CK03A	M	Pink	\N	\N	\N	\N	t	2970	\N
1003	CK15A	M	White	\N	\N	\N	\N	t	2969	\N
1006	JA074A	M	Brown	\N	\N	\N	\N	t	2968	\N
1007	JA078A	M	Multicolor	\N	\N	\N	\N	t	2967	\N
1009	JA057A	M	Brown	\N	\N	\N	\N	t	2965	\N
1010	CK11A	M	Black	\N	\N	\N	\N	t	2964	\N
1011	CK11B	L	Black	\N	\N	\N	\N	t	2964	\N
1012	JA086A	M	Blue	\N	\N	\N	\N	t	2963	\N
1013	CK12A	M	Black	\N	\N	\N	\N	t	2962	\N
1014	CK12B	L	Black	\N	\N	\N	\N	t	2962	\N
1015	JA041A	M	Black	\N	\N	\N	\N	t	2961	\N
1016	JA024A	M	pink	\N	\N	\N	\N	t	2960	\N
1017	JA026A	M	black	\N	\N	\N	\N	t	2959	\N
1018	JA026B	L	black	\N	\N	\N	\N	t	2959	\N
878	JA026	S	Black					t	2959	
1019	CK20A	M	red	\N	\N	\N	\N	t	2958	\N
1020	CK20B	L	red	\N	\N	\N	\N	t	2958	\N
1021	JA068A	S	black	\N	\N	\N	\N	t	2957	\N
1022	JA080A	M	White	\N	\N	\N	\N	t	2956	\N
1023	JA080B	L	White	\N	\N	\N	\N	t	2956	\N
1024	JA013A	M	White	\N	\N	\N	\N	t	2955	\N
1025	JA013B	L	White	\N	\N	\N	\N	t	2955	\N
1026	JA008A	L	Multicolor	\N	\N	\N	\N	t	2954	\N
1027	CK09A	M	Blue	\N	\N	\N	\N	t	2953	\N
1028	CK04A	L	White	\N	\N	\N	\N	t	2952	\N
1029	JA039A	L	Blue	\N	\N	\N	\N	t	2951	\N
1030	JA016A	M	White	\N	\N	\N	\N	t	2950	\N
1031	JA016B	L	White	\N	\N	\N	\N	t	2950	\N
1032	JA030A	M	Pink	\N	\N	\N	\N	t	2942	\N
1033	JA030B	L	Pink	\N	\N	\N	\N	t	2942	\N
1034	JA089A	M	Pink	\N	\N	\N	\N	t	2941	\N
1035	JA089B	L	Pink	\N	\N	\N	\N	t	2941	\N
1036	JA059A	L	Black	\N	\N	\N	\N	t	2940	\N
859	JA059	M	Black					t	2940	
1037	JA003A	L	Black	\N	\N	\N	\N	t	2939	\N
1038	JA003B	XL	Black	\N	\N	\N	\N	t	2939	\N
1039	JA019A	L	Black	\N	\N	\N	\N	t	2938	\N
1040	JA019B	XL	Black	\N	\N	\N	\N	t	2938	\N
1041	JA043A	M	Blue	\N	\N	\N	\N	t	2937	\N
1042	JA043B	L	Blue	\N	\N	\N	\N	t	2937	\N
1043	JA043C	XL	Blue	\N	\N	\N	\N	t	2937	\N
1044	JA095A	M	Black	\N	\N	\N	\N	t	2936	\N
1045	JA095B	L	Black	\N	\N	\N	\N	t	2936	\N
1046	CK16A	M	Pink	\N	\N	\N	\N	t	2935	\N
1047	CK16B	L	Pink	\N	\N	\N	\N	t	2935	\N
1049	CK16C	XL	Pink	\N	\N	\N	\N	t	2935	\N
1050	CK60B	M	Green	\N	\N	\N	\N	t	2934	\N
1051	CK60C	L	Green	\N	\N	\N	\N	t	2934	\N
1052	CK60D	XL	Green	\N	\N	\N	\N	t	2934	\N
1053	CK05A	M	Orange	\N	\N	\N	\N	t	2933	\N
1054	CK05B	L	Orange	\N	\N	\N	\N	t	2933	\N
1055	CK05C	XL	Orange	\N	\N	\N	\N	t	2933	\N
1056	CK30A	M	Red	\N	\N	\N	\N	t	2932	\N
1057	CK30B	L	Red	\N	\N	\N	\N	t	2932	\N
1058	CK30C	XL	Red	\N	\N	\N	\N	t	2932	\N
987	SOFLD15A051A	M	Multicolor	60 cm	34 (+2 & -2 custom fit)	29 (+2 & -2 custom fit)	Free size	t	\N	\N
850	MWAR07	M	Brown			30, 32 , 34, 36  (custom fit)		t	2931	40
847	MWAR09	M	Grey			30, 32 , 34, 36  (custom fit)		t	2928	40
845	MWAR10	M	Grey			30, 32 , 34, 36  (custom fit)		t	2926	42
840	DB010	S	Blue			28, 30, 32  (custom fit)		t	2921	38
834	DB049	XL	Purple			30, 32 , 34, 36  (custom fit)		t	2915	44
831	DB011	S	Blue			28, 30, 32  (custom fit)		t	2912	38
826	DB056	XS	Purple			Free Size		t	2907	36
823	DB047	XS	Red					t	2904	36
821	DB065	M	Blue			Free Size		t	2902	40
817	WWAR37	L	Blue					t	2898	
1059	DB042A	M	green	\N	\N	\N	\N	t	2895	\N
1061	DB042B	L	green	\N	\N	\N	\N	t	2895	\N
1062	DB042C	XL	green	\N	\N	\N	\N	t	2895	\N
1063	DB042D	XS	green	\N	\N	\N	\N	t	2895	\N
1064	DB025A	S	green	\N	\N	\N	\N	t	2894	\N
1065	DB025B	M	green	\N	\N	\N	\N	t	2894	\N
1066	DB025C	L	green	\N	\N	\N	\N	t	2894	\N
1068	DB025D	XL	green	\N	\N	\N	\N	t	2894	\N
1069	DB054A	S	pink	\N	\N	\N	\N	t	2893	\N
1070	DB054B	M	pink	\N	\N	\N	\N	t	2893	\N
1071	DB054C	L	pink	\N	\N	\N	\N	t	2893	\N
1072	DB054D	XL	pink	\N	\N	\N	\N	t	2893	\N
1073	DB041A	S	cream	\N	\N	\N	\N	t	2892	\N
1074	DB041B	M	cream	\N	\N	\N	\N	t	2892	\N
1075	DB041C	L	cream	\N	\N	\N	\N	t	2892	\N
1076	DB041D	XL	cream	\N	\N	\N	\N	t	2892	\N
1077	DB036A	M	purple	\N	36 ( +3 & -3 custom fit)	30 (+2 & -2 custom fit)	\N	t	2891	\N
1078	DB036B	L	purple	\N	36 ( +3 & -3 custom fit)	30 (+2 & -2 custom fit)	\N	t	2891	\N
810	DB036	S	Purple		36 ( +3 & -3 custom fit)	30 (+2 & -2 custom fit)		t	2891	
1079	DB030A	M	blue	\N	34 ( +3 & -3 custom fit)	30 (+2 & -2 custom fit)	\N	t	2889	\N
808	DB030	S	Blue		34 (+2 & -2 custom fit)	30 (+2 & -2 custom fit)		t	2889	
1080	DB069A	M	blue	\N	34 ( +2 & -2 custom fit)	30 (+2 & -2 custom fit)	\N	t	2888	\N
1082	DB071A	M	purple	\N	34 ( +2 & -2 custom fit)	30 (+2 & -2 custom fit)	\N	t	2887	\N
806	DB071	S	Purple		34 (+2 & -2 custom fit)	30 (+2 & -2 custom fit)		t	2887	
1083	WIKU05A	L	pink	60 cm	34 ( +2 & -2 custom fit)	30 (+2 & -2 custom fit)	\N	t	2886	\N
1084	WIKU20A	L	pink	57 cm	39(+1 & -3 custom fit)	32 (-2 custom fit)	\N	t	2886	\N
805	WIKU20	M	Pink	57 cm	39 (+1 & -3 custom fit)	32 (-2 custom fit)		t	2886	
1085	DB017A	M	pink	\N	34(+2 custom fit)	28 (+2 custom fit)	\N	t	2883	\N
1086	DB013A	M	blue	\N	34(+2 custom fit)	28 (+2 custom fit)	\N	t	2882	\N
1087	DB058A	S	red	\N	32(+2 custom fit)	26 (+2 custom fit)	\N	t	2881	\N
800	DB058	XS	Red		32 (+2 custom fit)	26 (+2 custom fit)		t	2881	
1088	DB027A	M	purple	\N	34(+2 custom fit)	28 (+2 custom fit)	\N	t	2880	\N
1090	WIKU05B	L	pink	\N	39(+1 & -3 custom fit)	32 (-2 custom fit)	\N	t	2879	\N
798	WIKU05	M	Pink	57 cm	39 (+1 & -3 custom fit)	32 (-2 custom fit)		t	2879	
1091	DB034A	L	cream	\N	34(+2 custom fit)	30 (+2 custom fit)	\N	t	2878	\N
796	DB016	S	Blue		34 (+2 & -2 custom fit)	28 (+1 & -1 custom fit)		t	2877	
1092	DB002A	M	black	\N	34(+4 custom fit)	28 (+4 custom fit)	\N	t	2876	\N
1093	DB002B	L	black	\N	34(+4 custom fit)	28 (+4 custom fit)	\N	t	2876	\N
794	DB009	S	Blue		34 (+2 custom fit)	28 (+2 custom fit)		t	2875	
1094	DB039A	M	pink	\N	34(+2 custom fit)	28 (+2 custom fit)	\N	t	2874	\N
789	WWAR41	S	Brown					t	2870	
1095	WWAR43A	M	black	\N	\N	\N	\N	t	2868	\N
1096	WWAR39A	M	grey	\N	\N	\N	\N	t	2867	\N
1097	DB066A	XL	Purple	\N	\N	\N	\N	t	2866	\N
782	DB052	XS	Purple	Knee Length				t	2863	
1098	WWAR36A	L	Brown	\N	\N	\N	\N	t	2860	\N
777	DB063	S	Pink	Thigh Length				t	2858	
1099	DB032A	L	Blue	\N	\N	\N	\N	t	2857	\N
774	DB057	S	Red	Knee Length				t	2855	
1100	WESHP30A	S	Blue	\N	\N	\N	\N	t	2853	\N
1101	WESHP30B	M	Blue	\N	\N	\N	\N	t	2853	\N
1102	WESHP30C	L	Blue	\N	\N	\N	\N	t	2853	\N
1103	WESHP30D	XL	Blue	\N	\N	\N	\N	t	2853	\N
1104	JN100A	M	White	\N	\N	\N	\N	t	2852	\N
1105	JN102A	M	White	\N	\N	\N	\N	t	2850	\N
1106	JN104A	L	Multicolor	\N	\N	\N	\N	t	2848	\N
1107	JN104B	XL	Multicolor	\N	\N	\N	\N	t	2848	\N
1108	JN106A	L	Black	\N	\N	\N	\N	t	2846	\N
764	JN107	M	Black	Knee Length				t	2845	
1109	JN108A	XL	Blue	\N	\N	\N	\N	t	2844	\N
1110	JN110A	XL	Blue	\N	\N	\N	\N	t	2843	\N
1113	JN109B	XL	White	\N	\N	\N	\N	t	2842	\N
1114	JN111A	M	White	\N	\N	\N	\N	t	2841	\N
746	MEASP20	S	Black					t	2827	38
741	MEAKP09	S	Blue			28, 30, 32 (custom fit)		t	2822	38
722	MEVBP03	S	Cream			Free Size		t	2803	38
699	METBP19	M	Cream			Free Size		t	2780	40
695	MENIP11	L	White			Free Size		t	2776	42
689	MEASP30	S	Black			28, 30, 32, 34 (custom fit)		t	2770	38
1115	WEYMP01A	M	Pink	\N	32 (+4 custom fit)	38 ( -4 custom fit)	\N	t	2839	\N
1116	WEYMP01B	L	Pink	\N	32 (+4 custom fit)	38 ( -4 custom fit)	\N	t	2839	\N
1117	WEAKP02A	M	Pink	\N	32 ( +4 & -1 custom fit)	34 (-2 custom fit)	\N	t	2838	\N
1118	WEAKP02B	L	Pink	\N	32 ( +4 & -1 custom fit)	34 (-2 custom fit)	\N	t	2838	\N
757	WEAKP02	S	Pink		32 ( +4 & -1 custom fit)	34 (-2 custom fit)		t	2838	
1119	WEPDP04A	M	Red	\N	30 ( +8 custom fit)	34 ( +3 custom fit)	\N	t	2837	\N
1120	WEPDP04B	L	Red	\N	30 ( +8 custom fit)	34 ( +3 custom fit)	\N	t	2837	\N
1121	WEYSP03A	S	White	\N	30 ( +4 & -2 custom fit)	34 ( -2 custom fit)	\N	t	2805	\N
1122	WEYSP03B	M	White	\N	30 ( +4 & -2 custom fit)	34 ( -2 custom fit)	\N	t	2805	\N
724	WEYSP03	XS	White		30 ( +4 & -2 custom fit)	34 ( -2 custom fit)		t	2805	
1123	WERSP15A	L	Cream	\N	42 (-8 custom fit)	40 (-6 custom fit)	\N	t	2811	\N
1124	WERSP15B	XL	Cream	\N	42 (-8 custom fit)	40 (-6 custom fit)	\N	t	2811	\N
1125	WESBP05A	M	Red	\N	32 ( +5 cm custom fit)	34 ( -2 custom fit)	\N	t	2814	\N
733	WESBP05	S	Red	38 cm	32 ( +5 cm custom fit)	34 ( -2 custom fit)		t	2814	
1126	WEBKP14A	XL	Orange	\N	34 (+2 & -2 custom fit)	38 (+2 & -2 custom fit)	\N	t	2800	\N
1127	WEDCP16A	S	Yellow	\N	36 (+2 & -2 custom fit) - Blouse	\N	\N	t	2794	\N
1128	WEDCP16B	M	Yellow	\N	36 (+2 & -2 custom fit) - Blouse	\N	\N	t	2794	\N
1129	WEDCP16C	L	Yellow	\N	36 (+2 & -2 custom fit) - Blouse	\N	\N	t	2794	\N
713	WEDCP16	XS	Yellow		36 (+2 & -2 custom fit) - Blouse			t	2794	
1130	WEDCP16D	XL	Yellow	\N	36 (+2 & -2 custom fit) - Blouse	\N	\N	t	2794	\N
1131	WEYSP18A	L	Green	43 cm	34 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)	\N	t	2792	\N
1132	WEYSP18B	XL	Green	43 cm	34 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)	\N	t	2792	\N
1133	WEADP19A	M	Black	42 cm	36 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)	\N	t	2791	\N
1134	WEADP19B	XS	Black	42 cm	36 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)	\N	t	2791	\N
710	WEADP19	S	Black	42 cm	36 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)		t	2791	
1135	WEADP20A	S	White	42 cm	36 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)	\N	t	2791	\N
1136	WEADP20B	M	White	42 cm	36 ( +2 & -2 custom fit)	36 ( +2 & -2 custom fit)	\N	t	2791	\N
1137	WEPKP101	M	Cream			Free Size		t	3043	40 cm
1138	WEPKS102	M	Black				(30,32,34, 36 custom fit)	t	3044	40 cm
1139	WEPJS103	L	Blue			30,32,34,36 cm (custom fit)		t	3045	42 cm
1140	WEPCS104	S	Black					t	3046	38 cm
1141	WENAP105	XS	Multicolor			Free Size		t	3047	Free Size
1142	WENAP105A	S	Multicolor					t	3047	
1143	WENAP105B	M	Multicolor					t	3047	
1144	WENAP105C	L	Multicolor					t	3047	
1145	WENAP105D	XL	Multicolor					t	3047	
1146	WEPRS105	S	Grey			28, 30, 32, 34 (custom fit)		t	3048	38 cm
940	SSMWC03A013	M	Red					t	\N	40
906	SOFLD15A051	S	Multicolor	60 cm	34 (+2 & -2 custom fit)	29 (+2 & -2 custom fit)	Free Size	t	\N	
1147	MWPRS201	S	Black			30,32,34, 36 (custom fit)		t	3049	38
1148	MEPJS201	M	Cream			Free Size		t	3050	40
1149	MEPKS202	S	Cream			Free Size		t	3051	38
1150	MEPAR203	M	Cream			Free Size		t	3052	40
1151	MEPRA204	M	Cream			Free Size		t	3053	40
1152	MEPAR205	M	Red			Free Size		t	3054	40
\.


--
-- Name: ecommerce_product_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_variants_id_seq', 1152, true);


--
-- Data for Name: ecommerce_product_view; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_product_view (id, "timestamp", customer_id, product_id) FROM stdin;
\.


--
-- Name: ecommerce_product_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_product_view_id_seq', 1, false);


--
-- Data for Name: ecommerce_sex; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_sex (id, sex, handle) FROM stdin;
4	Male	men
5	Female	women
\.


--
-- Name: ecommerce_sex_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_sex_id_seq', 5, true);


--
-- Data for Name: ecommerce_stylist; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_stylist (id, name, email, phone, fb_profile_link, comments, "timestamp", sex_id) FROM stdin;
\.


--
-- Name: ecommerce_stylist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_stylist_id_seq', 1, false);


--
-- Data for Name: ecommerce_stylist_payment; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_stylist_payment (id, total_payment, "timestamp", photoshoot_id, stylist_id) FROM stdin;
\.


--
-- Name: ecommerce_stylist_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_stylist_payment_id_seq', 1, false);


--
-- Data for Name: ecommerce_tag; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_tag (id, name) FROM stdin;
\.


--
-- Name: ecommerce_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_tag_id_seq', 1, false);


--
-- Data for Name: ecommerce_vendor; Type: TABLE DATA; Schema: public; Owner: django
--

COPY ecommerce_vendor (id, name, email, phone, fb_link, address_1, address_2, city, state, country, pincode, logo, description, comments, designer_flag, "timestamp", sex_id, handle, order_notifications) FROM stdin;
4	TheDressBank	team@candidknots.com	9655322051	https://www.facebook.com/thedressbank/			Bengaluru	Karnataka	India	\N				t	2016-02-03 08:42:04.662128-05	5	thedressbank	t
3	CKStore	shweta.poddar@candidknots.com	9686395810	https://www.facebook.com/CandidKnot/	202, Raju Mansion, 20-K Chandra reddy layout, Ejipura		Bangalore	Karnataka	India	560047				t	2016-02-03 08:41:31.293186-05	4	ckstore	t
5	Jaune	team@candidknots.com	9108876717				Bengaluru	Karnataka	India	\N				t	2016-04-16 10:12:49.952845-04	\N		t
\.


--
-- Name: ecommerce_vendor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('ecommerce_vendor_id_seq', 5, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: ecommerce_accessory_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_accessory
    ADD CONSTRAINT ecommerce_accessory_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_accessory_sku_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_accessory
    ADD CONSTRAINT ecommerce_accessory_sku_key UNIQUE (sku);


--
-- Name: ecommerce_accessory_type_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_accessory_type
    ADD CONSTRAINT ecommerce_accessory_type_name_key UNIQUE (name);


--
-- Name: ecommerce_accessory_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_accessory_type
    ADD CONSTRAINT ecommerce_accessory_type_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_address_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_address
    ADD CONSTRAINT ecommerce_address_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_brand
    ADD CONSTRAINT ecommerce_brand_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_cart
    ADD CONSTRAINT ecommerce_cart_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_collection_handle_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_collection
    ADD CONSTRAINT ecommerce_collection_handle_key UNIQUE (handle);


--
-- Name: ecommerce_collection_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_collection
    ADD CONSTRAINT ecommerce_collection_name_key UNIQUE (name);


--
-- Name: ecommerce_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_collection
    ADD CONSTRAINT ecommerce_collection_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_collection_tags_collection_id_e47fc57e_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_collection_tags
    ADD CONSTRAINT ecommerce_collection_tags_collection_id_e47fc57e_uniq UNIQUE (collection_id, tag_id);


--
-- Name: ecommerce_collection_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_collection_tags
    ADD CONSTRAINT ecommerce_collection_tags_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_customer_email_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_customer
    ADD CONSTRAINT ecommerce_customer_email_key UNIQUE (email);


--
-- Name: ecommerce_customer_fb_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_customer
    ADD CONSTRAINT ecommerce_customer_fb_id_key UNIQUE (fb_id);


--
-- Name: ecommerce_customer_fb_profile_link_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_customer
    ADD CONSTRAINT ecommerce_customer_fb_profile_link_key UNIQUE (fb_profile_link);


--
-- Name: ecommerce_customer_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_customer_feedback
    ADD CONSTRAINT ecommerce_customer_feedback_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_customer_login_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_customer_login
    ADD CONSTRAINT ecommerce_customer_login_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_customer
    ADD CONSTRAINT ecommerce_customer_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_discounts
    ADD CONSTRAINT ecommerce_discounts_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_fashion_model_email_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_fashion_model
    ADD CONSTRAINT ecommerce_fashion_model_email_key UNIQUE (email);


--
-- Name: ecommerce_fashion_model_fb_profile_link_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_fashion_model
    ADD CONSTRAINT ecommerce_fashion_model_fb_profile_link_key UNIQUE (fb_profile_link);


--
-- Name: ecommerce_fashion_model_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_fashion_model_payment
    ADD CONSTRAINT ecommerce_fashion_model_payment_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_fashion_model_phone_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_fashion_model
    ADD CONSTRAINT ecommerce_fashion_model_phone_key UNIQUE (phone);


--
-- Name: ecommerce_fashion_model_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_fashion_model
    ADD CONSTRAINT ecommerce_fashion_model_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_id_card_card_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_id_card
    ADD CONSTRAINT ecommerce_id_card_card_key UNIQUE (card);


--
-- Name: ecommerce_id_card_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_id_card
    ADD CONSTRAINT ecommerce_id_card_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_image_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_image
    ADD CONSTRAINT ecommerce_image_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_order_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_order
    ADD CONSTRAINT ecommerce_order_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_order_product_accessory_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_order_product_accessory
    ADD CONSTRAINT ecommerce_order_product_accessory_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_order_product_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_order_product
    ADD CONSTRAINT ecommerce_order_product_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_page_handle_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_page
    ADD CONSTRAINT ecommerce_page_handle_key UNIQUE (handle);


--
-- Name: ecommerce_page_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_page
    ADD CONSTRAINT ecommerce_page_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_photographer_email_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_photographer
    ADD CONSTRAINT ecommerce_photographer_email_key UNIQUE (email);


--
-- Name: ecommerce_photographer_fb_profile_link_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_photographer
    ADD CONSTRAINT ecommerce_photographer_fb_profile_link_key UNIQUE (fb_profile_link);


--
-- Name: ecommerce_photographer_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_photographer_payment
    ADD CONSTRAINT ecommerce_photographer_payment_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_photographer_phone_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_photographer
    ADD CONSTRAINT ecommerce_photographer_phone_key UNIQUE (phone);


--
-- Name: ecommerce_photographer_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_photographer
    ADD CONSTRAINT ecommerce_photographer_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_photoshoot_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_photoshoot
    ADD CONSTRAINT ecommerce_photoshoot_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_post_images_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_post_images
    ADD CONSTRAINT ecommerce_post_images_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_post_images_post_id_2164ca22_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_post_images
    ADD CONSTRAINT ecommerce_post_images_post_id_2164ca22_uniq UNIQUE (post_id, image_id);


--
-- Name: ecommerce_post_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_post
    ADD CONSTRAINT ecommerce_post_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_collections
    ADD CONSTRAINT ecommerce_product_collections_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_collections_product_id_49229fd3_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_collections
    ADD CONSTRAINT ecommerce_product_collections_product_id_49229fd3_uniq UNIQUE (product_id, collection_id);


--
-- Name: ecommerce_product_cost_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_cost
    ADD CONSTRAINT ecommerce_product_cost_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_cost_product_id_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_cost
    ADD CONSTRAINT ecommerce_product_cost_product_id_key UNIQUE (product_id);


--
-- Name: ecommerce_product_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_product_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_rent_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_rent_log
    ADD CONSTRAINT ecommerce_product_rent_log_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_review_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_review
    ADD CONSTRAINT ecommerce_product_review_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_size_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_size
    ADD CONSTRAINT ecommerce_product_size_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_size_size_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_size
    ADD CONSTRAINT ecommerce_product_size_size_key UNIQUE (size);


--
-- Name: ecommerce_product_sku_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_product_sku_key UNIQUE (product_id);


--
-- Name: ecommerce_product_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_tags
    ADD CONSTRAINT ecommerce_product_tags_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_tags_product_id_c377b221_uniq; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_tags
    ADD CONSTRAINT ecommerce_product_tags_product_id_c377b221_uniq UNIQUE (product_id, tag_id);


--
-- Name: ecommerce_product_type_handle_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_category
    ADD CONSTRAINT ecommerce_product_type_handle_key UNIQUE (handle);


--
-- Name: ecommerce_product_type_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_category
    ADD CONSTRAINT ecommerce_product_type_name_key UNIQUE (name);


--
-- Name: ecommerce_product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_category
    ADD CONSTRAINT ecommerce_product_type_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_variants
    ADD CONSTRAINT ecommerce_product_variants_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_product_variants_sku_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_variants
    ADD CONSTRAINT ecommerce_product_variants_sku_key UNIQUE (sku);


--
-- Name: ecommerce_product_view_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_product_view
    ADD CONSTRAINT ecommerce_product_view_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_sex_handle_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_sex
    ADD CONSTRAINT ecommerce_sex_handle_key UNIQUE (handle);


--
-- Name: ecommerce_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_sex
    ADD CONSTRAINT ecommerce_sex_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_sex_sex_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_sex
    ADD CONSTRAINT ecommerce_sex_sex_key UNIQUE (sex);


--
-- Name: ecommerce_stylist_email_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_stylist
    ADD CONSTRAINT ecommerce_stylist_email_key UNIQUE (email);


--
-- Name: ecommerce_stylist_fb_profile_link_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_stylist
    ADD CONSTRAINT ecommerce_stylist_fb_profile_link_key UNIQUE (fb_profile_link);


--
-- Name: ecommerce_stylist_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_stylist_payment
    ADD CONSTRAINT ecommerce_stylist_payment_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_stylist_phone_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_stylist
    ADD CONSTRAINT ecommerce_stylist_phone_key UNIQUE (phone);


--
-- Name: ecommerce_stylist_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_stylist
    ADD CONSTRAINT ecommerce_stylist_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_tag
    ADD CONSTRAINT ecommerce_tag_name_key UNIQUE (name);


--
-- Name: ecommerce_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_tag
    ADD CONSTRAINT ecommerce_tag_pkey PRIMARY KEY (id);


--
-- Name: ecommerce_vendor_handle_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_vendor
    ADD CONSTRAINT ecommerce_vendor_handle_key UNIQUE (handle);


--
-- Name: ecommerce_vendor_phone_key; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_vendor
    ADD CONSTRAINT ecommerce_vendor_phone_key UNIQUE (phone);


--
-- Name: ecommerce_vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: django; Tablespace: 
--

ALTER TABLE ONLY ecommerce_vendor
    ADD CONSTRAINT ecommerce_vendor_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: ecommerce_accessory_94757cae; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_accessory_94757cae ON ecommerce_accessory USING btree (type_id);


--
-- Name: ecommerce_accessory_sku_deb36813_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_accessory_sku_deb36813_like ON ecommerce_accessory USING btree (sku varchar_pattern_ops);


--
-- Name: ecommerce_accessory_type_name_afe15734_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_accessory_type_name_afe15734_like ON ecommerce_accessory_type USING btree (name varchar_pattern_ops);


--
-- Name: ecommerce_address_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_address_cb24373b ON ecommerce_address USING btree (customer_id);


--
-- Name: ecommerce_cart_8222f9c0; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_cart_8222f9c0 ON ecommerce_cart USING btree (size_id);


--
-- Name: ecommerce_cart_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_cart_9bea82de ON ecommerce_cart USING btree (product_id);


--
-- Name: ecommerce_cart_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_cart_cb24373b ON ecommerce_cart USING btree (customer_id);


--
-- Name: ecommerce_collection_handle_22c661f5_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_collection_handle_22c661f5_like ON ecommerce_collection USING btree (handle varchar_pattern_ops);


--
-- Name: ecommerce_collection_name_828a41f1_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_collection_name_828a41f1_like ON ecommerce_collection USING btree (name varchar_pattern_ops);


--
-- Name: ecommerce_collection_tags_0a1a4dd8; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_collection_tags_0a1a4dd8 ON ecommerce_collection_tags USING btree (collection_id);


--
-- Name: ecommerce_collection_tags_76f094bc; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_collection_tags_76f094bc ON ecommerce_collection_tags USING btree (tag_id);


--
-- Name: ecommerce_customer_cf9ca29c; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_customer_cf9ca29c ON ecommerce_customer USING btree (id_type_id);


--
-- Name: ecommerce_customer_email_42a44b70_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_customer_email_42a44b70_like ON ecommerce_customer USING btree (email varchar_pattern_ops);


--
-- Name: ecommerce_customer_fb_profile_link_407d2da0_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_customer_fb_profile_link_407d2da0_like ON ecommerce_customer USING btree (fb_profile_link varchar_pattern_ops);


--
-- Name: ecommerce_customer_feedback_69dfcb07; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_customer_feedback_69dfcb07 ON ecommerce_customer_feedback USING btree (order_id);


--
-- Name: ecommerce_customer_feedback_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_customer_feedback_cb24373b ON ecommerce_customer_feedback USING btree (customer_id);


--
-- Name: ecommerce_customer_login_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_customer_login_cb24373b ON ecommerce_customer_login USING btree (customer_id);


--
-- Name: ecommerce_fashion_model_e5ad4385; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_fashion_model_e5ad4385 ON ecommerce_fashion_model USING btree (sex_id);


--
-- Name: ecommerce_fashion_model_email_635ca831_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_fashion_model_email_635ca831_like ON ecommerce_fashion_model USING btree (email varchar_pattern_ops);


--
-- Name: ecommerce_fashion_model_fb_profile_link_7ab04769_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_fashion_model_fb_profile_link_7ab04769_like ON ecommerce_fashion_model USING btree (fb_profile_link varchar_pattern_ops);


--
-- Name: ecommerce_fashion_model_payment_0ca35b0a; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_fashion_model_payment_0ca35b0a ON ecommerce_fashion_model_payment USING btree (photoshoot_id);


--
-- Name: ecommerce_fashion_model_payment_e8ac813a; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_fashion_model_payment_e8ac813a ON ecommerce_fashion_model_payment USING btree (fashion_model_id);


--
-- Name: ecommerce_id_card_card_c4b975a2_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_id_card_card_c4b975a2_like ON ecommerce_id_card USING btree (card varchar_pattern_ops);


--
-- Name: ecommerce_order_b624246e; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_b624246e ON ecommerce_order USING btree (login_id_id);


--
-- Name: ecommerce_order_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_cb24373b ON ecommerce_order USING btree (customer_id);


--
-- Name: ecommerce_order_ea8e5d12; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_ea8e5d12 ON ecommerce_order USING btree (address_id);


--
-- Name: ecommerce_order_product_69dfcb07; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_product_69dfcb07 ON ecommerce_order_product USING btree (order_id);


--
-- Name: ecommerce_order_product_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_product_9bea82de ON ecommerce_order_product USING btree (product_id);


--
-- Name: ecommerce_order_product_accessory_d925f7ee; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_product_accessory_d925f7ee ON ecommerce_order_product_accessory USING btree (order_product_id);


--
-- Name: ecommerce_order_product_accessory_e5ed8fc0; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_order_product_accessory_e5ed8fc0 ON ecommerce_order_product_accessory USING btree (accessory_id);


--
-- Name: ecommerce_page_handle_9df45a81_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_page_handle_9df45a81_like ON ecommerce_page USING btree (handle varchar_pattern_ops);


--
-- Name: ecommerce_photographer_e5ad4385; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photographer_e5ad4385 ON ecommerce_photographer USING btree (sex_id);


--
-- Name: ecommerce_photographer_email_5f31c8b1_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photographer_email_5f31c8b1_like ON ecommerce_photographer USING btree (email varchar_pattern_ops);


--
-- Name: ecommerce_photographer_fb_profile_link_6d0f3273_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photographer_fb_profile_link_6d0f3273_like ON ecommerce_photographer USING btree (fb_profile_link varchar_pattern_ops);


--
-- Name: ecommerce_photographer_payment_0ca35b0a; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photographer_payment_0ca35b0a ON ecommerce_photographer_payment USING btree (photoshoot_id);


--
-- Name: ecommerce_photographer_payment_2a69462d; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photographer_payment_2a69462d ON ecommerce_photographer_payment USING btree (photographer_id);


--
-- Name: ecommerce_photoshoot_058201c3; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photoshoot_058201c3 ON ecommerce_photoshoot USING btree (stylist_id);


--
-- Name: ecommerce_photoshoot_2a69462d; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photoshoot_2a69462d ON ecommerce_photoshoot USING btree (photographer_id);


--
-- Name: ecommerce_photoshoot_e8ac813a; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_photoshoot_e8ac813a ON ecommerce_photoshoot USING btree (fashion_model_id);


--
-- Name: ecommerce_post_2dbcba41; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_post_2dbcba41 ON ecommerce_post USING btree (slug);


--
-- Name: ecommerce_post_4f331e2f; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_post_4f331e2f ON ecommerce_post USING btree (author_id);


--
-- Name: ecommerce_post_images_f33175e6; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_post_images_f33175e6 ON ecommerce_post_images USING btree (image_id);


--
-- Name: ecommerce_post_images_f3aa1999; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_post_images_f3aa1999 ON ecommerce_post_images USING btree (post_id);


--
-- Name: ecommerce_product_0ca35b0a; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_0ca35b0a ON ecommerce_product USING btree (photoshoot_id);


--
-- Name: ecommerce_product_521b20f5; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_521b20f5 ON ecommerce_product USING btree (brand_id);


--
-- Name: ecommerce_product_621346f3; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_621346f3 ON ecommerce_product USING btree (ideal_for_id);


--
-- Name: ecommerce_product_94757cae; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_94757cae ON ecommerce_product USING btree (category_id);


--
-- Name: ecommerce_product_96b1f972; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_96b1f972 ON ecommerce_product USING btree (vendor_id);


--
-- Name: ecommerce_product_collections_0a1a4dd8; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_collections_0a1a4dd8 ON ecommerce_product_collections USING btree (collection_id);


--
-- Name: ecommerce_product_collections_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_collections_9bea82de ON ecommerce_product_collections USING btree (product_id);


--
-- Name: ecommerce_product_rent_log_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_rent_log_9bea82de ON ecommerce_product_rent_log USING btree (product_id);


--
-- Name: ecommerce_product_review_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_review_9bea82de ON ecommerce_product_review USING btree (product_id);


--
-- Name: ecommerce_product_review_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_review_cb24373b ON ecommerce_product_review USING btree (customer_id);


--
-- Name: ecommerce_product_size_size_c90b9116_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_size_size_c90b9116_like ON ecommerce_product_size USING btree (size varchar_pattern_ops);


--
-- Name: ecommerce_product_sku_1d772579_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_sku_1d772579_like ON ecommerce_product USING btree (product_id varchar_pattern_ops);


--
-- Name: ecommerce_product_tags_76f094bc; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_tags_76f094bc ON ecommerce_product_tags USING btree (tag_id);


--
-- Name: ecommerce_product_tags_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_tags_9bea82de ON ecommerce_product_tags USING btree (product_id);


--
-- Name: ecommerce_product_type_name_d86e6a1f_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_type_name_d86e6a1f_like ON ecommerce_product_category USING btree (name varchar_pattern_ops);


--
-- Name: ecommerce_product_variants_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_variants_9bea82de ON ecommerce_product_variants USING btree (product_id);


--
-- Name: ecommerce_product_variants_sku_72c27d2d_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_variants_sku_72c27d2d_like ON ecommerce_product_variants USING btree (sku varchar_pattern_ops);


--
-- Name: ecommerce_product_view_9bea82de; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_view_9bea82de ON ecommerce_product_view USING btree (product_id);


--
-- Name: ecommerce_product_view_cb24373b; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_product_view_cb24373b ON ecommerce_product_view USING btree (customer_id);


--
-- Name: ecommerce_sex_sex_a7082102_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_sex_sex_a7082102_like ON ecommerce_sex USING btree (sex varchar_pattern_ops);


--
-- Name: ecommerce_stylist_e5ad4385; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_stylist_e5ad4385 ON ecommerce_stylist USING btree (sex_id);


--
-- Name: ecommerce_stylist_email_ebe02e54_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_stylist_email_ebe02e54_like ON ecommerce_stylist USING btree (email varchar_pattern_ops);


--
-- Name: ecommerce_stylist_fb_profile_link_b8cb560c_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_stylist_fb_profile_link_b8cb560c_like ON ecommerce_stylist USING btree (fb_profile_link varchar_pattern_ops);


--
-- Name: ecommerce_stylist_payment_058201c3; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_stylist_payment_058201c3 ON ecommerce_stylist_payment USING btree (stylist_id);


--
-- Name: ecommerce_stylist_payment_0ca35b0a; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_stylist_payment_0ca35b0a ON ecommerce_stylist_payment USING btree (photoshoot_id);


--
-- Name: ecommerce_tag_name_32c26120_like; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_tag_name_32c26120_like ON ecommerce_tag USING btree (name varchar_pattern_ops);


--
-- Name: ecommerce_vendor_e5ad4385; Type: INDEX; Schema: public; Owner: django; Tablespace: 
--

CREATE INDEX ecommerce_vendor_e5ad4385 ON ecommerce_vendor USING btree (sex_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommer_fashion_model_id_62156fa1_fk_ecommerce_fashion_model_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_fashion_model_payment
    ADD CONSTRAINT ecommer_fashion_model_id_62156fa1_fk_ecommerce_fashion_model_id FOREIGN KEY (fashion_model_id) REFERENCES ecommerce_fashion_model(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommer_fashion_model_id_ef61130e_fk_ecommerce_fashion_model_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photoshoot
    ADD CONSTRAINT ecommer_fashion_model_id_ef61130e_fk_ecommerce_fashion_model_id FOREIGN KEY (fashion_model_id) REFERENCES ecommerce_fashion_model(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommer_order_product_id_d82dc982_fk_ecommerce_order_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order_product_accessory
    ADD CONSTRAINT ecommer_order_product_id_d82dc982_fk_ecommerce_order_product_id FOREIGN KEY (order_product_id) REFERENCES ecommerce_order_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_acces_type_id_4e4d0223_fk_ecommerce_accessory_type_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_accessory
    ADD CONSTRAINT ecommerce_acces_type_id_4e4d0223_fk_ecommerce_accessory_type_id FOREIGN KEY (type_id) REFERENCES ecommerce_accessory_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_address_customer_id_6666c39e_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_address
    ADD CONSTRAINT ecommerce_address_customer_id_6666c39e_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_cart_customer_id_3b1f8156_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_cart
    ADD CONSTRAINT ecommerce_cart_customer_id_3b1f8156_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_cart_product_id_5475bc3c_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_cart
    ADD CONSTRAINT ecommerce_cart_product_id_5475bc3c_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_cart_size_id_f700d88b_fk_ecommerce_product_size_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_cart
    ADD CONSTRAINT ecommerce_cart_size_id_f700d88b_fk_ecommerce_product_size_id FOREIGN KEY (size_id) REFERENCES ecommerce_product_size(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_category_id_53003707_fk_ecommerce_product_category_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_category_id_53003707_fk_ecommerce_product_category_id FOREIGN KEY (category_id) REFERENCES ecommerce_product_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_col_collection_id_afa13d0a_fk_ecommerce_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_collection_tags
    ADD CONSTRAINT ecommerce_col_collection_id_afa13d0a_fk_ecommerce_collection_id FOREIGN KEY (collection_id) REFERENCES ecommerce_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_collection_tags_tag_id_b5faedb6_fk_ecommerce_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_collection_tags
    ADD CONSTRAINT ecommerce_collection_tags_tag_id_b5faedb6_fk_ecommerce_tag_id FOREIGN KEY (tag_id) REFERENCES ecommerce_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_custome_customer_id_798ec03f_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer_feedback
    ADD CONSTRAINT ecommerce_custome_customer_id_798ec03f_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_custome_customer_id_d4d63731_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer_login
    ADD CONSTRAINT ecommerce_custome_customer_id_d4d63731_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_customer_feed_order_id_52d6a3c1_fk_ecommerce_order_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer_feedback
    ADD CONSTRAINT ecommerce_customer_feed_order_id_52d6a3c1_fk_ecommerce_order_id FOREIGN KEY (order_id) REFERENCES ecommerce_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_customer_id_type_id_77981b97_fk_ecommerce_id_card_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_customer
    ADD CONSTRAINT ecommerce_customer_id_type_id_77981b97_fk_ecommerce_id_card_id FOREIGN KEY (id_type_id) REFERENCES ecommerce_id_card(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_fas_photoshoot_id_bd4d604b_fk_ecommerce_photoshoot_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_fashion_model_payment
    ADD CONSTRAINT ecommerce_fas_photoshoot_id_bd4d604b_fk_ecommerce_photoshoot_id FOREIGN KEY (photoshoot_id) REFERENCES ecommerce_photoshoot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_fashion_model_sex_id_1e6bec4c_fk_ecommerce_sex_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_fashion_model
    ADD CONSTRAINT ecommerce_fashion_model_sex_id_1e6bec4c_fk_ecommerce_sex_id FOREIGN KEY (sex_id) REFERENCES ecommerce_sex(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_o_login_id_id_8fbf0bc0_fk_ecommerce_customer_login_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order
    ADD CONSTRAINT ecommerce_o_login_id_id_8fbf0bc0_fk_ecommerce_customer_login_id FOREIGN KEY (login_id_id) REFERENCES ecommerce_customer_login(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_order_accessory_id_973be14d_fk_ecommerce_accessory_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order_product_accessory
    ADD CONSTRAINT ecommerce_order_accessory_id_973be14d_fk_ecommerce_accessory_id FOREIGN KEY (accessory_id) REFERENCES ecommerce_accessory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_order_address_id_93a4db03_fk_ecommerce_address_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order
    ADD CONSTRAINT ecommerce_order_address_id_93a4db03_fk_ecommerce_address_id FOREIGN KEY (address_id) REFERENCES ecommerce_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_order_customer_id_40daaaca_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order
    ADD CONSTRAINT ecommerce_order_customer_id_40daaaca_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_order_pro_product_id_159679b7_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order_product
    ADD CONSTRAINT ecommerce_order_pro_product_id_159679b7_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_order_product_order_id_1c8e9817_fk_ecommerce_order_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_order_product
    ADD CONSTRAINT ecommerce_order_product_order_id_1c8e9817_fk_ecommerce_order_id FOREIGN KEY (order_id) REFERENCES ecommerce_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_pho_photoshoot_id_78ffbd18_fk_ecommerce_photoshoot_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photographer_payment
    ADD CONSTRAINT ecommerce_pho_photoshoot_id_78ffbd18_fk_ecommerce_photoshoot_id FOREIGN KEY (photoshoot_id) REFERENCES ecommerce_photoshoot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_photographer_id_a2821db6_fk_ecommerce_photographer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photoshoot
    ADD CONSTRAINT ecommerce_photographer_id_a2821db6_fk_ecommerce_photographer_id FOREIGN KEY (photographer_id) REFERENCES ecommerce_photographer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_photographer_id_c4cc5e8d_fk_ecommerce_photographer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photographer_payment
    ADD CONSTRAINT ecommerce_photographer_id_c4cc5e8d_fk_ecommerce_photographer_id FOREIGN KEY (photographer_id) REFERENCES ecommerce_photographer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_photographer_sex_id_29da9c92_fk_ecommerce_sex_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photographer
    ADD CONSTRAINT ecommerce_photographer_sex_id_29da9c92_fk_ecommerce_sex_id FOREIGN KEY (sex_id) REFERENCES ecommerce_sex(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_photoshoo_stylist_id_7e9e170e_fk_ecommerce_stylist_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_photoshoot
    ADD CONSTRAINT ecommerce_photoshoo_stylist_id_7e9e170e_fk_ecommerce_stylist_id FOREIGN KEY (stylist_id) REFERENCES ecommerce_stylist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_post_author_id_0ff38a63_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_post
    ADD CONSTRAINT ecommerce_post_author_id_0ff38a63_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_post_images_image_id_93373819_fk_ecommerce_image_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_post_images
    ADD CONSTRAINT ecommerce_post_images_image_id_93373819_fk_ecommerce_image_id FOREIGN KEY (image_id) REFERENCES ecommerce_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_post_images_post_id_7ac4167e_fk_ecommerce_post_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_post_images
    ADD CONSTRAINT ecommerce_post_images_post_id_7ac4167e_fk_ecommerce_post_id FOREIGN KEY (post_id) REFERENCES ecommerce_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_pro_collection_id_080285f2_fk_ecommerce_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_collections
    ADD CONSTRAINT ecommerce_pro_collection_id_080285f2_fk_ecommerce_collection_id FOREIGN KEY (collection_id) REFERENCES ecommerce_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_pro_photoshoot_id_3a181a39_fk_ecommerce_photoshoot_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_pro_photoshoot_id_3a181a39_fk_ecommerce_photoshoot_id FOREIGN KEY (photoshoot_id) REFERENCES ecommerce_photoshoot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_brand_id_d87be8b9_fk_ecommerce_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_product_brand_id_d87be8b9_fk_ecommerce_brand_id FOREIGN KEY (brand_id) REFERENCES ecommerce_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_c_product_id_5d708aa7_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_cost
    ADD CONSTRAINT ecommerce_product_c_product_id_5d708aa7_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_c_product_id_d5d69975_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_collections
    ADD CONSTRAINT ecommerce_product_c_product_id_d5d69975_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_customer_id_2169f575_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_view
    ADD CONSTRAINT ecommerce_product_customer_id_2169f575_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_customer_id_e12d45c9_fk_ecommerce_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_review
    ADD CONSTRAINT ecommerce_product_customer_id_e12d45c9_fk_ecommerce_customer_id FOREIGN KEY (customer_id) REFERENCES ecommerce_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_ideal_for_id_7db39660_fk_ecommerce_sex_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_product_ideal_for_id_7db39660_fk_ecommerce_sex_id FOREIGN KEY (ideal_for_id) REFERENCES ecommerce_sex(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_r_product_id_0f15532c_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_rent_log
    ADD CONSTRAINT ecommerce_product_r_product_id_0f15532c_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_r_product_id_de5a5b90_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_review
    ADD CONSTRAINT ecommerce_product_r_product_id_de5a5b90_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_t_product_id_b13d454c_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_tags
    ADD CONSTRAINT ecommerce_product_t_product_id_b13d454c_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_tags_tag_id_d488483f_fk_ecommerce_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_tags
    ADD CONSTRAINT ecommerce_product_tags_tag_id_d488483f_fk_ecommerce_tag_id FOREIGN KEY (tag_id) REFERENCES ecommerce_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_v_product_id_22444f8d_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_variants
    ADD CONSTRAINT ecommerce_product_v_product_id_22444f8d_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_v_product_id_626b2f66_fk_ecommerce_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product_view
    ADD CONSTRAINT ecommerce_product_v_product_id_626b2f66_fk_ecommerce_product_id FOREIGN KEY (product_id) REFERENCES ecommerce_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_product_vendor_id_c7b2110a_fk_ecommerce_vendor_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_product
    ADD CONSTRAINT ecommerce_product_vendor_id_c7b2110a_fk_ecommerce_vendor_id FOREIGN KEY (vendor_id) REFERENCES ecommerce_vendor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_sty_photoshoot_id_c5e094fc_fk_ecommerce_photoshoot_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_stylist_payment
    ADD CONSTRAINT ecommerce_sty_photoshoot_id_c5e094fc_fk_ecommerce_photoshoot_id FOREIGN KEY (photoshoot_id) REFERENCES ecommerce_photoshoot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_stylist_p_stylist_id_65e62fcd_fk_ecommerce_stylist_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_stylist_payment
    ADD CONSTRAINT ecommerce_stylist_p_stylist_id_65e62fcd_fk_ecommerce_stylist_id FOREIGN KEY (stylist_id) REFERENCES ecommerce_stylist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_stylist_sex_id_87419045_fk_ecommerce_sex_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_stylist
    ADD CONSTRAINT ecommerce_stylist_sex_id_87419045_fk_ecommerce_sex_id FOREIGN KEY (sex_id) REFERENCES ecommerce_sex(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ecommerce_vendor_sex_id_3fe448fc_fk_ecommerce_sex_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY ecommerce_vendor
    ADD CONSTRAINT ecommerce_vendor_sex_id_3fe448fc_fk_ecommerce_sex_id FOREIGN KEY (sex_id) REFERENCES ecommerce_sex(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

