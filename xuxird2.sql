--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 10.0

-- Started on 2019-05-17 14:50:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 416 (class 2615 OID 1244477)
-- Name: xu_xi_rd2; Type: SCHEMA; Schema: -; Owner: xu_xi
--

CREATE SCHEMA xu_xi_rd2;


ALTER SCHEMA xu_xi_rd2 OWNER TO xu_xi;

SET search_path = xu_xi_rd2, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 2216 (class 1259 OID 1248566)
-- Name: authority; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE authority (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE authority OWNER TO xu_xi;

--
-- TOC entry 2078 (class 1259 OID 1244502)
-- Name: authority0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE authority0 (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE authority0 OWNER TO xu_xi;

--
-- TOC entry 2215 (class 1259 OID 1248564)
-- Name: authority_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE authority_id_seq OWNER TO xu_xi;

--
-- TOC entry 8018 (class 0 OID 0)
-- Dependencies: 2215
-- Name: authority_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE authority_id_seq OWNED BY authority.id;


--
-- TOC entry 2222 (class 1259 OID 1248593)
-- Name: change_shift; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE change_shift (
    id bigint NOT NULL,
    changeid bigint NOT NULL,
    changename character varying(50) NOT NULL,
    create_time timestamp without time zone NOT NULL,
    date character varying(50) NOT NULL,
    filename character varying(50) NOT NULL,
    is_agreed character varying(50) NOT NULL,
    is_changed character varying(50) NOT NULL,
    oper_time timestamp without time zone,
    reason character varying(1000),
    shiftname character varying(50) NOT NULL,
    todate character varying(50) NOT NULL,
    toshiftname character varying(50) NOT NULL,
    userid bigint NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE change_shift OWNER TO xu_xi;

--
-- TOC entry 2207 (class 1259 OID 1248036)
-- Name: change_shift0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE change_shift0 (
    id bigint NOT NULL,
    changeid bigint NOT NULL,
    changename character varying(50) NOT NULL,
    create_time timestamp without time zone NOT NULL,
    date character varying(50) NOT NULL,
    filename character varying(50) NOT NULL,
    is_agreed character varying(50) NOT NULL,
    is_changed character varying(50) NOT NULL,
    oper_time timestamp without time zone,
    reason character varying(1000),
    shiftname character varying(50) NOT NULL,
    todate character varying(50) NOT NULL,
    toshiftname character varying(50) NOT NULL,
    userid bigint NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE change_shift0 OWNER TO xu_xi;

--
-- TOC entry 2221 (class 1259 OID 1248591)
-- Name: change_shift_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE change_shift_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE change_shift_id_seq OWNER TO xu_xi;

--
-- TOC entry 8019 (class 0 OID 0)
-- Dependencies: 2221
-- Name: change_shift_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE change_shift_id_seq OWNED BY change_shift.id;


--
-- TOC entry 2206 (class 1259 OID 1248034)
-- Name: change_shift_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE change_shift_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE change_shift_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8020 (class 0 OID 0)
-- Dependencies: 2206
-- Name: change_shift_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE change_shift_id_seq0 OWNED BY change_shift0.id;


--
-- TOC entry 2224 (class 1259 OID 1248604)
-- Name: labor_law; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE labor_law (
    id bigint NOT NULL,
    hour double precision NOT NULL,
    use character varying(50) NOT NULL
);


ALTER TABLE labor_law OWNER TO xu_xi;

--
-- TOC entry 2190 (class 1259 OID 1247640)
-- Name: labor_law0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE labor_law0 (
    id bigint NOT NULL,
    hour double precision NOT NULL,
    use character varying(50) NOT NULL
);


ALTER TABLE labor_law0 OWNER TO xu_xi;

--
-- TOC entry 2223 (class 1259 OID 1248602)
-- Name: labor_law_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE labor_law_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE labor_law_id_seq OWNER TO xu_xi;

--
-- TOC entry 8021 (class 0 OID 0)
-- Dependencies: 2223
-- Name: labor_law_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE labor_law_id_seq OWNED BY labor_law.id;


--
-- TOC entry 2189 (class 1259 OID 1247638)
-- Name: labor_law_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE labor_law_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE labor_law_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8022 (class 0 OID 0)
-- Dependencies: 2189
-- Name: labor_law_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE labor_law_id_seq0 OWNED BY labor_law0.id;


--
-- TOC entry 2226 (class 1259 OID 1248612)
-- Name: save_schedule; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE save_schedule (
    id bigint NOT NULL,
    create_time timestamp without time zone NOT NULL,
    dates character varying(65000) NOT NULL,
    name character varying(50) NOT NULL,
    saves character varying(65000) NOT NULL,
    selectedshiftgroup character varying(255) NOT NULL,
    shifts character varying(65000) NOT NULL
);


ALTER TABLE save_schedule OWNER TO xu_xi;

--
-- TOC entry 2168 (class 1259 OID 1247299)
-- Name: save_schedule0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE save_schedule0 (
    id bigint NOT NULL,
    create_time timestamp without time zone NOT NULL,
    dates character varying(65000) NOT NULL,
    name character varying(50) NOT NULL,
    saves character varying(65000) NOT NULL,
    selectedshiftgroup character varying(255) NOT NULL,
    shifts character varying(65000) NOT NULL
);


ALTER TABLE save_schedule0 OWNER TO xu_xi;

--
-- TOC entry 2225 (class 1259 OID 1248610)
-- Name: save_schedule_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE save_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE save_schedule_id_seq OWNER TO xu_xi;

--
-- TOC entry 8023 (class 0 OID 0)
-- Dependencies: 2225
-- Name: save_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE save_schedule_id_seq OWNED BY save_schedule.id;


--
-- TOC entry 2167 (class 1259 OID 1247297)
-- Name: save_schedule_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE save_schedule_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE save_schedule_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8024 (class 0 OID 0)
-- Dependencies: 2167
-- Name: save_schedule_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE save_schedule_id_seq0 OWNED BY save_schedule0.id;


--
-- TOC entry 2332 (class 1259 OID 1259202)
-- Name: seckill; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE seckill (
    seckill_id integer NOT NULL,
    title character varying(1000),
    image character varying(1000),
    price numeric,
    cost_price numeric,
    stock_count bigint,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone NOT NULL,
    creat_time timestamp without time zone NOT NULL
);


ALTER TABLE seckill OWNER TO xu_xi;

--
-- TOC entry 2333 (class 1259 OID 1259214)
-- Name: seckill_order; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE seckill_order (
    seckill_id bigint NOT NULL,
    money numeric,
    user_phone bigint NOT NULL,
    create_time timestamp without time zone NOT NULL,
    state integer DEFAULT '-1'::integer NOT NULL
);


ALTER TABLE seckill_order OWNER TO xu_xi;

--
-- TOC entry 2331 (class 1259 OID 1259200)
-- Name: seckill_seckill_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE seckill_seckill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seckill_seckill_id_seq OWNER TO xu_xi;

--
-- TOC entry 8025 (class 0 OID 0)
-- Dependencies: 2331
-- Name: seckill_seckill_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE seckill_seckill_id_seq OWNED BY seckill.seckill_id;


--
-- TOC entry 2218 (class 1259 OID 1248574)
-- Name: shift; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE shift (
    id bigint NOT NULL,
    endtime character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    num integer NOT NULL,
    starttime character varying(50) NOT NULL,
    shiftgroup_id bigint NOT NULL,
    CONSTRAINT shift_num_check CHECK ((num >= 0))
);


ALTER TABLE shift OWNER TO xu_xi;

--
-- TOC entry 2175 (class 1259 OID 1247353)
-- Name: shift0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE shift0 (
    id bigint NOT NULL,
    endtime character varying(50) NOT NULL,
    name character varying(20) NOT NULL,
    num integer NOT NULL,
    starttime character varying(50) NOT NULL,
    shiftgroup_id bigint NOT NULL
);


ALTER TABLE shift0 OWNER TO xu_xi;

--
-- TOC entry 2228 (class 1259 OID 1248623)
-- Name: shift_group; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE shift_group (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    type_id bigint
);


ALTER TABLE shift_group OWNER TO xu_xi;

--
-- TOC entry 2170 (class 1259 OID 1247310)
-- Name: shift_group0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE shift_group0 (
    id bigint NOT NULL,
    name character varying(20) NOT NULL,
    type_id bigint
);


ALTER TABLE shift_group0 OWNER TO xu_xi;

--
-- TOC entry 2227 (class 1259 OID 1248621)
-- Name: shift_group_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE shift_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shift_group_id_seq OWNER TO xu_xi;

--
-- TOC entry 8026 (class 0 OID 0)
-- Dependencies: 2227
-- Name: shift_group_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE shift_group_id_seq OWNED BY shift_group.id;


--
-- TOC entry 2169 (class 1259 OID 1247308)
-- Name: shift_group_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE shift_group_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shift_group_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8027 (class 0 OID 0)
-- Dependencies: 2169
-- Name: shift_group_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE shift_group_id_seq0 OWNED BY shift_group0.id;


--
-- TOC entry 2217 (class 1259 OID 1248572)
-- Name: shift_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE shift_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shift_id_seq OWNER TO xu_xi;

--
-- TOC entry 8028 (class 0 OID 0)
-- Dependencies: 2217
-- Name: shift_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE shift_id_seq OWNED BY shift.id;


--
-- TOC entry 2174 (class 1259 OID 1247351)
-- Name: shift_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE shift_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shift_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8029 (class 0 OID 0)
-- Dependencies: 2174
-- Name: shift_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE shift_id_seq0 OWNED BY shift0.id;


--
-- TOC entry 2077 (class 1259 OID 1244486)
-- Name: test; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE test (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE test OWNER TO xu_xi;

--
-- TOC entry 2192 (class 1259 OID 1247677)
-- Name: test_c_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE test_c_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE test_c_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 2230 (class 1259 OID 1248631)
-- Name: type; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE type (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE type OWNER TO xu_xi;

--
-- TOC entry 2172 (class 1259 OID 1247318)
-- Name: type0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE type0 (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE type0 OWNER TO xu_xi;

--
-- TOC entry 2229 (class 1259 OID 1248629)
-- Name: type_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE type_id_seq OWNER TO xu_xi;

--
-- TOC entry 8030 (class 0 OID 0)
-- Dependencies: 2229
-- Name: type_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE type_id_seq OWNED BY type.id;


--
-- TOC entry 2171 (class 1259 OID 1247316)
-- Name: type_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE type_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE type_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8031 (class 0 OID 0)
-- Dependencies: 2171
-- Name: type_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE type_id_seq0 OWNED BY type0.id;


--
-- TOC entry 2220 (class 1259 OID 1248583)
-- Name: user; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE "user" (
    id bigint NOT NULL,
    email character varying(50) NOT NULL,
    name character varying(20) NOT NULL,
    password character varying(100) NOT NULL,
    username character varying(20) NOT NULL,
    type_id bigint NOT NULL
);


ALTER TABLE "user" OWNER TO xu_xi;

--
-- TOC entry 2166 (class 1259 OID 1247287)
-- Name: user0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE user0 (
    id bigint NOT NULL,
    email character varying(50) NOT NULL,
    name character varying(20) NOT NULL,
    password character varying(100) NOT NULL,
    username character varying(20) NOT NULL,
    type_id bigint NOT NULL
);


ALTER TABLE user0 OWNER TO xu_xi;

--
-- TOC entry 2214 (class 1259 OID 1248559)
-- Name: user_authority; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE user_authority (
    user_id bigint NOT NULL,
    authority_id bigint NOT NULL
);


ALTER TABLE user_authority OWNER TO xu_xi;

--
-- TOC entry 2173 (class 1259 OID 1247336)
-- Name: user_authority0; Type: TABLE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE TABLE user_authority0 (
    user_id bigint NOT NULL,
    authority_id bigint NOT NULL
);


ALTER TABLE user_authority0 OWNER TO xu_xi;

--
-- TOC entry 2219 (class 1259 OID 1248581)
-- Name: user_id_seq; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO xu_xi;

--
-- TOC entry 8032 (class 0 OID 0)
-- Dependencies: 2219
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE user_id_seq OWNED BY "user".id;


--
-- TOC entry 2165 (class 1259 OID 1247285)
-- Name: user_id_seq0; Type: SEQUENCE; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE SEQUENCE user_id_seq0
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq0 OWNER TO xu_xi;

--
-- TOC entry 8033 (class 0 OID 0)
-- Dependencies: 2165
-- Name: user_id_seq0; Type: SEQUENCE OWNED BY; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER SEQUENCE user_id_seq0 OWNED BY user0.id;


--
-- TOC entry 7762 (class 2604 OID 1248569)
-- Name: authority id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY authority ALTER COLUMN id SET DEFAULT nextval('authority_id_seq'::regclass);


--
-- TOC entry 7766 (class 2604 OID 1248596)
-- Name: change_shift id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY change_shift ALTER COLUMN id SET DEFAULT nextval('change_shift_id_seq'::regclass);


--
-- TOC entry 7761 (class 2604 OID 1248039)
-- Name: change_shift0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY change_shift0 ALTER COLUMN id SET DEFAULT nextval('change_shift_id_seq0'::regclass);


--
-- TOC entry 7767 (class 2604 OID 1248607)
-- Name: labor_law id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY labor_law ALTER COLUMN id SET DEFAULT nextval('labor_law_id_seq'::regclass);


--
-- TOC entry 7760 (class 2604 OID 1247643)
-- Name: labor_law0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY labor_law0 ALTER COLUMN id SET DEFAULT nextval('labor_law_id_seq0'::regclass);


--
-- TOC entry 7768 (class 2604 OID 1248615)
-- Name: save_schedule id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY save_schedule ALTER COLUMN id SET DEFAULT nextval('save_schedule_id_seq'::regclass);


--
-- TOC entry 7756 (class 2604 OID 1247302)
-- Name: save_schedule0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY save_schedule0 ALTER COLUMN id SET DEFAULT nextval('save_schedule_id_seq0'::regclass);


--
-- TOC entry 7771 (class 2604 OID 1259205)
-- Name: seckill seckill_id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY seckill ALTER COLUMN seckill_id SET DEFAULT nextval('seckill_seckill_id_seq'::regclass);


--
-- TOC entry 7763 (class 2604 OID 1248577)
-- Name: shift id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift ALTER COLUMN id SET DEFAULT nextval('shift_id_seq'::regclass);


--
-- TOC entry 7759 (class 2604 OID 1247356)
-- Name: shift0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift0 ALTER COLUMN id SET DEFAULT nextval('shift_id_seq0'::regclass);


--
-- TOC entry 7769 (class 2604 OID 1248626)
-- Name: shift_group id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group ALTER COLUMN id SET DEFAULT nextval('shift_group_id_seq'::regclass);


--
-- TOC entry 7757 (class 2604 OID 1247313)
-- Name: shift_group0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group0 ALTER COLUMN id SET DEFAULT nextval('shift_group_id_seq0'::regclass);


--
-- TOC entry 7770 (class 2604 OID 1248634)
-- Name: type id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY type ALTER COLUMN id SET DEFAULT nextval('type_id_seq'::regclass);


--
-- TOC entry 7758 (class 2604 OID 1247680)
-- Name: type0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY type0 ALTER COLUMN id SET DEFAULT nextval('type_id_seq0'::regclass);


--
-- TOC entry 7765 (class 2604 OID 1248586)
-- Name: user id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- TOC entry 7755 (class 2604 OID 1247290)
-- Name: user0 id; Type: DEFAULT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user0 ALTER COLUMN id SET DEFAULT nextval('user_id_seq0'::regclass);


--
-- TOC entry 7996 (class 0 OID 1248566)
-- Dependencies: 2216
-- Data for Name: authority; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO authority (id, name) VALUES (1, 'ROLE_ADMIN');
INSERT INTO authority (id, name) VALUES (2, 'ROLE_USER');


--
-- TOC entry 7977 (class 0 OID 1244502)
-- Dependencies: 2078
-- Data for Name: authority0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO authority0 (id, name) VALUES (2, 'ROLE_USER');
INSERT INTO authority0 (id, name) VALUES (1, 'ROLE_ADMIN');


--
-- TOC entry 8002 (class 0 OID 1248593)
-- Dependencies: 2222
-- Data for Name: change_shift; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO change_shift (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (15, 5, 'boxer5', '2018-08-24 17:57:35.723', '2018-08-24', '0901-0910 boxer fitness', 'true', 'true', '2018-08-24 17:58:54.105', 'I am engaged ', 'boxer 3rd weekdays', '2018-08-24', 'boxer 2nd weekdays', 2, 'boxer2');
INSERT INTO change_shift (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (6, 4, 'boxer4', '2018-08-23 17:54:23.417', '2018-08-14', '2018 0823-0908 boxer', 'true', 'true', '2018-08-23 17:56:08.764', '23rqrq2r', 'boxer 3rd weekdays', '2018-08-30', 'boxer 3rd weekdays', 1, 'boxer1');
INSERT INTO change_shift (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (7, 4, 'boxer4', '2018-08-23 17:56:42.472', '2018-08-22', '2018 0823-0908 boxer', 'true', 'refuse', '2018-08-23 17:57:08.476', '', 'boxer 3rd weekdays', '2018-09-07', 'boxer 1st weekdays', 1, 'boxer1');


--
-- TOC entry 7993 (class 0 OID 1248036)
-- Dependencies: 2207
-- Data for Name: change_shift0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (3, 2, 'boxer2', '2018-08-22 16:16:29.474', '2018-08-23', 'asdfsadf', 'true', 'true', '2018-08-22 17:56:05.233', '1234567', 'sadfsdaf', '2018-08-29', 'asdfsadfsdaf', 1, 'boxer1');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (5, 2, 'boxer2', '2018-08-22 18:08:50.927', '2018-08-29', 'file1', 'true', 'false', NULL, '2342342342342143', 'boxer 1st 1235', '2018-08-24', 'boxer 1st 67', 1, 'boxer1');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (6, 2, 'boxer2', '2018-08-22 18:14:33.758', '2018-08-22', '2', 'true', 'true', '2018-08-22 18:16:31.918', '6666666', 'boxer 1st 67', '2018-09-07', 'boxer 2nd 67', 1, 'boxer1');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (11, 3, 'boxer3', '2018-08-23 12:26:59.244', '2018-08-23', 'file2', 'false', 'false', NULL, '', 'boxer 1st 1235', '2018-08-30', 'boxer 1st 1235', 2, 'boxer2');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (7, 3, 'boxer3', '2018-08-22 18:15:19.119', '2018-08-22', 'file11', 'false', 'false', NULL, 'afaf', 'boxer 2nd 4', '2018-09-06', 'boxer 3rd 1235', 2, 'boxer2');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (8, 3, 'boxer3', '2018-08-23 12:20:12.725', '2018-08-23', 'file21212', 'false', 'false', NULL, '123', 'boxer 1st 1235', '2018-08-30', 'boxer 1st 67', 2, 'boxer2');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (12, 2, 'boxer2', '2018-08-23 12:38:58.004', '2018-08-21', 'file2', 'true', 'false', NULL, '', 'boxer 1st 1235', '2018-08-24', 'boxer 1st 1235', 1, 'boxer1');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (15, 2, 'boxer2', '2018-08-23 12:46:08.495', '2018-08-29', 'file 1 updated', 'true', 'true', '2018-08-23 12:53:15.159', '', 'boxer 1st 1235', '2018-08-29', 'boxer 2nd 67', 1, 'boxer1');
INSERT INTO change_shift0 (id, changeid, changename, create_time, date, filename, is_agreed, is_changed, oper_time, reason, shiftname, todate, toshiftname, userid, username) VALUES (13, 2, 'boxer2', '2018-08-23 12:40:08.604', '2018-08-29', 'file2', 'true', 'refuse', '2018-08-23 14:40:50.561', '', 'boxer 1st 1235', '2018-08-30', 'boxer 1st 1235', 1, 'boxer1');


--
-- TOC entry 8004 (class 0 OID 1248604)
-- Dependencies: 2224
-- Data for Name: labor_law; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO labor_law (id, hour, use) VALUES (1, 48, 'true');


--
-- TOC entry 7990 (class 0 OID 1247640)
-- Dependencies: 2190
-- Data for Name: labor_law0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO labor_law0 (id, hour, use) VALUES (1, 45, 'true');


--
-- TOC entry 8006 (class 0 OID 1248612)
-- Dependencies: 2226
-- Data for Name: save_schedule; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO save_schedule (id, create_time, dates, name, saves, selectedshiftgroup, shifts) VALUES (3, '2018-08-24 09:31:43.633', '2018-08-24,2018-08-27,2018-08-28,2018-08-29,2018-08-30,2018-08-31,2018-09-01,2018-09-02,2018-09-03,2018-09-04,2018-09-05,2018-09-06,2018-09-07,', 'boxer 2018 0824-0907', 'mayweather  Pacquiao  canelo  ,Pacquiao  canelo  Pacquiao  mayweather  ,Joshua  Wangek  Crawford  ,,,Crawford  Wangek  Joshua  ,Pacquiao  canelo  ,canelo  Pacquiao  mayweather  ,,,Joshua  Wangek  Crawford  ,Crawford  Wangek  Joshua  ,mayweather  Pacquiao  canelo  ,,,canelo  Pacquiao  mayweather  ,Joshua  Wangek  Crawford  ,Crawford  Wangek  Joshua  ,,,mayweather  Pacquiao  canelo  ,canelo  Pacquiao  mayweather  ,Joshua  Wangek  Crawford  ,,,Crawford  Wangek  Joshua  ,mayweather  Pacquiao  canelo  ,canelo  Pacquiao  mayweather  ,,,,,,Crawford  Wangek  Joshua  canelo  Pacquiao  ,mayweather  Crawford  Wangek  Joshua  canelo  ,,,,Joshua  Wangek  Crawford  mayweather  Pacquiao  ,canelo  Joshua  Wangek  Crawford  mayweather  ,Joshua  Wangek  Crawford  ,Crawford  Wangek  Joshua  ,mayweather  Pacquiao  canelo  ,,,canelo  Pacquiao  mayweather  ,Joshua  Wangek  Crawford  ,Crawford  Wangek  Joshua  ,,,mayweather  Pacquiao  canelo  ,canelo  Pacquiao  mayweather  ,Joshua  Wangek  Crawford  ,,,Crawford  Wangek  Joshua  ,mayweather  Pacquiao  canelo  ,canelo  Pacquiao  mayweather  ,,,Joshua  Wangek  Crawford  ,Crawford  Wangek  Joshua  ,mayweather  Pacquiao  canelo  ,,,', '1,', 'boxer 1st weekdays,boxer 2nd weekdays,boxer 3rd weekdays,boxer 1st weekends,boxer 2nd weekends,');
INSERT INTO save_schedule (id, create_time, dates, name, saves, selectedshiftgroup, shifts) VALUES (9, '2018-08-24 17:55:05.575', '2018-09-01,2018-09-03,2018-09-04,2018-09-05,2018-09-06,2018-09-07,2018-09-08,2018-09-09,2018-09-10,', '0901-0910 boxer fitness', ',,,Pacquiao  Joshua  Wangek  Crawford  canelo  ,mayweather  Pacquiao  canelo  Crawford  Wangek  ,peter sr  ,peter jr  ,Pacquiao  canelo  Crawford  ,mayweather  Joshua  Wangek  ,canelo  Crawford  ,,,peter sr  ,peter sr  ,Wangek  Joshua  mayweather  ,Crawford  canelo  Pacquiao  ,Wangek  Joshua  mayweather  ,,,peter jr  ,peter sr  ,mayweather  Joshua  Wangek  ,Pacquiao  canelo  Crawford  ,mayweather  Joshua  Wangek  ,,,peter sr  ,peter jr  ,Crawford  canelo  Pacquiao  ,Wangek  Joshua  mayweather  ,Crawford  canelo  Pacquiao  ,,,peter jr  ,peter jr  ,Pacquiao  canelo  Crawford  ,mayweather  Joshua  Wangek  ,Pacquiao  canelo  Crawford  ,,,peter sr  ,peter sr  ,,,,Pacquiao  canelo  Crawford  Wangek  Joshua  ,canelo  Pacquiao  mayweather  Joshua  Wangek  ,peter jr  ,peter sr  ,,,,Pacquiao  mayweather  Joshua  Wangek  Crawford  ,Joshua  mayweather  Pacquiao  canelo  Crawford  ,peter sr  ,peter jr  ,Wangek  Joshua  mayweather  ,Crawford  canelo  Pacquiao  ,Wangek  Joshua  mayweather  ,,,peter jr  ,peter jr  ,', '1,10,', 'boxer 1st weekdays,boxer 2nd weekdays,boxer 3rd weekdays,boxer 1st weekends,boxer 2nd weekends,fitness 1st,fitness 2nd,');


--
-- TOC entry 7981 (class 0 OID 1247299)
-- Dependencies: 2168
-- Data for Name: save_schedule0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO save_schedule0 (id, create_time, dates, name, saves, selectedshiftgroup, shifts) VALUES (11, '2018-08-22 12:03:50.149', '2018-08-12,2018-08-13,2018-08-14,2018-08-15,2018-08-16,2018-08-17,2018-08-18,2018-08-19,2018-08-20,2018-08-21,', 'file2', ',,,,boxer10  boxer1  boxer7  boxer5  boxer2  boxer3  ,boxer3  boxer2  boxer10  boxer1  boxer7  boxer5  ,boxer6  boxer4  boxer3  boxer2  boxer10  boxer1  ,,zhangsan  ,wangwu  ,boxer10  boxer7  boxer5  ,boxer2  boxer3  boxer4  ,boxer7  boxer5  boxer2  ,,,,,,wangwu  ,zhangsan  ,boxer1  boxer5  boxer7  ,boxer6  boxer8  boxer9  ,boxer3  boxer4  boxer6  ,,,,,,lisi  ,zhangsan  ,boxer1  boxer10  boxer9  ,boxer5  boxer7  boxer1  ,boxer8  boxer9  boxer5  ,,,,,,lisi  ,wangwu  ,,,,boxer2  boxer3  boxer4  ,,,,boxer6  boxer8  boxer9  ,wangwu  ,lisi  ,boxer8  boxer6  boxer4  ,boxer10  boxer9  boxer8  ,boxer7  boxer1  boxer10  ,,,,,,zhangsan  ,lisi  ,,,,,boxer4  boxer6  boxer8  boxer9  boxer5  boxer7  ,boxer2  boxer3  boxer4  boxer6  boxer8  boxer9  ,boxer7  boxer5  boxer2  boxer3  boxer4  boxer6  ,,zhangsan  ,wangwu  ,,,,,boxer1  boxer10  boxer9  boxer8  boxer6  boxer4  ,boxer5  boxer7  boxer1  boxer10  boxer9  boxer8  ,boxer8  boxer9  boxer5  boxer7  boxer1  boxer10  ,,wangwu  ,zhangsan  ,boxer3  boxer2  boxer10  ,boxer6  boxer4  boxer3  ,boxer9  boxer8  boxer6  ,,,,,,lisi  ,zhangsan  ,boxer1  boxer7  boxer5  ,boxer2  boxer10  boxer1  ,boxer4  boxer3  boxer2  ,,,,,,lisi  ,wangwu  ,', '1,2,', 'boxer 1st 1235,boxer 2nd 1235,boxer 3rd 1235,boxer 2nd 4,boxer 1st 67,boxer 2nd 67,boxer 3rd 67,boxer 1st 4,duty 1,duty 2,');
INSERT INTO save_schedule0 (id, create_time, dates, name, saves, selectedshiftgroup, shifts) VALUES (10, '2018-08-22 11:28:26.013', '2018-08-20,2018-08-21,2018-08-22,2018-08-23,2018-08-24,2018-08-25,2018-08-26,2018-08-28,2018-08-29,', 'file1', 'boxer1  boxer7  boxer5  ,boxer2  boxer3  boxer4  ,boxer7  boxer5  boxer2  ,boxer6  ,,,,,boxer1  boxer5  boxer7  ,boxer6  boxer8  boxer9  ,boxer3  boxer4  boxer6  ,,,,,,boxer1  boxer10  boxer9  ,boxer5  boxer7  boxer1  ,boxer8  boxer9  boxer5  ,,,,,,,,,boxer2  boxer3  boxer4  ,,,,boxer6  boxer8  boxer9  ,boxer8  boxer6  boxer4  ,boxer10  boxer9  boxer8  ,boxer7  boxer1  boxer10  ,,,,,,,,,,boxer10  boxer1  boxer7  boxer5  boxer2  boxer3  ,boxer1  boxer10  boxer9  boxer8  boxer6  boxer4  ,boxer2  boxer3  boxer4  boxer6  boxer8  boxer9  ,,,,,,boxer4  boxer6  boxer8  boxer9  boxer5  boxer7  ,boxer3  boxer2  boxer10  boxer1  boxer7  boxer5  ,boxer5  boxer7  boxer1  boxer10  boxer9  boxer8  ,,boxer3  boxer2  boxer10  ,boxer6  boxer4  boxer3  ,boxer9  boxer8  boxer6  ,,,,,,boxer1  boxer7  boxer5  ,boxer2  boxer10  boxer1  ,boxer4  boxer3  boxer2  ,,,,,,', '1,', 'boxer 1st 1235,boxer 2nd 1235,boxer 3rd 1235,boxer 2nd 4,boxer 1st 67,boxer 2nd 67,boxer 3rd 67,boxer 1st 4,');


--
-- TOC entry 8012 (class 0 OID 1259202)
-- Dependencies: 2332
-- Data for Name: seckill; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO seckill (seckill_id, title, image, price, cost_price, stock_count, start_time, end_time, creat_time) VALUES (3, 'ins新款连帽毛领棉袄宽松棉衣女冬外套学生棉服', 'https://gw.alicdn.com/bao/uploaded/i3/2007932029/TB1vdlyaVzqK1RjSZFzXXXjrpXa_!!0-item_pic.jpg_180x180xz.jpg', 200.00, 150.00, 10, '2018-10-06 16:30:00', '2019-10-17 16:30:00', '2018-10-06 16:30:00');
INSERT INTO seckill (seckill_id, title, image, price, cost_price, stock_count, start_time, end_time, creat_time) VALUES (2, 'Apple/苹果 iPhone 6s Plus 国行原装苹果6sp 5.5寸全网通4G手机', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/2249262840/O1CN011WqlHkrSuPEiHxd_!!2249262840.jpg_230x230.jpg', 2600.00, 1100.00, 10, '2018-10-06 16:30:00', '2019-10-17 16:30:00', '2018-10-06 16:30:00');
INSERT INTO seckill (seckill_id, title, image, price, cost_price, stock_count, start_time, end_time, creat_time) VALUES (4, '可爱超萌兔子毛绒玩具垂耳兔公仔布娃娃睡觉抱女孩玩偶大号女生 ', 'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/3828650009/TB22CvKkeOSBuNjy0FdXXbDnVXa_!!3828650009.jpg_230x230.jpg', 160.00, 130.00, 20, '2018-10-06 16:30:00', '2019-10-17 16:30:00', '2018-10-06 16:30:00');


--
-- TOC entry 8013 (class 0 OID 1259214)
-- Dependencies: 2333
-- Data for Name: seckill_order; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--



--
-- TOC entry 7998 (class 0 OID 1248574)
-- Dependencies: 2218
-- Data for Name: shift; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (1, '13:00', 'boxer 1st weekdays', 3, '08:00', 1);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (2, '18:00', 'boxer 2nd weekdays', 3, '13:00', 1);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (3, '23:00', 'boxer 3rd weekdays', 3, '18:00', 1);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (4, '13:00', 'boxer 1st weekends', 5, '08:00', 1);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (5, '18:00', 'boxer 2nd weekends', 5, '13:00', 1);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (8, '20:00', 'duty1', 2, '08:00', 4);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (6, '13:00', 'boxer 1st for match', 5, '08:00', 2);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (7, '19:00', 'boxer 2nd for match', 5, '14:00', 2);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (17, '12:00', 'fitness 1st', 1, '08:00', 10);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (18, '18:00', 'fitness 2nd', 1, '13:00', 10);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (9, '08:00', 'duty3', 2, '20:00', 4);
INSERT INTO shift (id, endtime, name, num, starttime, shiftgroup_id) VALUES (24, '18:30', 'duty4', 0, '17:00', 4);


--
-- TOC entry 7988 (class 0 OID 1247353)
-- Dependencies: 2175
-- Data for Name: shift0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (1, '13:00', 'boxer 1st 1235', 3, '08:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (2, '18:00', 'boxer 2nd 1235', 3, '13:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (3, '23:00', 'boxer 3rd 1235', 3, '18:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (5, '00:00', 'boxer 2nd 4', 3, '16:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (6, '13:00', 'boxer 1st 67', 6, '08:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (7, '18:00', 'boxer 2nd 67', 6, '13:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (8, '23:00', 'boxer 3rd 67', 6, '18:00', 1);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (9, '20:00', 'duty 1', 1, '08:00', 2);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (10, '08:00', 'duty 2', 1, '20:00', 2);
INSERT INTO shift0 (id, endtime, name, num, starttime, shiftgroup_id) VALUES (12, '16:00', 'boxer 1st 4', 3, '08:00', 1);


--
-- TOC entry 8008 (class 0 OID 1248623)
-- Dependencies: 2228
-- Data for Name: shift_group; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO shift_group (id, name, type_id) VALUES (1, 'boxer', 3);
INSERT INTO shift_group (id, name, type_id) VALUES (2, 'boxer before match', 3);
INSERT INTO shift_group (id, name, type_id) VALUES (4, 'duty', 5);
INSERT INTO shift_group (id, name, type_id) VALUES (10, 'fitness', 18);


--
-- TOC entry 7983 (class 0 OID 1247310)
-- Dependencies: 2170
-- Data for Name: shift_group0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO shift_group0 (id, name, type_id) VALUES (1, 'boxer', 3);
INSERT INTO shift_group0 (id, name, type_id) VALUES (2, 'duty staff', 5);
INSERT INTO shift_group0 (id, name, type_id) VALUES (10, '222222222', 2);


--
-- TOC entry 7976 (class 0 OID 1244486)
-- Dependencies: 2077
-- Data for Name: test; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO test (id, name) VALUES (2, 'wap');
INSERT INTO test (id, name) VALUES (1, 'rp');


--
-- TOC entry 8010 (class 0 OID 1248631)
-- Dependencies: 2230
-- Data for Name: type; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO type (id, name) VALUES (1, 'admin');
INSERT INTO type (id, name) VALUES (2, 'professional coach');
INSERT INTO type (id, name) VALUES (3, 'boxer');
INSERT INTO type (id, name) VALUES (4, 'training coach');
INSERT INTO type (id, name) VALUES (5, 'duty');
INSERT INTO type (id, name) VALUES (6, 'sales');
INSERT INTO type (id, name) VALUES (18, 'fitness coach');


--
-- TOC entry 7985 (class 0 OID 1247318)
-- Dependencies: 2172
-- Data for Name: type0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO type0 (id, name) VALUES (2, 'professional coach');
INSERT INTO type0 (id, name) VALUES (1, 'admin');
INSERT INTO type0 (id, name) VALUES (4, 'training coach');
INSERT INTO type0 (id, name) VALUES (3, 'boxer');
INSERT INTO type0 (id, name) VALUES (5, 'duty staff');
INSERT INTO type0 (id, name) VALUES (9, 'sales');


--
-- TOC entry 8000 (class 0 OID 1248583)
-- Dependencies: 2220
-- Data for Name: user; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (3, 'boxer3@box.com', 'canelo', '$2a$10$88nuNhALI5tEMKpeCjqU6.4nc96Q.dyyOP07JmCaGE4Pltu6sm8I.', 'boxer3', 3);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (4, 'boxer4@box.com', 'Crawford', '$2a$10$Auu40.5GMzF/nnOUW35sLu.rceNkkZUzih6dc3xCWhfkrnp31Zami', 'boxer4', 3);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (5, 'boxer5@box.com', 'Wangek', '$2a$10$zeKBznVSDh3pgBVY8/GS6.A/3qvZMIVbcrv1yfKSE35IyXBdi9wIO', 'boxer5', 3);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (6, 'duty1@box.com', 'laozhang', '$2a$10$IaIqd01ABfYb/We8QWoyu.d8tjU3o2PN7omG7JVHBYTAWKp3nsOPy', 'duty1', 5);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (7, 'duty2@box.com', 'laoli', '$2a$10$jv9pUpohsmOMcawyQov8zeg.7v1Y4XO1fh6o5hkkxhuhN1OgI8tlS', 'duty2', 5);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (8, 'duty3@box.com', 'laowu', '$2a$10$h68a9KRPBwX1g9E7Tndtk.V9a8YXG/HFCh0MPgn9Z.KLDfQ6mLC8O', 'duty3', 5);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (10, 'boxer6@box.com', 'Joshua', '$2a$10$SiSVtuXD6kW8OTM1R23vf.gdtagLLsNOBcwT1tlTlXZur/SCRGOd2', 'boxer6', 3);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (1, 'boxer1@box.com', 'mayweather', '$2a$10$7q22cYWrgylt33EvyP5Y8e1XOUUwUab9rz9LJVpqZoAj9.C8zzsJ6', 'boxer1', 3);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (0, 'admin@box.com', 'admin', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'admin', 1);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (22, 'fitness@box.com', 'peter jr', '$2a$10$HKTzgg2rs1wS7a1zE2VYDuw7KJOaXxilfT8cKRIGk8ohvE1HdqEwK', 'fitness1', 18);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (23, 'fitness@box.com', 'peter sr', '$2a$10$JLtcBJQCeaq8yrXWSuM7M.kirpzHz1EL4tRwEO6PW8InRwyWdddce', 'fitness2', 18);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (2, 'boxer2@box.com', 'Pacquiao', '$2a$10$P.VTa55SCFNCYjtUCkmms.JvDDy67JCQJg8jfERZ/lIbEyM3VlNbS', 'boxer2', 3);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (9, 'duty4@box.com', 'laoqian', '$2a$10$n76tI.Msj56RYHfaEUaHo.Jr9mt4udkAkFD5qhl.ckwaSdptLgPV.', 'duty4', 5);
INSERT INTO "user" (id, email, name, password, username, type_id) VALUES (24, '34343@111', '3434', '$2a$10$9r/eqY3UhZE06CBuTeVdg.AOSJr7aNQV5db2nXjoeLQOVsRJyH9Da', '47344', 2);


--
-- TOC entry 7979 (class 0 OID 1247287)
-- Dependencies: 2166
-- Data for Name: user0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (0, 'admin@admin.com', 'admin', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'admin', 1);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (2, 'Gacia@boxing.com', 'boxer2', '$2a$10$obZ6o/D5vw.l.vnt9/DD9eWGiQNvBaoYbGu7cOoxwuOOBsb2mNDCy', 'boxer2', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (3, 'Gacia@boxing.com', 'boxer3', '$2a$10$sb4V6ejQiqSIVuVuzhuWS.hkqhIEHGMwZnAPk5iNLe39npt1OD0xq', 'boxer3', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (4, 'Gacia@boxing.com', 'boxer4', '$2a$10$KMD5SVbN5FsYpHC154D3gumn1E0C1FYx8Hap/O2nKO7m67Ys6UlHq', 'boxer4', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (6, 'Gacia@boxing.com', 'boxer6', '$2a$10$nfPpynN1bmILGmbLIHRzAOdxPlDjJlGDneyaKIRqYAltKCxnkzNA6', 'boxer6', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (8, 'Gacia@boxing.com', 'boxer8', '$2a$10$h9v1ZedJ0IsDsRFods8kFevZByslCMMqDt3m0zWpN8k4kgAsbWS8O', 'boxer8', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (9, 'Gacia@boxing.com', 'boxer9', '$2a$10$8Xb52Z9gOeuH7zvWocX6y.NdMRao7HBuYtpDxGpBh2RcRRC9Kg876', 'boxer9', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (10, 'Gacia@boxing.com', 'boxer10', '$2a$10$kY4ZSp3mNuJUwURNBgHF4eZsgDYOuBqElX12mMhAMAECGa0yTluqe', 'boxer10', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (12, 'l@l.com', 'zhangsan', '$2a$10$2VG8VI6m91BEmQfWNdMELuaqDsZ1d4zRro4FuDmLfa0OnpQF4IIQW', 'zhangsan', 5);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (14, 'l@l.com', 'wangwu', '$2a$10$cDdhPaFtrB084qsqNOdd0OQ4LC0eR2Cwyey.NBmEP5vgUJ3AWUeZ.', 'wangwu', 5);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (16, 'l@l.com', 'lisi', '$2a$10$ppejqlBn/U/R7Srq8X5eFOnlDFePAMyPvAAioNP0fH0ARE73nE/Gu', 'lisi', 5);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (7, 'Gacia@boxing.com7', 'boxer7', '$2a$10$Q4Nqs/qROtDXVfsInqJ.puaqTVyAPhkAUWdZ.Gh2lK5n1yeNNt5wu', 'boxer7', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (5, 'Gacia@boxing.com', 'boxer5', '$2a$10$UA36i8/g4WcqBuHEt6/5VORS5ly/eyzupYEhhzmc8tyR5C5Ri30p.', 'boxer5', 3);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (17, 'z@z.com', '1111', '$2a$10$.y6wSpCq.WfPdf5aIOTXHe/juJSOp2LcaBUqKkJXGZf61Wv70Q4ou', 'newuser11', 2);
INSERT INTO user0 (id, email, name, password, username, type_id) VALUES (1, 'Gacia1@boxing.com', 'boxer1', '$2a$10$Lz3JbofO6WoBCtZ3bS15We/rMrvC7EMZnvPwu6wVpZSoDIjz4H.h.', 'boxer1', 3);


--
-- TOC entry 7994 (class 0 OID 1248559)
-- Dependencies: 2214
-- Data for Name: user_authority; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO user_authority (user_id, authority_id) VALUES (3, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (4, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (5, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (6, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (7, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (8, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (10, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (1, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (0, 1);
INSERT INTO user_authority (user_id, authority_id) VALUES (22, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (23, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (2, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (9, 2);
INSERT INTO user_authority (user_id, authority_id) VALUES (24, 2);


--
-- TOC entry 7986 (class 0 OID 1247336)
-- Dependencies: 2173
-- Data for Name: user_authority0; Type: TABLE DATA; Schema: xu_xi_rd2; Owner: xu_xi
--

INSERT INTO user_authority0 (user_id, authority_id) VALUES (0, 1);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (2, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (3, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (4, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (6, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (8, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (9, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (10, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (12, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (14, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (16, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (7, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (5, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (17, 2);
INSERT INTO user_authority0 (user_id, authority_id) VALUES (1, 2);


--
-- TOC entry 8034 (class 0 OID 0)
-- Dependencies: 2215
-- Name: authority_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('authority_id_seq', 1, false);


--
-- TOC entry 8035 (class 0 OID 0)
-- Dependencies: 2221
-- Name: change_shift_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('change_shift_id_seq', 15, true);


--
-- TOC entry 8036 (class 0 OID 0)
-- Dependencies: 2206
-- Name: change_shift_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('change_shift_id_seq0', 15, true);


--
-- TOC entry 8037 (class 0 OID 0)
-- Dependencies: 2223
-- Name: labor_law_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('labor_law_id_seq', 1, false);


--
-- TOC entry 8038 (class 0 OID 0)
-- Dependencies: 2189
-- Name: labor_law_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('labor_law_id_seq0', 1, false);


--
-- TOC entry 8039 (class 0 OID 0)
-- Dependencies: 2225
-- Name: save_schedule_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('save_schedule_id_seq', 9, true);


--
-- TOC entry 8040 (class 0 OID 0)
-- Dependencies: 2167
-- Name: save_schedule_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('save_schedule_id_seq0', 13, true);


--
-- TOC entry 8041 (class 0 OID 0)
-- Dependencies: 2331
-- Name: seckill_seckill_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('seckill_seckill_id_seq', 4, true);


--
-- TOC entry 8042 (class 0 OID 0)
-- Dependencies: 2227
-- Name: shift_group_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('shift_group_id_seq', 12, true);


--
-- TOC entry 8043 (class 0 OID 0)
-- Dependencies: 2169
-- Name: shift_group_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('shift_group_id_seq0', 10, true);


--
-- TOC entry 8044 (class 0 OID 0)
-- Dependencies: 2217
-- Name: shift_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('shift_id_seq', 24, true);


--
-- TOC entry 8045 (class 0 OID 0)
-- Dependencies: 2174
-- Name: shift_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('shift_id_seq0', 16, true);


--
-- TOC entry 8046 (class 0 OID 0)
-- Dependencies: 2192
-- Name: test_c_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('test_c_id_seq0', 1, true);


--
-- TOC entry 8047 (class 0 OID 0)
-- Dependencies: 2229
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('type_id_seq', 18, true);


--
-- TOC entry 8048 (class 0 OID 0)
-- Dependencies: 2171
-- Name: type_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('type_id_seq0', 12, true);


--
-- TOC entry 8049 (class 0 OID 0)
-- Dependencies: 2219
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('user_id_seq', 27, true);


--
-- TOC entry 8050 (class 0 OID 0)
-- Dependencies: 2165
-- Name: user_id_seq0; Type: SEQUENCE SET; Schema: xu_xi_rd2; Owner: xu_xi
--

SELECT pg_catalog.setval('user_id_seq0', 22, true);


--
-- TOC entry 7776 (class 2606 OID 1244509)
-- Name: authority0 authority_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY authority0
    ADD CONSTRAINT authority_pkey PRIMARY KEY (id);


--
-- TOC entry 7802 (class 2606 OID 1248571)
-- Name: authority authority_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY authority
    ADD CONSTRAINT authority_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7798 (class 2606 OID 1248044)
-- Name: change_shift0 change_shift_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY change_shift0
    ADD CONSTRAINT change_shift_pkey PRIMARY KEY (id);


--
-- TOC entry 7810 (class 2606 OID 1248601)
-- Name: change_shift change_shift_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY change_shift
    ADD CONSTRAINT change_shift_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7796 (class 2606 OID 1247645)
-- Name: labor_law0 labor_law_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY labor_law0
    ADD CONSTRAINT labor_law_pkey PRIMARY KEY (id);


--
-- TOC entry 7812 (class 2606 OID 1248609)
-- Name: labor_law labor_law_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY labor_law
    ADD CONSTRAINT labor_law_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7784 (class 2606 OID 1247307)
-- Name: save_schedule0 save_schedule_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY save_schedule0
    ADD CONSTRAINT save_schedule_pkey PRIMARY KEY (id);


--
-- TOC entry 7814 (class 2606 OID 1248620)
-- Name: save_schedule save_schedule_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY save_schedule
    ADD CONSTRAINT save_schedule_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7829 (class 2606 OID 1259221)
-- Name: seckill_order seckill_order_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY seckill_order
    ADD CONSTRAINT seckill_order_pkey PRIMARY KEY (seckill_id, user_phone);


--
-- TOC entry 7827 (class 2606 OID 1259210)
-- Name: seckill seckill_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY seckill
    ADD CONSTRAINT seckill_pkey PRIMARY KEY (seckill_id);


--
-- TOC entry 7788 (class 2606 OID 1247315)
-- Name: shift_group0 shift_group_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group0
    ADD CONSTRAINT shift_group_pkey PRIMARY KEY (id);


--
-- TOC entry 7816 (class 2606 OID 1248628)
-- Name: shift_group shift_group_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group
    ADD CONSTRAINT shift_group_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7794 (class 2606 OID 1247358)
-- Name: shift0 shift_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift0
    ADD CONSTRAINT shift_pkey PRIMARY KEY (id);


--
-- TOC entry 7804 (class 2606 OID 1248580)
-- Name: shift shift_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift
    ADD CONSTRAINT shift_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7774 (class 2606 OID 1244493)
-- Name: test test_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- TOC entry 7790 (class 2606 OID 1247323)
-- Name: type0 type_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY type0
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);


--
-- TOC entry 7820 (class 2606 OID 1248636)
-- Name: type type_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY type
    ADD CONSTRAINT type_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7822 (class 2606 OID 1248640)
-- Name: type uk_3tg65hx29l2ser69ddfwvhy4h; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY type
    ADD CONSTRAINT uk_3tg65hx29l2ser69ddfwvhy4h UNIQUE (name);


--
-- TOC entry 7806 (class 2606 OID 1248667)
-- Name: shift uk_dk9vqmex41h1hbj8ewp63blw7; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift
    ADD CONSTRAINT uk_dk9vqmex41h1hbj8ewp63blw7 UNIQUE (name);


--
-- TOC entry 7818 (class 2606 OID 1248695)
-- Name: shift_group uk_e13363vkf2woo5lk0koxlu9ml; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group
    ADD CONSTRAINT uk_e13363vkf2woo5lk0koxlu9ml UNIQUE (name);


--
-- TOC entry 7778 (class 2606 OID 1247294)
-- Name: user0 uk_gj2fy3dcix7ph7k8684gka40c; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user0
    ADD CONSTRAINT uk_gj2fy3dcix7ph7k8684gka40c UNIQUE (name);


--
-- TOC entry 7786 (class 2606 OID 1247325)
-- Name: save_schedule0 uk_hgjhksuc1m291uflc1ax7x7y8; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY save_schedule0
    ADD CONSTRAINT uk_hgjhksuc1m291uflc1ax7x7y8 UNIQUE (name);


--
-- TOC entry 7780 (class 2606 OID 1247296)
-- Name: user0 uk_sb8bbouer5wak8vyiiy4pf2bx; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user0
    ADD CONSTRAINT uk_sb8bbouer5wak8vyiiy4pf2bx UNIQUE (username);


--
-- TOC entry 7792 (class 2606 OID 1247340)
-- Name: user_authority0 user_authority_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user_authority0
    ADD CONSTRAINT user_authority_pkey PRIMARY KEY (user_id, authority_id);


--
-- TOC entry 7800 (class 2606 OID 1248563)
-- Name: user_authority user_authority_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user_authority
    ADD CONSTRAINT user_authority_pkey1 PRIMARY KEY (user_id, authority_id);


--
-- TOC entry 7782 (class 2606 OID 1247292)
-- Name: user0 user_pkey; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user0
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 7808 (class 2606 OID 1248588)
-- Name: user user_pkey1; Type: CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey1 PRIMARY KEY (id);


--
-- TOC entry 7823 (class 1259 OID 1259213)
-- Name: idx_create_time; Type: INDEX; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE INDEX idx_create_time ON seckill USING btree (creat_time);


--
-- TOC entry 7824 (class 1259 OID 1259212)
-- Name: idx_end_time; Type: INDEX; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE INDEX idx_end_time ON seckill USING btree (end_time);


--
-- TOC entry 7825 (class 1259 OID 1259211)
-- Name: idx_start_time; Type: INDEX; Schema: xu_xi_rd2; Owner: xu_xi
--

CREATE INDEX idx_start_time ON seckill USING btree (start_time);


--
-- TOC entry 7831 (class 2606 OID 1247331)
-- Name: shift_group0 fk2f1gbl1fijlidljyu3vbu1rda; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group0
    ADD CONSTRAINT fk2f1gbl1fijlidljyu3vbu1rda FOREIGN KEY (type_id) REFERENCES type0(id);


--
-- TOC entry 7839 (class 2606 OID 1248651)
-- Name: shift_group fk2f1gbl1fijlidljyu3vbu1rda; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift_group
    ADD CONSTRAINT fk2f1gbl1fijlidljyu3vbu1rda FOREIGN KEY (type_id) REFERENCES type(id);


--
-- TOC entry 7830 (class 2606 OID 1247326)
-- Name: user0 fk555mrysh748xyw2vtn5lbasw8; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user0
    ADD CONSTRAINT fk555mrysh748xyw2vtn5lbasw8 FOREIGN KEY (type_id) REFERENCES type0(id);


--
-- TOC entry 7838 (class 2606 OID 1248646)
-- Name: user fk555mrysh748xyw2vtn5lbasw8; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT fk555mrysh748xyw2vtn5lbasw8 FOREIGN KEY (type_id) REFERENCES type(id);


--
-- TOC entry 7834 (class 2606 OID 1247359)
-- Name: shift0 fkeugei6ywnneer5it4k2tq8t92; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift0
    ADD CONSTRAINT fkeugei6ywnneer5it4k2tq8t92 FOREIGN KEY (shiftgroup_id) REFERENCES shift_group0(id);


--
-- TOC entry 7837 (class 2606 OID 1248641)
-- Name: shift fkeugei6ywnneer5it4k2tq8t92; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY shift
    ADD CONSTRAINT fkeugei6ywnneer5it4k2tq8t92 FOREIGN KEY (shiftgroup_id) REFERENCES shift_group(id);


--
-- TOC entry 7833 (class 2606 OID 1247341)
-- Name: user_authority0 fkgvxjs381k6f48d5d2yi11uh89; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user_authority0
    ADD CONSTRAINT fkgvxjs381k6f48d5d2yi11uh89 FOREIGN KEY (authority_id) REFERENCES authority0(id);


--
-- TOC entry 7836 (class 2606 OID 1248656)
-- Name: user_authority fkgvxjs381k6f48d5d2yi11uh89; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user_authority
    ADD CONSTRAINT fkgvxjs381k6f48d5d2yi11uh89 FOREIGN KEY (authority_id) REFERENCES authority(id);


--
-- TOC entry 7832 (class 2606 OID 1247346)
-- Name: user_authority0 fkpqlsjpkybgos9w2svcri7j8xy; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user_authority0
    ADD CONSTRAINT fkpqlsjpkybgos9w2svcri7j8xy FOREIGN KEY (user_id) REFERENCES user0(id);


--
-- TOC entry 7835 (class 2606 OID 1248661)
-- Name: user_authority fkpqlsjpkybgos9w2svcri7j8xy; Type: FK CONSTRAINT; Schema: xu_xi_rd2; Owner: xu_xi
--

ALTER TABLE ONLY user_authority
    ADD CONSTRAINT fkpqlsjpkybgos9w2svcri7j8xy FOREIGN KEY (user_id) REFERENCES "user"(id);


-- Completed on 2019-05-17 14:50:09

--
-- PostgreSQL database dump complete
--

