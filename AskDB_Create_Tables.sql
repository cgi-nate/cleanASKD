--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3

-- Started on 2024-09-03 12:08:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16639)
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    reporting_date timestamp without time zone NOT NULL,
    account_id integer NOT NULL,
    account_classification text,
    account_source text,
    account_status text,
    prin_outstanding_balance double precision
);


ALTER TABLE public.account OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16665)
-- Name: account_x_customer_rltnp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_x_customer_rltnp (
    reporting_date timestamp without time zone NOT NULL,
    account_id integer NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.account_x_customer_rltnp OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16646)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    reporting_date timestamp without time zone NOT NULL,
    customer_id integer NOT NULL,
    customer_type text,
    cntry_of_ctnzshp text,
    us_resncy_state text,
    wh8_ind text,
    parent_cust_id integer,
    birth_date timestamp without time zone
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16680)
-- Name: customer_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_details (
    customer_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    add_ln_1 character varying(100),
    add_ln_2 character varying(100),
    city character varying(50),
    state character varying(2),
    zip character varying(10),
    ssn character varying(15),
    home_phone character varying(15),
    mobile_phone character varying(15)
);


ALTER TABLE public.customer_details OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16653)
-- Name: customer_idntfctn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_idntfctn (
    reporting_date timestamp without time zone,
    customer_id integer,
    idntfctn_type text,
    idntfctn_nmbr double precision
);


ALTER TABLE public.customer_idntfctn OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16658)
-- Name: deposit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deposit (
    reporting_date timestamp without time zone NOT NULL,
    account_id integer NOT NULL,
    account_source text,
    account_status text,
    avg_balance_amt double precision,
    opening_dp_amt integer,
    dp_ar_type_desc text,
    funds_own_type_desc text
);


ALTER TABLE public.deposit OWNER TO postgres;

--
-- TOC entry 3377 (class 0 OID 16639)
-- Dependencies: 215
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111111, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 10000.5);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222222, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 6000.78);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333333, 'COMMERCIAL LOAN', 'ABS', 'CLOSE', 2001.09);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 44444444, 'COMMERCIAL LOAN', 'ABS', 'CLOSE', 1998.75);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 55555555, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 2001);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 66666666, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 4801.5);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 77777777, 'COMMERCIAL LOAN', 'DWM', 'OPEN', 7602);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 88888888, 'COMMERCIAL LOAN', 'DWM', 'OPEN', 10402.95);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 99999999, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 1877.67);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111112, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 20098.89);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111113, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 7800.1);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111114, 'COMMERCIAL LOAN', 'ELM', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111115, 'COMMERCIAL LOAN', 'FPL', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111116, 'COMMERCIAL LOAN', 'FPL', 'OPEN', 7205.8);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111117, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 48005.87);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111118, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 21005.89);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 11111119, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 89005.78);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222223, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 2005.45);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222224, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 15600.56);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222225, 'MORTGAGE', 'CEND', 'OPEN', 340045.12);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222226, 'MORTGAGE', 'CEND', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222227, 'MORTGAGE', 'HLS', 'CLOSE', 2308.55);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222228, 'MORTGAGE', 'HLS', 'OPEN', 52300.45);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 22222229, 'MORTGAGE', 'MSP', 'OPEN', 2307.88);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333334, 'MORTGAGE', 'MSP', 'OPEN', 4209.23);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333335, 'MORTGAGE', 'MSP', 'OPEN', 1499.22);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333336, 'MORTGAGE', 'MSP', 'OPEN', 14894.99);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333337, 'MORTGAGE', 'WAMU', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333338, 'MORTGAGE', 'WAMU', 'OPEN', 2324.12);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-06-30 00:00:00', 33333339, 'MORTGAGE', 'WAMU', 'OPEN', 545.2);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111111, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 10000.5);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222222, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 6000.78);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333333, 'COMMERCIAL LOAN', 'ABS', 'CLOSE', 2001.09);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 44444444, 'COMMERCIAL LOAN', 'ABS', 'CLOSE', 1998.75);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 55555555, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 2001);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 66666666, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 4801.5);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 77777777, 'COMMERCIAL LOAN', 'DWM', 'OPEN', 7602);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 88888888, 'COMMERCIAL LOAN', 'DWM', 'OPEN', 10402.95);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 99999999, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 1877.67);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111112, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 20098.89);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111113, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 7800.1);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111114, 'COMMERCIAL LOAN', 'ELM', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111115, 'COMMERCIAL LOAN', 'FPL', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111116, 'COMMERCIAL LOAN', 'FPL', 'OPEN', 7205.8);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111117, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 48005.87);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111118, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 21005.89);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 11111119, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 89005.78);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222223, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 2005.45);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222224, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 15600.56);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222225, 'MORTGAGE', 'CEND', 'OPEN', 340045.12);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222226, 'MORTGAGE', 'CEND', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222227, 'MORTGAGE', 'HLS', 'CLOSE', 2308.55);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222228, 'MORTGAGE', 'HLS', 'OPEN', 52300.45);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 22222229, 'MORTGAGE', 'MSP', 'OPEN', 2307.88);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333334, 'MORTGAGE', 'MSP', 'OPEN', 4209.23);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333335, 'MORTGAGE', 'MSP', 'OPEN', 1499.22);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333336, 'MORTGAGE', 'MSP', 'OPEN', 14894.99);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333337, 'MORTGAGE', 'WAMU', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333338, 'MORTGAGE', 'WAMU', 'OPEN', 2324.12);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-05-31 00:00:00', 33333339, 'MORTGAGE', 'WAMU', 'OPEN', 545.2);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111111, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 10000.5);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222222, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 6000.78);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333333, 'COMMERCIAL LOAN', 'ABS', 'CLOSE', 2001.09);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 44444444, 'COMMERCIAL LOAN', 'ABS', 'CLOSE', 1998.75);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 55555555, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 2001);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 66666666, 'COMMERCIAL LOAN', 'ABS', 'OPEN', 4801.5);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 77777777, 'COMMERCIAL LOAN', 'DWM', 'OPEN', 7602);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 88888888, 'COMMERCIAL LOAN', 'DWM', 'OPEN', 10402.95);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 99999999, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 1877.67);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111112, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 20098.89);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111113, 'COMMERCIAL LOAN', 'ELM', 'OPEN', 7800.1);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111114, 'COMMERCIAL LOAN', 'ELM', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111115, 'COMMERCIAL LOAN', 'FPL', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111116, 'COMMERCIAL LOAN', 'FPL', 'OPEN', 7205.8);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111117, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 48005.87);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111118, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 21005.89);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 11111119, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 89005.78);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222223, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 2005.45);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222224, 'COMMERCIAL LOAN', 'GTS', 'OPEN', 15600.56);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222225, 'MORTGAGE', 'CEND', 'OPEN', 340045.12);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222226, 'MORTGAGE', 'CEND', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222227, 'MORTGAGE', 'HLS', 'CLOSE', 2308.55);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222228, 'MORTGAGE', 'HLS', 'OPEN', 52300.45);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 22222229, 'MORTGAGE', 'MSP', 'OPEN', 2307.88);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333334, 'MORTGAGE', 'MSP', 'OPEN', 4209.23);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333335, 'MORTGAGE', 'MSP', 'OPEN', 1499.22);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333336, 'MORTGAGE', 'MSP', 'OPEN', 14894.99);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333337, 'MORTGAGE', 'WAMU', 'CLOSE', 0);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333338, 'MORTGAGE', 'WAMU', 'OPEN', 2324.12);
INSERT INTO public.account (reporting_date, account_id, account_classification, account_source, account_status, prin_outstanding_balance) VALUES ('2024-04-30 00:00:00', 33333339, 'MORTGAGE', 'WAMU', 'OPEN', 545.2);


--
-- TOC entry 3381 (class 0 OID 16665)
-- Dependencies: 219
-- Data for Name: account_x_customer_rltnp; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111111, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222222, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333333, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 44444444, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 55555555, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 66666666, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 77777777, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 88888888, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 99999999, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111112, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111113, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111114, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111115, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111116, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111117, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111118, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 11111119, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222223, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222224, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222225, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222226, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222227, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222228, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 22222229, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333334, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333335, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333336, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333337, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333338, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 33333339, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444411, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444412, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444413, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444414, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444415, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444416, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-06-30 00:00:00', 444444417, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111111, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222222, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333333, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 44444444, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 55555555, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 66666666, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 77777777, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 88888888, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 99999999, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111112, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111113, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111114, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111115, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111116, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111117, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111118, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 11111119, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222223, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222224, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222225, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222226, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222227, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222228, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 22222229, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333334, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333335, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333336, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333337, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333338, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 33333339, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444411, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444412, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444413, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444414, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444415, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444416, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-05-31 00:00:00', 444444417, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111111, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222222, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333333, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 44444444, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 55555555, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 66666666, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 77777777, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 88888888, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 99999999, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111112, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111113, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111114, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111115, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111116, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111117, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111118, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 11111119, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222223, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222224, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222225, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222226, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222227, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222228, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 22222229, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333334, 2102);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333335, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333336, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333337, 1011);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333338, 1013);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 33333339, 1015);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444411, 1017);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444412, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444413, 2101);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444414, 2103);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444415, 2104);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444416, 1019);
INSERT INTO public.account_x_customer_rltnp (reporting_date, account_id, customer_id) VALUES ('2024-04-30 00:00:00', 444444417, 2101);


--
-- TOC entry 3378 (class 0 OID 16646)
-- Dependencies: 216
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 1011, 'ORGANIZATION', 'USA', 'US', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 1013, 'ORGANIZATION', 'USA', 'NRA', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 1015, 'ORGANIZATION', 'USA', 'REF', NULL, 3211, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 1017, 'INDIVIDUAL', 'USA', NULL, NULL, 6216, '1995-09-03 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 1019, 'INDIVIDUAL', 'USA', NULL, NULL, 7216, '1955-03-04 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 2101, 'INDIVIDUAL', 'USA', 'US', NULL, 7216, '1980-06-05 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 2102, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 2103, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 2104, 'ORGANIZATION', 'USA', 'RA', NULL, 2104, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 4251, 'ORGANIZATION', 'USA', 'US', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 3211, 'ORGANIZATION', 'USA', 'REF', NULL, 3211, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 6216, 'INDIVIDUAL', 'USA', NULL, NULL, 6216, '1985-02-08 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 7216, 'INDIVIDUAL', 'USA', NULL, NULL, 7216, '1965-02-01 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-06-30 00:00:00', 7256, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 1011, 'ORGANIZATION', 'USA', 'US', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 1013, 'ORGANIZATION', 'USA', 'NRA', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 1015, 'ORGANIZATION', 'USA', 'REF', NULL, 3211, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 1017, 'INDIVIDUAL', 'USA', NULL, NULL, 6216, '1995-09-03 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 1019, 'INDIVIDUAL', 'USA', NULL, NULL, 7216, '1955-03-04 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 2101, 'INDIVIDUAL', 'USA', 'US', NULL, 7216, '1980-06-05 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 2102, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 2103, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 2104, 'ORGANIZATION', 'USA', 'RA', NULL, 2104, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 4251, 'ORGANIZATION', 'USA', 'US', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 3211, 'ORGANIZATION', 'USA', 'REF', NULL, 3211, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 6216, 'INDIVIDUAL', 'USA', NULL, NULL, 6216, '1985-02-08 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 7216, 'INDIVIDUAL', 'USA', NULL, NULL, 7216, '1965-02-01 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-05-31 00:00:00', 7256, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 1011, 'ORGANIZATION', 'USA', 'US', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 1013, 'ORGANIZATION', 'USA', 'NRA', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 1015, 'ORGANIZATION', 'USA', 'REF', NULL, 3211, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 1017, 'INDIVIDUAL', 'USA', NULL, NULL, 6216, '1995-09-03 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 1019, 'INDIVIDUAL', 'USA', NULL, NULL, 7216, '1955-03-04 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 2101, 'INDIVIDUAL', 'USA', 'US', NULL, 7216, '1980-06-05 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 2102, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 2103, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 2104, 'ORGANIZATION', 'USA', 'RA', NULL, 2104, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 4251, 'ORGANIZATION', 'USA', 'US', 'Y', 4251, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 3211, 'ORGANIZATION', 'USA', 'REF', NULL, 3211, NULL);
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 6216, 'INDIVIDUAL', 'USA', NULL, NULL, 6216, '1985-02-08 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 7216, 'INDIVIDUAL', 'USA', NULL, NULL, 7216, '1965-02-01 00:00:00');
INSERT INTO public.customer (reporting_date, customer_id, customer_type, cntry_of_ctnzshp, us_resncy_state, wh8_ind, parent_cust_id, birth_date) VALUES ('2024-04-30 00:00:00', 7256, 'ORGANIZATION', 'USA', 'NRA', NULL, 7256, NULL);


--
-- TOC entry 3382 (class 0 OID 16680)
-- Dependencies: 220
-- Data for Name: customer_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (1017, 'John', NULL, '12534 Coolie Rd.', NULL, 'Ashtabula', 'OH', '12345', '546789-3333', '609-645-4573', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (1019, 'Rahul', 'Bishnoi', '439 lovely ct.', 'Apt#234', 'Strongsville', 'OH', '44578', NULL, NULL, NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (1021, 'Michaelangelo', 'Roman Shrute', NULL, 'H.No.432', 'Cleveland', NULL, '5567', '890-456-4321', '713-098-4321', '432');
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (2100, 'Kelley', 'Gunbag', 'Freeway Street', '523', 'Lorain', 'OH', '67890', '456-678-1289', '213-213-4321', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (2101, 'Kelley', 'Gunbag', 'Freeway Street', '523', 'Lorain', 'OH', '67890', '456-67', '213-213-4321', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (1011, 'Tech Innovators Inc.', NULL, '1234 Innovation Dr.', NULL, 'Silicon Valley', 'CA', '94043', NULL, '650-555-1234', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (1013, 'Health Solutions LLC', NULL, '789 Health St.', NULL, 'Boston', 'MA', '02110', NULL, '617-555-5678', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (1015, 'EduWorks Co.', NULL, '456 Learning Way', NULL, 'Austin', 'TX', '73301', NULL, '512-555-7890', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (2102, 'Green Energy Corp.', NULL, '321 Eco Blvd.', 'Suite 200', 'Denver', 'CO', '80202', '99-1234567', '303-555-1234', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (2103, 'Blue Ocean Inc.', NULL, '789 Marine Dr.', 'Floor 5', 'Miami', 'FL', '33101', '88-9876543', '305-555-9876', NULL);
INSERT INTO public.customer_details (customer_id, first_name, last_name, add_ln_1, add_ln_2, city, state, zip, ssn, home_phone, mobile_phone) VALUES (2104, 'Tech Pioneers Ltd.', NULL, '456 Future St.', 'Unit 101', 'Seattle', 'WA', '98101', '77-1239876', '206-555-8765', NULL);


--
-- TOC entry 3379 (class 0 OID 16653)
-- Dependencies: 217
-- Data for Name: customer_idntfctn; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1011, 'EIN', 165212189);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1011, 'ITIN', 123456789);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1013, 'EIN', 11111111);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1013, 'ITIN', 234123657);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1015, 'EIN', 2222222);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1017, 'SSN', 333333333);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1017, 'ITIN', 231654782);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1019, 'SSN', NULL);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 2101, 'EIN', 555111666);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 2102, 'EIN', 665778888);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 2103, 'EIN', 776446110);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 2104, 'EIN', 887113332);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 4251, 'EIN', 121111999);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 3211, 'EIN', 231876213);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 6216, 'SSN', 342640427);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 7216, 'SSN', 453404641);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 7256, 'EIN', 564168855);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1011, 'EIN', 165212189);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1011, 'ITIN', 123456789);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1013, 'EIN', 11111111);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1013, 'ITIN', 234123657);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1015, 'EIN', 2222222);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1017, 'SSN', 333333333);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1017, 'ITIN', 231654782);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1019, 'SSN', NULL);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 2101, 'EIN', 555111666);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 2102, 'EIN', 665778888);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 2103, 'EIN', 776446110);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 2104, 'EIN', 887113332);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 4251, 'EIN', 121111999);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 3211, 'EIN', 231876213);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 6216, 'SSN', 342640427);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 7216, 'SSN', 453404641);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 7256, 'EIN', 564168855);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1011, 'EIN', 165212189);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1011, 'ITIN', 123456789);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1013, 'EIN', 11111111);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1013, 'ITIN', 234123657);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1015, 'EIN', 2222222);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1017, 'SSN', 333333333);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1017, 'ITIN', 231654782);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1019, 'SSN', NULL);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 2101, 'EIN', 555111666);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 2102, 'EIN', 665778888);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 2103, 'EIN', 776446110);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 2104, 'EIN', 887113332);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 4251, 'EIN', 121111999);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 3211, 'EIN', 231876213);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 6216, 'SSN', 342640427);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 7216, 'SSN', 453404641);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 7256, 'EIN', 564168855);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-06-30 00:00:00', 1019, 'ITIN', NULL);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-05-31 00:00:00', 1019, 'ITIN', NULL);
INSERT INTO public.customer_idntfctn (reporting_date, customer_id, idntfctn_type, idntfctn_nmbr) VALUES ('2024-04-30 00:00:00', 1019, 'ITIN', NULL);


--
-- TOC entry 3380 (class 0 OID 16658)
-- Dependencies: 218
-- Data for Name: deposit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444411, 'COR', 'OPEN', 6218.28, 500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444412, 'COR', 'OPEN', 7500.5, 10000, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444413, 'COR', 'OPEN', 8782.72, 19500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444414, 'COR', 'OPEN', 10064.94, 29000, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444415, 'COR', 'OPEN', 11347.16, 38500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444416, 'COR', 'OPEN', 12629.38, 48000, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444417, 'COR', 'OPEN', 13911.6, 57500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444418, 'COR', 'OPEN', 15193.82, 67000, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-06-30 00:00:00', 444444419, 'COR', 'OPEN', 16476.04, 76500, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444411, 'COR', 'OPEN', 6218.28, 500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444412, 'COR', 'OPEN', 7500.5, 10000, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444413, 'COR', 'OPEN', 8782.72, 19500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444414, 'COR', 'OPEN', 10064.94, 29000, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444415, 'COR', 'OPEN', 11347.16, 38500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444416, 'COR', 'OPEN', 12629.38, 48000, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444417, 'COR', 'OPEN', 13911.6, 57500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444418, 'COR', 'OPEN', 15193.82, 67000, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-05-31 00:00:00', 444444419, 'COR', 'OPEN', 16476.04, 76500, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444411, 'COR', 'OPEN', 6218.28, 500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444412, 'COR', 'OPEN', 7500.5, 10000, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444413, 'COR', 'OPEN', 8782.72, 19500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444414, 'COR', 'OPEN', 10064.94, 29000, 'DEMAND DEPOSIT', 'COMMERCIAL');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444415, 'COR', 'OPEN', 11347.16, 38500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444416, 'COR', 'OPEN', 12629.38, 48000, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444417, 'COR', 'OPEN', 13911.6, 57500, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444418, 'COR', 'OPEN', 15193.82, 67000, 'DEMAND DEPOSIT', 'INDIVIDUAL (PERSONAL)');
INSERT INTO public.deposit (reporting_date, account_id, account_source, account_status, avg_balance_amt, opening_dp_amt, dp_ar_type_desc, funds_own_type_desc) VALUES ('2024-04-30 00:00:00', 444444419, 'COR', 'OPEN', 16476.04, 76500, 'DEMAND DEPOSIT', 'COMMERCIAL');


--
-- TOC entry 3223 (class 2606 OID 16645)
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (reporting_date, account_id);


--
-- TOC entry 3229 (class 2606 OID 16669)
-- Name: account_x_customer_rltnp account_x_customer_rltnp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_x_customer_rltnp
    ADD CONSTRAINT account_x_customer_rltnp_pkey PRIMARY KEY (reporting_date, account_id, customer_id);


--
-- TOC entry 3231 (class 2606 OID 16684)
-- Name: customer_details customer_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_details
    ADD CONSTRAINT customer_details_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3225 (class 2606 OID 16652)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (reporting_date, customer_id);


--
-- TOC entry 3227 (class 2606 OID 16664)
-- Name: deposit deposit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deposit
    ADD CONSTRAINT deposit_pkey PRIMARY KEY (reporting_date, account_id);


--
-- TOC entry 3233 (class 2606 OID 16670)
-- Name: account_x_customer_rltnp customer_account_x_customer_rltnp_customer_id_reporting_date_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_x_customer_rltnp
    ADD CONSTRAINT customer_account_x_customer_rltnp_customer_id_reporting_date_fk FOREIGN KEY (customer_id, reporting_date) REFERENCES public.customer(customer_id, reporting_date);


--
-- TOC entry 3232 (class 2606 OID 16675)
-- Name: customer_idntfctn customer_idntfctn_customer_customer_id_reporting_date_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_idntfctn
    ADD CONSTRAINT customer_idntfctn_customer_customer_id_reporting_date_fk FOREIGN KEY (customer_id, reporting_date) REFERENCES public.customer(customer_id, reporting_date);


-- Completed on 2024-09-03 12:08:50

--
-- PostgreSQL database dump complete
--
