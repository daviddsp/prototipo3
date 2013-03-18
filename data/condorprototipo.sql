--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.8
-- Dumped by pg_dump version 9.1.8
-- Started on 2013-03-16 20:36:44 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 29553)
-- Name: condor; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA condor;


ALTER SCHEMA condor OWNER TO postgres;

--
-- TOC entry 211 (class 3079 OID 11644)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2131 (class 0 OID 0)
-- Dependencies: 211
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = condor, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 190 (class 1259 OID 29610)
-- Dependencies: 7
-- Name: contenido; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE contenido (
    id_contenido integer NOT NULL,
    nb_contenido character varying(80) NOT NULL,
    des_contenido character varying(200) NOT NULL,
    con_contenido character varying(2000) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE condor.contenido OWNER TO postgres;

--
-- TOC entry 2132 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN contenido.id_contenido; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN contenido.id_contenido IS 'ID del contenido';


--
-- TOC entry 2133 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN contenido.nb_contenido; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN contenido.nb_contenido IS 'Nombre del contenido';


--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN contenido.des_contenido; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN contenido.des_contenido IS 'Descripción del contenido';


--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN contenido.con_contenido; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN contenido.con_contenido IS 'Aquí se agregan los distintos contenido asociados a la lección';


--
-- TOC entry 2136 (class 0 OID 0)
-- Dependencies: 190
-- Name: COLUMN contenido.id_leccion; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN contenido.id_leccion IS 'ID de lecciones';


--
-- TOC entry 189 (class 1259 OID 29608)
-- Dependencies: 190 7
-- Name: contenido_id_contenido_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE contenido_id_contenido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.contenido_id_contenido_seq OWNER TO postgres;

--
-- TOC entry 2137 (class 0 OID 0)
-- Dependencies: 189
-- Name: contenido_id_contenido_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE contenido_id_contenido_seq OWNED BY contenido.id_contenido;


--
-- TOC entry 162 (class 1259 OID 29554)
-- Dependencies: 7
-- Name: contenido_id_leccion_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE contenido_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.contenido_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 29627)
-- Dependencies: 7
-- Name: ejemplos; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE ejemplos (
    id_ejemplos integer NOT NULL,
    nb_ejemplos character varying(80) NOT NULL,
    des_ejemplos character varying(200) NOT NULL,
    ej_ejemplos character varying(1000) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE condor.ejemplos OWNER TO postgres;

--
-- TOC entry 2138 (class 0 OID 0)
-- Dependencies: 192
-- Name: COLUMN ejemplos.id_ejemplos; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_ejemplos IS 'ID de los ejemplos';


--
-- TOC entry 2139 (class 0 OID 0)
-- Dependencies: 192
-- Name: COLUMN ejemplos.nb_ejemplos; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejemplos.nb_ejemplos IS 'Nombre de los ejemplos';


--
-- TOC entry 2140 (class 0 OID 0)
-- Dependencies: 192
-- Name: COLUMN ejemplos.des_ejemplos; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejemplos.des_ejemplos IS 'Descripción de los ejemplos';


--
-- TOC entry 2141 (class 0 OID 0)
-- Dependencies: 192
-- Name: COLUMN ejemplos.ej_ejemplos; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejemplos.ej_ejemplos IS 'Ejemplos asociados a la lecciones';


--
-- TOC entry 2142 (class 0 OID 0)
-- Dependencies: 192
-- Name: COLUMN ejemplos.id_leccion; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_leccion IS 'ID de lecciones';


--
-- TOC entry 191 (class 1259 OID 29625)
-- Dependencies: 7 192
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE ejemplos_id_ejemplos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.ejemplos_id_ejemplos_seq OWNER TO postgres;

--
-- TOC entry 2143 (class 0 OID 0)
-- Dependencies: 191
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE ejemplos_id_ejemplos_seq OWNED BY ejemplos.id_ejemplos;


--
-- TOC entry 163 (class 1259 OID 29556)
-- Dependencies: 7
-- Name: ejemplos_id_leccion_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE ejemplos_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.ejemplos_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 29644)
-- Dependencies: 7
-- Name: ejercicios; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE ejercicios (
    id_ejercicios integer NOT NULL,
    nb_ejercicios character varying(100) NOT NULL,
    des_ejercicio character varying(1000) NOT NULL,
    ej_ejercicios character varying(1000) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE condor.ejercicios OWNER TO postgres;

--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 194
-- Name: COLUMN ejercicios.id_ejercicios; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_ejercicios IS 'ID de ejercicios';


--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 194
-- Name: COLUMN ejercicios.nb_ejercicios; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejercicios.nb_ejercicios IS 'nombre de los ejercicios';


--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 194
-- Name: COLUMN ejercicios.des_ejercicio; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejercicios.des_ejercicio IS 'Descripción de los ejercicios';


--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 194
-- Name: COLUMN ejercicios.ej_ejercicios; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejercicios.ej_ejercicios IS 'Ejercicios relacionado con la lecciones';


--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 194
-- Name: COLUMN ejercicios.id_leccion; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_leccion IS 'ID de lecciones';


--
-- TOC entry 193 (class 1259 OID 29642)
-- Dependencies: 7 194
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE ejercicios_id_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.ejercicios_id_ejercicios_seq OWNER TO postgres;

--
-- TOC entry 2149 (class 0 OID 0)
-- Dependencies: 193
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE ejercicios_id_ejercicios_seq OWNED BY ejercicios.id_ejercicios;


--
-- TOC entry 164 (class 1259 OID 29558)
-- Dependencies: 7
-- Name: ejercicios_id_leccion_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE ejercicios_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.ejercicios_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 29675)
-- Dependencies: 7
-- Name: eva_preguntas; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE eva_preguntas (
    id_eva_preguntas integer NOT NULL,
    val_eva_preguntas character varying(2) NOT NULL,
    preg_eva_pregunta character varying(100) NOT NULL,
    nb_evaluaciones character varying(100) NOT NULL
);


ALTER TABLE condor.eva_preguntas OWNER TO postgres;

--
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN eva_preguntas.id_eva_preguntas; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_preguntas.id_eva_preguntas IS 'ID de las preguntas';


--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN eva_preguntas.val_eva_preguntas; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_preguntas.val_eva_preguntas IS 'Valor de las evaluaciones pueden llegar hasta 20 puntos desde 0 a 20 ptos';


--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN eva_preguntas.preg_eva_pregunta; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_preguntas.preg_eva_pregunta IS 'Preguntas de las evaluaciones';


--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN eva_preguntas.nb_evaluaciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_preguntas.nb_evaluaciones IS 'Nombre de las evaluaciones';


--
-- TOC entry 197 (class 1259 OID 29673)
-- Dependencies: 198 7
-- Name: eva_preguntas_id_eva_preguntas_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE eva_preguntas_id_eva_preguntas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.eva_preguntas_id_eva_preguntas_seq OWNER TO postgres;

--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 197
-- Name: eva_preguntas_id_eva_preguntas_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE eva_preguntas_id_eva_preguntas_seq OWNED BY eva_preguntas.id_eva_preguntas;


--
-- TOC entry 167 (class 1259 OID 29564)
-- Dependencies: 7
-- Name: eva_preguntas_id_evaluaciones_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE eva_preguntas_id_evaluaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.eva_preguntas_id_evaluaciones_seq OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 29689)
-- Dependencies: 7
-- Name: eva_respuestas; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE eva_respuestas (
    id_eva_respuesta integer NOT NULL,
    val_eva_respuesta character varying(2) NOT NULL,
    rp_eva_respuesta character varying(100) NOT NULL,
    tp_eva_respuesta character(1) NOT NULL,
    val_eva_preguntas character varying(2) NOT NULL
);


ALTER TABLE condor.eva_respuestas OWNER TO postgres;

--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN eva_respuestas.id_eva_respuesta; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_respuestas.id_eva_respuesta IS 'ID de la repuesta a la pregunta de la evaluación';


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN eva_respuestas.val_eva_respuesta; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_respuestas.val_eva_respuesta IS 'valor de la respuesta';


--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN eva_respuestas.rp_eva_respuesta; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_respuestas.rp_eva_respuesta IS 'Respuesta de la pregunta';


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN eva_respuestas.tp_eva_respuesta; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_respuestas.tp_eva_respuesta IS 'El tipo de respuesta esto quiere decir si es (V) verdadera o (F) falso.';


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN eva_respuestas.val_eva_preguntas; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN eva_respuestas.val_eva_preguntas IS 'Valor de las evaluaciones pueden llegar hasta 20 puntos desde 0 a 20 ptos';


--
-- TOC entry 168 (class 1259 OID 29566)
-- Dependencies: 7
-- Name: eva_respuestas_id_eva_preguntas_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE eva_respuestas_id_eva_preguntas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.eva_respuestas_id_eva_preguntas_seq OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 29687)
-- Dependencies: 200 7
-- Name: eva_respuestas_id_eva_respuesta_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE eva_respuestas_id_eva_respuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.eva_respuestas_id_eva_respuesta_seq OWNER TO postgres;

--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 199
-- Name: eva_respuestas_id_eva_respuesta_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE eva_respuestas_id_eva_respuesta_seq OWNED BY eva_respuestas.id_eva_respuesta;


--
-- TOC entry 196 (class 1259 OID 29661)
-- Dependencies: 7
-- Name: evaluaciones; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE evaluaciones (
    id_evaluaciones integer NOT NULL,
    nb_evaluaciones character varying(100) NOT NULL,
    des_evaluaciones character varying(200) NOT NULL,
    id_tema integer NOT NULL,
    nb_usuario character varying(80) NOT NULL
);


ALTER TABLE condor.evaluaciones OWNER TO postgres;

--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN evaluaciones.id_evaluaciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN evaluaciones.id_evaluaciones IS 'ID de las evaluaciones';


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN evaluaciones.nb_evaluaciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN evaluaciones.nb_evaluaciones IS 'Nombre de las evaluaciones';


--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN evaluaciones.des_evaluaciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN evaluaciones.des_evaluaciones IS 'Descripción de las evaluaciones';


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN evaluaciones.id_tema; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN evaluaciones.id_tema IS 'ID del tema';


--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN evaluaciones.nb_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN evaluaciones.nb_usuario IS 'nombre del usuario a registrarse';


--
-- TOC entry 195 (class 1259 OID 29659)
-- Dependencies: 7 196
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_evaluaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.evaluaciones_id_evaluaciones_seq OWNER TO postgres;

--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 195
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE evaluaciones_id_evaluaciones_seq OWNED BY evaluaciones.id_evaluaciones;


--
-- TOC entry 165 (class 1259 OID 29560)
-- Dependencies: 7
-- Name: evaluaciones_id_tema_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_tema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.evaluaciones_id_tema_seq OWNER TO postgres;

--
-- TOC entry 166 (class 1259 OID 29562)
-- Dependencies: 7
-- Name: evaluaciones_id_usuario_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.evaluaciones_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 29701)
-- Dependencies: 7
-- Name: freferencias; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE freferencias (
    id_freferencias integer NOT NULL,
    nb_freferencias character varying(80) NOT NULL,
    des_freferencias character varying(100) NOT NULL,
    fr_freferencias character varying(100) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE condor.freferencias OWNER TO postgres;

--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN freferencias.id_freferencias; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN freferencias.id_freferencias IS 'ID de fuentes de referencias';


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN freferencias.nb_freferencias; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN freferencias.nb_freferencias IS 'nombre de la fuente de referencias';


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN freferencias.des_freferencias; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN freferencias.des_freferencias IS 'Descripción de la fuente de referencias ';


--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN freferencias.fr_freferencias; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN freferencias.fr_freferencias IS 'Fuentes de referencia azociada a la lecciones';


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN freferencias.id_leccion; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN freferencias.id_leccion IS 'ID de lecciones';


--
-- TOC entry 201 (class 1259 OID 29699)
-- Dependencies: 202 7
-- Name: freferencias_id_freferencias_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE freferencias_id_freferencias_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.freferencias_id_freferencias_seq OWNER TO postgres;

--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 201
-- Name: freferencias_id_freferencias_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE freferencias_id_freferencias_seq OWNED BY freferencias.id_freferencias;


--
-- TOC entry 169 (class 1259 OID 29568)
-- Dependencies: 7
-- Name: freferencias_id_leccion_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE freferencias_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.freferencias_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 29715)
-- Dependencies: 7
-- Name: lecciones; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE lecciones (
    id_leccion integer NOT NULL,
    nb_leccion character varying(50) NOT NULL,
    des_lecciones character varying(500) NOT NULL,
    con_lecciones character varying(1000) NOT NULL,
    id_tema integer NOT NULL
);


ALTER TABLE condor.lecciones OWNER TO postgres;

--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN lecciones.id_leccion; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_leccion IS 'ID de lecciones';


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN lecciones.nb_leccion; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN lecciones.nb_leccion IS 'nombre de la lección';


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN lecciones.des_lecciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN lecciones.des_lecciones IS 'Descripción de las lecciones
';


--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN lecciones.con_lecciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN lecciones.con_lecciones IS 'contenido de las lecciones';


--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN lecciones.id_tema; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_tema IS 'ID del tema';


--
-- TOC entry 203 (class 1259 OID 29713)
-- Dependencies: 7 204
-- Name: lecciones_id_leccion_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE lecciones_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.lecciones_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 203
-- Name: lecciones_id_leccion_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE lecciones_id_leccion_seq OWNED BY lecciones.id_leccion;


--
-- TOC entry 170 (class 1259 OID 29570)
-- Dependencies: 7
-- Name: lecciones_id_tema_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE lecciones_id_tema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.lecciones_id_tema_seq OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 29732)
-- Dependencies: 7
-- Name: resultados; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE resultados (
    id_resultados_evaluaciones integer NOT NULL,
    nb_evaluaciones character varying(100) NOT NULL,
    val_eva_respuesta character varying(2) NOT NULL,
    nb_usuario character varying(80) NOT NULL
);


ALTER TABLE condor.resultados OWNER TO postgres;

--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN resultados.id_resultados_evaluaciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN resultados.id_resultados_evaluaciones IS 'ID de los resultados de las evaluaciones';


--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN resultados.nb_evaluaciones; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN resultados.nb_evaluaciones IS 'Nombre de las evaluaciones';


--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN resultados.val_eva_respuesta; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN resultados.val_eva_respuesta IS 'valor de la respuesta';


--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN resultados.nb_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN resultados.nb_usuario IS 'nombre del usuario a registrarse';


--
-- TOC entry 172 (class 1259 OID 29574)
-- Dependencies: 7
-- Name: resultados_id_eva_preguntas_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE resultados_id_eva_preguntas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.resultados_id_eva_preguntas_seq OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 29576)
-- Dependencies: 7
-- Name: resultados_id_eva_respuesta_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE resultados_id_eva_respuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.resultados_id_eva_respuesta_seq OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 29572)
-- Dependencies: 7
-- Name: resultados_id_evaluaciones_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE resultados_id_evaluaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.resultados_id_evaluaciones_seq OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 29730)
-- Dependencies: 7 206
-- Name: resultados_id_resultados_evaluaciones_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE resultados_id_resultados_evaluaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.resultados_id_resultados_evaluaciones_seq OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 205
-- Name: resultados_id_resultados_evaluaciones_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE resultados_id_resultados_evaluaciones_seq OWNED BY resultados.id_resultados_evaluaciones;


--
-- TOC entry 174 (class 1259 OID 29578)
-- Dependencies: 7
-- Name: resultados_id_usuario_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE resultados_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.resultados_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 29744)
-- Dependencies: 7
-- Name: temas; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE temas (
    id_tema integer NOT NULL,
    nb_tema character varying(50) NOT NULL,
    des_temas character varying(60) NOT NULL,
    nb_usuario character varying(80) NOT NULL
);


ALTER TABLE condor.temas OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN temas.id_tema; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN temas.id_tema IS 'ID del tema';


--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN temas.nb_tema; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN temas.nb_tema IS 'Nombre del tema ';


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN temas.des_temas; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN temas.des_temas IS 'Descripción de los temas';


--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN temas.nb_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN temas.nb_usuario IS 'nombre del usuario a registrarse';


--
-- TOC entry 207 (class 1259 OID 29742)
-- Dependencies: 7 208
-- Name: temas_id_tema_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE temas_id_tema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.temas_id_tema_seq OWNER TO postgres;

--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 207
-- Name: temas_id_tema_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE temas_id_tema_seq OWNED BY temas.id_tema;


--
-- TOC entry 175 (class 1259 OID 29580)
-- Dependencies: 7
-- Name: temas_id_usuario_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE temas_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.temas_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 29758)
-- Dependencies: 7
-- Name: usuarios; Type: TABLE; Schema: condor; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    id_usuario integer NOT NULL,
    nb_usuario character varying(80) NOT NULL,
    ap_usuario character(80) NOT NULL,
    pf_usuario character varying(20) NOT NULL,
    log_usuario character varying(20) NOT NULL,
    pass_usuario character varying(15) NOT NULL,
    st_usuario boolean NOT NULL,
    tp_usuarios character(1) NOT NULL
);


ALTER TABLE condor.usuarios OWNER TO postgres;

--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.id_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.id_usuario IS 'ID del usuario registrado';


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.nb_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.nb_usuario IS 'nombre del usuario a registrarse';


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.ap_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.ap_usuario IS 'Apellido del usuario registrado';


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.pf_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.pf_usuario IS 'Profesión del usuario registrado';


--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.log_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.log_usuario IS 'Login del usuario registrado';


--
-- TOC entry 2194 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.pass_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.pass_usuario IS 'Password del usuario registrado';


--
-- TOC entry 2195 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.st_usuario; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.st_usuario IS 'Estado del usuario ';


--
-- TOC entry 2196 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN usuarios.tp_usuarios; Type: COMMENT; Schema: condor; Owner: postgres
--

COMMENT ON COLUMN usuarios.tp_usuarios IS 'Tipos de usuarios';


--
-- TOC entry 209 (class 1259 OID 29756)
-- Dependencies: 210 7
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: condor; Owner: postgres
--

CREATE SEQUENCE usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condor.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: condor; Owner: postgres
--

ALTER SEQUENCE usuarios_id_usuario_seq OWNED BY usuarios.id_usuario;


SET search_path = public, pg_catalog;

--
-- TOC entry 176 (class 1259 OID 29582)
-- Dependencies: 5
-- Name: contenido_id_contenido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenido_id_contenido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contenido_id_contenido_seq OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 29584)
-- Dependencies: 5
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_id_ejemplos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_id_ejemplos_seq OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 29586)
-- Dependencies: 5
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejercicios_id_ejercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejercicios_id_ejercicio_seq OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 29590)
-- Dependencies: 5
-- Name: eva_pregunta_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE eva_pregunta_id_pregunta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eva_pregunta_id_pregunta_seq OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 29592)
-- Dependencies: 5
-- Name: eva_respuesta_id_respuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE eva_respuesta_id_respuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eva_respuesta_id_respuesta_seq OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 29588)
-- Dependencies: 5
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_evaluaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_id_evaluaciones_seq OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 29594)
-- Dependencies: 5
-- Name: fuentes_bibliograficas_id_fuentes_bibliograficas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fuentes_bibliograficas_id_fuentes_bibliograficas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuentes_bibliograficas_id_fuentes_bibliograficas_seq OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 29596)
-- Dependencies: 5
-- Name: leccion_id_leccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE leccion_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.leccion_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 29600)
-- Dependencies: 5
-- Name: r_pregunta_id_rpregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE r_pregunta_id_rpregunta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.r_pregunta_id_rpregunta_seq OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 29602)
-- Dependencies: 5
-- Name: r_respuesta_id_rrespuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE r_respuesta_id_rrespuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.r_respuesta_id_rrespuesta_seq OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 29598)
-- Dependencies: 5
-- Name: remediales_id_remediales_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE remediales_id_remediales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.remediales_id_remediales_seq OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 29604)
-- Dependencies: 5
-- Name: temas_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE temas_id_tema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temas_id_tema_seq OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 29606)
-- Dependencies: 5
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO postgres;

SET search_path = condor, pg_catalog;

--
-- TOC entry 1971 (class 2604 OID 29613)
-- Dependencies: 190 189 190
-- Name: id_contenido; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY contenido ALTER COLUMN id_contenido SET DEFAULT nextval('contenido_id_contenido_seq'::regclass);


--
-- TOC entry 1972 (class 2604 OID 29630)
-- Dependencies: 191 192 192
-- Name: id_ejemplos; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY ejemplos ALTER COLUMN id_ejemplos SET DEFAULT nextval('ejemplos_id_ejemplos_seq'::regclass);


--
-- TOC entry 1973 (class 2604 OID 29647)
-- Dependencies: 194 193 194
-- Name: id_ejercicios; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY ejercicios ALTER COLUMN id_ejercicios SET DEFAULT nextval('ejercicios_id_ejercicios_seq'::regclass);


--
-- TOC entry 1975 (class 2604 OID 29678)
-- Dependencies: 197 198 198
-- Name: id_eva_preguntas; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY eva_preguntas ALTER COLUMN id_eva_preguntas SET DEFAULT nextval('eva_preguntas_id_eva_preguntas_seq'::regclass);


--
-- TOC entry 1976 (class 2604 OID 29692)
-- Dependencies: 200 199 200
-- Name: id_eva_respuesta; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY eva_respuestas ALTER COLUMN id_eva_respuesta SET DEFAULT nextval('eva_respuestas_id_eva_respuesta_seq'::regclass);


--
-- TOC entry 1974 (class 2604 OID 29664)
-- Dependencies: 195 196 196
-- Name: id_evaluaciones; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY evaluaciones ALTER COLUMN id_evaluaciones SET DEFAULT nextval('evaluaciones_id_evaluaciones_seq'::regclass);


--
-- TOC entry 1977 (class 2604 OID 29704)
-- Dependencies: 201 202 202
-- Name: id_freferencias; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY freferencias ALTER COLUMN id_freferencias SET DEFAULT nextval('freferencias_id_freferencias_seq'::regclass);


--
-- TOC entry 1978 (class 2604 OID 29718)
-- Dependencies: 203 204 204
-- Name: id_leccion; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY lecciones ALTER COLUMN id_leccion SET DEFAULT nextval('lecciones_id_leccion_seq'::regclass);


--
-- TOC entry 1979 (class 2604 OID 29735)
-- Dependencies: 206 205 206
-- Name: id_resultados_evaluaciones; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY resultados ALTER COLUMN id_resultados_evaluaciones SET DEFAULT nextval('resultados_id_resultados_evaluaciones_seq'::regclass);


--
-- TOC entry 1980 (class 2604 OID 29747)
-- Dependencies: 208 207 208
-- Name: id_tema; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY temas ALTER COLUMN id_tema SET DEFAULT nextval('temas_id_tema_seq'::regclass);


--
-- TOC entry 1981 (class 2604 OID 29761)
-- Dependencies: 209 210 210
-- Name: id_usuario; Type: DEFAULT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 2103 (class 0 OID 29610)
-- Dependencies: 190 2124
-- Data for Name: contenido; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY contenido (id_contenido, nb_contenido, des_contenido, con_contenido, id_leccion) FROM stdin;
\.


--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 189
-- Name: contenido_id_contenido_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('contenido_id_contenido_seq', 1, false);


--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 162
-- Name: contenido_id_leccion_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('contenido_id_leccion_seq', 1, false);


--
-- TOC entry 2105 (class 0 OID 29627)
-- Dependencies: 192 2124
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY ejemplos (id_ejemplos, nb_ejemplos, des_ejemplos, ej_ejemplos, id_leccion) FROM stdin;
\.


--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 191
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 163
-- Name: ejemplos_id_leccion_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_leccion_seq', 1, false);


--
-- TOC entry 2107 (class 0 OID 29644)
-- Dependencies: 194 2124
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY ejercicios (id_ejercicios, nb_ejercicios, des_ejercicio, ej_ejercicios, id_leccion) FROM stdin;
\.


--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 193
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_ejercicios_seq', 1, false);


--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 164
-- Name: ejercicios_id_leccion_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_leccion_seq', 1, false);


--
-- TOC entry 2111 (class 0 OID 29675)
-- Dependencies: 198 2124
-- Data for Name: eva_preguntas; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY eva_preguntas (id_eva_preguntas, val_eva_preguntas, preg_eva_pregunta, nb_evaluaciones) FROM stdin;
\.


--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 197
-- Name: eva_preguntas_id_eva_preguntas_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('eva_preguntas_id_eva_preguntas_seq', 1, false);


--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 167
-- Name: eva_preguntas_id_evaluaciones_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('eva_preguntas_id_evaluaciones_seq', 1, false);


--
-- TOC entry 2113 (class 0 OID 29689)
-- Dependencies: 200 2124
-- Data for Name: eva_respuestas; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY eva_respuestas (id_eva_respuesta, val_eva_respuesta, rp_eva_respuesta, tp_eva_respuesta, val_eva_preguntas) FROM stdin;
\.


--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 168
-- Name: eva_respuestas_id_eva_preguntas_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('eva_respuestas_id_eva_preguntas_seq', 1, false);


--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 199
-- Name: eva_respuestas_id_eva_respuesta_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('eva_respuestas_id_eva_respuesta_seq', 1, false);


--
-- TOC entry 2109 (class 0 OID 29661)
-- Dependencies: 196 2124
-- Data for Name: evaluaciones; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY evaluaciones (id_evaluaciones, nb_evaluaciones, des_evaluaciones, id_tema, nb_usuario) FROM stdin;
\.


--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 195
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_evaluaciones_seq', 1, false);


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 165
-- Name: evaluaciones_id_tema_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_tema_seq', 1, false);


--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 166
-- Name: evaluaciones_id_usuario_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_usuario_seq', 1, false);


--
-- TOC entry 2115 (class 0 OID 29701)
-- Dependencies: 202 2124
-- Data for Name: freferencias; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY freferencias (id_freferencias, nb_freferencias, des_freferencias, fr_freferencias, id_leccion) FROM stdin;
\.


--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 201
-- Name: freferencias_id_freferencias_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('freferencias_id_freferencias_seq', 1, false);


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 169
-- Name: freferencias_id_leccion_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('freferencias_id_leccion_seq', 1, false);


--
-- TOC entry 2117 (class 0 OID 29715)
-- Dependencies: 204 2124
-- Data for Name: lecciones; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY lecciones (id_leccion, nb_leccion, des_lecciones, con_lecciones, id_tema) FROM stdin;
\.


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 203
-- Name: lecciones_id_leccion_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('lecciones_id_leccion_seq', 1, false);


--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 170
-- Name: lecciones_id_tema_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('lecciones_id_tema_seq', 1, false);


--
-- TOC entry 2119 (class 0 OID 29732)
-- Dependencies: 206 2124
-- Data for Name: resultados; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY resultados (id_resultados_evaluaciones, nb_evaluaciones, val_eva_respuesta, nb_usuario) FROM stdin;
\.


--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 172
-- Name: resultados_id_eva_preguntas_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('resultados_id_eva_preguntas_seq', 1, false);


--
-- TOC entry 2216 (class 0 OID 0)
-- Dependencies: 173
-- Name: resultados_id_eva_respuesta_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('resultados_id_eva_respuesta_seq', 1, false);


--
-- TOC entry 2217 (class 0 OID 0)
-- Dependencies: 171
-- Name: resultados_id_evaluaciones_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('resultados_id_evaluaciones_seq', 1, false);


--
-- TOC entry 2218 (class 0 OID 0)
-- Dependencies: 205
-- Name: resultados_id_resultados_evaluaciones_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('resultados_id_resultados_evaluaciones_seq', 1, false);


--
-- TOC entry 2219 (class 0 OID 0)
-- Dependencies: 174
-- Name: resultados_id_usuario_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('resultados_id_usuario_seq', 1, false);


--
-- TOC entry 2121 (class 0 OID 29744)
-- Dependencies: 208 2124
-- Data for Name: temas; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY temas (id_tema, nb_tema, des_temas, nb_usuario) FROM stdin;
1	Historia de PostgreSQL	En este tema encontraras todo lo referente a la evolución 	david
4	asd	asd	david
5	yuyuy	askldjkasld	david
7	yuyuy	ooooooooooooo	david
8	oioioio	oioioioioi	david
9	1	1	david
10	io	io	david
11	tt	ttt	david
12	rr	rrr	david
13	bb	bb	david
14	opopopopo	popopop	david
15	ytrrrrrr	rrrrrrrrrr	david
16	yy	yy	david
17	ggg	ggg	david
18	dimas jose	dimas jose	david
19	gg	gg	david
20	vvv	vvv	david
21	qqq	qqq	david
22	ccc	ccc	david
\.


--
-- TOC entry 2220 (class 0 OID 0)
-- Dependencies: 207
-- Name: temas_id_tema_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_tema_seq', 23, true);


--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 175
-- Name: temas_id_usuario_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_usuario_seq', 1, false);


--
-- TOC entry 2123 (class 0 OID 29758)
-- Dependencies: 210 2124
-- Data for Name: usuarios; Type: TABLE DATA; Schema: condor; Owner: postgres
--

COPY usuarios (id_usuario, nb_usuario, ap_usuario, pf_usuario, log_usuario, pass_usuario, st_usuario, tp_usuarios) FROM stdin;
1	david	solórzano                                                                       	DBA	daviddsp	12345	t	A
\.


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: condor; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 1, true);


SET search_path = public, pg_catalog;

--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 176
-- Name: contenido_id_contenido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenido_id_contenido_seq', 1, false);


--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 177
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 2225 (class 0 OID 0)
-- Dependencies: 178
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_ejercicio_seq', 1, false);


--
-- TOC entry 2226 (class 0 OID 0)
-- Dependencies: 180
-- Name: eva_pregunta_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('eva_pregunta_id_pregunta_seq', 1, false);


--
-- TOC entry 2227 (class 0 OID 0)
-- Dependencies: 181
-- Name: eva_respuesta_id_respuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('eva_respuesta_id_respuesta_seq', 1, false);


--
-- TOC entry 2228 (class 0 OID 0)
-- Dependencies: 179
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_evaluaciones_seq', 1, false);


--
-- TOC entry 2229 (class 0 OID 0)
-- Dependencies: 182
-- Name: fuentes_bibliograficas_id_fuentes_bibliograficas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fuentes_bibliograficas_id_fuentes_bibliograficas_seq', 1, false);


--
-- TOC entry 2230 (class 0 OID 0)
-- Dependencies: 183
-- Name: leccion_id_leccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('leccion_id_leccion_seq', 1, false);


--
-- TOC entry 2231 (class 0 OID 0)
-- Dependencies: 185
-- Name: r_pregunta_id_rpregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('r_pregunta_id_rpregunta_seq', 1, false);


--
-- TOC entry 2232 (class 0 OID 0)
-- Dependencies: 186
-- Name: r_respuesta_id_rrespuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('r_respuesta_id_rrespuesta_seq', 1, false);


--
-- TOC entry 2233 (class 0 OID 0)
-- Dependencies: 184
-- Name: remediales_id_remediales_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('remediales_id_remediales_seq', 1, false);


--
-- TOC entry 2234 (class 0 OID 0)
-- Dependencies: 187
-- Name: temas_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_tema_seq', 1, false);


--
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 188
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 1, false);


SET search_path = condor, pg_catalog;

--
-- TOC entry 1983 (class 2606 OID 29624)
-- Dependencies: 190 190 2125
-- Name: contenido_con_contenido_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_con_contenido_key UNIQUE (con_contenido);


--
-- TOC entry 1985 (class 2606 OID 29622)
-- Dependencies: 190 190 2125
-- Name: contenido_des_contenido_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_des_contenido_key UNIQUE (des_contenido);


--
-- TOC entry 1987 (class 2606 OID 29620)
-- Dependencies: 190 190 2125
-- Name: contenido_nb_contenido_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_nb_contenido_key UNIQUE (nb_contenido);


--
-- TOC entry 1989 (class 2606 OID 29618)
-- Dependencies: 190 190 2125
-- Name: contenido_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_pkey PRIMARY KEY (id_contenido);


--
-- TOC entry 1991 (class 2606 OID 29639)
-- Dependencies: 192 192 2125
-- Name: ejemplos_des_ejemplos_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_des_ejemplos_key UNIQUE (des_ejemplos);


--
-- TOC entry 1993 (class 2606 OID 29641)
-- Dependencies: 192 192 2125
-- Name: ejemplos_ej_ejemplos_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_ej_ejemplos_key UNIQUE (ej_ejemplos);


--
-- TOC entry 1995 (class 2606 OID 29637)
-- Dependencies: 192 192 2125
-- Name: ejemplos_nb_ejemplos_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_nb_ejemplos_key UNIQUE (nb_ejemplos);


--
-- TOC entry 1997 (class 2606 OID 29635)
-- Dependencies: 192 192 2125
-- Name: ejemplos_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_pkey PRIMARY KEY (id_ejemplos);


--
-- TOC entry 1999 (class 2606 OID 29656)
-- Dependencies: 194 194 2125
-- Name: ejercicios_des_ejercicio_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_des_ejercicio_key UNIQUE (des_ejercicio);


--
-- TOC entry 2001 (class 2606 OID 29658)
-- Dependencies: 194 194 2125
-- Name: ejercicios_ej_ejercicios_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_ej_ejercicios_key UNIQUE (ej_ejercicios);


--
-- TOC entry 2003 (class 2606 OID 29654)
-- Dependencies: 194 194 2125
-- Name: ejercicios_nb_ejercicios_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_nb_ejercicios_key UNIQUE (nb_ejercicios);


--
-- TOC entry 2005 (class 2606 OID 29652)
-- Dependencies: 194 194 2125
-- Name: ejercicios_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicios);


--
-- TOC entry 2015 (class 2606 OID 29682)
-- Dependencies: 198 198 2125
-- Name: eva_preguntas_id_eva_preguntas_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_preguntas
    ADD CONSTRAINT eva_preguntas_id_eva_preguntas_key UNIQUE (id_eva_preguntas);


--
-- TOC entry 2017 (class 2606 OID 29686)
-- Dependencies: 198 198 2125
-- Name: eva_preguntas_nb_evaluaciones_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_preguntas
    ADD CONSTRAINT eva_preguntas_nb_evaluaciones_key UNIQUE (nb_evaluaciones);


--
-- TOC entry 2019 (class 2606 OID 29680)
-- Dependencies: 198 198 2125
-- Name: eva_preguntas_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_preguntas
    ADD CONSTRAINT eva_preguntas_pkey PRIMARY KEY (val_eva_preguntas);


--
-- TOC entry 2021 (class 2606 OID 29684)
-- Dependencies: 198 198 2125
-- Name: eva_preguntas_preg_eva_pregunta_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_preguntas
    ADD CONSTRAINT eva_preguntas_preg_eva_pregunta_key UNIQUE (preg_eva_pregunta);


--
-- TOC entry 2023 (class 2606 OID 29696)
-- Dependencies: 200 200 2125
-- Name: eva_respuestas_id_eva_respuesta_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_respuestas
    ADD CONSTRAINT eva_respuestas_id_eva_respuesta_key UNIQUE (id_eva_respuesta);


--
-- TOC entry 2025 (class 2606 OID 29694)
-- Dependencies: 200 200 2125
-- Name: eva_respuestas_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_respuestas
    ADD CONSTRAINT eva_respuestas_pkey PRIMARY KEY (val_eva_respuesta);


--
-- TOC entry 2027 (class 2606 OID 29698)
-- Dependencies: 200 200 2125
-- Name: eva_respuestas_rp_eva_respuesta_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_respuestas
    ADD CONSTRAINT eva_respuestas_rp_eva_respuesta_key UNIQUE (rp_eva_respuesta);


--
-- TOC entry 2007 (class 2606 OID 29670)
-- Dependencies: 196 196 2125
-- Name: evaluaciones_des_evaluaciones_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_des_evaluaciones_key UNIQUE (des_evaluaciones);


--
-- TOC entry 2009 (class 2606 OID 29668)
-- Dependencies: 196 196 2125
-- Name: evaluaciones_id_evaluaciones_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_id_evaluaciones_key UNIQUE (id_evaluaciones);


--
-- TOC entry 2011 (class 2606 OID 29672)
-- Dependencies: 196 196 2125
-- Name: evaluaciones_nb_usuario_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_nb_usuario_key UNIQUE (nb_usuario);


--
-- TOC entry 2013 (class 2606 OID 29666)
-- Dependencies: 196 196 2125
-- Name: evaluaciones_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_pkey PRIMARY KEY (nb_evaluaciones);


--
-- TOC entry 2029 (class 2606 OID 29710)
-- Dependencies: 202 202 2125
-- Name: freferencias_des_freferencias_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY freferencias
    ADD CONSTRAINT freferencias_des_freferencias_key UNIQUE (des_freferencias);


--
-- TOC entry 2031 (class 2606 OID 29712)
-- Dependencies: 202 202 2125
-- Name: freferencias_fr_freferencias_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY freferencias
    ADD CONSTRAINT freferencias_fr_freferencias_key UNIQUE (fr_freferencias);


--
-- TOC entry 2033 (class 2606 OID 29708)
-- Dependencies: 202 202 2125
-- Name: freferencias_nb_freferencias_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY freferencias
    ADD CONSTRAINT freferencias_nb_freferencias_key UNIQUE (nb_freferencias);


--
-- TOC entry 2035 (class 2606 OID 29706)
-- Dependencies: 202 202 2125
-- Name: freferencias_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY freferencias
    ADD CONSTRAINT freferencias_pkey PRIMARY KEY (id_freferencias);


--
-- TOC entry 2037 (class 2606 OID 29729)
-- Dependencies: 204 204 2125
-- Name: lecciones_con_lecciones_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_con_lecciones_key UNIQUE (con_lecciones);


--
-- TOC entry 2039 (class 2606 OID 29727)
-- Dependencies: 204 204 2125
-- Name: lecciones_des_lecciones_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_des_lecciones_key UNIQUE (des_lecciones);


--
-- TOC entry 2041 (class 2606 OID 29725)
-- Dependencies: 204 204 2125
-- Name: lecciones_nb_leccion_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_nb_leccion_key UNIQUE (nb_leccion);


--
-- TOC entry 2043 (class 2606 OID 29723)
-- Dependencies: 204 204 2125
-- Name: lecciones_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_pkey PRIMARY KEY (id_leccion);


--
-- TOC entry 2045 (class 2606 OID 29739)
-- Dependencies: 206 206 2125
-- Name: resultados_nb_evaluaciones_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_nb_evaluaciones_key UNIQUE (nb_evaluaciones);


--
-- TOC entry 2047 (class 2606 OID 29741)
-- Dependencies: 206 206 2125
-- Name: resultados_nb_usuario_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_nb_usuario_key UNIQUE (nb_usuario);


--
-- TOC entry 2049 (class 2606 OID 29737)
-- Dependencies: 206 206 2125
-- Name: resultados_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id_resultados_evaluaciones);


--
-- TOC entry 2051 (class 2606 OID 29753)
-- Dependencies: 208 208 2125
-- Name: temas_des_temas_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_des_temas_key UNIQUE (des_temas);


SET default_tablespace = condor;

--
-- TOC entry 2053 (class 2606 OID 29835)
-- Dependencies: 208 208 208 2125
-- Name: temas_nb_tema_des_temas_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: condor
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_nb_tema_des_temas_key UNIQUE (nb_tema, des_temas);


SET default_tablespace = '';

--
-- TOC entry 2055 (class 2606 OID 29749)
-- Dependencies: 208 208 2125
-- Name: temas_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_tema);


--
-- TOC entry 2057 (class 2606 OID 29765)
-- Dependencies: 210 210 2125
-- Name: usuarios_id_usuario_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_id_usuario_key UNIQUE (id_usuario);


--
-- TOC entry 2059 (class 2606 OID 29767)
-- Dependencies: 210 210 2125
-- Name: usuarios_log_usuario_key; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_log_usuario_key UNIQUE (log_usuario);


--
-- TOC entry 2061 (class 2606 OID 29763)
-- Dependencies: 210 210 2125
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: condor; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (nb_usuario);


--
-- TOC entry 2062 (class 2606 OID 29788)
-- Dependencies: 204 2042 190 2125
-- Name: contenido_id_leccion_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES lecciones(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2063 (class 2606 OID 29793)
-- Dependencies: 192 204 2042 2125
-- Name: ejemplos_id_leccion_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES lecciones(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2064 (class 2606 OID 29798)
-- Dependencies: 204 2042 194 2125
-- Name: ejercicios_id_leccion_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES lecciones(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2067 (class 2606 OID 29768)
-- Dependencies: 196 198 2012 2125
-- Name: eva_preguntas_id_evaluaciones_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY eva_preguntas
    ADD CONSTRAINT eva_preguntas_id_evaluaciones_fkey FOREIGN KEY (nb_evaluaciones) REFERENCES evaluaciones(nb_evaluaciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2068 (class 2606 OID 29778)
-- Dependencies: 198 200 2018 2125
-- Name: eva_respuestas_id_eva_preguntas_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY eva_respuestas
    ADD CONSTRAINT eva_respuestas_id_eva_preguntas_fkey FOREIGN KEY (val_eva_preguntas) REFERENCES eva_preguntas(val_eva_preguntas) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2065 (class 2606 OID 29808)
-- Dependencies: 2054 208 196 2125
-- Name: evaluaciones_id_tema_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_id_tema_fkey FOREIGN KEY (id_tema) REFERENCES temas(id_tema) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2066 (class 2606 OID 29818)
-- Dependencies: 210 196 2060 2125
-- Name: evaluaciones_id_usuario_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_id_usuario_fkey FOREIGN KEY (nb_usuario) REFERENCES usuarios(nb_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2069 (class 2606 OID 29803)
-- Dependencies: 204 202 2042 2125
-- Name: freferencias_id_leccion_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY freferencias
    ADD CONSTRAINT freferencias_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES lecciones(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2070 (class 2606 OID 29813)
-- Dependencies: 208 2054 204 2125
-- Name: lecciones_id_tema_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_id_tema_fkey FOREIGN KEY (id_tema) REFERENCES temas(id_tema) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2072 (class 2606 OID 29783)
-- Dependencies: 2024 206 200 2125
-- Name: resultados_id_eva_respuesta_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_id_eva_respuesta_fkey FOREIGN KEY (val_eva_respuesta) REFERENCES eva_respuestas(val_eva_respuesta) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2071 (class 2606 OID 29773)
-- Dependencies: 2012 196 206 2125
-- Name: resultados_id_evaluaciones_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_id_evaluaciones_fkey FOREIGN KEY (nb_evaluaciones) REFERENCES evaluaciones(nb_evaluaciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2073 (class 2606 OID 29823)
-- Dependencies: 2060 210 206 2125
-- Name: resultados_nb_usuario_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_nb_usuario_fkey FOREIGN KEY (nb_usuario) REFERENCES usuarios(nb_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2074 (class 2606 OID 29828)
-- Dependencies: 2060 210 208 2125
-- Name: temas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: condor; Owner: postgres
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_id_usuario_fkey FOREIGN KEY (nb_usuario) REFERENCES usuarios(nb_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2130 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-03-16 20:36:45 VET

--
-- PostgreSQL database dump complete
--

