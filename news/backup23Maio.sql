--
-- PostgreSQL database dump
--

-- Dumped from database version 11.18 (Debian 11.18-1.pgdg100+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg100+1)

-- Started on 2023-05-23 22:28:22 -04

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

--
-- TOC entry 196 (class 1259 OID 29882)
-- Name: autor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autor (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    imagem character varying(45)
);


ALTER TABLE public.autor OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 29885)
-- Name: autor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.autor_id_seq OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 197
-- Name: autor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.autor_id_seq OWNED BY public.autor.id;


--
-- TOC entry 198 (class 1259 OID 29887)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100),
    imagem character varying(45)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 29890)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 199
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 208 (class 1259 OID 31142)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 31140)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 207
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 203 (class 1259 OID 31113)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 31111)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 202
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 200 (class 1259 OID 29892)
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticia (
    id integer NOT NULL,
    titulo character varying(100),
    descricao text,
    data date,
    categoria_id integer,
    autor_id integer,
    imagem character varying(50)
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 29898)
-- Name: noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noticia_id_seq OWNER TO postgres;

--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 201
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 206 (class 1259 OID 31132)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 31156)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 31154)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 209
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 205 (class 1259 OID 31121)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 31119)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 204
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2820 (class 2604 OID 29900)
-- Name: autor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor ALTER COLUMN id SET DEFAULT nextval('public.autor_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 29901)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 31145)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 31116)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 29902)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 2827 (class 2604 OID 31159)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 31124)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2973 (class 0 OID 29882)
-- Dependencies: 196
-- Data for Name: autor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.autor VALUES (5, 'Willian Bonner', 'bonner@globo.com', '4nwuVZrNF3r0TjfqnzpL30mbVWxFASSyhHUOwWMY.png');
INSERT INTO public.autor VALUES (6, 'Maria Julia Coutinho', 'maju@globo.com', 'hrOWWVSNku9DQQWoepQPLrLbvTm59L2iCYGsUZyW.png');
INSERT INTO public.autor VALUES (7, 'Roberto Cabrini', 'cabrini@sbt.com.br', 'J0Ua9dLTfjYZ6RA3yNZwanZDEOBV1QX2mhHoR0as.png');
INSERT INTO public.autor VALUES (8, 'Sandra Annenberg', 'annenberg@globo.com', '8YZAx0sTdFuF7Yu9hJapSatJ5yOmyxra1BGwaK3y.png');


--
-- TOC entry 2975 (class 0 OID 29887)
-- Dependencies: 198
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (12, 'Esporte', 'mUemarjw8kJG9LgkPGpnmrEapU7bG9r9qx2MLqYZ.png');
INSERT INTO public.categoria VALUES (13, 'Saúde', 'F6a8zqVOdHm2f2wNNs2fkU9vOcCEGp5WuPSyHVsF.jpg');
INSERT INTO public.categoria VALUES (14, 'Educação', '5u5o4Npb83ha4YEyEZ67vKmO9JqMlxBA6oFpN0Qd.jpg');
INSERT INTO public.categoria VALUES (15, 'Economia', 'sRienXE9MmlJIzXdkJy4Jp6ZUbfEnUMqhroDMfJ0.png');
INSERT INTO public.categoria VALUES (16, 'Turismo', 'wLjVKxtnkuiOni4YFYu36aGYGp83aaWus6NYUnTp.jpg');


--
-- TOC entry 2985 (class 0 OID 31142)
-- Dependencies: 208
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2980 (class 0 OID 31113)
-- Dependencies: 203
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO public.migrations VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO public.migrations VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);


--
-- TOC entry 2977 (class 0 OID 29892)
-- Dependencies: 200
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (213, 'Numquam accusantium ipsa soluta molestiae molestiae explicabo cum.', 'March Hare said to the Caterpillar, and the sounds will take care of themselves."'' ''How fond she is such a new idea to Alice, flinging the baby violently up and went by without noticing her. Then.', '2006-11-30', 12, 5, 'cd5044742d4322a040878fe0bbccd3bd.png');
INSERT INTO public.noticia VALUES (214, 'Non odit sequi ut rerum.', 'Alice. ''Reeling and Writhing, of course, I meant,'' the King say in a hoarse, feeble voice: ''I heard the Rabbit came near her, about the same tone, exactly as if she were looking over his shoulder as.', '1977-01-22', 13, 8, '124c98da1046cbc23cc30c058ee06c09.png');
INSERT INTO public.noticia VALUES (215, 'Molestiae non deserunt voluptas eum.', 'Duchess began in a solemn tone, ''For the Duchess. ''I make you dry enough!'' They all sat down at her own mind (as well as she could do, lying down on their slates, and she did not like the look of it.', '2023-01-05', 12, 6, 'b44de600b6c48e96e6eace5f89d0113f.png');
INSERT INTO public.noticia VALUES (216, 'Est et et nihil minima et rerum.', 'King. The White Rabbit was still in existence; ''and now for the White Rabbit. She was walking by the English, who wanted leaders, and had to do so. ''Shall we try another figure of the court. (As.', '1976-05-24', 13, 6, 'e8351c8dba019512fa840c8c3f1c9703.png');
INSERT INTO public.noticia VALUES (217, 'Debitis distinctio sint explicabo cupiditate qui.', 'Adventures, till she heard the Queen''s absence, and were resting in the after-time, be herself a grown woman; and how she would gather about her other little children, and everybody laughed, ''Let.', '1983-02-28', 13, 6, 'dee6e45a725447a9d579b5ecec01e8e4.png');
INSERT INTO public.noticia VALUES (218, 'Natus et vel et dolorem atque qui.', 'Alice could only see her. She is such a nice little histories about children who had meanwhile been examining the roses. ''Off with their hands and feet at once, with a growl, And concluded the.', '2001-02-07', 14, 6, 'b2f360dbb9134c77e248ce3e2d231430.png');
INSERT INTO public.noticia VALUES (219, 'Aut perspiciatis blanditiis accusamus numquam ut id saepe nobis.', 'The poor little thing was to eat her up in a shrill, loud voice, and the Queen left off, quite out of a well?'' The Dormouse had closed its eyes again, to see a little bottle on it, and on both sides.', '2004-07-30', 12, 8, 'c30725d7244555deb289ff6b93bf29cb.png');
INSERT INTO public.noticia VALUES (220, 'Amet ut iusto necessitatibus dolore architecto voluptates error.', 'I shan''t! YOU do it!--That I won''t, then!--Bill''s to go nearer till she fancied she heard her voice sounded hoarse and strange, and the Queen, who was talking. ''How CAN I have dropped them, I.', '1991-06-05', 12, 7, '4ab887052d9e9890877fc6fb2132571d.png');
INSERT INTO public.noticia VALUES (221, 'Qui fugiat modi et totam voluptas debitis ut.', 'Her chin was pressed so closely against her foot, that there was no label this time the Mouse with an air of great relief. ''Call the next witness.'' And he got up this morning, but I think it would.', '1990-10-25', 14, 6, 'e8d03715d5bd7d9cba58e2b878923f4f.png');
INSERT INTO public.noticia VALUES (222, 'Eum non inventore tenetur maiores dolorum beatae quia.', 'I wouldn''t say anything about it, so she began nursing her child again, singing a sort of way to explain the paper. ''If there''s no meaning in it.'' The jury all brightened up at this corner--No, tie.', '1978-02-24', 15, 5, '1ebef306dbbabc6d81ae324d3db97f02.png');
INSERT INTO public.noticia VALUES (223, 'Fuga qui accusamus aut veniam accusamus.', 'Alice could see, when she was talking. ''How CAN I have done that?'' she thought. ''I must be really offended. ''We won''t talk about her other little children, and everybody laughed, ''Let the jury.', '1991-04-15', 12, 7, 'ed7350df30cc081a6f0b6213c52984a6.png');
INSERT INTO public.noticia VALUES (224, 'Iusto aut fugiat ut quaerat.', 'Duchess began in a twinkling! Half-past one, time for dinner!'' (''I only wish it was,'' said the youth, ''one would hardly suppose That your eye was as much right,'' said the King. On this the whole.', '2001-09-16', 14, 8, '68204d35c74d9fe689134fd8a525843c.png');
INSERT INTO public.noticia VALUES (225, 'Alias debitis tempore possimus quo animi.', 'Alice as it lasted.) ''Then the words don''t FIT you,'' said Alice, a little before she got to see what would be quite absurd for her to wink with one of the players to be rude, so she helped herself.', '1970-04-21', 14, 6, 'f872da14fc2fc874c6c3b6526657094b.png');
INSERT INTO public.noticia VALUES (226, 'Velit veritatis voluptatem optio qui similique veritatis non quibusdam.', 'I was thinking I should understand that better,'' Alice said very humbly; ''I won''t interrupt again. I dare say you never had fits, my dear, YOU must cross-examine THIS witness.'' ''Well, if I chose,''.', '1981-10-11', 13, 6, 'b0eb976a3d7ba6a39e72d7bccd1e48ca.png');
INSERT INTO public.noticia VALUES (227, 'Sed repudiandae omnis quis numquam porro.', 'Mock Turtle''s Story ''You can''t think how glad I am now? That''ll be a book written about me, that there ought! And when I get it home?'' when it saw mine coming!'' ''How do you want to stay in here any.', '1985-12-23', 16, 8, '9e0e708c8d7853db2833ec06c097a393.png');
INSERT INTO public.noticia VALUES (228, 'Aspernatur alias cumque esse.', 'Why, there''s hardly room to open her mouth; but she could remember them, all these strange Adventures of hers would, in the direction it pointed to, without trying to explain the mistake it had.', '1972-07-23', 13, 6, '9363212e112a1347d3d14723b4df8b72.png');
INSERT INTO public.noticia VALUES (229, 'Asperiores error omnis at possimus reprehenderit soluta repellat.', 'I grow up, I''ll write one--but I''m grown up now,'' she said, ''and see whether it''s marked "poison" or not''; for she felt very glad to do THAT in a deep sigh, ''I was a dispute going on between the.', '1988-06-21', 16, 8, '04c108a8f70e5082d64c48701a47e433.png');
INSERT INTO public.noticia VALUES (230, 'Itaque autem ea et perferendis autem a.', 'These were the verses on his spectacles and looked very anxiously into her face, with such sudden violence that Alice quite hungry to look through into the darkness as hard as it lasted.) ''Then the.', '2017-05-23', 13, 7, 'f1dd906f40eed7fcfefade44b128fcce.png');
INSERT INTO public.noticia VALUES (231, 'Eum ea id sed ut corrupti atque.', 'Pat, what''s that in some alarm. This time there could be NO mistake about it: it was getting so used to queer things happening. While she was about a thousand times as large as himself, and this.', '1980-01-08', 13, 8, '523bbe75eb8fa27aa80887f5ea379165.png');
INSERT INTO public.noticia VALUES (232, 'Vel nihil voluptatem porro eaque error cum consequatur.', 'I can''t understand it myself to begin at HIS time of life. The King''s argument was, that she remained the same words as before, ''It''s all about as much as serpents do, you know.'' ''Not at first, the.', '2006-04-01', 16, 6, '6473f97bd49737e3bdae9a8b24a187b1.png');
INSERT INTO public.noticia VALUES (233, 'Voluptate unde debitis non dignissimos qui.', 'Alice hastily; ''but I''m not looking for it, he was going to remark myself.'' ''Have you guessed the riddle yet?'' the Hatter went on, ''"--found it advisable to go on. ''And so these three little.', '2020-05-14', 12, 6, '2210e4a4c0b514db0184f15580160fe5.png');
INSERT INTO public.noticia VALUES (234, 'Atque saepe sit laborum quis sapiente adipisci.', 'THAT''S a good character, But said I could show you our cat Dinah: I think I should think you''ll feel it a bit, if you cut your finger VERY deeply with a sigh: ''it''s always tea-time, and we''ve no.', '1983-09-06', 16, 7, '67215052074498f119d06d1ef3469b2b.png');
INSERT INTO public.noticia VALUES (235, 'Cupiditate qui aut quia aut nulla dignissimos est.', 'Alice, very much at first, the two creatures got so much already, that it might injure the brain; But, now that I''m doubtful about the whiting!'' ''Oh, as to the Dormouse, not choosing to notice this.', '2021-06-07', 14, 7, 'f6c3c8d19620e3a3a7c86c1e1c44638a.png');
INSERT INTO public.noticia VALUES (236, 'Quo omnis ducimus voluptatibus necessitatibus expedita natus pariatur.', 'I didn''t know it to annoy, Because he knows it teases.'' CHORUS. (In which the wretched Hatter trembled so, that he shook both his shoes off. ''Give your evidence,'' said the Duchess, as she spoke.', '1977-04-25', 13, 7, '809d498519bf90d6c092bb8145a0f82d.png');
INSERT INTO public.noticia VALUES (237, 'Tempora ut quod ea atque voluptas totam voluptatem fuga.', 'No, there were a Duck and a Long Tale They were indeed a queer-looking party that assembled on the whole party at once to eat her up in great disgust, and walked off; the Dormouse went on, ''What.', '2019-03-31', 14, 6, 'c8a84d33dbd5bd9609438744ad4bf65b.png');
INSERT INTO public.noticia VALUES (238, 'Voluptatum voluptas odio soluta ut.', 'White Rabbit, ''but it doesn''t matter a bit,'' she thought it would make with the game,'' the Queen shrieked out. ''Behead that Dormouse! Turn that Dormouse out of that dark hall, and close to her great.', '1991-09-06', 16, 8, 'cf4dbc8d08824560a7cc232c8cdfe1b4.png');
INSERT INTO public.noticia VALUES (239, 'Maiores asperiores nemo et sapiente sunt iste.', 'Just as she was quite pleased to find that she ran out of its mouth and yawned once or twice, and shook itself. Then it got down off the mushroom, and raised herself to some tea and.', '1975-12-21', 16, 5, 'fef22a71962f7b4631f38bd2ae0a384f.png');
INSERT INTO public.noticia VALUES (240, 'Aut ratione quia repellendus quaerat.', 'Mock Turtle replied in a hoarse growl, ''the world would go round and look up and ran the faster, while more and more faintly came, carried on the spot.'' This did not like the name: however, it only.', '1985-10-23', 16, 6, 'acb0b67529ee9792141c8f9a3fe3eeb5.png');
INSERT INTO public.noticia VALUES (241, 'Molestiae officia et optio rem sunt rerum.', 'Mock Turtle, and said anxiously to herself, being rather proud of it: for she was now more than three.'' ''Your hair wants cutting,'' said the Caterpillar. ''Is that the best way you have of putting.', '1990-04-23', 13, 5, '2f39795c9ba62d870484cce108c39483.png');
INSERT INTO public.noticia VALUES (242, 'Et soluta libero voluptatem.', 'I wonder what I like"!'' ''You might just as she was peering about anxiously among the bright eager eyes were nearly out of the birds and beasts, as well go in ringlets at all; however, she waited.', '2016-05-16', 14, 7, '883b670216c3542db252cf3d591a51f9.png');
INSERT INTO public.noticia VALUES (243, 'Non culpa itaque velit unde aspernatur similique quasi ratione.', 'Caterpillar sternly. ''Explain yourself!'' ''I can''t help it,'' said the Caterpillar. ''Well, perhaps you haven''t found it advisable--"'' ''Found WHAT?'' said the Mock Turtle interrupted, ''if you don''t.', '1970-11-19', 16, 7, 'b5fc6ba691db5aa2b4ce5f1ef5c34427.png');
INSERT INTO public.noticia VALUES (244, 'Eum officiis quas maxime necessitatibus.', 'HAVE tasted eggs, certainly,'' said Alice, surprised at this, that she had hoped) a fan and gloves. ''How queer it seems,'' Alice said to the Knave ''Turn them over!'' The Knave shook his head.', '2005-10-05', 12, 5, '2acc73990e9dca95c5ee3aec885879fe.png');
INSERT INTO public.noticia VALUES (245, 'Commodi eum tenetur possimus quasi omnis aut ut velit.', 'It sounded an excellent opportunity for making her escape; so she felt a little scream, half of fright and half believed herself in Wonderland, though she looked down, was an old Crab took the.', '1980-10-13', 14, 6, 'c094c257a093500a4d2d00d7f2ed6414.png');
INSERT INTO public.noticia VALUES (246, 'Quo molestiae eius nobis quasi.', 'I suppose, by being drowned in my own tears! That WILL be a queer thing, to be two people. ''But it''s no use speaking to it,'' she thought, ''it''s sure to happen,'' she said to herself what such an.', '1974-12-28', 14, 5, 'ba5177645b65ac9a448bb028370caa08.png');
INSERT INTO public.noticia VALUES (247, 'Rem repellendus eum quia quam quas.', 'Down, down, down. There was a general chorus of voices asked. ''Why, SHE, of course,'' the Gryphon hastily. ''Go on with the day and night! You see the Mock Turtle had just begun ''Well, of all this.', '1979-08-16', 13, 7, '7f10735397ffa49663f3829610d94e9d.png');
INSERT INTO public.noticia VALUES (248, 'Tenetur quis odio doloribus dolorum in et neque.', 'OUTSIDE.'' He unfolded the paper as he spoke, and the baby--the fire-irons came first; then followed a shower of little cartwheels, and the baby was howling so much about a whiting before.'' ''I can.', '1987-12-14', 16, 6, 'd13c7b64054f3fd615177e263b20c8db.png');
INSERT INTO public.noticia VALUES (249, 'Rerum ut et facilis optio.', 'Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--"'' ''Found WHAT?'' said the Hatter was the Duchess''s knee, while plates and.', '1979-08-12', 15, 5, 'ba3d3a4f6c7853132a794a2efe0a1980.png');
INSERT INTO public.noticia VALUES (250, 'Asperiores nisi soluta aut qui inventore.', 'Alice did not like to try the whole party look so grave that she did not appear, and after a minute or two, looking for it, he was speaking, so that her neck would bend about easily in any.', '1985-03-11', 16, 7, '67819113d86b6c04f16296b750066350.png');
INSERT INTO public.noticia VALUES (251, 'Sed ratione officiis aliquam ipsam earum eaque error.', 'Alice''s shoulder as he wore his crown over the wig, (look at the stick, running a very curious sensation, which puzzled her very earnestly, ''Now, Dinah, tell me your history, she do.'' ''I''ll tell it.', '1970-04-30', 15, 6, 'b20755418c5519a60fdc40f6d3b033c2.png');
INSERT INTO public.noticia VALUES (252, 'Omnis maiores voluptate quia maxime quam labore.', 'Mock Turtle replied; ''and then the Mock Turtle: ''nine the next, and so on; then, when you''ve cleared all the players, except the King, rubbing his hands; ''so now let the Dormouse again, so she felt.', '2017-06-11', 13, 6, '68064b229469f45d161430e3618301f5.png');
INSERT INTO public.noticia VALUES (253, 'Odit debitis nesciunt sit.', 'Allow me to introduce some other subject of conversation. ''Are you--are you fond--of--of dogs?'' The Mouse did not much larger than a pig, my dear,'' said Alice, ''a great girl like you,'' (she might.', '1983-04-08', 15, 7, '3c20b826da7caf0b95d17a944d077442.png');
INSERT INTO public.noticia VALUES (254, 'Qui blanditiis consequatur et iste fugiat.', 'Gryphon said, in a twinkling! Half-past one, time for dinner!'' (''I only wish it was,'' he said. (Which he certainly did NOT, being made entirely of cardboard.) ''All right, so far,'' thought Alice, ''to.', '2020-06-09', 13, 7, 'f7679b32a5e2d760c6ca925d1cc6be39.png');
INSERT INTO public.noticia VALUES (255, 'Voluptas nemo praesentium dignissimos hic qui vero porro nulla.', 'I''ve tried to beat them off, and Alice heard the Queen was in confusion, getting the Dormouse denied nothing, being fast asleep. ''After that,'' continued the King. The next thing is, to get in?''.', '1974-11-30', 15, 5, 'c7918d50f7960c63d0eef7fd88e767c3.png');
INSERT INTO public.noticia VALUES (256, 'Sit aspernatur vel eius facilis quae et eum.', 'And when I learn music.'' ''Ah! that accounts for it,'' said Alice, ''how am I to get her head struck against the ceiling, and had been for some time without interrupting it. ''They must go and live in.', '1979-05-22', 14, 8, 'e6f0a82f7cac4b95ffa094b340713569.png');
INSERT INTO public.noticia VALUES (257, 'Delectus repellendus voluptatum sunt et.', 'Once more she found herself lying on the floor, and a crash of broken glass. ''What a curious appearance in the way down one side and then said, ''It WAS a narrow escape!'' said Alice, a little.', '1977-02-05', 13, 5, '82576c1e9177802dfb4d92e5dc08603d.png');
INSERT INTO public.noticia VALUES (258, 'Fugit voluptates maiores quo est consequatur.', 'I''d hardly finished the guinea-pigs!'' thought Alice. ''I''m glad they''ve begun asking riddles.--I believe I can go back by railway,'' she said this, she came upon a neat little house, and the soldiers.', '2011-05-03', 15, 5, '73a87ee4c399c36ca17e19442afcc552.png');
INSERT INTO public.noticia VALUES (259, 'Accusantium inventore porro voluptatibus veniam autem voluptatibus.', 'Caterpillar''s making such VERY short remarks, and she ran off at once, with a yelp of delight, which changed into alarm in another moment, when she had been for some minutes. The Caterpillar was the.', '2006-07-10', 16, 5, '7eb2cf9fe6de60075add01bc8c0be9f2.png');
INSERT INTO public.noticia VALUES (260, 'Quos culpa sit iste ut vel deserunt ducimus.', 'So she went on, ''I must be the use of a candle is blown out, for she was beginning very angrily, but the Rabbit began. Alice thought the poor little thing grunted in reply (it had left off.', '2010-09-11', 13, 8, '617c070a37006c0ad4d7b3fcc0c4fb75.png');
INSERT INTO public.noticia VALUES (261, 'Tempore itaque praesentium architecto corporis.', 'And the moral of that is--"Oh, ''tis love, ''tis love, that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,'' he said. (Which he.', '2003-02-18', 14, 6, '43b3a579bd16772098b79eea42234e10.png');
INSERT INTO public.noticia VALUES (262, 'Qui quia sit hic ipsa odio eos et.', 'Why, I haven''t been invited yet.'' ''You''ll see me there,'' said the Mock Turtle with a great crash, as if he would deny it too: but the Gryphon went on. ''Would you tell me,'' said Alice, very.', '1988-09-11', 16, 8, 'be53e56a7c06f7b0e456eb79347eddf7.png');
INSERT INTO public.noticia VALUES (263, 'Quia et veniam et labore voluptas ratione nam.', 'So she began nursing her child again, singing a sort of circle, (''the exact shape doesn''t matter,'' it said,) and then raised himself upon tiptoe, put his mouth close to her: first, because the.', '2017-09-04', 13, 7, 'bf3c925a1716679f994ea495f9c7c8dd.png');
INSERT INTO public.noticia VALUES (264, 'Quisquam quidem cupiditate commodi distinctio.', 'WAS a curious dream!'' said Alice, ''and why it is right?'' ''In my youth,'' said his father, ''I took to the Gryphon. ''--you advance twice--'' ''Each with a round face, and was going to dive in among the.', '1980-08-13', 16, 7, '89e80ca9fa0864c37205ba008e6a9aaf.png');
INSERT INTO public.noticia VALUES (265, 'Sed fugit voluptatibus mollitia omnis totam earum consequatur.', 'Duchess. An invitation from the shock of being such a curious dream, dear, certainly: but now run in to your places!'' shouted the Queen said to herself, in a thick wood. ''The first thing I''ve got.', '1982-09-14', 14, 8, '9909e8f7cd5e4b03013c85320b2554b1.png');
INSERT INTO public.noticia VALUES (266, 'Sed sit officia dignissimos rerum.', 'YOUR adventures.'' ''I could tell you his history,'' As they walked off together. Alice laughed so much already, that it might injure the brain; But, now that I''m perfectly sure I have to turn into a.', '2012-06-10', 12, 5, '10e105bcf6c83506c0a65a7ae3798c1c.png');
INSERT INTO public.noticia VALUES (267, 'Aliquid aperiam sint illo cum mollitia.', 'Was kindly permitted to pocket the spoon: While the Duchess said after a few minutes it puffed away without being seen, when she heard one of the house till she had to ask the question?'' said the.', '2016-07-16', 12, 6, '4d1d436536e99515f0dd4eac2867d046.png');
INSERT INTO public.noticia VALUES (268, 'Non voluptatibus ullam beatae magnam harum.', 'The Knave shook his head off outside,'' the Queen ordering off her knowledge, as there was nothing on it except a little glass table. ''Now, I''ll manage better this time,'' she said, ''than waste it in.', '2006-09-04', 13, 6, 'ebd3a30ac50fcb55584a37f695077a30.png');
INSERT INTO public.noticia VALUES (269, 'Et sit ea minus facere.', 'Duchess, ''as pigs have to beat time when she got up, and reduced the answer to it?'' said the Gryphon. ''The reason is,'' said the Hatter, with an important air, ''are you all ready? This is the same.', '1984-02-27', 12, 5, '6a904f7107cc14408a2853ff583cb602.png');
INSERT INTO public.noticia VALUES (270, 'Aliquam vero quisquam quo et.', 'I''m sure I don''t understand. Where did they live at the house, and found that, as nearly as large as himself, and this was the first to speak. ''What size do you call him Tortoise--'' ''Why did they.', '1993-04-15', 15, 5, '1475db5f36aaebfb8f7964d8703bd228.png');
INSERT INTO public.noticia VALUES (271, 'Harum laborum quo sequi nemo temporibus.', 'Lory, who at last came a little pattering of footsteps in the air. ''--as far out to her chin in salt water. Her first idea was that you couldn''t cut off a little worried. ''Just about as much use in.', '2010-01-30', 13, 8, '1fe21f890394628652c5f5da9133b3e6.png');
INSERT INTO public.noticia VALUES (272, 'Corrupti quam autem a eum consequatur aspernatur rem.', 'So they sat down, and nobody spoke for some time with the bread-knife.'' The March Hare had just begun to think about it, you know.'' ''And what an ignorant little girl she''ll think me for his.', '2009-02-06', 13, 6, '702ada5169b7365309bf8528e7c8c7fd.png');
INSERT INTO public.noticia VALUES (273, 'Voluptas consectetur sint ratione harum tenetur nostrum qui.', 'WOULD always get into that lovely garden. I think that will be When they take us up and saying, ''Thank you, sir, for your interesting story,'' but she gained courage as she could, and soon found out.', '1974-12-29', 15, 7, 'c352a4880ee32ab79dd717df6cf77609.png');
INSERT INTO public.noticia VALUES (274, 'Doloremque ut sit qui dolores nesciunt.', 'ME.'' ''You!'' said the King. On this the White Rabbit with pink eyes ran close by it, and talking over its head. ''Very uncomfortable for the accident of the jurors were writing down ''stupid things!''.', '2010-08-03', 16, 7, '56b13e0d5c637f5ae55e175198a19929.png');
INSERT INTO public.noticia VALUES (275, 'Expedita non culpa blanditiis id possimus.', 'Pigeon. ''I can see you''re trying to fix on one, the cook had disappeared. ''Never mind!'' said the King had said that day. ''No, no!'' said the Gryphon. ''Then, you know,'' Alice gently remarked; ''they''d.', '1990-04-12', 15, 7, 'd628b39160e10d54ba9a226d16206734.png');
INSERT INTO public.noticia VALUES (276, 'Sint nesciunt placeat nihil voluptatem optio nobis commodi voluptatum.', 'MINE,'' said the King; ''and don''t be particular--Here, Bill! catch hold of it; then Alice dodged behind a great deal of thought, and rightly too, that very few things indeed were really impossible.', '1985-09-22', 15, 6, '0d24cf630c6bc532791959ccf948abb3.png');
INSERT INTO public.noticia VALUES (277, 'Nostrum ab laudantium voluptatem dolor.', 'BEST butter, you know.'' ''I don''t much care where--'' said Alice. ''Who''s making personal remarks now?'' the Hatter added as an unusually large saucepan flew close by it, and found that, as nearly as.', '2000-08-02', 14, 5, 'c4541476909e26e8da69cec5d0dca422.png');
INSERT INTO public.noticia VALUES (278, 'Iste mollitia ut consequatur delectus architecto vitae maxime.', 'However, at last the Gryphon never learnt it.'' ''Hadn''t time,'' said the Gryphon. ''The reason is,'' said the Duchess, who seemed to Alice to herself, ''because of his head. But at any rate it would be.', '2001-05-10', 16, 8, '195835169066ae1057f950ed766aee55.png');
INSERT INTO public.noticia VALUES (279, 'Totam aut ipsum ex sapiente unde recusandae iure.', 'Shakespeare, in the book,'' said the Queen, ''Really, my dear, and that you weren''t to talk nonsense. The Queen''s argument was, that anything that had fallen into it: there were three little sisters,''.', '1978-06-19', 13, 7, '03136463b6a3f54f917ff6712949e1ca.png');
INSERT INTO public.noticia VALUES (280, 'Ad culpa quasi recusandae laudantium.', 'Queen till she had not noticed before, and she did not like the look of it at all. ''But perhaps he can''t help it,'' she thought, ''it''s sure to kill it in less than no time she''d have everybody.', '2002-04-09', 13, 5, '26711a9451972963e7fdc4e9b233fb6c.png');
INSERT INTO public.noticia VALUES (281, 'Quis sit quos impedit.', 'Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no.', '1990-01-01', 16, 7, 'a70402b8ae8554d744dde49e40a31dc9.png');
INSERT INTO public.noticia VALUES (282, 'Et et maiores quis qui fugiat mollitia repellendus est.', 'Alice hastily; ''but I''m not used to it in asking riddles that have no answers.'' ''If you didn''t like cats.'' ''Not like cats!'' cried the Mock Turtle drew a long way. So they couldn''t see it?'' So she.', '2005-09-15', 12, 6, '487da7c7f0e648f6777e08b410130775.png');
INSERT INTO public.noticia VALUES (283, 'Beatae consectetur aut quia nesciunt.', 'After a while she was now the right height to be.'' ''It is a raven like a candle. I wonder if I''ve kept her eyes to see the earth takes twenty-four hours to turn into a butterfly, I should frighten.', '1989-01-19', 14, 5, '54badfc63f0dda55d9c2c48e67f13e7f.png');
INSERT INTO public.noticia VALUES (284, 'Debitis fugiat dolor dolor hic et aut est natus.', 'Eaglet. ''I don''t quite understand you,'' she said, ''for her hair goes in such long ringlets, and mine doesn''t go in ringlets at all; and I''m sure _I_ shan''t be able! I shall see it pop down a good.', '1988-04-09', 16, 6, '90e9a38efe122255ea5c4e934ed44e95.png');
INSERT INTO public.noticia VALUES (285, 'Voluptatem nesciunt non laboriosam eligendi.', 'The March Hare will be When they take us up and repeat "''TIS THE VOICE OF THE SLUGGARD,"'' said the Mock Turtle with a sigh: ''it''s always tea-time, and we''ve no time she''d have everybody executed.', '1983-10-03', 12, 6, 'fdbee8165d9a6fcb52fc994e0db61fc8.png');
INSERT INTO public.noticia VALUES (286, 'Dolore eius modi voluptatem accusamus sed magni debitis.', 'Tell us all about it!'' and he went on so long since she had looked under it, and kept doubling itself up and repeat "''TIS THE VOICE OF THE SLUGGARD,"'' said the Caterpillar. Alice folded her hands.', '1998-12-12', 14, 5, 'afe1e159de3128cfb9b1dc4cc5e8e6b3.png');
INSERT INTO public.noticia VALUES (287, 'Aut aut error molestiae quasi illo magnam.', 'Why, there''s hardly room for this, and Alice was very fond of beheading people here; the great hall, with the next moment a shower of little cartwheels, and the King exclaimed, turning to the.', '1991-05-27', 13, 8, '59ae307710776f24e3ad678980901553.png');
INSERT INTO public.noticia VALUES (288, 'Voluptatem quia facere commodi repudiandae necessitatibus eius.', 'Alice looked all round the table, but there was hardly room to open it; but, as the Dormouse indignantly. However, he consented to go nearer till she was quite surprised to find that she wasn''t a.', '2011-11-02', 14, 5, '9d8a655a4dc90125f826c856e4758c33.png');
INSERT INTO public.noticia VALUES (289, 'Tempora et nesciunt doloribus rerum repudiandae.', 'I''ll go round and get in at the bottom of a candle is blown out, for she felt unhappy. ''It was a large mustard-mine near here. And the executioner ran wildly up and saying, ''Thank you, sir, for your.', '1995-02-25', 15, 8, '93170762cade6906e00c277f01847fed.png');
INSERT INTO public.noticia VALUES (290, 'Animi quisquam qui neque dolorem voluptatem error voluptatibus.', 'Arithmetic--Ambition, Distraction, Uglification, and Derision.'' ''I never saw one, or heard of uglifying!'' it exclaimed. ''You know what to do THAT in a low voice, to the cur, "Such a trial, dear Sir.', '1983-01-09', 13, 5, '855717adb359cf8f5066931f3df5d0c9.png');
INSERT INTO public.noticia VALUES (291, 'Quod minus reprehenderit quam deleniti eos non qui.', 'Majesty,'' the Hatter was the first question, you know.'' ''Not the same thing with you,'' said the Duchess: ''flamingoes and mustard both bite. And the Eaglet bent down its head down, and felt quite.', '2019-01-28', 13, 8, '5d8108c84505a5aa5d2f206b8eae758a.png');
INSERT INTO public.noticia VALUES (292, 'Dolorem et eaque vitae ipsum quia aut modi.', 'Alice; ''I must go and take it away!'' There was a dispute going on between the executioner, the King, ''or I''ll have you got in as well,'' the Hatter went on, looking anxiously about as curious as it.', '1991-06-25', 16, 8, '14623d2d3b4f70d829da7ec29937de8b.png');
INSERT INTO public.noticia VALUES (293, 'Expedita ex ab rerum maiores libero.', 'Rabbit, and had been to her, ''if we had the door of which was sitting between them, fast asleep, and the baby violently up and throw us, with the Lory, as soon as there seemed to be sure! However.', '2008-08-16', 14, 6, '3bada1398f9991e0d4babb3333e77f4a.png');
INSERT INTO public.noticia VALUES (294, 'Qui earum iusto occaecati cumque excepturi consectetur et.', 'Come on!'' ''Everybody says "come on!" here,'' thought Alice, ''it''ll never do to hold it. As soon as she could, ''If you didn''t like cats.'' ''Not like cats!'' cried the Mouse, in a hurry to change them--''.', '2022-11-09', 13, 6, '4d19822d5e58377c032557afddbcba4b.png');
INSERT INTO public.noticia VALUES (295, 'Perspiciatis aliquid ipsa rerum perferendis deleniti.', 'Alice: ''--where''s the Duchess?'' ''Hush! Hush!'' said the Hatter. ''I deny it!'' said the Dormouse, after thinking a minute or two she stood watching them, and he poured a little three-legged table, all.', '1987-05-20', 15, 8, '53b06e596811badff1e4053ddbcab4fe.png');
INSERT INTO public.noticia VALUES (296, 'Numquam eaque aut accusantium commodi.', 'I suppose?'' said Alice. ''What sort of idea that they must needs come wriggling down from the change: and Alice was too much pepper in that ridiculous fashion.'' And he added looking angrily at the.', '1976-12-07', 16, 8, 'dd24ecd2047001b38dfe9b7524788f39.png');
INSERT INTO public.noticia VALUES (297, 'Voluptatem quidem perspiciatis et debitis deserunt et.', 'Even the Duchess to play croquet.'' Then they all spoke at once, with a shiver. ''I beg pardon, your Majesty,'' said the Caterpillar. This was such a capital one for catching mice--oh, I beg your.', '2014-11-14', 12, 5, '2829d5805dc2fd455b82452df4d46c86.png');
INSERT INTO public.noticia VALUES (298, 'Corrupti laboriosam deserunt temporibus totam est quasi fugiat.', 'Queen. ''Sentence first--verdict afterwards.'' ''Stuff and nonsense!'' said Alice doubtfully: ''it means--to--make--anything--prettier.'' ''Well, then,'' the Gryphon replied very gravely. ''What else had you.', '1996-11-19', 12, 6, 'b4bddb115e19671a13093a02a77316f5.png');
INSERT INTO public.noticia VALUES (299, 'Ea optio iure exercitationem magni eos.', 'Eaglet. ''I don''t know what "it" means well enough, when I learn music.'' ''Ah! that accounts for it,'' said the Knave, ''I didn''t know that Cheshire cats always grinned; in fact, I didn''t know it was.', '1994-02-07', 12, 8, 'eb3a982c11060ee0cc8375637ee4e210.png');
INSERT INTO public.noticia VALUES (300, 'Quo animi neque ipsa consequuntur.', 'Story ''You can''t think how glad I am in the other: the only one who got any advantage from the Queen was in March.'' As she said to herself, ''after such a curious dream, dear, certainly: but now run.', '1997-09-15', 16, 7, '6cb86e8c60ac4df43484a59b53f835e2.png');
INSERT INTO public.noticia VALUES (301, 'Itaque voluptas molestiae aut temporibus aliquid suscipit id.', 'The cook threw a frying-pan after her as hard as he found it so VERY much out of breath, and said to Alice; and Alice was a very melancholy voice. ''Repeat, "YOU ARE OLD, FATHER WILLIAM,'' to the.', '1979-01-12', 13, 8, '2f948e9cbce770138d8d5f4855df0c70.png');
INSERT INTO public.noticia VALUES (302, 'Magni quo officiis alias qui perferendis qui.', 'Alice. ''I''M not a bit hurt, and she tried hard to whistle to it; but she saw in another moment that it ought to tell him. ''A nice muddle their slates''ll be in Bill''s place for a minute or two she.', '1985-08-08', 13, 6, 'c7b44317b201494f0dd19c51568e4b64.png');
INSERT INTO public.noticia VALUES (303, 'Dolor qui rem quia aut magnam vel.', 'Dormouse went on, taking first one side and then another confusion of voices--''Hold up his head--Brandy now--Don''t choke him--How was it, old fellow? What happened to you? Tell us all about for a.', '1977-11-12', 14, 8, '9668b01c9edcdfb67514ea63d7a250f7.png');
INSERT INTO public.noticia VALUES (304, 'Rem quis et autem sit.', 'How brave they''ll all think me for asking! No, it''ll never do to ask: perhaps I shall be punished for it was a child,'' said the Mock Turtle repeated thoughtfully. ''I should think you can find them.''.', '2006-06-19', 13, 5, '65fbb9d5938e6742d10748ff3c9008e9.png');
INSERT INTO public.noticia VALUES (305, 'Doloremque inventore sunt itaque accusantium ut.', 'Queen said to herself; ''his eyes are so VERY wide, but she could not swim. He sent them word I had it written down: but I can''t show it you myself,'' the Mock Turtle. ''Very much indeed,'' said Alice.', '1998-10-20', 14, 7, '16e418684d32b808a8b8b8da717b4990.png');
INSERT INTO public.noticia VALUES (306, 'Earum provident libero quia aut eos et.', 'Come on!'' So they sat down again very sadly and quietly, and looked very uncomfortable. The moment Alice felt a violent shake at the thought that she had someone to listen to her, And mentioned me.', '2000-09-05', 14, 6, '2834d4b00baeca06b925945428b7073c.png');
INSERT INTO public.noticia VALUES (307, 'Velit nam placeat et veniam.', 'CHAPTER XII. Alice''s Evidence ''Here!'' cried Alice, jumping up and repeat something now. Tell her to speak good English); ''now I''m opening out like the right house, because the Duchess said after a.', '1992-07-22', 12, 7, '9eca15a74e0a07aae1641775ccd392ad.png');
INSERT INTO public.noticia VALUES (308, 'Rerum minus aut ab pariatur dolor rerum natus quod.', 'Said the mouse doesn''t get out." Only I don''t understand. Where did they live at the other, and making quite a long breath, and till the puppy''s bark sounded quite faint in the sea, some children.', '2003-12-01', 12, 6, '8e093ac5a52a159669110fa5d7e0a997.png');
INSERT INTO public.noticia VALUES (309, 'Velit eaque sunt possimus quis numquam consequatur incidunt.', 'Alice. ''Well, I shan''t go, at any rate I''ll never go THERE again!'' said Alice desperately: ''he''s perfectly idiotic!'' And she began looking at the Queen, but she remembered how small she was nine.', '1977-02-26', 14, 6, '0725ea12d5572d1db4df0893f424b7f7.png');
INSERT INTO public.noticia VALUES (310, 'Dignissimos distinctio soluta eos ut placeat odio distinctio.', 'I do,'' said Alice indignantly, and she at once and put it to half-past one as long as it could go, and making quite a crowd of little cartwheels, and the sound of a water-well,'' said the King said.', '2013-02-02', 14, 5, '15d63605b1a5c5d337b4a0653b9cacb5.png');
INSERT INTO public.noticia VALUES (311, 'Consequatur veritatis velit consectetur ut sed.', 'RABBIT'' engraved upon it. She felt very lonely and low-spirited. In a little bottle on it, (''which certainly was not a bit hurt, and she at once to eat some of the words don''t FIT you,'' said the.', '1996-05-05', 15, 8, '6d45968f45e9aca8d0ee4ecaece5541b.png');
INSERT INTO public.noticia VALUES (312, 'Incidunt nemo veritatis sequi voluptatem molestias.', 'So they couldn''t see it?'' So she swallowed one of the leaves: ''I should like it put more simply--"Never imagine yourself not to her, one on each side to guard him; and near the centre of the.', '1993-06-30', 16, 5, '5533d2841557d908c47734b88c9c29ed.png');


--
-- TOC entry 2983 (class 0 OID 31132)
-- Dependencies: 206
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.password_reset_tokens VALUES ('marcio.osshiro@ifms.edu.br', '$2y$10$gZq8m9PuxqBxjIdr9jtNwOlRdI44i4rLhRsrd55715ariBjI8HkZ2', '2023-05-23 23:21:57');


--
-- TOC entry 2987 (class 0 OID 31156)
-- Dependencies: 210
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2982 (class 0 OID 31121)
-- Dependencies: 205
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2y$10$YhwEASFoIX0UwZBVKmm3QuzGFNvXKqyYhnY0VV/Fnlnxn2mXQ8soy', NULL, '2023-05-19 02:14:50', '2023-05-19 02:14:50');
INSERT INTO public.users VALUES (2, 'Marcio Osshiro', 'marcio.osshiro@ifms.edu.br', NULL, '$2y$10$mqF6zKcZEBx4StwV1.xTMOJyWvhHBy7L/Ahck7YEvLmkpuoxXOSSS', NULL, '2023-05-23 23:21:38', '2023-05-23 23:21:38');


--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 197
-- Name: autor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.autor_id_seq', 8, true);


--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 199
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 16, true);


--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 207
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 202
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 201
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 312, true);


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 209
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 204
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- TOC entry 2829 (class 2606 OID 29904)
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id);


--
-- TOC entry 2831 (class 2606 OID 29906)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 31151)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 31153)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 2835 (class 2606 OID 31118)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2833 (class 2606 OID 29908)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 31139)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 2847 (class 2606 OID 31164)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 2849 (class 2606 OID 31167)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 2837 (class 2606 OID 31131)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 2839 (class 2606 OID 31129)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2850 (class 1259 OID 31165)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 2851 (class 2606 OID 29942)
-- Name: noticia fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(id) NOT VALID;


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-05-23 22:28:22 -04

--
-- PostgreSQL database dump complete
--

