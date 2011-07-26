--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    body text,
    matchup_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer,
    like_count integer DEFAULT 0
);


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('articles_id_seq', 116, false);


--
-- Name: blogs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE blogs (
    id integer NOT NULL,
    body text,
    title character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    image_url character varying(255)
);


--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE blogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE blogs_id_seq OWNED BY blogs.id;


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('blogs_id_seq', 16, false);


--
-- Name: character_tips; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE character_tips (
    id integer NOT NULL,
    body text NOT NULL,
    user_id integer NOT NULL,
    character_id integer NOT NULL,
    type character varying(255),
    like_count integer DEFAULT 0,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: character_tips_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE character_tips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: character_tips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE character_tips_id_seq OWNED BY character_tips.id;


--
-- Name: character_tips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('character_tips_id_seq', 2, false);


--
-- Name: characters; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE characters (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);


--
-- Name: characters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: characters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE characters_id_seq OWNED BY characters.id;


--
-- Name: characters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('characters_id_seq', 36, false);


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE feedbacks (
    id integer NOT NULL,
    body text NOT NULL,
    referer character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE feedbacks_id_seq OWNED BY feedbacks.id;


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('feedbacks_id_seq', 47, false);


--
-- Name: likes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE likes (
    id integer NOT NULL,
    user_id integer,
    tip_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE likes_id_seq OWNED BY likes.id;


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('likes_id_seq', 10, false);


--
-- Name: matchups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE matchups (
    id integer NOT NULL,
    player integer,
    opponent integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: matchups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE matchups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: matchups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE matchups_id_seq OWNED BY matchups.id;


--
-- Name: matchups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('matchups_id_seq', 1226, false);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: tips; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tips (
    id integer NOT NULL,
    body text,
    matchup_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer,
    like_count integer DEFAULT 0,
    player character varying(255),
    opponent character varying(255)
);


--
-- Name: tips_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tips_id_seq OWNED BY tips.id;


--
-- Name: tips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('tips_id_seq', 235, false);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(128) DEFAULT ''::character varying NOT NULL,
    password_salt character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    remember_token character varying(255),
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    admin boolean,
    name character varying(255)
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 64, false);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE blogs ALTER COLUMN id SET DEFAULT nextval('blogs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE character_tips ALTER COLUMN id SET DEFAULT nextval('character_tips_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE characters ALTER COLUMN id SET DEFAULT nextval('characters_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE feedbacks ALTER COLUMN id SET DEFAULT nextval('feedbacks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE likes ALTER COLUMN id SET DEFAULT nextval('likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE matchups ALTER COLUMN id SET DEFAULT nextval('matchups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE tips ALTER COLUMN id SET DEFAULT nextval('tips_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY articles (id, body, matchup_id, created_at, updated_at, user_id, like_count) FROM stdin;
1	On a blocked Messiah kick, you can punish with Ultra 2	625	2011-01-24 01:28:33.652051	2011-03-09 02:27:05.475843	1	1
5	If you use instant overhead, Vega can punish with U1 or ex barcelona on hit.  Unless it kills Vega, be careful using yoga sniper, he has ages to charge while you're floating through the air (and he's probably holding down/back anyway if you hit him with it)	292	2011-01-24 03:41:18.59157	2011-01-24 03:41:18.59157	2	\N
6	Sakura's crouch fierce is a great anti- air. The only way to beat it is with jump in fierce with a knife. Even with the Knife it trades,  but in Cody's favor.	791	2011-01-24 07:13:40.090199	2011-01-24 07:13:40.090199	1	\N
7	Cody's Zonk knuckle can punish most of Ryu's pokes during footsies. Try to get into close range and release Zonk on reaction to them.	771	2011-01-24 07:19:58.137337	2011-01-24 07:19:58.137337	1	\N
8	A combo that works on Ryu in the corner: s.Fierce, c.Strong, HK.Ruffian, MK.Ruffian. (No Meter)	771	2011-01-24 07:21:55.537825	2011-01-24 07:21:55.537825	1	\N
9	If you block an ex wall dive on the way up, you can reversal cannon spike it as it goes to the wall on your other side.	502	2011-01-25 02:31:17.095045	2011-01-25 02:31:17.095045	2	\N
22	He can duck under kens fireballs	807	2011-01-29 01:17:53.706568	2011-01-29 01:17:53.706568	9	\N
24	At mid range Cammy can Ex kick through your "bad stone". 	785	2011-01-29 17:05:12.817495	2011-01-29 17:05:12.817495	1	\N
44	<iframe title="YouTube video player" class="youtube-player" type="text/html" width="350" height="226" src="http://www.youtube.com/embed/kSb6l2Cpvho" frameborder="0" allowFullScreen></iframe>	898	2011-02-02 07:51:42.72309	2011-02-02 07:51:42.72309	1	\N
56	Use rocks, anti-airs and normals to zone honda out. If hes within "jump in" distance and you throw a rock, he can score huge amounts of damage and a knock down on you. Use fake rocks a lot to frustrate Honda and score a bunch of anti-airs.\r\n	777	2011-02-21 05:46:14.527731	2011-02-23 06:45:43.75959	1	\N
57	In Super Honda can use his Ex Headbutt as a late anti-air. You shouldn't be jumping in on him anyway.	777	2011-02-21 05:50:12.579926	2011-02-23 06:43:15.228291	1	\N
58	At full screen you can throw hp. Rocks safely.	779	2011-02-21 05:56:06.934951	2011-02-21 05:56:06.934951	1	\N
59	At mid screen and closer Sim can punish rocks.	779	2011-02-21 05:56:59.779314	2011-02-21 05:56:59.779314	1	\N
60	Sim can be really annoying with his jumping fierce. If a Sim keeps throwing it out there you can make a guess and use Hk. ruffian to punish it. Its has long lasting frames and his arms might run into it. Use this opportunity to dash in and get in close. 	779	2011-02-21 06:02:02.15923	2011-02-21 06:02:02.15923	1	\N
61	Sometimes when you jump in on Sim he escapes with a teleport or backdash. Before landing do a input for a lk ruffian. Now if your jump in whiffs because of his backdash your sliding lk. ruffian will catch him.	779	2011-02-21 06:08:22.133596	2011-02-21 06:08:22.133596	1	\N
62	After you block her lk hurricane Sakura has frame advantage. This means that if you press a button she can stuff it with short and do a ex hurricane into a combo. This is one of her good frame traps.	791	2011-02-21 13:06:58.83234	2011-02-23 06:29:31.687179	1	\N
63	While pressuring Sakura be watch full of her Ex bar. She can do Ex uppercut as a reversal. The move comes out fast and she can FaDc it into bigger damage.	791	2011-02-21 13:08:32.884222	2011-02-23 06:28:55.112105	1	\N
64	Meter is really important in this match. While far away use focus to build some meter off the Sonic booms, but be careful and don't go overboard while doing it.  Inch your way in tell about mid screen and punish Guile's sonic boom with a Ex. ruffian slide. His booms come out fast so your going to have to buffer the inputs. 	778	2011-02-21 13:13:12.446374	2011-02-21 13:13:12.446374	1	\N
65	Block Blanka balls standing and punish with lp.Palm xx super if you have the meter. Punish with lp.Palm either way for damage and spacing reset. \r\nFollow the palm with a lp fireball for chip. 	1091	2011-02-21 19:26:25.343157	2011-02-21 19:26:25.343157	14	\N
66	Low counter is your friend here. Cammy starts a lot of combos of lows, so conditioning them to expect a counter can throw off their game.	1100	2011-02-21 19:27:28.432437	2011-02-21 19:27:28.432437	14	\N
67	mp.Fireball is amazing in the fight. Hawk is so tall he will still get hit with them, so he is forced to crouch. Jumping over them is almost impossible for Hawk, and will almost always lead to an hp.Palm followup. 	1099	2011-02-21 19:30:25.72047	2011-02-21 19:30:25.72047	14	\N
68	Like T. Hawk, Rufus gets shut down from full screen by mp.Fireball. He is too fat to jump over them easily, which shuts down his dive kick game. 	1115	2011-02-21 19:31:43.035619	2011-02-21 19:31:43.035619	14	\N
69	Ryu players don't expect to lose a fireball war, but a Gouken who is mindful of Ryu's EX meter can out-fireball Ryu and punish heavily with palms and demonflip sweeps. After a fireball punish follow up with safejump demon flip mixups to keep Ryu down. \r\n\r\nA fun trick against Ryu is after a few fireball punishes with a demonflip Ryu will be desperate to SRK the demonflip. After Ryu does his fireball, delay slightly, then Demonflip parry. You will absorb the SRK and be able to punish with a huge cr.HP xx EX Palm combo (pain-train).\r\n\r\nThe delay is to make the SRK too late for the reversal window so it doesn't break the parry. 	1086	2011-02-21 19:37:43.618956	2011-02-21 19:37:43.618956	14	\N
70	High counter headstomps, but DON'T counter EX headstomps. He jumps off you too quickly to get tagged by the counter, and then you eat a ton of gray damage and the fist follow up. 	1098	2011-02-21 19:38:50.432445	2011-02-21 19:38:50.432445	14	\N
71	ElF loses to EX counters a lot, but his flip-back throw (?) will cause Gouken a lot of problems. Gouken's back dash is ass so he has trouble back dashing out of ElF mixups.\r\n\r\nOne awesome trick vs ElF is to bait a reversal Ultra one after a knockdown. Do the correctly spaced demonflip slide while he wakes up. If the timing is right, you will slide underneath ElF while he jumps into the air, go behind him, and recover before he does, letting you forward dash into a pain train combo (cr.HP xx EX Palm -> (mp.Palm or HK tatsu or whatever)	1114	2011-02-21 20:04:29.46521	2011-02-21 20:04:29.46521	14	\N
72	Ibuki likes to be airborne a lot, so mp and hp fireballs are very helpful here. Don't get too predictable, or the neck breaker slide will start to come out to punish. \r\n\r\nWakeup pressure from the air knives can be beaten by a high counter, which will tag Ibuki and send her flying. 	1110	2011-02-21 20:06:18.555702	2011-02-21 20:06:18.555702	14	\N
73	Also, Ryu's Ultra 1 is not armor breaking, it relies on it's multiple hits to break armor. With the right timing, you can counter it to avoid chip damage and if Ryu threw it out as a panicked wakeup while you are in close, you can tag him with the counter as well, then FADC into big damage or if you have super meter, cancel the counter into the super for a really easy punish. 	1086	2011-02-21 20:08:34.072303	2011-02-21 20:08:34.072303	14	\N
74	A fullscreen fireball war with Sagat will allow you to build meter then punish with an EX demonflip throw to make Sagat think twice about throwing fireballs. \r\n\r\nSagat's ultra 2 is not armor breaking, so the counter shenanigans that you can pull against Ryu work here too under the same conditions. 	1089	2011-02-21 20:10:13.199325	2011-02-21 20:10:13.199325	14	\N
75	A whiffed Ultra 2 that doesn't suck you in for chip can be countered by a fully charged Denjin for an insta-stun and an almost 0-death combo. I recommend U2 for Seth for the combos and pressure off the stun from it, since getting U1 off on Seth will be fairly rare	1116	2011-02-21 20:11:52.583623	2011-02-21 20:11:52.583623	14	\N
76	Vega's wall dives get stuffed by mp.Fireball and hp.Fireball. Learn the spacing so you can use the correct follow up (either mp.Palm hp.Palm or Demonflip Slide)	1097	2011-02-21 20:13:01.97598	2011-02-21 20:13:01.97598	14	\N
77	vs TK dive kick pressure, a late option select crouching fierce tech is the best option.  It's still tough to get out of that pressure.	155	2011-02-22 02:50:39.569705	2011-03-18 07:22:55.965487	17	1
78	E.Honda's Super and Ultra 1 both go through fireballs, making for a <b>painful</b> way to punish a Ryu that overuses them.	211	2011-02-22 05:09:30.21553	2011-02-22 05:09:30.21553	15	\N
79	If Blanka tries to chip you out with U1 Dash back after he goes up in the air and use your own U1, as seen here.\r\n\r\nhttp://www.youtube.com/watch?feature=player_detailpage&v=fkhVKnZLt0c#t=74s	881	2011-02-22 10:57:14.40614	2011-02-22 10:57:14.40614	18	\N
80	Use Safe jumps to try and bait out the EX spinning bird kick. This will burn Chun lis meter and allow you to punish with a lk. Ruffian. Or does he?	775	2011-02-22 18:31:58.18449	2011-02-23 02:04:53.679798	1	\N
81	When Sim jumps in the air you can anticipate the arms and begin focusing. Once you absorb the hit dash and and gain some ground.	779	2011-02-23 02:50:28.527236	2011-02-23 02:50:28.527236	1	\N
82	Be careful of Cody's Ex ruffian slide kick. It goes through fireballs and Cody can score a un-techable knock down. 	303	2011-02-23 02:52:30.081107	2011-02-23 02:52:30.081107	1	\N
83	You can stuff a Blank ball with a well timed jab.	951	2011-02-23 03:33:06.236939	2011-02-23 03:33:06.236939	1	\N
84	You can stuff a Blank ball with a well timed jab.	76	2011-02-23 03:33:15.116642	2011-02-23 03:33:15.116642	1	\N
85	You can stuff a Blank ball with a well timed jab.	601	2011-02-23 03:33:27.25147	2011-03-09 02:26:48.139536	1	1
86	Cammy can punish all Blanka balls, on hit or block.	496	2011-02-23 03:33:57.600927	2011-02-23 03:38:11.50538	1	\N
87	Cody has multiple tricks and techniques for punishing Blanka balls. Heres a video developed by option-select's Ryan hunter showing them. \r\n\r\n<br>\r\n</br>\r\n<iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/8GKewBW5lSE" frameborder="0" allowfullscreen></iframe>	776	2011-02-23 03:37:03.819792	2011-02-23 06:27:10.730412	1	\N
88	You can stuff a Blanka ball with a well timed jab.	496	2011-02-23 03:38:41.408736	2011-02-23 03:38:41.408736	1	\N
89	Ryu can hit Sim's jumping fierce with a uppercut and cancel into super, or FaDc ultra.	9	2011-02-23 03:40:24.423193	2011-03-19 06:37:50.654955	1	1
90	You can't punish Abel's roll with Seth's super, but you can punish it with Ultra 1.	1078	2011-02-23 03:54:57.557274	2011-02-23 03:56:42.570674	1	\N
91	You can stuff Seth's super with a short.	976	2011-02-23 03:57:42.841747	2011-02-23 03:57:42.841747	1	\N
92	Seth has multiple ways of setting you up for some mind games. If your geting thrown by Seth's command grab a lot, try anticipating it and back-dash.  His grab will wiff and you can punish for huge damage.	976	2011-02-23 03:59:54.088618	2011-02-23 06:25:44.290135	1	\N
93	Use ultra 1 to hit Abel out of his wheel kick.	1078	2011-02-23 04:05:27.254772	2011-02-23 04:05:27.254772	1	\N
94	If Sim uses a instant overhead and it hits, you can still hit Sim with U1.	394	2011-02-23 04:30:03.372468	2011-02-23 06:24:44.685141	1	\N
95	Scissor kicks get stuffed by Sim's back short. If Bison locks you in the corner stay calm and continue to stuff the kicks and tech the throws.	293	2011-02-23 04:33:47.560505	2011-02-23 06:24:08.727064	1	\N
96	Cammy can punish all forward Blanka balls on his and block. 	190	2011-02-23 06:18:45.387808	2011-02-23 06:18:45.387808	1	\N
97	Turtling Sakura out with rocks, anti-airs, and Ex.Ruffian slides to punish fireballs will force Sakura to try and get in on you. You have the advantage in the turtle war, so use fake rocks to lure a jump in. If she can't jump in on you and your anti-air is solid she will have no choice but to creep toward you on the ground. Then the match comes down to footsies.	791	2011-02-23 06:38:08.385212	2011-02-23 06:38:08.385212	1	\N
98	If the match comes down to footsies, Sakura will rely on standing and crouching medium kick. A well timed zonk knuckle can punish both and score you a knock down.	791	2011-02-23 06:42:05.619318	2011-02-23 06:42:05.619318	1	\N
99	Back medium punch can stop a Sumo butt flop on its way down. 	777	2011-02-23 06:49:43.078232	2011-02-23 06:57:02.790363	1	\N
100	Heres a great example of how you should and should not approach this match. \r\n\r\nIn the first match Cody jumped in a lot and ate a ton of damage. For the following matches he used rocks, normals, and anti - airs to frustrate honda and lock him out. Notice that every time Cody got in, if he didn't get out right away he took a bunch of damage. \r\n\r\n<br>\r\n</br>\r\n<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/ZL76sNQhlGo" frameborder="0" allowfullscreen></iframe>\r\n\r\n<br>\r\n</br>\r\n\r\nYour goal is to become the most frustrating thing in this person's life at that moment. Don't stray from the lameness.	777	2011-02-23 06:54:34.571701	2011-03-03 04:10:28.026658	1	2
101	Inch your way to about midscreen from Ryu. From here Adon has multiple options. He can overhead kick over fireballs, throw out his standing hard kick and if an opponent jumps, move forward and Rising Jaguar. If the opponent is in the corner it gives you even more options. Heres a video between Adon and GamerBee, both known for being very good at their characters.\r\n\r\n<br></br>\r\n\r\n<iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/ioagK6MHPe8" frameborder="0" allowfullscreen></iframe>\r\n\r\n<br></br>\r\n\r\nNotice how GamerBee eventually finds that sweet spot and consistently moves back into it to pressure Daigo.	71	2011-02-23 07:08:53.555728	2011-03-03 04:10:47.501354	1	1
103	aw\r\n	596	2011-03-04 08:22:12.582973	2011-03-04 08:22:12.582973	26	0
104	If Akuma keeps teleporting away from you in certain circumstances activate Ultra 2. This will follow the teleport and punish it when it's done.	53	2011-03-05 03:12:45.199494	2011-03-05 03:12:45.199494	1	0
105	buena lucha	600	2011-03-09 02:28:54.673472	2011-03-09 02:28:54.673472	28	0
106	Jab thunder knuckle can duck under and beat rekkas.	926	2011-03-10 03:10:44.178624	2011-03-10 03:10:44.178624	2	0
107	Against burning kick pressure, in addition to universal answers such as blocking and focus, Fei Long has extra tools to escape.  His ex chicken wing is projectile invulnerable, so is completely safe from burning kick.  His low forward and low fierce can also get him very low, allowing him to duck under burning kicks.	552	2011-03-10 03:16:24.872832	2011-03-10 03:26:06.204857	2	0
108	If you are doing a cross-up jump roundhouse, you can option select ex thunder knuckles.  Fei will fly away from you, and the ex thunder knuckle will hit him as he recovers from chicken wing, and you can punish with whatever.	926	2011-03-10 03:38:21.710657	2011-03-11 16:41:08.869828	2	1
109	Fei Longs have a nasty habit of doing Ex chicken wing on wake up. If you know its coming you can jump backwards and hit Fei Long as he lands. \r\n<br>\r\n<br>\r\n\r\n<iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/YV5iWbxyFKM" frameborder="0" allowfullscreen></iframe>\r\n\r\n<br>\r\n<br>\r\n\r\nHeres an example of that happening. ( Go to 1:35 )	926	2011-03-10 03:46:11.820351	2011-03-11 21:40:46.570862	1	1
110	During the animation of Rose's Ultra 2 (orbs) you can charge a zonk knuckle. If Rose throws something out there and you guess right the zonk knuckle will go through the orbs and smack her in the face. A good Rose won't be so liberal with her moves and will be used to people trying to blast through her orbs, so be liberal yourself.	790	2011-03-10 17:28:44.706387	2011-03-11 16:39:50.337595	1	0
111	After a blocked messiah kick theres a bit of a mix up game going on. Ryu can uppercut any of Rufus's 3 options unless Rufus delays it. If Ryu delays then he can punish a early messiah kick. Or both players can do nothing and return to neutral. 	30	2011-03-12 00:41:10.176005	2011-03-12 07:03:06.764518	1	0
112	Keep track of Rufus's meter throughout the match. Most Rufus's save their meter for Ex. Messiah kick, especially if they have enough to FADC into ultra. Try baiting it out and or punish with a ex. Zonk knuckle.	800	2011-03-12 00:47:22.739173	2011-03-13 16:22:20.743149	1	0
113	U1 punishes messiah kick unless he immediately LK follow-up fadc.	450	2011-03-13 04:57:32.93576	2011-03-13 04:57:32.93576	2	0
114	LET'S DO THIS 	155	2011-03-18 07:22:31.146607	2011-03-18 07:22:31.146607	30	0
115	At mid range Ex spiral arrow can go through Ryu's fireball.\r\n	491	2011-03-27 05:04:06.808499	2011-03-27 05:04:06.808499	1	0
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY blogs (id, body, title, created_at, updated_at, image_url) FROM stdin;
15	<p>\r\nEvil Ryu, Oni Akuma and the twins have been added to the roster! Now that arcades here, everyone's either trying to learn the twins or find out how to defeat them.\r\n</p>\r\n\r\n<p>\r\nI've been really busy lately, but still plan on adding more features soon, maybe even making it a weekly update. Thank you for all the suggestions and feedback! I wouldn't be able to make this site better without your continued help.\r\n</p>\r\n\r\n<p>\r\nGood luck in your games and welcome to Matchuptips.com\r\n</p>\r\n<p>\r\n<i> - WaKkWaKk </i>\r\n</p>	Matchuptips.com has gone Arcade Edition! 	2011-06-27 14:37:26.22444	2011-07-01 01:10:53.686137	sf4logo.jpg
\.


--
-- Data for Name: character_tips; Type: TABLE DATA; Schema: public; Owner: -
--

COPY character_tips (id, body, user_id, character_id, type, like_count, created_at, updated_at) FROM stdin;
1	You can stuff all non EX.blanka balls with a well timed jab.	35	6	\N	0	2011-04-16 04:29:51.664592	2011-04-16 04:29:51.664592
\.


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY characters (id, created_at, updated_at, name) FROM stdin;
1	2011-01-20 14:11:20.634277	2011-01-20 14:11:20.634277	Ryu
2	2011-01-20 14:11:20.754645	2011-01-20 14:11:20.754645	Ken
3	2011-01-20 14:11:20.757286	2011-01-20 14:11:20.757286	Adon
4	2011-01-20 14:11:20.759691	2011-01-20 14:11:20.759691	Sagat
5	2011-01-20 14:11:20.762119	2011-01-20 14:11:20.762119	Chun-Li
6	2011-01-20 14:11:20.764765	2011-01-20 14:11:20.764765	Blanka
7	2011-01-20 14:11:20.767168	2011-01-20 14:11:20.767168	E. Honda
8	2011-01-20 14:11:20.769497	2011-01-20 14:11:20.769497	Guile
9	2011-01-20 14:11:20.773752	2011-01-20 14:11:20.773752	Dhalsim
10	2011-01-20 14:11:20.776639	2011-01-20 14:11:20.776639	Zangief
11	2011-01-20 14:11:20.780043	2011-01-20 14:11:20.780043	Balrog
12	2011-01-20 14:11:20.782661	2011-01-20 14:11:20.782661	Vega
13	2011-01-20 14:11:20.785256	2011-01-20 14:11:20.785256	M. Bison
14	2011-01-20 14:11:20.78776	2011-01-20 14:11:20.78776	T. Hawk
15	2011-01-20 14:11:20.790262	2011-01-20 14:11:20.790262	Cammy
16	2011-01-20 14:11:20.866625	2011-01-20 14:11:20.866625	Fei Long
17	2011-01-20 14:11:20.869233	2011-01-20 14:11:20.869233	Dee Jay
18	2011-01-20 14:11:20.871714	2011-01-20 14:11:20.871714	Akuma
19	2011-01-20 14:11:20.875165	2011-01-20 14:11:20.875165	Guy
20	2011-01-20 14:11:20.877687	2011-01-20 14:11:20.877687	Rose
21	2011-01-20 14:11:20.880153	2011-01-20 14:11:20.880153	Sakura
22	2011-01-20 14:11:20.882635	2011-01-20 14:11:20.882635	Dan
23	2011-01-20 14:11:20.885104	2011-01-20 14:11:20.885104	Cody
24	2011-01-20 14:11:20.887531	2011-01-20 14:11:20.887531	Dudley
25	2011-01-20 14:11:20.890515	2011-01-20 14:11:20.890515	Ibuki
26	2011-01-20 14:11:20.897762	2011-01-20 14:11:20.897762	Makoto
27	2011-01-20 14:11:20.901275	2011-01-20 14:11:20.901275	C. Viper
28	2011-01-20 14:11:20.90382	2011-01-20 14:11:20.90382	Abel
29	2011-01-20 14:11:20.906405	2011-01-20 14:11:20.906405	El Fuerte
30	2011-01-20 14:11:20.908967	2011-01-20 14:11:20.908967	Rufus
31	2011-01-20 14:11:20.911455	2011-01-20 14:11:20.911455	Seth
32	2011-01-20 14:11:20.913888	2011-01-20 14:11:20.913888	Gouken
33	2011-01-20 14:11:20.916396	2011-01-20 14:11:20.916396	Juri
34	2011-01-20 14:11:20.919626	2011-01-20 14:11:20.919626	Hakan
35	2011-01-20 14:11:20.922194	2011-01-20 14:11:20.922194	Gen
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY feedbacks (id, body, referer, created_at, updated_at) FROM stdin;
12	Tips reflect entire matchup from both sides	Ash Skutches	2011-04-14 13:04:20.024067	2011-04-14 13:04:20.024067
13	Scott likes the tips for ( How to deal with a character )	Ash Skutches	2011-04-14 13:05:20.106427	2011-04-14 13:05:20.106427
14	but i'm saying that AvsB shouldn't even be treated differently from BvsA\r\none database with all chars general tips and one database with all pairs of chars matchup specific tips\r\nor how about this\r\nfirst page:select one or two chars\r\nand click "get tips"\r\nif they select one char it access general tips\r\nilf they select two chars it accesses matchup tips	Guest	2011-04-18 16:22:33.149767	2011-04-18 16:22:33.149767
19	since all matchups are given for each input char, it will eventually get quite long if a lot of people post\r\nwhereas if i want tips just for ryu/sim i should be able to specify both chars and get tips for only that matchup\r\nbut unless you get a lot of posts this is fine	Guest	2011-05-09 14:17:49.287585	2011-05-09 14:17:49.287585
20	Rounded edges for buttons and everything else for that matter.\r\n	Guest	2011-05-09 21:20:53.458946	2011-05-09 21:20:53.458946
24	When displaying a tip, Justin feels like the names should below the pictures. CODY VS HONDA	Guest	2011-05-12 15:06:52.373021	2011-05-12 15:06:52.373021
25	Like box should resize when not logged in.	Guest	2011-05-12 15:07:16.803092	2011-05-12 15:07:16.803092
27	Random tips should have name below picture ( Like main section should be).	Guest	2011-05-12 15:09:09.645365	2011-05-12 15:09:09.645365
29	Convert navigation to breadcrum	Guest	2011-05-12 15:10:32.547008	2011-05-12 15:10:32.547008
30	Tip bubbles should have comment corner arrow triangle thing. Like iphone text message.	Guest	2011-05-12 15:12:00.859375	2011-05-12 15:12:00.859375
32	Logo and facbook button feel like they have to much room below them. Possible solution is centering elements to fill in more white-space.	Guest	2011-05-12 15:16:30.107132	2011-05-12 15:16:30.107132
33	Messages ( Like tip successful ) sucks.	Guest	2011-05-12 15:16:51.675273	2011-05-12 15:16:51.675273
34	Instead of going to new tip page if not signed it, display message possible within post a tip sidebar box. Something like that cause its retarded now.	Guest	2011-05-12 15:18:21.498893	2011-05-12 15:18:21.498893
35	Logging in should re-direct back.	Justin Fedick	2011-05-12 15:18:49.588814	2011-05-12 15:18:49.588814
36	When you get to a specific matchup tip, you can contribute a tip right there.	Justin Fedick	2011-05-12 15:20:38.516794	2011-05-12 15:20:38.516794
37	Be able to add a tip on the character tip page.	Justin Fedick	2011-05-12 15:21:25.035661	2011-05-12 15:21:25.035661
38	More tips on matchups page for that particular matchup	Justin Fedick	2011-05-12 15:21:50.497273	2011-05-12 15:21:50.497273
39	Picture quality and execution is important. Better thumbnail picture and when you navigate to a Matchup you see larger pictures with names lock inside them	Justin Fedick	2011-05-12 15:24:52.458078	2011-05-12 15:24:52.458078
40	We need more people adding wisdom to this site!	Guest	2011-05-20 21:54:10.910271	2011-05-20 21:54:10.910271
41	Coming to website from www. url breaks connect.	Ash Skutches	2011-05-21 21:04:49.468186	2011-05-21 21:04:49.468186
42	Ash adding another tip after the first tip would be easier if you were to add a another tip button instead of just submit. like still have it submit but have the option to select another opponent and make another comment	Joseph Skutches	2011-05-21 21:19:00.759075	2011-05-21 21:19:00.759075
43	I like navigating to character then opponent.	Ash Skutches	2011-05-23 05:43:22.35342	2011-05-23 05:43:22.35342
44	Thumbs up thumbs down on the tips would help confirm that they actually work. 	Joham Prepetit	2011-05-23 06:00:01.587302	2011-05-23 06:00:01.587302
45	Also, tips should be organized as Player 1 (my character) then choose who i would like to see tips against. Video references would be nice also	Joham Prepetit	2011-05-23 06:02:07.646813	2011-05-23 06:02:07.646813
46	NEEDS BADASSNESS ULTIMATE ON CHARACTER PAGE\r\n\r\n- Krysta	Guest	2011-07-01 01:29:45.91599	2011-07-01 01:29:45.91599
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY likes (id, user_id, tip_id, created_at, updated_at) FROM stdin;
1	1	100	2011-03-03 04:10:24.836216	2011-03-03 04:10:24.836216
2	1	100	2011-03-03 04:10:27.975674	2011-03-03 04:10:27.975674
3	1	101	2011-03-03 04:10:47.483504	2011-03-03 04:10:47.483504
4	28	85	2011-03-09 02:26:48.026401	2011-03-09 02:26:48.026401
5	28	1	2011-03-09 02:27:05.47294	2011-03-09 02:27:05.47294
6	1	108	2011-03-11 16:41:08.495292	2011-03-11 16:41:08.495292
7	1	109	2011-03-11 21:40:46.376843	2011-03-11 21:40:46.376843
8	30	77	2011-03-18 07:22:55.862816	2011-03-18 07:22:55.862816
9	1	89	2011-03-19 06:37:50.412761	2011-03-19 06:37:50.412761
\.


--
-- Data for Name: matchups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY matchups (id, player, opponent, created_at, updated_at) FROM stdin;
1	1	1	2011-01-20 14:11:38.907598	2011-01-20 14:11:38.907598
2	1	2	2011-01-20 14:11:38.91722	2011-01-20 14:11:38.91722
3	1	3	2011-01-20 14:11:38.920429	2011-01-20 14:11:38.920429
4	1	4	2011-01-20 14:11:38.923488	2011-01-20 14:11:38.923488
5	1	5	2011-01-20 14:11:38.92683	2011-01-20 14:11:38.92683
6	1	6	2011-01-20 14:11:38.92984	2011-01-20 14:11:38.92984
7	1	7	2011-01-20 14:11:38.932874	2011-01-20 14:11:38.932874
8	1	8	2011-01-20 14:11:38.935823	2011-01-20 14:11:38.935823
9	1	9	2011-01-20 14:11:38.938749	2011-01-20 14:11:38.938749
10	1	10	2011-01-20 14:11:38.941659	2011-01-20 14:11:38.941659
11	1	11	2011-01-20 14:11:38.944592	2011-01-20 14:11:38.944592
12	1	12	2011-01-20 14:11:38.947515	2011-01-20 14:11:38.947515
13	1	13	2011-01-20 14:11:38.950456	2011-01-20 14:11:38.950456
14	1	14	2011-01-20 14:11:38.954177	2011-01-20 14:11:38.954177
15	1	15	2011-01-20 14:11:38.957323	2011-01-20 14:11:38.957323
16	1	16	2011-01-20 14:11:38.960351	2011-01-20 14:11:38.960351
17	1	17	2011-01-20 14:11:38.963325	2011-01-20 14:11:38.963325
18	1	18	2011-01-20 14:11:38.966293	2011-01-20 14:11:38.966293
19	1	19	2011-01-20 14:11:38.969248	2011-01-20 14:11:38.969248
20	1	20	2011-01-20 14:11:38.972157	2011-01-20 14:11:38.972157
21	1	21	2011-01-20 14:11:38.975046	2011-01-20 14:11:38.975046
22	1	22	2011-01-20 14:11:38.977901	2011-01-20 14:11:38.977901
23	1	23	2011-01-20 14:11:38.980856	2011-01-20 14:11:38.980856
24	1	24	2011-01-20 14:11:38.984281	2011-01-20 14:11:38.984281
25	1	25	2011-01-20 14:11:38.988157	2011-01-20 14:11:38.988157
26	1	26	2011-01-20 14:11:38.991222	2011-01-20 14:11:38.991222
27	1	27	2011-01-20 14:11:38.994144	2011-01-20 14:11:38.994144
28	1	28	2011-01-20 14:11:38.997065	2011-01-20 14:11:38.997065
29	1	29	2011-01-20 14:11:39.000043	2011-01-20 14:11:39.000043
30	1	30	2011-01-20 14:11:39.002946	2011-01-20 14:11:39.002946
31	1	31	2011-01-20 14:11:39.005802	2011-01-20 14:11:39.005802
32	1	32	2011-01-20 14:11:39.008775	2011-01-20 14:11:39.008775
33	1	33	2011-01-20 14:11:39.011824	2011-01-20 14:11:39.011824
34	1	34	2011-01-20 14:11:39.01474	2011-01-20 14:11:39.01474
35	1	35	2011-01-20 14:11:39.017614	2011-01-20 14:11:39.017614
36	2	1	2011-01-20 14:11:39.020745	2011-01-20 14:11:39.020745
37	2	2	2011-01-20 14:11:39.023627	2011-01-20 14:11:39.023627
38	2	3	2011-01-20 14:11:39.026496	2011-01-20 14:11:39.026496
39	2	4	2011-01-20 14:11:39.029339	2011-01-20 14:11:39.029339
40	2	5	2011-01-20 14:11:39.032229	2011-01-20 14:11:39.032229
41	2	6	2011-01-20 14:11:39.035162	2011-01-20 14:11:39.035162
42	2	7	2011-01-20 14:11:39.038035	2011-01-20 14:11:39.038035
43	2	8	2011-01-20 14:11:39.040882	2011-01-20 14:11:39.040882
44	2	9	2011-01-20 14:11:39.043827	2011-01-20 14:11:39.043827
45	2	10	2011-01-20 14:11:39.046692	2011-01-20 14:11:39.046692
46	2	11	2011-01-20 14:11:39.049562	2011-01-20 14:11:39.049562
47	2	12	2011-01-20 14:11:39.052403	2011-01-20 14:11:39.052403
48	2	13	2011-01-20 14:11:39.055709	2011-01-20 14:11:39.055709
49	2	14	2011-01-20 14:11:39.058723	2011-01-20 14:11:39.058723
50	2	15	2011-01-20 14:11:39.061677	2011-01-20 14:11:39.061677
51	2	16	2011-01-20 14:11:39.065347	2011-01-20 14:11:39.065347
52	2	17	2011-01-20 14:11:39.068202	2011-01-20 14:11:39.068202
53	2	18	2011-01-20 14:11:39.071048	2011-01-20 14:11:39.071048
54	2	19	2011-01-20 14:11:39.073912	2011-01-20 14:11:39.073912
55	2	20	2011-01-20 14:11:39.076765	2011-01-20 14:11:39.076765
56	2	21	2011-01-20 14:11:39.079607	2011-01-20 14:11:39.079607
57	2	22	2011-01-20 14:11:39.082492	2011-01-20 14:11:39.082492
58	2	23	2011-01-20 14:11:39.085338	2011-01-20 14:11:39.085338
59	2	24	2011-01-20 14:11:39.088236	2011-01-20 14:11:39.088236
60	2	25	2011-01-20 14:11:39.09114	2011-01-20 14:11:39.09114
61	2	26	2011-01-20 14:11:39.094001	2011-01-20 14:11:39.094001
62	2	27	2011-01-20 14:11:39.097633	2011-01-20 14:11:39.097633
63	2	28	2011-01-20 14:11:39.101026	2011-01-20 14:11:39.101026
64	2	29	2011-01-20 14:11:39.104765	2011-01-20 14:11:39.104765
65	2	30	2011-01-20 14:11:39.107862	2011-01-20 14:11:39.107862
66	2	31	2011-01-20 14:11:39.111095	2011-01-20 14:11:39.111095
67	2	32	2011-01-20 14:11:39.114146	2011-01-20 14:11:39.114146
68	2	33	2011-01-20 14:11:39.117116	2011-01-20 14:11:39.117116
69	2	34	2011-01-20 14:11:39.121167	2011-01-20 14:11:39.121167
70	2	35	2011-01-20 14:11:39.124196	2011-01-20 14:11:39.124196
71	3	1	2011-01-20 14:11:39.127227	2011-01-20 14:11:39.127227
72	3	2	2011-01-20 14:11:39.130255	2011-01-20 14:11:39.130255
73	3	3	2011-01-20 14:11:39.133338	2011-01-20 14:11:39.133338
74	3	4	2011-01-20 14:11:39.136451	2011-01-20 14:11:39.136451
75	3	5	2011-01-20 14:11:39.139544	2011-01-20 14:11:39.139544
76	3	6	2011-01-20 14:11:39.143357	2011-01-20 14:11:39.143357
77	3	7	2011-01-20 14:11:39.146368	2011-01-20 14:11:39.146368
78	3	8	2011-01-20 14:11:39.14934	2011-01-20 14:11:39.14934
79	3	9	2011-01-20 14:11:39.152401	2011-01-20 14:11:39.152401
80	3	10	2011-01-20 14:11:39.155419	2011-01-20 14:11:39.155419
81	3	11	2011-01-20 14:11:39.158432	2011-01-20 14:11:39.158432
82	3	12	2011-01-20 14:11:39.161447	2011-01-20 14:11:39.161447
83	3	13	2011-01-20 14:11:39.164409	2011-01-20 14:11:39.164409
84	3	14	2011-01-20 14:11:39.167696	2011-01-20 14:11:39.167696
85	3	15	2011-01-20 14:11:39.170714	2011-01-20 14:11:39.170714
86	3	16	2011-01-20 14:11:39.173726	2011-01-20 14:11:39.173726
87	3	17	2011-01-20 14:11:39.17676	2011-01-20 14:11:39.17676
88	3	18	2011-01-20 14:11:39.179711	2011-01-20 14:11:39.179711
89	3	19	2011-01-20 14:11:39.182737	2011-01-20 14:11:39.182737
90	3	20	2011-01-20 14:11:39.185706	2011-01-20 14:11:39.185706
91	3	21	2011-01-20 14:11:39.188669	2011-01-20 14:11:39.188669
92	3	22	2011-01-20 14:11:39.191813	2011-01-20 14:11:39.191813
93	3	23	2011-01-20 14:11:39.194909	2011-01-20 14:11:39.194909
94	3	24	2011-01-20 14:11:39.198011	2011-01-20 14:11:39.198011
95	3	25	2011-01-20 14:11:39.201107	2011-01-20 14:11:39.201107
96	3	26	2011-01-20 14:11:39.204282	2011-01-20 14:11:39.204282
97	3	27	2011-01-20 14:11:39.207482	2011-01-20 14:11:39.207482
98	3	28	2011-01-20 14:11:39.210531	2011-01-20 14:11:39.210531
99	3	29	2011-01-20 14:11:39.21405	2011-01-20 14:11:39.21405
100	3	30	2011-01-20 14:11:39.221002	2011-01-20 14:11:39.221002
101	3	31	2011-01-20 14:11:39.224762	2011-01-20 14:11:39.224762
102	3	32	2011-01-20 14:11:39.227849	2011-01-20 14:11:39.227849
103	3	33	2011-01-20 14:11:39.231102	2011-01-20 14:11:39.231102
104	3	34	2011-01-20 14:11:39.234246	2011-01-20 14:11:39.234246
105	3	35	2011-01-20 14:11:39.23727	2011-01-20 14:11:39.23727
106	4	1	2011-01-20 14:11:39.240319	2011-01-20 14:11:39.240319
107	4	2	2011-01-20 14:11:39.243351	2011-01-20 14:11:39.243351
108	4	3	2011-01-20 14:11:39.246361	2011-01-20 14:11:39.246361
109	4	4	2011-01-20 14:11:39.249439	2011-01-20 14:11:39.249439
110	4	5	2011-01-20 14:11:39.252433	2011-01-20 14:11:39.252433
111	4	6	2011-01-20 14:11:39.256307	2011-01-20 14:11:39.256307
112	4	7	2011-01-20 14:11:39.259557	2011-01-20 14:11:39.259557
113	4	8	2011-01-20 14:11:39.262781	2011-01-20 14:11:39.262781
114	4	9	2011-01-20 14:11:39.265806	2011-01-20 14:11:39.265806
115	4	10	2011-01-20 14:11:39.268903	2011-01-20 14:11:39.268903
116	4	11	2011-01-20 14:11:39.271929	2011-01-20 14:11:39.271929
117	4	12	2011-01-20 14:11:39.274902	2011-01-20 14:11:39.274902
118	4	13	2011-01-20 14:11:39.278016	2011-01-20 14:11:39.278016
119	4	14	2011-01-20 14:11:39.281089	2011-01-20 14:11:39.281089
120	4	15	2011-01-20 14:11:39.28423	2011-01-20 14:11:39.28423
121	4	16	2011-01-20 14:11:39.287884	2011-01-20 14:11:39.287884
122	4	17	2011-01-20 14:11:39.290856	2011-01-20 14:11:39.290856
123	4	18	2011-01-20 14:11:39.294039	2011-01-20 14:11:39.294039
124	4	19	2011-01-20 14:11:39.297037	2011-01-20 14:11:39.297037
125	4	20	2011-01-20 14:11:39.300011	2011-01-20 14:11:39.300011
126	4	21	2011-01-20 14:11:39.303084	2011-01-20 14:11:39.303084
127	4	22	2011-01-20 14:11:39.306097	2011-01-20 14:11:39.306097
128	4	23	2011-01-20 14:11:39.309093	2011-01-20 14:11:39.309093
129	4	24	2011-01-20 14:11:39.312287	2011-01-20 14:11:39.312287
130	4	25	2011-01-20 14:11:39.315444	2011-01-20 14:11:39.315444
131	4	26	2011-01-20 14:11:39.318538	2011-01-20 14:11:39.318538
132	4	27	2011-01-20 14:11:39.321621	2011-01-20 14:11:39.321621
133	4	28	2011-01-20 14:11:39.324715	2011-01-20 14:11:39.324715
134	4	29	2011-01-20 14:11:39.327709	2011-01-20 14:11:39.327709
135	4	30	2011-01-20 14:11:39.330741	2011-01-20 14:11:39.330741
136	4	31	2011-01-20 14:11:39.334156	2011-01-20 14:11:39.334156
137	4	32	2011-01-20 14:11:39.337722	2011-01-20 14:11:39.337722
138	4	33	2011-01-20 14:11:39.34181	2011-01-20 14:11:39.34181
139	4	34	2011-01-20 14:11:39.344934	2011-01-20 14:11:39.344934
140	4	35	2011-01-20 14:11:39.348538	2011-01-20 14:11:39.348538
141	5	1	2011-01-20 14:11:39.351847	2011-01-20 14:11:39.351847
142	5	2	2011-01-20 14:11:39.354992	2011-01-20 14:11:39.354992
143	5	3	2011-01-20 14:11:39.358094	2011-01-20 14:11:39.358094
144	5	4	2011-01-20 14:11:39.3611	2011-01-20 14:11:39.3611
145	5	5	2011-01-20 14:11:39.364764	2011-01-20 14:11:39.364764
146	5	6	2011-01-20 14:11:39.368029	2011-01-20 14:11:39.368029
147	5	7	2011-01-20 14:11:39.371107	2011-01-20 14:11:39.371107
148	5	8	2011-01-20 14:11:39.458538	2011-01-20 14:11:39.458538
149	5	9	2011-01-20 14:11:39.462493	2011-01-20 14:11:39.462493
150	5	10	2011-01-20 14:11:39.465814	2011-01-20 14:11:39.465814
151	5	11	2011-01-20 14:11:39.469132	2011-01-20 14:11:39.469132
152	5	12	2011-01-20 14:11:39.472318	2011-01-20 14:11:39.472318
153	5	13	2011-01-20 14:11:39.475483	2011-01-20 14:11:39.475483
154	5	14	2011-01-20 14:11:39.47864	2011-01-20 14:11:39.47864
155	5	15	2011-01-20 14:11:39.481769	2011-01-20 14:11:39.481769
156	5	16	2011-01-20 14:11:39.484908	2011-01-20 14:11:39.484908
157	5	17	2011-01-20 14:11:39.488047	2011-01-20 14:11:39.488047
158	5	18	2011-01-20 14:11:39.491118	2011-01-20 14:11:39.491118
159	5	19	2011-01-20 14:11:39.494313	2011-01-20 14:11:39.494313
160	5	20	2011-01-20 14:11:39.497377	2011-01-20 14:11:39.497377
161	5	21	2011-01-20 14:11:39.500517	2011-01-20 14:11:39.500517
162	5	22	2011-01-20 14:11:39.503661	2011-01-20 14:11:39.503661
163	5	23	2011-01-20 14:11:39.506768	2011-01-20 14:11:39.506768
164	5	24	2011-01-20 14:11:39.510231	2011-01-20 14:11:39.510231
165	5	25	2011-01-20 14:11:39.513424	2011-01-20 14:11:39.513424
166	5	26	2011-01-20 14:11:39.51668	2011-01-20 14:11:39.51668
167	5	27	2011-01-20 14:11:39.519739	2011-01-20 14:11:39.519739
168	5	28	2011-01-20 14:11:39.522761	2011-01-20 14:11:39.522761
169	5	29	2011-01-20 14:11:39.525812	2011-01-20 14:11:39.525812
170	5	30	2011-01-20 14:11:39.528796	2011-01-20 14:11:39.528796
171	5	31	2011-01-20 14:11:39.532481	2011-01-20 14:11:39.532481
172	5	32	2011-01-20 14:11:39.535503	2011-01-20 14:11:39.535503
173	5	33	2011-01-20 14:11:39.538463	2011-01-20 14:11:39.538463
174	5	34	2011-01-20 14:11:39.541578	2011-01-20 14:11:39.541578
175	5	35	2011-01-20 14:11:39.544617	2011-01-20 14:11:39.544617
176	6	1	2011-01-20 14:11:39.547695	2011-01-20 14:11:39.547695
177	6	2	2011-01-20 14:11:39.550719	2011-01-20 14:11:39.550719
178	6	3	2011-01-20 14:11:39.553703	2011-01-20 14:11:39.553703
179	6	4	2011-01-20 14:11:39.556785	2011-01-20 14:11:39.556785
180	6	5	2011-01-20 14:11:39.559758	2011-01-20 14:11:39.559758
181	6	6	2011-01-20 14:11:39.562751	2011-01-20 14:11:39.562751
182	6	7	2011-01-20 14:11:39.565856	2011-01-20 14:11:39.565856
183	6	8	2011-01-20 14:11:39.569136	2011-01-20 14:11:39.569136
184	6	9	2011-01-20 14:11:39.572761	2011-01-20 14:11:39.572761
185	6	10	2011-01-20 14:11:39.576213	2011-01-20 14:11:39.576213
186	6	11	2011-01-20 14:11:39.579323	2011-01-20 14:11:39.579323
187	6	12	2011-01-20 14:11:39.582449	2011-01-20 14:11:39.582449
188	6	13	2011-01-20 14:11:39.585389	2011-01-20 14:11:39.585389
189	6	14	2011-01-20 14:11:39.588345	2011-01-20 14:11:39.588345
190	6	15	2011-01-20 14:11:39.591286	2011-01-20 14:11:39.591286
191	6	16	2011-01-20 14:11:39.594232	2011-01-20 14:11:39.594232
192	6	17	2011-01-20 14:11:39.597349	2011-01-20 14:11:39.597349
193	6	18	2011-01-20 14:11:39.600399	2011-01-20 14:11:39.600399
194	6	19	2011-01-20 14:11:39.603358	2011-01-20 14:11:39.603358
195	6	20	2011-01-20 14:11:39.606335	2011-01-20 14:11:39.606335
196	6	21	2011-01-20 14:11:39.609221	2011-01-20 14:11:39.609221
197	6	22	2011-01-20 14:11:39.612246	2011-01-20 14:11:39.612246
198	6	23	2011-01-20 14:11:39.615343	2011-01-20 14:11:39.615343
199	6	24	2011-01-20 14:11:39.618277	2011-01-20 14:11:39.618277
200	6	25	2011-01-20 14:11:39.621437	2011-01-20 14:11:39.621437
201	6	26	2011-01-20 14:11:39.624494	2011-01-20 14:11:39.624494
202	6	27	2011-01-20 14:11:39.627406	2011-01-20 14:11:39.627406
203	6	28	2011-01-20 14:11:39.630341	2011-01-20 14:11:39.630341
204	6	29	2011-01-20 14:11:39.633271	2011-01-20 14:11:39.633271
205	6	30	2011-01-20 14:11:39.636275	2011-01-20 14:11:39.636275
206	6	31	2011-01-20 14:11:39.6392	2011-01-20 14:11:39.6392
207	6	32	2011-01-20 14:11:39.642073	2011-01-20 14:11:39.642073
208	6	33	2011-01-20 14:11:39.644972	2011-01-20 14:11:39.644972
209	6	34	2011-01-20 14:11:39.647916	2011-01-20 14:11:39.647916
210	6	35	2011-01-20 14:11:39.650834	2011-01-20 14:11:39.650834
211	7	1	2011-01-20 14:11:39.653836	2011-01-20 14:11:39.653836
212	7	2	2011-01-20 14:11:39.65676	2011-01-20 14:11:39.65676
213	7	3	2011-01-20 14:11:39.659644	2011-01-20 14:11:39.659644
214	7	4	2011-01-20 14:11:39.662545	2011-01-20 14:11:39.662545
215	7	5	2011-01-20 14:11:39.665936	2011-01-20 14:11:39.665936
216	7	6	2011-01-20 14:11:39.668938	2011-01-20 14:11:39.668938
217	7	7	2011-01-20 14:11:39.671851	2011-01-20 14:11:39.671851
218	7	8	2011-01-20 14:11:39.674763	2011-01-20 14:11:39.674763
219	7	9	2011-01-20 14:11:39.677715	2011-01-20 14:11:39.677715
220	7	10	2011-01-20 14:11:39.680626	2011-01-20 14:11:39.680626
221	7	11	2011-01-20 14:11:39.683494	2011-01-20 14:11:39.683494
222	7	12	2011-01-20 14:11:39.686763	2011-01-20 14:11:39.686763
223	7	13	2011-01-20 14:11:39.690537	2011-01-20 14:11:39.690537
224	7	14	2011-01-20 14:11:39.693936	2011-01-20 14:11:39.693936
225	7	15	2011-01-20 14:11:39.696935	2011-01-20 14:11:39.696935
226	7	16	2011-01-20 14:11:39.699927	2011-01-20 14:11:39.699927
227	7	17	2011-01-20 14:11:39.702826	2011-01-20 14:11:39.702826
228	7	18	2011-01-20 14:11:39.705689	2011-01-20 14:11:39.705689
229	7	19	2011-01-20 14:11:39.70854	2011-01-20 14:11:39.70854
230	7	20	2011-01-20 14:11:39.711378	2011-01-20 14:11:39.711378
231	7	21	2011-01-20 14:11:39.714524	2011-01-20 14:11:39.714524
232	7	22	2011-01-20 14:11:39.717522	2011-01-20 14:11:39.717522
233	7	23	2011-01-20 14:11:39.720468	2011-01-20 14:11:39.720468
234	7	24	2011-01-20 14:11:39.723359	2011-01-20 14:11:39.723359
235	7	25	2011-01-20 14:11:39.726296	2011-01-20 14:11:39.726296
236	7	26	2011-01-20 14:11:39.729181	2011-01-20 14:11:39.729181
237	7	27	2011-01-20 14:11:39.732679	2011-01-20 14:11:39.732679
238	7	28	2011-01-20 14:11:39.735661	2011-01-20 14:11:39.735661
239	7	29	2011-01-20 14:11:39.73854	2011-01-20 14:11:39.73854
240	7	30	2011-01-20 14:11:39.741397	2011-01-20 14:11:39.741397
241	7	31	2011-01-20 14:11:39.744237	2011-01-20 14:11:39.744237
242	7	32	2011-01-20 14:11:39.747085	2011-01-20 14:11:39.747085
243	7	33	2011-01-20 14:11:39.74994	2011-01-20 14:11:39.74994
244	7	34	2011-01-20 14:11:39.752783	2011-01-20 14:11:39.752783
245	7	35	2011-01-20 14:11:39.755658	2011-01-20 14:11:39.755658
246	8	1	2011-01-20 14:11:39.758522	2011-01-20 14:11:39.758522
247	8	2	2011-01-20 14:11:39.761457	2011-01-20 14:11:39.761457
248	8	3	2011-01-20 14:11:39.764404	2011-01-20 14:11:39.764404
249	8	4	2011-01-20 14:11:39.767261	2011-01-20 14:11:39.767261
250	8	5	2011-01-20 14:11:39.770109	2011-01-20 14:11:39.770109
251	8	6	2011-01-20 14:11:39.772972	2011-01-20 14:11:39.772972
252	8	7	2011-01-20 14:11:39.775878	2011-01-20 14:11:39.775878
253	8	8	2011-01-20 14:11:39.77877	2011-01-20 14:11:39.77877
254	8	9	2011-01-20 14:11:39.781634	2011-01-20 14:11:39.781634
255	8	10	2011-01-20 14:11:39.784459	2011-01-20 14:11:39.784459
256	8	11	2011-01-20 14:11:39.787303	2011-01-20 14:11:39.787303
257	8	12	2011-01-20 14:11:39.790145	2011-01-20 14:11:39.790145
258	8	13	2011-01-20 14:11:39.79303	2011-01-20 14:11:39.79303
259	8	14	2011-01-20 14:11:39.795901	2011-01-20 14:11:39.795901
260	8	15	2011-01-20 14:11:39.799326	2011-01-20 14:11:39.799326
261	8	16	2011-01-20 14:11:39.802344	2011-01-20 14:11:39.802344
262	8	17	2011-01-20 14:11:39.805817	2011-01-20 14:11:39.805817
263	8	18	2011-01-20 14:11:39.809605	2011-01-20 14:11:39.809605
264	8	19	2011-01-20 14:11:39.812738	2011-01-20 14:11:39.812738
265	8	20	2011-01-20 14:11:39.815827	2011-01-20 14:11:39.815827
266	8	21	2011-01-20 14:11:39.818861	2011-01-20 14:11:39.818861
267	8	22	2011-01-20 14:11:39.821854	2011-01-20 14:11:39.821854
268	8	23	2011-01-20 14:11:39.824773	2011-01-20 14:11:39.824773
269	8	24	2011-01-20 14:11:39.828019	2011-01-20 14:11:39.828019
270	8	25	2011-01-20 14:11:39.830993	2011-01-20 14:11:39.830993
271	8	26	2011-01-20 14:11:39.833904	2011-01-20 14:11:39.833904
272	8	27	2011-01-20 14:11:39.836765	2011-01-20 14:11:39.836765
273	8	28	2011-01-20 14:11:39.839613	2011-01-20 14:11:39.839613
274	8	29	2011-01-20 14:11:39.842625	2011-01-20 14:11:39.842625
275	8	30	2011-01-20 14:11:39.845517	2011-01-20 14:11:39.845517
276	8	31	2011-01-20 14:11:39.848462	2011-01-20 14:11:39.848462
277	8	32	2011-01-20 14:11:39.851332	2011-01-20 14:11:39.851332
278	8	33	2011-01-20 14:11:39.85419	2011-01-20 14:11:39.85419
279	8	34	2011-01-20 14:11:39.857062	2011-01-20 14:11:39.857062
280	8	35	2011-01-20 14:11:39.86004	2011-01-20 14:11:39.86004
281	9	1	2011-01-20 14:11:39.862923	2011-01-20 14:11:39.862923
282	9	2	2011-01-20 14:11:39.866137	2011-01-20 14:11:39.866137
283	9	3	2011-01-20 14:11:39.869004	2011-01-20 14:11:39.869004
284	9	4	2011-01-20 14:11:39.871881	2011-01-20 14:11:39.871881
285	9	5	2011-01-20 14:11:39.874748	2011-01-20 14:11:39.874748
286	9	6	2011-01-20 14:11:39.877617	2011-01-20 14:11:39.877617
287	9	7	2011-01-20 14:11:39.88049	2011-01-20 14:11:39.88049
288	9	8	2011-01-20 14:11:39.883361	2011-01-20 14:11:39.883361
289	9	9	2011-01-20 14:11:39.886052	2011-01-20 14:11:39.886052
290	9	10	2011-01-20 14:11:39.88903	2011-01-20 14:11:39.88903
291	9	11	2011-01-20 14:11:39.892134	2011-01-20 14:11:39.892134
292	9	12	2011-01-20 14:11:39.895036	2011-01-20 14:11:39.895036
293	9	13	2011-01-20 14:11:39.897926	2011-01-20 14:11:39.897926
294	9	14	2011-01-20 14:11:39.901072	2011-01-20 14:11:39.901072
295	9	15	2011-01-20 14:11:39.904158	2011-01-20 14:11:39.904158
296	9	16	2011-01-20 14:11:39.907171	2011-01-20 14:11:39.907171
297	9	17	2011-01-20 14:11:39.910626	2011-01-20 14:11:39.910626
298	9	18	2011-01-20 14:11:39.913609	2011-01-20 14:11:39.913609
299	9	19	2011-01-20 14:11:39.916788	2011-01-20 14:11:39.916788
300	9	20	2011-01-20 14:11:39.920262	2011-01-20 14:11:39.920262
301	9	21	2011-01-20 14:11:39.923952	2011-01-20 14:11:39.923952
302	9	22	2011-01-20 14:11:39.92745	2011-01-20 14:11:39.92745
303	9	23	2011-01-20 14:11:39.930541	2011-01-20 14:11:39.930541
304	9	24	2011-01-20 14:11:39.933567	2011-01-20 14:11:39.933567
305	9	25	2011-01-20 14:11:39.936578	2011-01-20 14:11:39.936578
306	9	26	2011-01-20 14:11:39.939627	2011-01-20 14:11:39.939627
307	9	27	2011-01-20 14:11:39.942687	2011-01-20 14:11:39.942687
308	9	28	2011-01-20 14:11:39.945687	2011-01-20 14:11:39.945687
309	9	29	2011-01-20 14:11:39.94867	2011-01-20 14:11:39.94867
310	9	30	2011-01-20 14:11:39.95156	2011-01-20 14:11:39.95156
311	9	31	2011-01-20 14:11:39.95542	2011-01-20 14:11:39.95542
312	9	32	2011-01-20 14:11:39.958583	2011-01-20 14:11:39.958583
313	9	33	2011-01-20 14:11:39.961564	2011-01-20 14:11:39.961564
314	9	34	2011-01-20 14:11:39.964575	2011-01-20 14:11:39.964575
315	9	35	2011-01-20 14:11:39.967539	2011-01-20 14:11:39.967539
316	10	1	2011-01-20 14:11:39.970561	2011-01-20 14:11:39.970561
317	10	2	2011-01-20 14:11:39.973597	2011-01-20 14:11:39.973597
318	10	3	2011-01-20 14:11:39.97739	2011-01-20 14:11:39.97739
319	10	4	2011-01-20 14:11:39.980348	2011-01-20 14:11:39.980348
320	10	5	2011-01-20 14:11:39.983368	2011-01-20 14:11:39.983368
321	10	6	2011-01-20 14:11:39.986311	2011-01-20 14:11:39.986311
322	10	7	2011-01-20 14:11:39.989282	2011-01-20 14:11:39.989282
323	10	8	2011-01-20 14:11:39.992195	2011-01-20 14:11:39.992195
324	10	9	2011-01-20 14:11:39.995098	2011-01-20 14:11:39.995098
325	10	10	2011-01-20 14:11:39.998049	2011-01-20 14:11:39.998049
326	10	11	2011-01-20 14:11:40.00099	2011-01-20 14:11:40.00099
327	10	12	2011-01-20 14:11:40.003883	2011-01-20 14:11:40.003883
328	10	13	2011-01-20 14:11:40.006782	2011-01-20 14:11:40.006782
329	10	14	2011-01-20 14:11:40.009704	2011-01-20 14:11:40.009704
330	10	15	2011-01-20 14:11:40.09794	2011-01-20 14:11:40.09794
331	10	16	2011-01-20 14:11:40.101255	2011-01-20 14:11:40.101255
332	10	17	2011-01-20 14:11:40.104478	2011-01-20 14:11:40.104478
333	10	18	2011-01-20 14:11:40.107769	2011-01-20 14:11:40.107769
334	10	19	2011-01-20 14:11:40.110904	2011-01-20 14:11:40.110904
335	10	20	2011-01-20 14:11:40.113991	2011-01-20 14:11:40.113991
336	10	21	2011-01-20 14:11:40.117206	2011-01-20 14:11:40.117206
337	10	22	2011-01-20 14:11:40.120336	2011-01-20 14:11:40.120336
338	10	23	2011-01-20 14:11:40.123406	2011-01-20 14:11:40.123406
339	10	24	2011-01-20 14:11:40.126444	2011-01-20 14:11:40.126444
340	10	25	2011-01-20 14:11:40.129487	2011-01-20 14:11:40.129487
341	10	26	2011-01-20 14:11:40.133102	2011-01-20 14:11:40.133102
342	10	27	2011-01-20 14:11:40.136245	2011-01-20 14:11:40.136245
343	10	28	2011-01-20 14:11:40.139363	2011-01-20 14:11:40.139363
344	10	29	2011-01-20 14:11:40.142486	2011-01-20 14:11:40.142486
345	10	30	2011-01-20 14:11:40.145552	2011-01-20 14:11:40.145552
346	10	31	2011-01-20 14:11:40.149156	2011-01-20 14:11:40.149156
347	10	32	2011-01-20 14:11:40.152447	2011-01-20 14:11:40.152447
348	10	33	2011-01-20 14:11:40.155964	2011-01-20 14:11:40.155964
349	10	34	2011-01-20 14:11:40.159807	2011-01-20 14:11:40.159807
350	10	35	2011-01-20 14:11:40.163039	2011-01-20 14:11:40.163039
351	11	1	2011-01-20 14:11:40.166459	2011-01-20 14:11:40.166459
352	11	2	2011-01-20 14:11:40.169579	2011-01-20 14:11:40.169579
353	11	3	2011-01-20 14:11:40.17259	2011-01-20 14:11:40.17259
354	11	4	2011-01-20 14:11:40.175543	2011-01-20 14:11:40.175543
355	11	5	2011-01-20 14:11:40.178469	2011-01-20 14:11:40.178469
356	11	6	2011-01-20 14:11:40.181456	2011-01-20 14:11:40.181456
357	11	7	2011-01-20 14:11:40.184391	2011-01-20 14:11:40.184391
358	11	8	2011-01-20 14:11:40.187312	2011-01-20 14:11:40.187312
359	11	9	2011-01-20 14:11:40.190305	2011-01-20 14:11:40.190305
360	11	10	2011-01-20 14:11:40.193517	2011-01-20 14:11:40.193517
361	11	11	2011-01-20 14:11:40.196474	2011-01-20 14:11:40.196474
362	11	12	2011-01-20 14:11:40.199745	2011-01-20 14:11:40.199745
363	11	13	2011-01-20 14:11:40.202689	2011-01-20 14:11:40.202689
364	11	14	2011-01-20 14:11:40.205607	2011-01-20 14:11:40.205607
365	11	15	2011-01-20 14:11:40.208512	2011-01-20 14:11:40.208512
366	11	16	2011-01-20 14:11:40.211413	2011-01-20 14:11:40.211413
367	11	17	2011-01-20 14:11:40.21432	2011-01-20 14:11:40.21432
368	11	18	2011-01-20 14:11:40.217489	2011-01-20 14:11:40.217489
369	11	19	2011-01-20 14:11:40.220477	2011-01-20 14:11:40.220477
370	11	20	2011-01-20 14:11:40.223388	2011-01-20 14:11:40.223388
371	11	21	2011-01-20 14:11:40.226248	2011-01-20 14:11:40.226248
372	11	22	2011-01-20 14:11:40.229088	2011-01-20 14:11:40.229088
373	11	23	2011-01-20 14:11:40.232158	2011-01-20 14:11:40.232158
374	11	24	2011-01-20 14:11:40.235057	2011-01-20 14:11:40.235057
375	11	25	2011-01-20 14:11:40.237908	2011-01-20 14:11:40.237908
376	11	26	2011-01-20 14:11:40.240801	2011-01-20 14:11:40.240801
377	11	27	2011-01-20 14:11:40.244279	2011-01-20 14:11:40.244279
378	11	28	2011-01-20 14:11:40.247138	2011-01-20 14:11:40.247138
379	11	29	2011-01-20 14:11:40.249994	2011-01-20 14:11:40.249994
380	11	30	2011-01-20 14:11:40.252838	2011-01-20 14:11:40.252838
381	11	31	2011-01-20 14:11:40.255768	2011-01-20 14:11:40.255768
382	11	32	2011-01-20 14:11:40.258649	2011-01-20 14:11:40.258649
383	11	33	2011-01-20 14:11:40.261594	2011-01-20 14:11:40.261594
384	11	34	2011-01-20 14:11:40.264565	2011-01-20 14:11:40.264565
385	11	35	2011-01-20 14:11:40.267485	2011-01-20 14:11:40.267485
386	12	1	2011-01-20 14:11:40.270505	2011-01-20 14:11:40.270505
387	12	2	2011-01-20 14:11:40.274209	2011-01-20 14:11:40.274209
388	12	3	2011-01-20 14:11:40.277938	2011-01-20 14:11:40.277938
389	12	4	2011-01-20 14:11:40.281038	2011-01-20 14:11:40.281038
390	12	5	2011-01-20 14:11:40.284002	2011-01-20 14:11:40.284002
391	12	6	2011-01-20 14:11:40.286889	2011-01-20 14:11:40.286889
392	12	7	2011-01-20 14:11:40.289774	2011-01-20 14:11:40.289774
393	12	8	2011-01-20 14:11:40.29265	2011-01-20 14:11:40.29265
394	12	9	2011-01-20 14:11:40.295638	2011-01-20 14:11:40.295638
395	12	10	2011-01-20 14:11:40.298576	2011-01-20 14:11:40.298576
396	12	11	2011-01-20 14:11:40.301455	2011-01-20 14:11:40.301455
397	12	12	2011-01-20 14:11:40.304326	2011-01-20 14:11:40.304326
398	12	13	2011-01-20 14:11:40.307197	2011-01-20 14:11:40.307197
399	12	14	2011-01-20 14:11:40.31006	2011-01-20 14:11:40.31006
400	12	15	2011-01-20 14:11:40.312908	2011-01-20 14:11:40.312908
401	12	16	2011-01-20 14:11:40.315984	2011-01-20 14:11:40.315984
402	12	17	2011-01-20 14:11:40.319748	2011-01-20 14:11:40.319748
403	12	18	2011-01-20 14:11:40.323432	2011-01-20 14:11:40.323432
404	12	19	2011-01-20 14:11:40.326735	2011-01-20 14:11:40.326735
405	12	20	2011-01-20 14:11:40.329679	2011-01-20 14:11:40.329679
406	12	21	2011-01-20 14:11:40.333099	2011-01-20 14:11:40.333099
407	12	22	2011-01-20 14:11:40.335814	2011-01-20 14:11:40.335814
408	12	23	2011-01-20 14:11:40.338754	2011-01-20 14:11:40.338754
409	12	24	2011-01-20 14:11:40.342137	2011-01-20 14:11:40.342137
410	12	25	2011-01-20 14:11:40.345714	2011-01-20 14:11:40.345714
411	12	26	2011-01-20 14:11:40.349048	2011-01-20 14:11:40.349048
412	12	27	2011-01-20 14:11:40.35267	2011-01-20 14:11:40.35267
413	12	28	2011-01-20 14:11:40.355816	2011-01-20 14:11:40.355816
414	12	29	2011-01-20 14:11:40.358786	2011-01-20 14:11:40.358786
415	12	30	2011-01-20 14:11:40.361765	2011-01-20 14:11:40.361765
416	12	31	2011-01-20 14:11:40.364674	2011-01-20 14:11:40.364674
417	12	32	2011-01-20 14:11:40.367578	2011-01-20 14:11:40.367578
418	12	33	2011-01-20 14:11:40.370469	2011-01-20 14:11:40.370469
419	12	34	2011-01-20 14:11:40.373407	2011-01-20 14:11:40.373407
420	12	35	2011-01-20 14:11:40.376318	2011-01-20 14:11:40.376318
421	13	1	2011-01-20 14:11:40.379198	2011-01-20 14:11:40.379198
422	13	2	2011-01-20 14:11:40.382087	2011-01-20 14:11:40.382087
423	13	3	2011-01-20 14:11:40.384935	2011-01-20 14:11:40.384935
424	13	4	2011-01-20 14:11:40.388916	2011-01-20 14:11:40.388916
425	13	5	2011-01-20 14:11:40.393166	2011-01-20 14:11:40.393166
426	13	6	2011-01-20 14:11:40.396349	2011-01-20 14:11:40.396349
427	13	7	2011-01-20 14:11:40.399855	2011-01-20 14:11:40.399855
428	13	8	2011-01-20 14:11:40.40283	2011-01-20 14:11:40.40283
429	13	9	2011-01-20 14:11:40.405725	2011-01-20 14:11:40.405725
430	13	10	2011-01-20 14:11:40.408605	2011-01-20 14:11:40.408605
431	13	11	2011-01-20 14:11:40.411459	2011-01-20 14:11:40.411459
432	13	12	2011-01-20 14:11:40.414332	2011-01-20 14:11:40.414332
433	13	13	2011-01-20 14:11:40.417367	2011-01-20 14:11:40.417367
434	13	14	2011-01-20 14:11:40.420408	2011-01-20 14:11:40.420408
435	13	15	2011-01-20 14:11:40.423338	2011-01-20 14:11:40.423338
436	13	16	2011-01-20 14:11:40.426219	2011-01-20 14:11:40.426219
437	13	17	2011-01-20 14:11:40.42916	2011-01-20 14:11:40.42916
438	13	18	2011-01-20 14:11:40.432325	2011-01-20 14:11:40.432325
439	13	19	2011-01-20 14:11:40.435299	2011-01-20 14:11:40.435299
440	13	20	2011-01-20 14:11:40.438279	2011-01-20 14:11:40.438279
441	13	21	2011-01-20 14:11:40.441832	2011-01-20 14:11:40.441832
442	13	22	2011-01-20 14:11:40.445309	2011-01-20 14:11:40.445309
443	13	23	2011-01-20 14:11:40.448487	2011-01-20 14:11:40.448487
444	13	24	2011-01-20 14:11:40.451399	2011-01-20 14:11:40.451399
445	13	25	2011-01-20 14:11:40.454495	2011-01-20 14:11:40.454495
446	13	26	2011-01-20 14:11:40.458775	2011-01-20 14:11:40.458775
447	13	27	2011-01-20 14:11:40.461869	2011-01-20 14:11:40.461869
448	13	28	2011-01-20 14:11:40.464887	2011-01-20 14:11:40.464887
449	13	29	2011-01-20 14:11:40.467864	2011-01-20 14:11:40.467864
450	13	30	2011-01-20 14:11:40.470851	2011-01-20 14:11:40.470851
451	13	31	2011-01-20 14:11:40.47407	2011-01-20 14:11:40.47407
452	13	32	2011-01-20 14:11:40.477012	2011-01-20 14:11:40.477012
453	13	33	2011-01-20 14:11:40.480051	2011-01-20 14:11:40.480051
454	13	34	2011-01-20 14:11:40.483006	2011-01-20 14:11:40.483006
455	13	35	2011-01-20 14:11:40.48595	2011-01-20 14:11:40.48595
456	14	1	2011-01-20 14:11:40.48889	2011-01-20 14:11:40.48889
457	14	2	2011-01-20 14:11:40.491855	2011-01-20 14:11:40.491855
458	14	3	2011-01-20 14:11:40.49476	2011-01-20 14:11:40.49476
459	14	4	2011-01-20 14:11:40.49769	2011-01-20 14:11:40.49769
460	14	5	2011-01-20 14:11:40.50056	2011-01-20 14:11:40.50056
461	14	6	2011-01-20 14:11:40.503551	2011-01-20 14:11:40.503551
462	14	7	2011-01-20 14:11:40.50698	2011-01-20 14:11:40.50698
463	14	8	2011-01-20 14:11:40.511411	2011-01-20 14:11:40.511411
464	14	9	2011-01-20 14:11:40.51456	2011-01-20 14:11:40.51456
465	14	10	2011-01-20 14:11:40.51765	2011-01-20 14:11:40.51765
466	14	11	2011-01-20 14:11:40.520629	2011-01-20 14:11:40.520629
467	14	12	2011-01-20 14:11:40.523655	2011-01-20 14:11:40.523655
468	14	13	2011-01-20 14:11:40.52657	2011-01-20 14:11:40.52657
469	14	14	2011-01-20 14:11:40.52951	2011-01-20 14:11:40.52951
470	14	15	2011-01-20 14:11:40.532469	2011-01-20 14:11:40.532469
471	14	16	2011-01-20 14:11:40.535344	2011-01-20 14:11:40.535344
472	14	17	2011-01-20 14:11:40.5382	2011-01-20 14:11:40.5382
473	14	18	2011-01-20 14:11:40.541046	2011-01-20 14:11:40.541046
474	14	19	2011-01-20 14:11:40.544842	2011-01-20 14:11:40.544842
475	14	20	2011-01-20 14:11:40.547992	2011-01-20 14:11:40.547992
476	14	21	2011-01-20 14:11:40.550991	2011-01-20 14:11:40.550991
477	14	22	2011-01-20 14:11:40.553867	2011-01-20 14:11:40.553867
478	14	23	2011-01-20 14:11:40.556749	2011-01-20 14:11:40.556749
479	14	24	2011-01-20 14:11:40.559616	2011-01-20 14:11:40.559616
480	14	25	2011-01-20 14:11:40.56269	2011-01-20 14:11:40.56269
481	14	26	2011-01-20 14:11:40.565642	2011-01-20 14:11:40.565642
482	14	27	2011-01-20 14:11:40.568498	2011-01-20 14:11:40.568498
483	14	28	2011-01-20 14:11:40.571351	2011-01-20 14:11:40.571351
484	14	29	2011-01-20 14:11:40.574252	2011-01-20 14:11:40.574252
485	14	30	2011-01-20 14:11:40.577123	2011-01-20 14:11:40.577123
486	14	31	2011-01-20 14:11:40.579997	2011-01-20 14:11:40.579997
487	14	32	2011-01-20 14:11:40.582858	2011-01-20 14:11:40.582858
488	14	33	2011-01-20 14:11:40.585698	2011-01-20 14:11:40.585698
489	14	34	2011-01-20 14:11:40.589039	2011-01-20 14:11:40.589039
490	14	35	2011-01-20 14:11:40.591933	2011-01-20 14:11:40.591933
491	15	1	2011-01-20 14:11:40.594804	2011-01-20 14:11:40.594804
492	15	2	2011-01-20 14:11:40.597777	2011-01-20 14:11:40.597777
493	15	3	2011-01-20 14:11:40.600817	2011-01-20 14:11:40.600817
494	15	4	2011-01-20 14:11:40.603858	2011-01-20 14:11:40.603858
495	15	5	2011-01-20 14:11:40.606818	2011-01-20 14:11:40.606818
496	15	6	2011-01-20 14:11:40.609695	2011-01-20 14:11:40.609695
497	15	7	2011-01-20 14:11:40.612641	2011-01-20 14:11:40.612641
498	15	8	2011-01-20 14:11:40.615603	2011-01-20 14:11:40.615603
499	15	9	2011-01-20 14:11:40.61863	2011-01-20 14:11:40.61863
500	15	10	2011-01-20 14:11:40.622649	2011-01-20 14:11:40.622649
501	15	11	2011-01-20 14:11:40.626052	2011-01-20 14:11:40.626052
502	15	12	2011-01-20 14:11:40.629684	2011-01-20 14:11:40.629684
503	15	13	2011-01-20 14:11:40.633564	2011-01-20 14:11:40.633564
504	15	14	2011-01-20 14:11:40.63662	2011-01-20 14:11:40.63662
505	15	15	2011-01-20 14:11:40.639584	2011-01-20 14:11:40.639584
506	15	16	2011-01-20 14:11:40.642475	2011-01-20 14:11:40.642475
507	15	17	2011-01-20 14:11:40.645374	2011-01-20 14:11:40.645374
508	15	18	2011-01-20 14:11:40.648382	2011-01-20 14:11:40.648382
509	15	19	2011-01-20 14:11:40.651302	2011-01-20 14:11:40.651302
510	15	20	2011-01-20 14:11:40.654286	2011-01-20 14:11:40.654286
511	15	21	2011-01-20 14:11:40.741031	2011-01-20 14:11:40.741031
512	15	22	2011-01-20 14:11:40.74495	2011-01-20 14:11:40.74495
513	15	23	2011-01-20 14:11:40.748296	2011-01-20 14:11:40.748296
514	15	24	2011-01-20 14:11:40.751495	2011-01-20 14:11:40.751495
515	15	25	2011-01-20 14:11:40.754572	2011-01-20 14:11:40.754572
516	15	26	2011-01-20 14:11:40.75766	2011-01-20 14:11:40.75766
517	15	27	2011-01-20 14:11:40.760714	2011-01-20 14:11:40.760714
518	15	28	2011-01-20 14:11:40.76391	2011-01-20 14:11:40.76391
519	15	29	2011-01-20 14:11:40.766988	2011-01-20 14:11:40.766988
520	15	30	2011-01-20 14:11:40.770063	2011-01-20 14:11:40.770063
521	15	31	2011-01-20 14:11:40.773186	2011-01-20 14:11:40.773186
522	15	32	2011-01-20 14:11:40.77628	2011-01-20 14:11:40.77628
523	15	33	2011-01-20 14:11:40.779343	2011-01-20 14:11:40.779343
524	15	34	2011-01-20 14:11:40.782411	2011-01-20 14:11:40.782411
525	15	35	2011-01-20 14:11:40.78544	2011-01-20 14:11:40.78544
526	16	1	2011-01-20 14:11:40.789206	2011-01-20 14:11:40.789206
527	16	2	2011-01-20 14:11:40.79214	2011-01-20 14:11:40.79214
528	16	3	2011-01-20 14:11:40.795141	2011-01-20 14:11:40.795141
529	16	4	2011-01-20 14:11:40.798114	2011-01-20 14:11:40.798114
530	16	5	2011-01-20 14:11:40.801067	2011-01-20 14:11:40.801067
531	16	6	2011-01-20 14:11:40.804038	2011-01-20 14:11:40.804038
532	16	7	2011-01-20 14:11:40.806998	2011-01-20 14:11:40.806998
533	16	8	2011-01-20 14:11:40.810035	2011-01-20 14:11:40.810035
534	16	9	2011-01-20 14:11:40.813215	2011-01-20 14:11:40.813215
535	16	10	2011-01-20 14:11:40.816207	2011-01-20 14:11:40.816207
536	16	11	2011-01-20 14:11:40.819269	2011-01-20 14:11:40.819269
537	16	12	2011-01-20 14:11:40.822517	2011-01-20 14:11:40.822517
538	16	13	2011-01-20 14:11:40.825446	2011-01-20 14:11:40.825446
539	16	14	2011-01-20 14:11:40.828359	2011-01-20 14:11:40.828359
540	16	15	2011-01-20 14:11:40.831298	2011-01-20 14:11:40.831298
541	16	16	2011-01-20 14:11:40.834265	2011-01-20 14:11:40.834265
542	16	17	2011-01-20 14:11:40.837186	2011-01-20 14:11:40.837186
543	16	18	2011-01-20 14:11:40.840102	2011-01-20 14:11:40.840102
544	16	19	2011-01-20 14:11:40.843026	2011-01-20 14:11:40.843026
545	16	20	2011-01-20 14:11:40.845941	2011-01-20 14:11:40.845941
546	16	21	2011-01-20 14:11:40.848959	2011-01-20 14:11:40.848959
547	16	22	2011-01-20 14:11:40.852141	2011-01-20 14:11:40.852141
548	16	23	2011-01-20 14:11:40.856156	2011-01-20 14:11:40.856156
549	16	24	2011-01-20 14:11:40.859752	2011-01-20 14:11:40.859752
550	16	25	2011-01-20 14:11:40.863342	2011-01-20 14:11:40.863342
551	16	26	2011-01-20 14:11:40.867072	2011-01-20 14:11:40.867072
552	16	27	2011-01-20 14:11:40.869969	2011-01-20 14:11:40.869969
553	16	28	2011-01-20 14:11:40.872969	2011-01-20 14:11:40.872969
554	16	29	2011-01-20 14:11:40.875943	2011-01-20 14:11:40.875943
555	16	30	2011-01-20 14:11:40.878822	2011-01-20 14:11:40.878822
556	16	31	2011-01-20 14:11:40.882064	2011-01-20 14:11:40.882064
557	16	32	2011-01-20 14:11:40.885011	2011-01-20 14:11:40.885011
558	16	33	2011-01-20 14:11:40.88799	2011-01-20 14:11:40.88799
559	16	34	2011-01-20 14:11:40.891016	2011-01-20 14:11:40.891016
560	16	35	2011-01-20 14:11:40.894036	2011-01-20 14:11:40.894036
561	17	1	2011-01-20 14:11:40.896979	2011-01-20 14:11:40.896979
562	17	2	2011-01-20 14:11:40.900365	2011-01-20 14:11:40.900365
563	17	3	2011-01-20 14:11:40.903228	2011-01-20 14:11:40.903228
564	17	4	2011-01-20 14:11:40.906107	2011-01-20 14:11:40.906107
565	17	5	2011-01-20 14:11:40.908976	2011-01-20 14:11:40.908976
566	17	6	2011-01-20 14:11:40.912032	2011-01-20 14:11:40.912032
567	17	7	2011-01-20 14:11:40.915	2011-01-20 14:11:40.915
568	17	8	2011-01-20 14:11:40.91796	2011-01-20 14:11:40.91796
569	17	9	2011-01-20 14:11:40.92102	2011-01-20 14:11:40.92102
570	17	10	2011-01-20 14:11:40.923977	2011-01-20 14:11:40.923977
571	17	11	2011-01-20 14:11:40.926911	2011-01-20 14:11:40.926911
572	17	12	2011-01-20 14:11:40.929805	2011-01-20 14:11:40.929805
573	17	13	2011-01-20 14:11:40.932695	2011-01-20 14:11:40.932695
574	17	14	2011-01-20 14:11:40.935537	2011-01-20 14:11:40.935537
575	17	15	2011-01-20 14:11:40.938426	2011-01-20 14:11:40.938426
576	17	16	2011-01-20 14:11:40.941295	2011-01-20 14:11:40.941295
577	17	17	2011-01-20 14:11:40.944148	2011-01-20 14:11:40.944148
578	17	18	2011-01-20 14:11:40.94702	2011-01-20 14:11:40.94702
579	17	19	2011-01-20 14:11:40.949882	2011-01-20 14:11:40.949882
580	17	20	2011-01-20 14:11:40.952854	2011-01-20 14:11:40.952854
581	17	21	2011-01-20 14:11:40.956154	2011-01-20 14:11:40.956154
582	17	22	2011-01-20 14:11:40.959177	2011-01-20 14:11:40.959177
583	17	23	2011-01-20 14:11:40.962093	2011-01-20 14:11:40.962093
584	17	24	2011-01-20 14:11:40.965051	2011-01-20 14:11:40.965051
585	17	25	2011-01-20 14:11:40.968004	2011-01-20 14:11:40.968004
586	17	26	2011-01-20 14:11:40.97095	2011-01-20 14:11:40.97095
587	17	27	2011-01-20 14:11:40.97441	2011-01-20 14:11:40.97441
588	17	28	2011-01-20 14:11:40.978355	2011-01-20 14:11:40.978355
589	17	29	2011-01-20 14:11:40.981493	2011-01-20 14:11:40.981493
590	17	30	2011-01-20 14:11:40.984453	2011-01-20 14:11:40.984453
591	17	31	2011-01-20 14:11:40.987337	2011-01-20 14:11:40.987337
592	17	32	2011-01-20 14:11:40.990279	2011-01-20 14:11:40.990279
593	17	33	2011-01-20 14:11:40.993175	2011-01-20 14:11:40.993175
594	17	34	2011-01-20 14:11:40.996241	2011-01-20 14:11:40.996241
595	17	35	2011-01-20 14:11:40.99898	2011-01-20 14:11:40.99898
596	18	1	2011-01-20 14:11:41.001869	2011-01-20 14:11:41.001869
597	18	2	2011-01-20 14:11:41.00473	2011-01-20 14:11:41.00473
598	18	3	2011-01-20 14:11:41.007579	2011-01-20 14:11:41.007579
599	18	4	2011-01-20 14:11:41.01045	2011-01-20 14:11:41.01045
600	18	5	2011-01-20 14:11:41.013461	2011-01-20 14:11:41.013461
601	18	6	2011-01-20 14:11:41.016386	2011-01-20 14:11:41.016386
602	18	7	2011-01-20 14:11:41.019294	2011-01-20 14:11:41.019294
603	18	8	2011-01-20 14:11:41.022792	2011-01-20 14:11:41.022792
604	18	9	2011-01-20 14:11:41.025706	2011-01-20 14:11:41.025706
605	18	10	2011-01-20 14:11:41.028615	2011-01-20 14:11:41.028615
606	18	11	2011-01-20 14:11:41.031484	2011-01-20 14:11:41.031484
607	18	12	2011-01-20 14:11:41.034435	2011-01-20 14:11:41.034435
608	18	13	2011-01-20 14:11:41.037414	2011-01-20 14:11:41.037414
609	18	14	2011-01-20 14:11:41.040316	2011-01-20 14:11:41.040316
610	18	15	2011-01-20 14:11:41.043242	2011-01-20 14:11:41.043242
611	18	16	2011-01-20 14:11:41.046194	2011-01-20 14:11:41.046194
612	18	17	2011-01-20 14:11:41.049092	2011-01-20 14:11:41.049092
613	18	18	2011-01-20 14:11:41.051947	2011-01-20 14:11:41.051947
614	18	19	2011-01-20 14:11:41.054801	2011-01-20 14:11:41.054801
615	18	20	2011-01-20 14:11:41.057692	2011-01-20 14:11:41.057692
616	18	21	2011-01-20 14:11:41.060555	2011-01-20 14:11:41.060555
617	18	22	2011-01-20 14:11:41.063462	2011-01-20 14:11:41.063462
618	18	23	2011-01-20 14:11:41.066384	2011-01-20 14:11:41.066384
619	18	24	2011-01-20 14:11:41.069245	2011-01-20 14:11:41.069245
620	18	25	2011-01-20 14:11:41.072102	2011-01-20 14:11:41.072102
621	18	26	2011-01-20 14:11:41.074992	2011-01-20 14:11:41.074992
622	18	27	2011-01-20 14:11:41.078399	2011-01-20 14:11:41.078399
623	18	28	2011-01-20 14:11:41.081306	2011-01-20 14:11:41.081306
624	18	29	2011-01-20 14:11:41.084198	2011-01-20 14:11:41.084198
625	18	30	2011-01-20 14:11:41.087067	2011-01-20 14:11:41.087067
626	18	31	2011-01-20 14:11:41.090431	2011-01-20 14:11:41.090431
627	18	32	2011-01-20 14:11:41.093892	2011-01-20 14:11:41.093892
628	18	33	2011-01-20 14:11:41.097239	2011-01-20 14:11:41.097239
629	18	34	2011-01-20 14:11:41.100691	2011-01-20 14:11:41.100691
630	18	35	2011-01-20 14:11:41.103749	2011-01-20 14:11:41.103749
631	19	1	2011-01-20 14:11:41.106685	2011-01-20 14:11:41.106685
632	19	2	2011-01-20 14:11:41.109582	2011-01-20 14:11:41.109582
633	19	3	2011-01-20 14:11:41.112468	2011-01-20 14:11:41.112468
634	19	4	2011-01-20 14:11:41.115382	2011-01-20 14:11:41.115382
635	19	5	2011-01-20 14:11:41.118375	2011-01-20 14:11:41.118375
636	19	6	2011-01-20 14:11:41.121534	2011-01-20 14:11:41.121534
637	19	7	2011-01-20 14:11:41.124504	2011-01-20 14:11:41.124504
638	19	8	2011-01-20 14:11:41.127413	2011-01-20 14:11:41.127413
639	19	9	2011-01-20 14:11:41.130437	2011-01-20 14:11:41.130437
640	19	10	2011-01-20 14:11:41.133963	2011-01-20 14:11:41.133963
641	19	11	2011-01-20 14:11:41.136893	2011-01-20 14:11:41.136893
642	19	12	2011-01-20 14:11:41.139827	2011-01-20 14:11:41.139827
643	19	13	2011-01-20 14:11:41.142749	2011-01-20 14:11:41.142749
644	19	14	2011-01-20 14:11:41.145602	2011-01-20 14:11:41.145602
645	19	15	2011-01-20 14:11:41.148489	2011-01-20 14:11:41.148489
646	19	16	2011-01-20 14:11:41.151401	2011-01-20 14:11:41.151401
647	19	17	2011-01-20 14:11:41.154355	2011-01-20 14:11:41.154355
648	19	18	2011-01-20 14:11:41.157364	2011-01-20 14:11:41.157364
649	19	19	2011-01-20 14:11:41.160463	2011-01-20 14:11:41.160463
650	19	20	2011-01-20 14:11:41.163398	2011-01-20 14:11:41.163398
651	19	21	2011-01-20 14:11:41.166342	2011-01-20 14:11:41.166342
652	19	22	2011-01-20 14:11:41.169335	2011-01-20 14:11:41.169335
653	19	23	2011-01-20 14:11:41.17226	2011-01-20 14:11:41.17226
654	19	24	2011-01-20 14:11:41.175146	2011-01-20 14:11:41.175146
655	19	25	2011-01-20 14:11:41.17849	2011-01-20 14:11:41.17849
656	19	26	2011-01-20 14:11:41.181435	2011-01-20 14:11:41.181435
657	19	27	2011-01-20 14:11:41.184332	2011-01-20 14:11:41.184332
658	19	28	2011-01-20 14:11:41.187179	2011-01-20 14:11:41.187179
659	19	29	2011-01-20 14:11:41.190016	2011-01-20 14:11:41.190016
660	19	30	2011-01-20 14:11:41.193033	2011-01-20 14:11:41.193033
661	19	31	2011-01-20 14:11:41.196041	2011-01-20 14:11:41.196041
662	19	32	2011-01-20 14:11:41.198977	2011-01-20 14:11:41.198977
663	19	33	2011-01-20 14:11:41.202173	2011-01-20 14:11:41.202173
664	19	34	2011-01-20 14:11:41.20517	2011-01-20 14:11:41.20517
665	19	35	2011-01-20 14:11:41.20856	2011-01-20 14:11:41.20856
666	20	1	2011-01-20 14:11:41.212127	2011-01-20 14:11:41.212127
667	20	2	2011-01-20 14:11:41.215283	2011-01-20 14:11:41.215283
668	20	3	2011-01-20 14:11:41.218183	2011-01-20 14:11:41.218183
669	20	4	2011-01-20 14:11:41.221187	2011-01-20 14:11:41.221187
670	20	5	2011-01-20 14:11:41.224118	2011-01-20 14:11:41.224118
671	20	6	2011-01-20 14:11:41.226992	2011-01-20 14:11:41.226992
672	20	7	2011-01-20 14:11:41.229859	2011-01-20 14:11:41.229859
673	20	8	2011-01-20 14:11:41.232758	2011-01-20 14:11:41.232758
674	20	9	2011-01-20 14:11:41.235677	2011-01-20 14:11:41.235677
675	20	10	2011-01-20 14:11:41.238629	2011-01-20 14:11:41.238629
676	20	11	2011-01-20 14:11:41.241575	2011-01-20 14:11:41.241575
677	20	12	2011-01-20 14:11:41.244523	2011-01-20 14:11:41.244523
678	20	13	2011-01-20 14:11:41.247539	2011-01-20 14:11:41.247539
679	20	14	2011-01-20 14:11:41.250533	2011-01-20 14:11:41.250533
680	20	15	2011-01-20 14:11:41.253496	2011-01-20 14:11:41.253496
681	20	16	2011-01-20 14:11:41.256655	2011-01-20 14:11:41.256655
682	20	17	2011-01-20 14:11:41.259819	2011-01-20 14:11:41.259819
683	20	18	2011-01-20 14:11:41.262869	2011-01-20 14:11:41.262869
684	20	19	2011-01-20 14:11:41.265874	2011-01-20 14:11:41.265874
685	20	20	2011-01-20 14:11:41.268779	2011-01-20 14:11:41.268779
686	20	21	2011-01-20 14:11:41.271656	2011-01-20 14:11:41.271656
687	20	22	2011-01-20 14:11:41.274537	2011-01-20 14:11:41.274537
688	20	23	2011-01-20 14:11:41.277431	2011-01-20 14:11:41.277431
689	20	24	2011-01-20 14:11:41.280332	2011-01-20 14:11:41.280332
690	20	25	2011-01-20 14:11:41.283239	2011-01-20 14:11:41.283239
691	20	26	2011-01-20 14:11:41.286162	2011-01-20 14:11:41.286162
692	20	27	2011-01-20 14:11:41.374073	2011-01-20 14:11:41.374073
693	20	28	2011-01-20 14:11:41.377428	2011-01-20 14:11:41.377428
694	20	29	2011-01-20 14:11:41.380773	2011-01-20 14:11:41.380773
695	20	30	2011-01-20 14:11:41.384165	2011-01-20 14:11:41.384165
696	20	31	2011-01-20 14:11:41.387313	2011-01-20 14:11:41.387313
697	20	32	2011-01-20 14:11:41.390459	2011-01-20 14:11:41.390459
698	20	33	2011-01-20 14:11:41.39368	2011-01-20 14:11:41.39368
699	20	34	2011-01-20 14:11:41.396776	2011-01-20 14:11:41.396776
700	20	35	2011-01-20 14:11:41.399865	2011-01-20 14:11:41.399865
701	21	1	2011-01-20 14:11:41.402904	2011-01-20 14:11:41.402904
702	21	2	2011-01-20 14:11:41.405907	2011-01-20 14:11:41.405907
703	21	3	2011-01-20 14:11:41.408994	2011-01-20 14:11:41.408994
704	21	4	2011-01-20 14:11:41.41211	2011-01-20 14:11:41.41211
705	21	5	2011-01-20 14:11:41.415206	2011-01-20 14:11:41.415206
706	21	6	2011-01-20 14:11:41.418246	2011-01-20 14:11:41.418246
707	21	7	2011-01-20 14:11:41.421259	2011-01-20 14:11:41.421259
708	21	8	2011-01-20 14:11:41.424432	2011-01-20 14:11:41.424432
709	21	9	2011-01-20 14:11:41.427475	2011-01-20 14:11:41.427475
710	21	10	2011-01-20 14:11:41.430443	2011-01-20 14:11:41.430443
711	21	11	2011-01-20 14:11:41.43344	2011-01-20 14:11:41.43344
712	21	12	2011-01-20 14:11:41.43644	2011-01-20 14:11:41.43644
713	21	13	2011-01-20 14:11:41.439413	2011-01-20 14:11:41.439413
714	21	14	2011-01-20 14:11:41.442893	2011-01-20 14:11:41.442893
715	21	15	2011-01-20 14:11:41.446565	2011-01-20 14:11:41.446565
716	21	16	2011-01-20 14:11:41.449872	2011-01-20 14:11:41.449872
717	21	17	2011-01-20 14:11:41.452855	2011-01-20 14:11:41.452855
718	21	18	2011-01-20 14:11:41.456706	2011-01-20 14:11:41.456706
719	21	19	2011-01-20 14:11:41.459883	2011-01-20 14:11:41.459883
720	21	20	2011-01-20 14:11:41.462912	2011-01-20 14:11:41.462912
721	21	21	2011-01-20 14:11:41.465993	2011-01-20 14:11:41.465993
722	21	22	2011-01-20 14:11:41.469018	2011-01-20 14:11:41.469018
723	21	23	2011-01-20 14:11:41.471959	2011-01-20 14:11:41.471959
724	21	24	2011-01-20 14:11:41.474902	2011-01-20 14:11:41.474902
725	21	25	2011-01-20 14:11:41.477847	2011-01-20 14:11:41.477847
726	21	26	2011-01-20 14:11:41.480771	2011-01-20 14:11:41.480771
727	21	27	2011-01-20 14:11:41.483699	2011-01-20 14:11:41.483699
728	21	28	2011-01-20 14:11:41.486615	2011-01-20 14:11:41.486615
729	21	29	2011-01-20 14:11:41.490017	2011-01-20 14:11:41.490017
730	21	30	2011-01-20 14:11:41.493018	2011-01-20 14:11:41.493018
731	21	31	2011-01-20 14:11:41.495956	2011-01-20 14:11:41.495956
732	21	32	2011-01-20 14:11:41.498884	2011-01-20 14:11:41.498884
733	21	33	2011-01-20 14:11:41.501791	2011-01-20 14:11:41.501791
734	21	34	2011-01-20 14:11:41.504676	2011-01-20 14:11:41.504676
735	21	35	2011-01-20 14:11:41.507582	2011-01-20 14:11:41.507582
736	22	1	2011-01-20 14:11:41.510452	2011-01-20 14:11:41.510452
737	22	2	2011-01-20 14:11:41.513438	2011-01-20 14:11:41.513438
738	22	3	2011-01-20 14:11:41.516411	2011-01-20 14:11:41.516411
739	22	4	2011-01-20 14:11:41.519322	2011-01-20 14:11:41.519322
740	22	5	2011-01-20 14:11:41.522376	2011-01-20 14:11:41.522376
741	22	6	2011-01-20 14:11:41.525352	2011-01-20 14:11:41.525352
742	22	7	2011-01-20 14:11:41.528253	2011-01-20 14:11:41.528253
743	22	8	2011-01-20 14:11:41.531239	2011-01-20 14:11:41.531239
744	22	9	2011-01-20 14:11:41.534434	2011-01-20 14:11:41.534434
745	22	10	2011-01-20 14:11:41.537282	2011-01-20 14:11:41.537282
746	22	11	2011-01-20 14:11:41.540152	2011-01-20 14:11:41.540152
747	22	12	2011-01-20 14:11:41.543072	2011-01-20 14:11:41.543072
748	22	13	2011-01-20 14:11:41.546027	2011-01-20 14:11:41.546027
749	22	14	2011-01-20 14:11:41.548947	2011-01-20 14:11:41.548947
750	22	15	2011-01-20 14:11:41.551831	2011-01-20 14:11:41.551831
751	22	16	2011-01-20 14:11:41.554734	2011-01-20 14:11:41.554734
752	22	17	2011-01-20 14:11:41.557827	2011-01-20 14:11:41.557827
753	22	18	2011-01-20 14:11:41.561331	2011-01-20 14:11:41.561331
754	22	19	2011-01-20 14:11:41.565173	2011-01-20 14:11:41.565173
755	22	20	2011-01-20 14:11:41.568235	2011-01-20 14:11:41.568235
756	22	21	2011-01-20 14:11:41.57116	2011-01-20 14:11:41.57116
757	22	22	2011-01-20 14:11:41.574466	2011-01-20 14:11:41.574466
758	22	23	2011-01-20 14:11:41.577826	2011-01-20 14:11:41.577826
759	22	24	2011-01-20 14:11:41.581449	2011-01-20 14:11:41.581449
760	22	25	2011-01-20 14:11:41.60804	2011-01-20 14:11:41.60804
761	22	26	2011-01-20 14:11:41.611756	2011-01-20 14:11:41.611756
762	22	27	2011-01-20 14:11:41.61557	2011-01-20 14:11:41.61557
763	22	28	2011-01-20 14:11:41.619078	2011-01-20 14:11:41.619078
764	22	29	2011-01-20 14:11:41.622734	2011-01-20 14:11:41.622734
765	22	30	2011-01-20 14:11:41.627398	2011-01-20 14:11:41.627398
766	22	31	2011-01-20 14:11:41.630503	2011-01-20 14:11:41.630503
767	22	32	2011-01-20 14:11:41.634044	2011-01-20 14:11:41.634044
768	22	33	2011-01-20 14:11:41.637195	2011-01-20 14:11:41.637195
769	22	34	2011-01-20 14:11:41.640251	2011-01-20 14:11:41.640251
770	22	35	2011-01-20 14:11:41.64323	2011-01-20 14:11:41.64323
771	23	1	2011-01-20 14:11:41.64679	2011-01-20 14:11:41.64679
772	23	2	2011-01-20 14:11:41.649852	2011-01-20 14:11:41.649852
773	23	3	2011-01-20 14:11:41.653257	2011-01-20 14:11:41.653257
774	23	4	2011-01-20 14:11:41.656667	2011-01-20 14:11:41.656667
775	23	5	2011-01-20 14:11:41.661056	2011-01-20 14:11:41.661056
776	23	6	2011-01-20 14:11:41.666086	2011-01-20 14:11:41.666086
777	23	7	2011-01-20 14:11:41.669295	2011-01-20 14:11:41.669295
778	23	8	2011-01-20 14:11:41.672769	2011-01-20 14:11:41.672769
779	23	9	2011-01-20 14:11:41.675992	2011-01-20 14:11:41.675992
780	23	10	2011-01-20 14:11:41.679537	2011-01-20 14:11:41.679537
781	23	11	2011-01-20 14:11:41.683368	2011-01-20 14:11:41.683368
782	23	12	2011-01-20 14:11:41.686909	2011-01-20 14:11:41.686909
783	23	13	2011-01-20 14:11:41.691797	2011-01-20 14:11:41.691797
784	23	14	2011-01-20 14:11:41.69552	2011-01-20 14:11:41.69552
785	23	15	2011-01-20 14:11:41.698633	2011-01-20 14:11:41.698633
786	23	16	2011-01-20 14:11:41.70219	2011-01-20 14:11:41.70219
787	23	17	2011-01-20 14:11:41.706003	2011-01-20 14:11:41.706003
788	23	18	2011-01-20 14:11:41.70971	2011-01-20 14:11:41.70971
789	23	19	2011-01-20 14:11:41.712809	2011-01-20 14:11:41.712809
790	23	20	2011-01-20 14:11:41.716864	2011-01-20 14:11:41.716864
791	23	21	2011-01-20 14:11:41.72053	2011-01-20 14:11:41.72053
792	23	22	2011-01-20 14:11:41.723698	2011-01-20 14:11:41.723698
793	23	23	2011-01-20 14:11:41.726929	2011-01-20 14:11:41.726929
794	23	24	2011-01-20 14:11:41.730326	2011-01-20 14:11:41.730326
795	23	25	2011-01-20 14:11:41.733678	2011-01-20 14:11:41.733678
796	23	26	2011-01-20 14:11:41.737069	2011-01-20 14:11:41.737069
797	23	27	2011-01-20 14:11:41.740374	2011-01-20 14:11:41.740374
798	23	28	2011-01-20 14:11:41.743322	2011-01-20 14:11:41.743322
799	23	29	2011-01-20 14:11:41.746317	2011-01-20 14:11:41.746317
800	23	30	2011-01-20 14:11:41.749859	2011-01-20 14:11:41.749859
801	23	31	2011-01-20 14:11:41.753139	2011-01-20 14:11:41.753139
802	23	32	2011-01-20 14:11:41.756121	2011-01-20 14:11:41.756121
803	23	33	2011-01-20 14:11:41.759698	2011-01-20 14:11:41.759698
804	23	34	2011-01-20 14:11:41.762836	2011-01-20 14:11:41.762836
805	23	35	2011-01-20 14:11:41.76586	2011-01-20 14:11:41.76586
806	24	1	2011-01-20 14:11:41.768728	2011-01-20 14:11:41.768728
807	24	2	2011-01-20 14:11:41.771587	2011-01-20 14:11:41.771587
808	24	3	2011-01-20 14:11:41.774521	2011-01-20 14:11:41.774521
809	24	4	2011-01-20 14:11:41.777368	2011-01-20 14:11:41.777368
810	24	5	2011-01-20 14:11:41.780242	2011-01-20 14:11:41.780242
811	24	6	2011-01-20 14:11:41.783112	2011-01-20 14:11:41.783112
812	24	7	2011-01-20 14:11:41.785987	2011-01-20 14:11:41.785987
813	24	8	2011-01-20 14:11:41.788832	2011-01-20 14:11:41.788832
814	24	9	2011-01-20 14:11:41.791819	2011-01-20 14:11:41.791819
815	24	10	2011-01-20 14:11:41.795348	2011-01-20 14:11:41.795348
816	24	11	2011-01-20 14:11:41.798973	2011-01-20 14:11:41.798973
817	24	12	2011-01-20 14:11:41.802183	2011-01-20 14:11:41.802183
818	24	13	2011-01-20 14:11:41.805273	2011-01-20 14:11:41.805273
819	24	14	2011-01-20 14:11:41.808237	2011-01-20 14:11:41.808237
820	24	15	2011-01-20 14:11:41.811275	2011-01-20 14:11:41.811275
821	24	16	2011-01-20 14:11:41.814273	2011-01-20 14:11:41.814273
822	24	17	2011-01-20 14:11:41.817192	2011-01-20 14:11:41.817192
823	24	18	2011-01-20 14:11:41.820089	2011-01-20 14:11:41.820089
824	24	19	2011-01-20 14:11:41.823629	2011-01-20 14:11:41.823629
825	24	20	2011-01-20 14:11:41.826588	2011-01-20 14:11:41.826588
826	24	21	2011-01-20 14:11:41.829484	2011-01-20 14:11:41.829484
827	24	22	2011-01-20 14:11:41.832408	2011-01-20 14:11:41.832408
828	24	23	2011-01-20 14:11:41.835386	2011-01-20 14:11:41.835386
829	24	24	2011-01-20 14:11:41.8383	2011-01-20 14:11:41.8383
830	24	25	2011-01-20 14:11:41.841201	2011-01-20 14:11:41.841201
831	24	26	2011-01-20 14:11:41.844065	2011-01-20 14:11:41.844065
832	24	27	2011-01-20 14:11:41.846954	2011-01-20 14:11:41.846954
833	24	28	2011-01-20 14:11:41.84981	2011-01-20 14:11:41.84981
834	24	29	2011-01-20 14:11:41.85265	2011-01-20 14:11:41.85265
835	24	30	2011-01-20 14:11:41.855542	2011-01-20 14:11:41.855542
836	24	31	2011-01-20 14:11:41.858433	2011-01-20 14:11:41.858433
837	24	32	2011-01-20 14:11:41.861404	2011-01-20 14:11:41.861404
838	24	33	2011-01-20 14:11:41.86436	2011-01-20 14:11:41.86436
839	24	34	2011-01-20 14:11:41.867965	2011-01-20 14:11:41.867965
840	24	35	2011-01-20 14:11:41.870834	2011-01-20 14:11:41.870834
841	25	1	2011-01-20 14:11:41.87371	2011-01-20 14:11:41.87371
842	25	2	2011-01-20 14:11:41.876697	2011-01-20 14:11:41.876697
843	25	3	2011-01-20 14:11:41.879551	2011-01-20 14:11:41.879551
844	25	4	2011-01-20 14:11:41.882415	2011-01-20 14:11:41.882415
845	25	5	2011-01-20 14:11:41.885265	2011-01-20 14:11:41.885265
846	25	6	2011-01-20 14:11:41.888023	2011-01-20 14:11:41.888023
847	25	7	2011-01-20 14:11:41.891056	2011-01-20 14:11:41.891056
848	25	8	2011-01-20 14:11:41.894053	2011-01-20 14:11:41.894053
849	25	9	2011-01-20 14:11:41.896941	2011-01-20 14:11:41.896941
850	25	10	2011-01-20 14:11:41.899816	2011-01-20 14:11:41.899816
851	25	11	2011-01-20 14:11:41.90266	2011-01-20 14:11:41.90266
852	25	12	2011-01-20 14:11:41.905501	2011-01-20 14:11:41.905501
853	25	13	2011-01-20 14:11:41.908452	2011-01-20 14:11:41.908452
854	25	14	2011-01-20 14:11:41.912709	2011-01-20 14:11:41.912709
855	25	15	2011-01-20 14:11:41.916125	2011-01-20 14:11:41.916125
856	25	16	2011-01-20 14:11:41.91929	2011-01-20 14:11:41.91929
857	25	17	2011-01-20 14:11:41.922343	2011-01-20 14:11:41.922343
858	25	18	2011-01-20 14:11:41.925394	2011-01-20 14:11:41.925394
859	25	19	2011-01-20 14:11:41.92839	2011-01-20 14:11:41.92839
860	25	20	2011-01-20 14:11:41.931422	2011-01-20 14:11:41.931422
861	25	21	2011-01-20 14:11:41.934797	2011-01-20 14:11:41.934797
862	25	22	2011-01-20 14:11:41.937732	2011-01-20 14:11:41.937732
863	25	23	2011-01-20 14:11:41.940634	2011-01-20 14:11:41.940634
864	25	24	2011-01-20 14:11:41.943534	2011-01-20 14:11:41.943534
865	25	25	2011-01-20 14:11:41.94643	2011-01-20 14:11:41.94643
866	25	26	2011-01-20 14:11:41.949338	2011-01-20 14:11:41.949338
867	25	27	2011-01-20 14:11:41.952215	2011-01-20 14:11:41.952215
868	25	28	2011-01-20 14:11:41.955093	2011-01-20 14:11:41.955093
869	25	29	2011-01-20 14:11:41.958379	2011-01-20 14:11:41.958379
870	25	30	2011-01-20 14:11:41.96146	2011-01-20 14:11:41.96146
871	25	31	2011-01-20 14:11:41.964444	2011-01-20 14:11:41.964444
872	25	32	2011-01-20 14:11:41.96829	2011-01-20 14:11:41.96829
873	25	33	2011-01-20 14:11:42.071477	2011-01-20 14:11:42.071477
874	25	34	2011-01-20 14:11:42.075394	2011-01-20 14:11:42.075394
875	25	35	2011-01-20 14:11:42.079569	2011-01-20 14:11:42.079569
876	26	1	2011-01-20 14:11:42.083409	2011-01-20 14:11:42.083409
877	26	2	2011-01-20 14:11:42.087453	2011-01-20 14:11:42.087453
878	26	3	2011-01-20 14:11:42.091691	2011-01-20 14:11:42.091691
879	26	4	2011-01-20 14:11:42.096502	2011-01-20 14:11:42.096502
880	26	5	2011-01-20 14:11:42.10259	2011-01-20 14:11:42.10259
881	26	6	2011-01-20 14:11:42.107804	2011-01-20 14:11:42.107804
882	26	7	2011-01-20 14:11:42.111576	2011-01-20 14:11:42.111576
883	26	8	2011-01-20 14:11:42.114775	2011-01-20 14:11:42.114775
884	26	9	2011-01-20 14:11:42.117835	2011-01-20 14:11:42.117835
885	26	10	2011-01-20 14:11:42.12089	2011-01-20 14:11:42.12089
886	26	11	2011-01-20 14:11:42.124096	2011-01-20 14:11:42.124096
887	26	12	2011-01-20 14:11:42.127198	2011-01-20 14:11:42.127198
888	26	13	2011-01-20 14:11:42.130501	2011-01-20 14:11:42.130501
889	26	14	2011-01-20 14:11:42.133969	2011-01-20 14:11:42.133969
890	26	15	2011-01-20 14:11:42.137206	2011-01-20 14:11:42.137206
891	26	16	2011-01-20 14:11:42.140503	2011-01-20 14:11:42.140503
892	26	17	2011-01-20 14:11:42.143962	2011-01-20 14:11:42.143962
893	26	18	2011-01-20 14:11:42.152197	2011-01-20 14:11:42.152197
894	26	19	2011-01-20 14:11:42.15622	2011-01-20 14:11:42.15622
895	26	20	2011-01-20 14:11:42.159296	2011-01-20 14:11:42.159296
896	26	21	2011-01-20 14:11:42.162345	2011-01-20 14:11:42.162345
897	26	22	2011-01-20 14:11:42.165287	2011-01-20 14:11:42.165287
898	26	23	2011-01-20 14:11:42.168432	2011-01-20 14:11:42.168432
899	26	24	2011-01-20 14:11:42.171558	2011-01-20 14:11:42.171558
900	26	25	2011-01-20 14:11:42.174465	2011-01-20 14:11:42.174465
901	26	26	2011-01-20 14:11:42.177567	2011-01-20 14:11:42.177567
902	26	27	2011-01-20 14:11:42.181583	2011-01-20 14:11:42.181583
903	26	28	2011-01-20 14:11:42.184694	2011-01-20 14:11:42.184694
904	26	29	2011-01-20 14:11:42.187937	2011-01-20 14:11:42.187937
905	26	30	2011-01-20 14:11:42.19086	2011-01-20 14:11:42.19086
906	26	31	2011-01-20 14:11:42.194268	2011-01-20 14:11:42.194268
907	26	32	2011-01-20 14:11:42.198026	2011-01-20 14:11:42.198026
908	26	33	2011-01-20 14:11:42.201834	2011-01-20 14:11:42.201834
909	26	34	2011-01-20 14:11:42.204851	2011-01-20 14:11:42.204851
910	26	35	2011-01-20 14:11:42.208719	2011-01-20 14:11:42.208719
911	27	1	2011-01-20 14:11:42.212726	2011-01-20 14:11:42.212726
912	27	2	2011-01-20 14:11:42.216338	2011-01-20 14:11:42.216338
913	27	3	2011-01-20 14:11:42.219903	2011-01-20 14:11:42.219903
914	27	4	2011-01-20 14:11:42.222799	2011-01-20 14:11:42.222799
915	27	5	2011-01-20 14:11:42.226064	2011-01-20 14:11:42.226064
916	27	6	2011-01-20 14:11:42.229147	2011-01-20 14:11:42.229147
917	27	7	2011-01-20 14:11:42.232799	2011-01-20 14:11:42.232799
918	27	8	2011-01-20 14:11:42.23625	2011-01-20 14:11:42.23625
919	27	9	2011-01-20 14:11:42.23921	2011-01-20 14:11:42.23921
920	27	10	2011-01-20 14:11:42.242581	2011-01-20 14:11:42.242581
921	27	11	2011-01-20 14:11:42.245969	2011-01-20 14:11:42.245969
922	27	12	2011-01-20 14:11:42.251566	2011-01-20 14:11:42.251566
923	27	13	2011-01-20 14:11:42.255471	2011-01-20 14:11:42.255471
924	27	14	2011-01-20 14:11:42.259123	2011-01-20 14:11:42.259123
925	27	15	2011-01-20 14:11:42.262583	2011-01-20 14:11:42.262583
926	27	16	2011-01-20 14:11:42.266616	2011-01-20 14:11:42.266616
927	27	17	2011-01-20 14:11:42.272879	2011-01-20 14:11:42.272879
928	27	18	2011-01-20 14:11:42.27638	2011-01-20 14:11:42.27638
929	27	19	2011-01-20 14:11:42.280019	2011-01-20 14:11:42.280019
930	27	20	2011-01-20 14:11:42.28397	2011-01-20 14:11:42.28397
931	27	21	2011-01-20 14:11:42.286982	2011-01-20 14:11:42.286982
932	27	22	2011-01-20 14:11:42.290547	2011-01-20 14:11:42.290547
933	27	23	2011-01-20 14:11:42.29346	2011-01-20 14:11:42.29346
934	27	24	2011-01-20 14:11:42.296616	2011-01-20 14:11:42.296616
935	27	25	2011-01-20 14:11:42.300596	2011-01-20 14:11:42.300596
936	27	26	2011-01-20 14:11:42.303488	2011-01-20 14:11:42.303488
937	27	27	2011-01-20 14:11:42.307074	2011-01-20 14:11:42.307074
938	27	28	2011-01-20 14:11:42.310004	2011-01-20 14:11:42.310004
939	27	29	2011-01-20 14:11:42.312842	2011-01-20 14:11:42.312842
940	27	30	2011-01-20 14:11:42.316918	2011-01-20 14:11:42.316918
941	27	31	2011-01-20 14:11:42.31997	2011-01-20 14:11:42.31997
942	27	32	2011-01-20 14:11:42.323811	2011-01-20 14:11:42.323811
943	27	33	2011-01-20 14:11:42.326712	2011-01-20 14:11:42.326712
944	27	34	2011-01-20 14:11:42.330637	2011-01-20 14:11:42.330637
945	27	35	2011-01-20 14:11:42.335088	2011-01-20 14:11:42.335088
946	28	1	2011-01-20 14:11:42.338383	2011-01-20 14:11:42.338383
947	28	2	2011-01-20 14:11:42.341365	2011-01-20 14:11:42.341365
948	28	3	2011-01-20 14:11:42.344184	2011-01-20 14:11:42.344184
949	28	4	2011-01-20 14:11:42.348158	2011-01-20 14:11:42.348158
950	28	5	2011-01-20 14:11:42.351442	2011-01-20 14:11:42.351442
951	28	6	2011-01-20 14:11:42.354801	2011-01-20 14:11:42.354801
952	28	7	2011-01-20 14:11:42.357875	2011-01-20 14:11:42.357875
953	28	8	2011-01-20 14:11:42.361505	2011-01-20 14:11:42.361505
954	28	9	2011-01-20 14:11:42.365482	2011-01-20 14:11:42.365482
955	28	10	2011-01-20 14:11:42.368536	2011-01-20 14:11:42.368536
956	28	11	2011-01-20 14:11:42.371962	2011-01-20 14:11:42.371962
957	28	12	2011-01-20 14:11:42.374877	2011-01-20 14:11:42.374877
958	28	13	2011-01-20 14:11:42.378123	2011-01-20 14:11:42.378123
959	28	14	2011-01-20 14:11:42.381125	2011-01-20 14:11:42.381125
960	28	15	2011-01-20 14:11:42.385346	2011-01-20 14:11:42.385346
961	28	16	2011-01-20 14:11:42.391896	2011-01-20 14:11:42.391896
962	28	17	2011-01-20 14:11:42.395096	2011-01-20 14:11:42.395096
963	28	18	2011-01-20 14:11:42.398889	2011-01-20 14:11:42.398889
964	28	19	2011-01-20 14:11:42.403242	2011-01-20 14:11:42.403242
965	28	20	2011-01-20 14:11:42.40733	2011-01-20 14:11:42.40733
966	28	21	2011-01-20 14:11:42.411484	2011-01-20 14:11:42.411484
967	28	22	2011-01-20 14:11:42.414568	2011-01-20 14:11:42.414568
968	28	23	2011-01-20 14:11:42.417596	2011-01-20 14:11:42.417596
969	28	24	2011-01-20 14:11:42.420611	2011-01-20 14:11:42.420611
970	28	25	2011-01-20 14:11:42.423976	2011-01-20 14:11:42.423976
971	28	26	2011-01-20 14:11:42.426948	2011-01-20 14:11:42.426948
972	28	27	2011-01-20 14:11:42.429904	2011-01-20 14:11:42.429904
973	28	28	2011-01-20 14:11:42.43275	2011-01-20 14:11:42.43275
974	28	29	2011-01-20 14:11:42.436236	2011-01-20 14:11:42.436236
975	28	30	2011-01-20 14:11:42.439094	2011-01-20 14:11:42.439094
976	28	31	2011-01-20 14:11:42.441907	2011-01-20 14:11:42.441907
977	28	32	2011-01-20 14:11:42.444737	2011-01-20 14:11:42.444737
978	28	33	2011-01-20 14:11:42.447585	2011-01-20 14:11:42.447585
979	28	34	2011-01-20 14:11:42.450436	2011-01-20 14:11:42.450436
980	28	35	2011-01-20 14:11:42.4533	2011-01-20 14:11:42.4533
981	29	1	2011-01-20 14:11:42.456316	2011-01-20 14:11:42.456316
982	29	2	2011-01-20 14:11:42.459536	2011-01-20 14:11:42.459536
983	29	3	2011-01-20 14:11:42.462494	2011-01-20 14:11:42.462494
984	29	4	2011-01-20 14:11:42.465486	2011-01-20 14:11:42.465486
985	29	5	2011-01-20 14:11:42.468465	2011-01-20 14:11:42.468465
986	29	6	2011-01-20 14:11:42.471478	2011-01-20 14:11:42.471478
987	29	7	2011-01-20 14:11:42.474467	2011-01-20 14:11:42.474467
988	29	8	2011-01-20 14:11:42.477844	2011-01-20 14:11:42.477844
989	29	9	2011-01-20 14:11:42.480971	2011-01-20 14:11:42.480971
990	29	10	2011-01-20 14:11:42.483865	2011-01-20 14:11:42.483865
991	29	11	2011-01-20 14:11:42.486673	2011-01-20 14:11:42.486673
992	29	12	2011-01-20 14:11:42.48969	2011-01-20 14:11:42.48969
993	29	13	2011-01-20 14:11:42.492596	2011-01-20 14:11:42.492596
994	29	14	2011-01-20 14:11:42.495423	2011-01-20 14:11:42.495423
995	29	15	2011-01-20 14:11:42.498278	2011-01-20 14:11:42.498278
996	29	16	2011-01-20 14:11:42.502315	2011-01-20 14:11:42.502315
997	29	17	2011-01-20 14:11:42.505741	2011-01-20 14:11:42.505741
998	29	18	2011-01-20 14:11:42.510471	2011-01-20 14:11:42.510471
999	29	19	2011-01-20 14:11:42.513601	2011-01-20 14:11:42.513601
1000	29	20	2011-01-20 14:11:42.516616	2011-01-20 14:11:42.516616
1001	29	21	2011-01-20 14:11:42.519588	2011-01-20 14:11:42.519588
1002	29	22	2011-01-20 14:11:42.522466	2011-01-20 14:11:42.522466
1003	29	23	2011-01-20 14:11:42.525294	2011-01-20 14:11:42.525294
1004	29	24	2011-01-20 14:11:42.528084	2011-01-20 14:11:42.528084
1005	29	25	2011-01-20 14:11:42.531275	2011-01-20 14:11:42.531275
1006	29	26	2011-01-20 14:11:42.534137	2011-01-20 14:11:42.534137
1007	29	27	2011-01-20 14:11:42.537213	2011-01-20 14:11:42.537213
1008	29	28	2011-01-20 14:11:42.540066	2011-01-20 14:11:42.540066
1009	29	29	2011-01-20 14:11:42.543061	2011-01-20 14:11:42.543061
1010	29	30	2011-01-20 14:11:42.546224	2011-01-20 14:11:42.546224
1011	29	31	2011-01-20 14:11:42.549125	2011-01-20 14:11:42.549125
1012	29	32	2011-01-20 14:11:42.551949	2011-01-20 14:11:42.551949
1013	29	33	2011-01-20 14:11:42.554797	2011-01-20 14:11:42.554797
1014	29	34	2011-01-20 14:11:42.557738	2011-01-20 14:11:42.557738
1015	29	35	2011-01-20 14:11:42.560628	2011-01-20 14:11:42.560628
1016	30	1	2011-01-20 14:11:42.563683	2011-01-20 14:11:42.563683
1017	30	2	2011-01-20 14:11:42.566606	2011-01-20 14:11:42.566606
1018	30	3	2011-01-20 14:11:42.569526	2011-01-20 14:11:42.569526
1019	30	4	2011-01-20 14:11:42.572358	2011-01-20 14:11:42.572358
1020	30	5	2011-01-20 14:11:42.575231	2011-01-20 14:11:42.575231
1021	30	6	2011-01-20 14:11:42.578026	2011-01-20 14:11:42.578026
1022	30	7	2011-01-20 14:11:42.580965	2011-01-20 14:11:42.580965
1023	30	8	2011-01-20 14:11:42.583787	2011-01-20 14:11:42.583787
1024	30	9	2011-01-20 14:11:42.586674	2011-01-20 14:11:42.586674
1025	30	10	2011-01-20 14:11:42.58954	2011-01-20 14:11:42.58954
1026	30	11	2011-01-20 14:11:42.592444	2011-01-20 14:11:42.592444
1027	30	12	2011-01-20 14:11:42.595262	2011-01-20 14:11:42.595262
1028	30	13	2011-01-20 14:11:42.598161	2011-01-20 14:11:42.598161
1029	30	14	2011-01-20 14:11:42.601865	2011-01-20 14:11:42.601865
1030	30	15	2011-01-20 14:11:42.604732	2011-01-20 14:11:42.604732
1031	30	16	2011-01-20 14:11:42.607563	2011-01-20 14:11:42.607563
1032	30	17	2011-01-20 14:11:42.610449	2011-01-20 14:11:42.610449
1033	30	18	2011-01-20 14:11:42.613418	2011-01-20 14:11:42.613418
1034	30	19	2011-01-20 14:11:42.616231	2011-01-20 14:11:42.616231
1035	30	20	2011-01-20 14:11:42.619172	2011-01-20 14:11:42.619172
1036	30	21	2011-01-20 14:11:42.627359	2011-01-20 14:11:42.627359
1037	30	22	2011-01-20 14:11:42.630491	2011-01-20 14:11:42.630491
1038	30	23	2011-01-20 14:11:42.633592	2011-01-20 14:11:42.633592
1039	30	24	2011-01-20 14:11:42.636545	2011-01-20 14:11:42.636545
1040	30	25	2011-01-20 14:11:42.639652	2011-01-20 14:11:42.639652
1041	30	26	2011-01-20 14:11:42.642632	2011-01-20 14:11:42.642632
1042	30	27	2011-01-20 14:11:42.646361	2011-01-20 14:11:42.646361
1043	30	28	2011-01-20 14:11:42.649301	2011-01-20 14:11:42.649301
1044	30	29	2011-01-20 14:11:42.652247	2011-01-20 14:11:42.652247
1045	30	30	2011-01-20 14:11:42.655159	2011-01-20 14:11:42.655159
1046	30	31	2011-01-20 14:11:42.65815	2011-01-20 14:11:42.65815
1047	30	32	2011-01-20 14:11:42.661067	2011-01-20 14:11:42.661067
1048	30	33	2011-01-20 14:11:42.664244	2011-01-20 14:11:42.664244
1049	30	34	2011-01-20 14:11:42.667404	2011-01-20 14:11:42.667404
1050	30	35	2011-01-20 14:11:42.670317	2011-01-20 14:11:42.670317
1051	31	1	2011-01-20 14:11:42.674092	2011-01-20 14:11:42.674092
1052	31	2	2011-01-20 14:11:42.678236	2011-01-20 14:11:42.678236
1053	31	3	2011-01-20 14:11:42.682581	2011-01-20 14:11:42.682581
1054	31	4	2011-01-20 14:11:42.777423	2011-01-20 14:11:42.777423
1055	31	5	2011-01-20 14:11:42.780694	2011-01-20 14:11:42.780694
1056	31	6	2011-01-20 14:11:42.783832	2011-01-20 14:11:42.783832
1057	31	7	2011-01-20 14:11:42.786926	2011-01-20 14:11:42.786926
1058	31	8	2011-01-20 14:11:42.789981	2011-01-20 14:11:42.789981
1059	31	9	2011-01-20 14:11:42.793096	2011-01-20 14:11:42.793096
1060	31	10	2011-01-20 14:11:42.796142	2011-01-20 14:11:42.796142
1061	31	11	2011-01-20 14:11:42.799204	2011-01-20 14:11:42.799204
1062	31	12	2011-01-20 14:11:42.802278	2011-01-20 14:11:42.802278
1063	31	13	2011-01-20 14:11:42.805398	2011-01-20 14:11:42.805398
1064	31	14	2011-01-20 14:11:42.808388	2011-01-20 14:11:42.808388
1065	31	15	2011-01-20 14:11:42.811364	2011-01-20 14:11:42.811364
1066	31	16	2011-01-20 14:11:42.814596	2011-01-20 14:11:42.814596
1067	31	17	2011-01-20 14:11:42.817603	2011-01-20 14:11:42.817603
1068	31	18	2011-01-20 14:11:42.820588	2011-01-20 14:11:42.820588
1069	31	19	2011-01-20 14:11:42.824274	2011-01-20 14:11:42.824274
1070	31	20	2011-01-20 14:11:42.827239	2011-01-20 14:11:42.827239
1071	31	21	2011-01-20 14:11:42.830296	2011-01-20 14:11:42.830296
1072	31	22	2011-01-20 14:11:42.833249	2011-01-20 14:11:42.833249
1073	31	23	2011-01-20 14:11:42.836518	2011-01-20 14:11:42.836518
1074	31	24	2011-01-20 14:11:42.839633	2011-01-20 14:11:42.839633
1075	31	25	2011-01-20 14:11:42.84257	2011-01-20 14:11:42.84257
1076	31	26	2011-01-20 14:11:42.845483	2011-01-20 14:11:42.845483
1077	31	27	2011-01-20 14:11:42.848441	2011-01-20 14:11:42.848441
1078	31	28	2011-01-20 14:11:42.85131	2011-01-20 14:11:42.85131
1079	31	29	2011-01-20 14:11:42.85426	2011-01-20 14:11:42.85426
1080	31	30	2011-01-20 14:11:42.863057	2011-01-20 14:11:42.863057
1081	31	31	2011-01-20 14:11:42.86615	2011-01-20 14:11:42.86615
1082	31	32	2011-01-20 14:11:42.869084	2011-01-20 14:11:42.869084
1083	31	33	2011-01-20 14:11:42.871986	2011-01-20 14:11:42.871986
1084	31	34	2011-01-20 14:11:42.874932	2011-01-20 14:11:42.874932
1085	31	35	2011-01-20 14:11:42.877778	2011-01-20 14:11:42.877778
1086	32	1	2011-01-20 14:11:42.881054	2011-01-20 14:11:42.881054
1087	32	2	2011-01-20 14:11:42.884645	2011-01-20 14:11:42.884645
1088	32	3	2011-01-20 14:11:42.889966	2011-01-20 14:11:42.889966
1089	32	4	2011-01-20 14:11:42.895943	2011-01-20 14:11:42.895943
1090	32	5	2011-01-20 14:11:42.900932	2011-01-20 14:11:42.900932
1091	32	6	2011-01-20 14:11:42.904161	2011-01-20 14:11:42.904161
1092	32	7	2011-01-20 14:11:42.907273	2011-01-20 14:11:42.907273
1093	32	8	2011-01-20 14:11:42.910332	2011-01-20 14:11:42.910332
1094	32	9	2011-01-20 14:11:42.913389	2011-01-20 14:11:42.913389
1095	32	10	2011-01-20 14:11:42.916512	2011-01-20 14:11:42.916512
1096	32	11	2011-01-20 14:11:42.919634	2011-01-20 14:11:42.919634
1097	32	12	2011-01-20 14:11:42.922837	2011-01-20 14:11:42.922837
1098	32	13	2011-01-20 14:11:42.926097	2011-01-20 14:11:42.926097
1099	32	14	2011-01-20 14:11:42.929172	2011-01-20 14:11:42.929172
1100	32	15	2011-01-20 14:11:42.9324	2011-01-20 14:11:42.9324
1101	32	16	2011-01-20 14:11:42.935484	2011-01-20 14:11:42.935484
1102	32	17	2011-01-20 14:11:42.938623	2011-01-20 14:11:42.938623
1103	32	18	2011-01-20 14:11:42.941654	2011-01-20 14:11:42.941654
1104	32	19	2011-01-20 14:11:42.944673	2011-01-20 14:11:42.944673
1105	32	20	2011-01-20 14:11:42.947779	2011-01-20 14:11:42.947779
1106	32	21	2011-01-20 14:11:42.95083	2011-01-20 14:11:42.95083
1107	32	22	2011-01-20 14:11:42.953931	2011-01-20 14:11:42.953931
1108	32	23	2011-01-20 14:11:42.958336	2011-01-20 14:11:42.958336
1109	32	24	2011-01-20 14:11:42.961593	2011-01-20 14:11:42.961593
1110	32	25	2011-01-20 14:11:42.96485	2011-01-20 14:11:42.96485
1111	32	26	2011-01-20 14:11:42.967921	2011-01-20 14:11:42.967921
1112	32	27	2011-01-20 14:11:42.971011	2011-01-20 14:11:42.971011
1113	32	28	2011-01-20 14:11:42.974796	2011-01-20 14:11:42.974796
1114	32	29	2011-01-20 14:11:42.978264	2011-01-20 14:11:42.978264
1115	32	30	2011-01-20 14:11:42.983509	2011-01-20 14:11:42.983509
1116	32	31	2011-01-20 14:11:42.986857	2011-01-20 14:11:42.986857
1117	32	32	2011-01-20 14:11:42.990134	2011-01-20 14:11:42.990134
1118	32	33	2011-01-20 14:11:42.993634	2011-01-20 14:11:42.993634
1119	32	34	2011-01-20 14:11:42.997659	2011-01-20 14:11:42.997659
1120	32	35	2011-01-20 14:11:43.006753	2011-01-20 14:11:43.006753
1121	33	1	2011-01-20 14:11:43.011119	2011-01-20 14:11:43.011119
1122	33	2	2011-01-20 14:11:43.016163	2011-01-20 14:11:43.016163
1123	33	3	2011-01-20 14:11:43.044414	2011-01-20 14:11:43.044414
1124	33	4	2011-01-20 14:11:43.048023	2011-01-20 14:11:43.048023
1125	33	5	2011-01-20 14:11:43.051328	2011-01-20 14:11:43.051328
1126	33	6	2011-01-20 14:11:43.054512	2011-01-20 14:11:43.054512
1127	33	7	2011-01-20 14:11:43.057545	2011-01-20 14:11:43.057545
1128	33	8	2011-01-20 14:11:43.060449	2011-01-20 14:11:43.060449
1129	33	9	2011-01-20 14:11:43.063376	2011-01-20 14:11:43.063376
1130	33	10	2011-01-20 14:11:43.066251	2011-01-20 14:11:43.066251
1131	33	11	2011-01-20 14:11:43.069141	2011-01-20 14:11:43.069141
1132	33	12	2011-01-20 14:11:43.072	2011-01-20 14:11:43.072
1133	33	13	2011-01-20 14:11:43.075039	2011-01-20 14:11:43.075039
1134	33	14	2011-01-20 14:11:43.078422	2011-01-20 14:11:43.078422
1135	33	15	2011-01-20 14:11:43.081487	2011-01-20 14:11:43.081487
1136	33	16	2011-01-20 14:11:43.084422	2011-01-20 14:11:43.084422
1137	33	17	2011-01-20 14:11:43.087302	2011-01-20 14:11:43.087302
1138	33	18	2011-01-20 14:11:43.090368	2011-01-20 14:11:43.090368
1139	33	19	2011-01-20 14:11:43.093944	2011-01-20 14:11:43.093944
1140	33	20	2011-01-20 14:11:43.098159	2011-01-20 14:11:43.098159
1141	33	21	2011-01-20 14:11:43.102402	2011-01-20 14:11:43.102402
1142	33	22	2011-01-20 14:11:43.105443	2011-01-20 14:11:43.105443
1143	33	23	2011-01-20 14:11:43.108363	2011-01-20 14:11:43.108363
1144	33	24	2011-01-20 14:11:43.111234	2011-01-20 14:11:43.111234
1145	33	25	2011-01-20 14:11:43.11416	2011-01-20 14:11:43.11416
1146	33	26	2011-01-20 14:11:43.117113	2011-01-20 14:11:43.117113
1147	33	27	2011-01-20 14:11:43.120027	2011-01-20 14:11:43.120027
1148	33	28	2011-01-20 14:11:43.122985	2011-01-20 14:11:43.122985
1149	33	29	2011-01-20 14:11:43.125874	2011-01-20 14:11:43.125874
1150	33	30	2011-01-20 14:11:43.128765	2011-01-20 14:11:43.128765
1151	33	31	2011-01-20 14:11:43.131708	2011-01-20 14:11:43.131708
1152	33	32	2011-01-20 14:11:43.134621	2011-01-20 14:11:43.134621
1153	33	33	2011-01-20 14:11:43.137502	2011-01-20 14:11:43.137502
1154	33	34	2011-01-20 14:11:43.140585	2011-01-20 14:11:43.140585
1155	33	35	2011-01-20 14:11:43.143516	2011-01-20 14:11:43.143516
1156	34	1	2011-01-20 14:11:43.146919	2011-01-20 14:11:43.146919
1157	34	2	2011-01-20 14:11:43.149783	2011-01-20 14:11:43.149783
1158	34	3	2011-01-20 14:11:43.152641	2011-01-20 14:11:43.152641
1159	34	4	2011-01-20 14:11:43.155584	2011-01-20 14:11:43.155584
1160	34	5	2011-01-20 14:11:43.158484	2011-01-20 14:11:43.158484
1161	34	6	2011-01-20 14:11:43.161379	2011-01-20 14:11:43.161379
1162	34	7	2011-01-20 14:11:43.164308	2011-01-20 14:11:43.164308
1163	34	8	2011-01-20 14:11:43.167252	2011-01-20 14:11:43.167252
1164	34	9	2011-01-20 14:11:43.170223	2011-01-20 14:11:43.170223
1165	34	10	2011-01-20 14:11:43.173155	2011-01-20 14:11:43.173155
1166	34	11	2011-01-20 14:11:43.17607	2011-01-20 14:11:43.17607
1167	34	12	2011-01-20 14:11:43.178958	2011-01-20 14:11:43.178958
1168	34	13	2011-01-20 14:11:43.181843	2011-01-20 14:11:43.181843
1169	34	14	2011-01-20 14:11:43.184697	2011-01-20 14:11:43.184697
1170	34	15	2011-01-20 14:11:43.187559	2011-01-20 14:11:43.187559
1171	34	16	2011-01-20 14:11:43.19043	2011-01-20 14:11:43.19043
1172	34	17	2011-01-20 14:11:43.193267	2011-01-20 14:11:43.193267
1173	34	18	2011-01-20 14:11:43.196199	2011-01-20 14:11:43.196199
1174	34	19	2011-01-20 14:11:43.199374	2011-01-20 14:11:43.199374
1175	34	20	2011-01-20 14:11:43.20254	2011-01-20 14:11:43.20254
1176	34	21	2011-01-20 14:11:43.205545	2011-01-20 14:11:43.205545
1177	34	22	2011-01-20 14:11:43.208647	2011-01-20 14:11:43.208647
1178	34	23	2011-01-20 14:11:43.212186	2011-01-20 14:11:43.212186
1179	34	24	2011-01-20 14:11:43.215782	2011-01-20 14:11:43.215782
1180	34	25	2011-01-20 14:11:43.218835	2011-01-20 14:11:43.218835
1181	34	26	2011-01-20 14:11:43.22184	2011-01-20 14:11:43.22184
1182	34	27	2011-01-20 14:11:43.225026	2011-01-20 14:11:43.225026
1183	34	28	2011-01-20 14:11:43.227947	2011-01-20 14:11:43.227947
1184	34	29	2011-01-20 14:11:43.230861	2011-01-20 14:11:43.230861
1185	34	30	2011-01-20 14:11:43.233756	2011-01-20 14:11:43.233756
1186	34	31	2011-01-20 14:11:43.236671	2011-01-20 14:11:43.236671
1187	34	32	2011-01-20 14:11:43.23943	2011-01-20 14:11:43.23943
1188	34	33	2011-01-20 14:11:43.242382	2011-01-20 14:11:43.242382
1189	34	34	2011-01-20 14:11:43.245283	2011-01-20 14:11:43.245283
1190	34	35	2011-01-20 14:11:43.248305	2011-01-20 14:11:43.248305
1191	35	1	2011-01-20 14:11:43.251234	2011-01-20 14:11:43.251234
1192	35	2	2011-01-20 14:11:43.254177	2011-01-20 14:11:43.254177
1193	35	3	2011-01-20 14:11:43.257638	2011-01-20 14:11:43.257638
1194	35	4	2011-01-20 14:11:43.261397	2011-01-20 14:11:43.261397
1195	35	5	2011-01-20 14:11:43.265451	2011-01-20 14:11:43.265451
1196	35	6	2011-01-20 14:11:43.269513	2011-01-20 14:11:43.269513
1197	35	7	2011-01-20 14:11:43.273317	2011-01-20 14:11:43.273317
1198	35	8	2011-01-20 14:11:43.277044	2011-01-20 14:11:43.277044
1199	35	9	2011-01-20 14:11:43.281026	2011-01-20 14:11:43.281026
1200	35	10	2011-01-20 14:11:43.284743	2011-01-20 14:11:43.284743
1201	35	11	2011-01-20 14:11:43.288396	2011-01-20 14:11:43.288396
1202	35	12	2011-01-20 14:11:43.292169	2011-01-20 14:11:43.292169
1203	35	13	2011-01-20 14:11:43.296008	2011-01-20 14:11:43.296008
1204	35	14	2011-01-20 14:11:43.299809	2011-01-20 14:11:43.299809
1205	35	15	2011-01-20 14:11:43.303486	2011-01-20 14:11:43.303486
1206	35	16	2011-01-20 14:11:43.307213	2011-01-20 14:11:43.307213
1207	35	17	2011-01-20 14:11:43.31085	2011-01-20 14:11:43.31085
1208	35	18	2011-01-20 14:11:43.316118	2011-01-20 14:11:43.316118
1209	35	19	2011-01-20 14:11:43.32156	2011-01-20 14:11:43.32156
1210	35	20	2011-01-20 14:11:43.330639	2011-01-20 14:11:43.330639
1211	35	21	2011-01-20 14:11:43.336296	2011-01-20 14:11:43.336296
1212	35	22	2011-01-20 14:11:43.340904	2011-01-20 14:11:43.340904
1213	35	23	2011-01-20 14:11:43.345355	2011-01-20 14:11:43.345355
1214	35	24	2011-01-20 14:11:43.348642	2011-01-20 14:11:43.348642
1215	35	25	2011-01-20 14:11:43.351611	2011-01-20 14:11:43.351611
1216	35	26	2011-01-20 14:11:43.354517	2011-01-20 14:11:43.354517
1217	35	27	2011-01-20 14:11:43.358544	2011-01-20 14:11:43.358544
1218	35	28	2011-01-20 14:11:43.36178	2011-01-20 14:11:43.36178
1219	35	29	2011-01-20 14:11:43.364818	2011-01-20 14:11:43.364818
1220	35	30	2011-01-20 14:11:43.368274	2011-01-20 14:11:43.368274
1221	35	31	2011-01-20 14:11:43.371489	2011-01-20 14:11:43.371489
1222	35	32	2011-01-20 14:11:43.374524	2011-01-20 14:11:43.374524
1223	35	33	2011-01-20 14:11:43.377527	2011-01-20 14:11:43.377527
1224	35	34	2011-01-20 14:11:43.380481	2011-01-20 14:11:43.380481
1225	35	35	2011-01-20 14:11:43.383385	2011-01-20 14:11:43.383385
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schema_migrations (version) FROM stdin;
20101018001715
20101018014105
20101103022315
20101108224716
20101111175229
20101201132418
20101209013820
20101210070432
20101211030619
20110114230339
20110225235811
20110313023514
20110313041858
20110408202938
20110415045626
20110504005204
20110623131050
20110627033631
20110628062141
\.


--
-- Data for Name: tips; Type: TABLE DATA; Schema: public; Owner: -
--

COPY tips (id, body, matchup_id, created_at, updated_at, user_id, like_count, player, opponent) FROM stdin;
1	On a blocked Messiah kick, you can punish with Ultra 2	625	2011-01-24 01:28:33.652051	2011-05-05 04:25:11.488053	1	1	Akuma	Rufus
5	If you use instant overhead, Vega can punish with U1 or ex barcelona on hit.  Unless it kills Vega, be careful using yoga sniper, he has ages to charge while you're floating through the air (and he's probably holding down/back anyway if you hit him with it)	292	2011-01-24 03:41:18.59157	2011-05-05 04:25:10.933972	2	\N	Dhalsim	Vega
6	Sakura's crouch fierce is a great anti- air. The only way to beat it is with jump in fierce with a knife. Even with the Knife it trades,  but in Cody's favor.	791	2011-01-24 07:13:40.090199	2011-05-05 04:25:11.849153	1	\N	Cody	Sakura
7	Cody's Zonk knuckle can punish most of Ryu's pokes during footsies. Try to get into close range and release Zonk on reaction to them.	771	2011-01-24 07:19:58.137337	2011-05-05 04:25:11.631631	1	\N	Cody	Ryu
8	A combo that works on Ryu in the corner: s.Fierce, c.Strong, HK.Ruffian, MK.Ruffian. (No Meter)	771	2011-01-24 07:21:55.537825	2011-05-05 04:25:11.633953	1	\N	Cody	Ryu
9	If you block an ex wall dive on the way up, you can reversal cannon spike it as it goes to the wall on your other side.	502	2011-01-25 02:31:17.095045	2011-05-05 04:25:11.253524	2	\N	Cammy	Vega
24	At mid range Cammy can Ex kick through your "bad stone". 	785	2011-01-29 17:05:12.817495	2011-05-05 04:25:11.701571	1	\N	Cody	Cammy
44	<iframe title="YouTube video player" class="youtube-player" type="text/html" width="350" height="226" src="http://www.youtube.com/embed/kSb6l2Cpvho" frameborder="0" allowFullScreen></iframe>	898	2011-02-02 07:51:42.72309	2011-05-05 04:25:11.985266	1	\N	Makoto	Cody
56	Use rocks, anti-airs and normals to zone honda out. If hes within "jump in" distance and you throw a rock, he can score huge amounts of damage and a knock down on you. Use fake rocks a lot to frustrate Honda and score a bunch of anti-airs.\r\n	777	2011-02-21 05:46:14.527731	2011-06-28 06:41:54.842859	1	\N	Cody	E Honda
57	In Super Honda can use his Ex Headbutt as a late anti-air. You shouldn't be jumping in on him anyway.	777	2011-02-21 05:50:12.579926	2011-06-28 06:41:55.16308	1	\N	Cody	E Honda
58	At full screen you can throw hp. Rocks safely.	779	2011-02-21 05:56:06.934951	2011-05-05 04:25:11.668756	1	\N	Cody	Dhalsim
59	At mid screen and closer Sim can punish rocks.	779	2011-02-21 05:56:59.779314	2011-05-05 04:25:11.671196	1	\N	Cody	Dhalsim
60	Sim can be really annoying with his jumping fierce. If a Sim keeps throwing it out there you can make a guess and use Hk. ruffian to punish it. Its has long lasting frames and his arms might run into it. Use this opportunity to dash in and get in close. 	779	2011-02-21 06:02:02.15923	2011-05-05 04:25:11.673607	1	\N	Cody	Dhalsim
61	Sometimes when you jump in on Sim he escapes with a teleport or backdash. Before landing do a input for a lk ruffian. Now if your jump in whiffs because of his backdash your sliding lk. ruffian will catch him.	779	2011-02-21 06:08:22.133596	2011-05-05 04:25:11.675837	1	\N	Cody	Dhalsim
62	After you block her lk hurricane Sakura has frame advantage. This means that if you press a button she can stuff it with short and do a ex hurricane into a combo. This is one of her good frame traps.	791	2011-02-21 13:06:58.83234	2011-05-05 04:25:11.851785	1	\N	Cody	Sakura
63	While pressuring Sakura be watch full of her Ex bar. She can do Ex uppercut as a reversal. The move comes out fast and she can FaDc it into bigger damage.	791	2011-02-21 13:08:32.884222	2011-05-05 04:25:11.854208	1	\N	Cody	Sakura
64	Meter is really important in this match. While far away use focus to build some meter off the Sonic booms, but be careful and don't go overboard while doing it.  Inch your way in tell about mid screen and punish Guile's sonic boom with a Ex. ruffian slide. His booms come out fast so your going to have to buffer the inputs. 	778	2011-02-21 13:13:12.446374	2011-05-05 04:25:11.663604	1	\N	Cody	Guile
65	Block Blanka balls standing and punish with lp.Palm xx super if you have the meter. Punish with lp.Palm either way for damage and spacing reset. \r\nFollow the palm with a lp fireball for chip. 	1091	2011-02-21 19:26:25.343157	2011-05-05 04:25:12.340978	14	\N	Gouken	Blanka
66	Low counter is your friend here. Cammy starts a lot of combos of lows, so conditioning them to expect a counter can throw off their game.	1100	2011-02-21 19:27:28.432437	2011-05-05 04:25:12.369118	14	\N	Gouken	Cammy
67	mp.Fireball is amazing in the fight. Hawk is so tall he will still get hit with them, so he is forced to crouch. Jumping over them is almost impossible for Hawk, and will almost always lead to an hp.Palm followup. 	1099	2011-02-21 19:30:25.72047	2011-06-28 06:41:55.179796	14	\N	Gouken	T Hawk
68	Like T. Hawk, Rufus gets shut down from full screen by mp.Fireball. He is too fat to jump over them easily, which shuts down his dive kick game. 	1115	2011-02-21 19:31:43.035619	2011-05-05 04:25:12.407047	14	\N	Gouken	Rufus
69	Ryu players don't expect to lose a fireball war, but a Gouken who is mindful of Ryu's EX meter can out-fireball Ryu and punish heavily with palms and demonflip sweeps. After a fireball punish follow up with safejump demon flip mixups to keep Ryu down. \r\n\r\nA fun trick against Ryu is after a few fireball punishes with a demonflip Ryu will be desperate to SRK the demonflip. After Ryu does his fireball, delay slightly, then Demonflip parry. You will absorb the SRK and be able to punish with a huge cr.HP xx EX Palm combo (pain-train).\r\n\r\nThe delay is to make the SRK too late for the reversal window so it doesn't break the parry. 	1086	2011-02-21 19:37:43.618956	2011-05-05 04:25:12.324685	14	\N	Gouken	Ryu
70	High counter headstomps, but DON'T counter EX headstomps. He jumps off you too quickly to get tagged by the counter, and then you eat a ton of gray damage and the fist follow up. 	1098	2011-02-21 19:38:50.432445	2011-06-28 06:41:55.187372	14	\N	Gouken	M Bison
71	ElF loses to EX counters a lot, but his flip-back throw (?) will cause Gouken a lot of problems. Gouken's back dash is ass so he has trouble back dashing out of ElF mixups.\r\n\r\nOne awesome trick vs ElF is to bait a reversal Ultra one after a knockdown. Do the correctly spaced demonflip slide while he wakes up. If the timing is right, you will slide underneath ElF while he jumps into the air, go behind him, and recover before he does, letting you forward dash into a pain train combo (cr.HP xx EX Palm -> (mp.Palm or HK tatsu or whatever)	1114	2011-02-21 20:04:29.46521	2011-05-05 04:25:12.401416	14	\N	Gouken	El Fuerte
72	Ibuki likes to be airborne a lot, so mp and hp fireballs are very helpful here. Don't get too predictable, or the neck breaker slide will start to come out to punish. \r\n\r\nWakeup pressure from the air knives can be beaten by a high counter, which will tag Ibuki and send her flying. 	1110	2011-02-21 20:06:18.555702	2011-05-05 04:25:12.391674	14	\N	Gouken	Ibuki
73	Also, Ryu's Ultra 1 is not armor breaking, it relies on it's multiple hits to break armor. With the right timing, you can counter it to avoid chip damage and if Ryu threw it out as a panicked wakeup while you are in close, you can tag him with the counter as well, then FADC into big damage or if you have super meter, cancel the counter into the super for a really easy punish. 	1086	2011-02-21 20:08:34.072303	2011-05-05 04:25:12.327166	14	\N	Gouken	Ryu
74	A fullscreen fireball war with Sagat will allow you to build meter then punish with an EX demonflip throw to make Sagat think twice about throwing fireballs. \r\n\r\nSagat's ultra 2 is not armor breaking, so the counter shenanigans that you can pull against Ryu work here too under the same conditions. 	1089	2011-02-21 20:10:13.199325	2011-05-05 04:25:12.334577	14	\N	Gouken	Sagat
75	A whiffed Ultra 2 that doesn't suck you in for chip can be countered by a fully charged Denjin for an insta-stun and an almost 0-death combo. I recommend U2 for Seth for the combos and pressure off the stun from it, since getting U1 off on Seth will be fairly rare	1116	2011-02-21 20:11:52.583623	2011-05-05 04:25:12.412634	14	\N	Gouken	Seth
76	Vega's wall dives get stuffed by mp.Fireball and hp.Fireball. Learn the spacing so you can use the correct follow up (either mp.Palm hp.Palm or Demonflip Slide)	1097	2011-02-21 20:13:01.97598	2011-05-05 04:25:12.351336	14	\N	Gouken	Vega
77	vs TK dive kick pressure, a late option select crouching fierce tech is the best option.  It's still tough to get out of that pressure.	155	2011-02-22 02:50:39.569705	2011-06-28 06:41:55.211347	17	1	Chun Li	Cammy
78	E.Honda's Super and Ultra 1 both go through fireballs, making for a <b>painful</b> way to punish a Ryu that overuses them.	211	2011-02-22 05:09:30.21553	2011-06-28 06:41:55.218203	15	\N	E Honda	Ryu
79	If Blanka tries to chip you out with U1 Dash back after he goes up in the air and use your own U1, as seen here.\r\n\r\nhttp://www.youtube.com/watch?feature=player_detailpage&v=fkhVKnZLt0c#t=74s	881	2011-02-22 10:57:14.40614	2011-05-05 04:25:11.964984	18	\N	Makoto	Blanka
80	Use Safe jumps to try and bait out the EX spinning bird kick. This will burn Chun lis meter and allow you to punish with a lk. Ruffian.	775	2011-02-22 18:31:58.18449	2011-06-28 06:41:55.222485	1	\N	Cody	Chun Li
81	When Sim jumps in the air you can anticipate the arms and begin focusing. Once you absorb the hit dash and and gain some ground.	779	2011-02-23 02:50:28.527236	2011-05-05 04:25:11.67795	1	\N	Cody	Dhalsim
82	Be careful of Cody's Ex ruffian slide kick. It goes through fireballs and Cody can score a un-techable knock down. 	303	2011-02-23 02:52:30.081107	2011-05-05 04:25:10.952218	1	\N	Dhalsim	Cody
83	You can stuff a Blank ball with a well timed jab.	951	2011-02-23 03:33:06.236939	2011-05-05 04:25:12.053851	1	\N	Abel	Blanka
84	You can stuff a Blank ball with a well timed jab.	76	2011-02-23 03:33:15.116642	2011-05-05 04:25:10.580285	1	\N	Adon	Blanka
85	You can stuff a Blank ball with a well timed jab.	601	2011-02-23 03:33:27.25147	2011-05-05 04:25:11.358405	1	1	Akuma	Blanka
86	Cammy can punish all Blanka balls, on hit or block.	496	2011-02-23 03:33:57.600927	2011-05-05 04:25:11.241709	1	\N	Cammy	Blanka
87	Cody has multiple tricks and techniques for punishing Blanka balls. Heres a video developed by option-select's Ryan hunter showing them. \r\n\r\n<br>\r\n</br>\r\n<iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/8GKewBW5lSE" frameborder="0" allowfullscreen></iframe>	776	2011-02-23 03:37:03.819792	2011-05-05 04:25:11.646891	1	\N	Cody	Blanka
88	You can stuff a Blanka ball with a well timed jab.	496	2011-02-23 03:38:41.408736	2011-05-05 04:25:11.244012	1	\N	Cammy	Blanka
89	Ryu can hit Sim's jumping fierce with a uppercut and cancel into super, or FaDc ultra.	9	2011-02-23 03:40:24.423193	2011-05-05 04:25:10.380911	1	1	Ryu	Dhalsim
90	You can't punish Abel's roll with Seth's super, but you can punish it with Ultra 1.	1078	2011-02-23 03:54:57.557274	2011-05-05 04:25:12.304986	1	\N	Seth	Abel
91	You can stuff Seth's super with a short.	976	2011-02-23 03:57:42.841747	2011-05-05 04:25:12.193529	1	\N	Abel	Seth
92	Seth has multiple ways of setting you up for some mind games. If your geting thrown by Seth's command grab a lot, try anticipating it and back-dash.  His grab will wiff and you can punish for huge damage.	976	2011-02-23 03:59:54.088618	2011-05-05 04:25:12.196098	1	\N	Abel	Seth
93	Use ultra 1 to hit Abel out of his wheel kick.	1078	2011-02-23 04:05:27.254772	2011-05-05 04:25:12.307332	1	\N	Seth	Abel
94	If Sim uses a instant overhead and it hits, you can still hit Sim with U1.	394	2011-02-23 04:30:03.372468	2011-05-05 04:25:11.03764	1	\N	Vega	Dhalsim
95	Scissor kicks get stuffed by Sim's back short. If Bison locks you in the corner stay calm and continue to stuff the kicks and tech the throws.	293	2011-02-23 04:33:47.560505	2011-06-28 06:41:55.245251	1	\N	Dhalsim	M Bison
96	Cammy can punish all forward Blanka balls on his and block. 	190	2011-02-23 06:18:45.387808	2011-05-05 04:25:10.734367	1	\N	Blanka	Cammy
97	Turtling Sakura out with rocks, anti-airs, and Ex.Ruffian slides to punish fireballs will force Sakura to try and get in on you. You have the advantage in the turtle war, so use fake rocks to lure a jump in. If she can't jump in on you and your anti-air is solid she will have no choice but to creep toward you on the ground. Then the match comes down to footsies.	791	2011-02-23 06:38:08.385212	2011-05-05 04:25:11.856595	1	\N	Cody	Sakura
98	If the match comes down to footsies, Sakura will rely on standing and crouching medium kick. A well timed zonk knuckle can punish both and score you a knock down.	791	2011-02-23 06:42:05.619318	2011-05-05 04:25:11.858934	1	\N	Cody	Sakura
99	Back medium punch can stop a Sumo butt flop on its way down. 	777	2011-02-23 06:49:43.078232	2011-06-28 06:41:55.259345	1	\N	Cody	E Honda
100	Heres a great example of how you should and should not approach this match. \r\n\r\nIn the first match Cody jumped in a lot and ate a ton of damage. For the following matches he used rocks, normals, and anti - airs to frustrate honda and lock him out. Notice that every time Cody got in, if he didn't get out right away he took a bunch of damage. \r\n\r\n<br>\r\n</br>\r\n<iframe title="YouTube video player" width="560" height="349" src="http://www.youtube.com/embed/ZL76sNQhlGo" frameborder="0" allowfullscreen></iframe>\r\n\r\n<br>\r\n</br>\r\n\r\nYour goal is to become the most frustrating thing in this person's life at that moment. Don't stray from the lameness.	777	2011-02-23 06:54:34.571701	2011-06-28 06:41:55.262014	1	2	Cody	E Honda
101	Inch your way to about midscreen from Ryu. From here Adon has multiple options. He can overhead kick over fireballs, throw out his standing hard kick and if an opponent jumps, move forward and Rising Jaguar. If the opponent is in the corner it gives you even more options. Heres a video between Adon and GamerBee, both known for being very good at their characters.\r\n\r\n<br></br>\r\n\r\n<iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/ioagK6MHPe8" frameborder="0" allowfullscreen></iframe>\r\n\r\n<br></br>\r\n\r\nNotice how GamerBee eventually finds that sweet spot and consistently moves back into it to pressure Daigo.	71	2011-02-23 07:08:53.555728	2011-05-05 04:25:10.571215	1	1	Adon	Ryu
104	If Akuma keeps teleporting away from you in certain circumstances activate Ultra 2. This will follow the teleport and punish it when it's done.	53	2011-03-05 03:12:45.199494	2011-05-05 04:25:10.550113	1	0	Ken	Akuma
106	Jab thunder knuckle can duck under and beat rekkas.	926	2011-03-10 03:10:44.178624	2011-06-28 06:41:55.267265	2	0	C Viper	Fei Long
107	Against burning kick pressure, in addition to universal answers such as blocking and focus, Fei Long has extra tools to escape.  His ex chicken wing is projectile invulnerable, so is completely safe from burning kick.  His low forward and low fierce can also get him very low, allowing him to duck under burning kicks.	552	2011-03-10 03:16:24.872832	2011-06-28 06:41:55.269962	2	0	Fei Long	C Viper
108	If you are doing a cross-up jump roundhouse, you can option select ex thunder knuckles.  Fei will fly away from you, and the ex thunder knuckle will hit him as he recovers from chicken wing, and you can punish with whatever.	926	2011-03-10 03:38:21.710657	2011-06-28 06:41:55.272311	2	1	C Viper	Fei Long
109	Fei Longs have a nasty habit of doing Ex chicken wing on wake up. If you know its coming you can jump backwards and hit Fei Long as he lands. \r\n<br>\r\n<br>\r\n\r\n<iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/YV5iWbxyFKM" frameborder="0" allowfullscreen></iframe>\r\n\r\n<br>\r\n<br>\r\n\r\nHeres an example of that happening. ( Go to 1:35 )	926	2011-03-10 03:46:11.820351	2011-06-28 06:41:55.275075	1	1	C Viper	Fei Long
110	During the animation of Rose's Ultra 2 (orbs) you can charge a zonk knuckle. If Rose throws something out there and you guess right the zonk knuckle will go through the orbs and smack her in the face. A good Rose won't be so liberal with her moves and will be used to people trying to blast through her orbs, so be liberal yourself.	790	2011-03-10 17:28:44.706387	2011-05-05 04:25:11.841998	1	0	Cody	Rose
111	After a blocked messiah kick theres a bit of a mix up game going on. Ryu can uppercut any of Rufus's 3 options unless Rufus delays it. If Ryu delays then he can punish a early messiah kick. Or both players can do nothing and return to neutral. 	30	2011-03-12 00:41:10.176005	2011-05-05 04:25:10.435981	1	0	Ryu	Rufus
112	Keep track of Rufus's meter throughout the match. Most Rufus's save their meter for Ex. Messiah kick, especially if they have enough to FADC into ultra. Try baiting it out and or punish with a ex. Zonk knuckle.	800	2011-03-12 00:47:22.739173	2011-05-05 04:25:11.877497	1	0	Cody	Rufus
113	U1 punishes messiah kick unless he immediately LK follow-up fadc.	450	2011-03-13 04:57:32.93576	2011-06-28 06:41:55.280106	2	0	M Bison	Rufus
115	At mid range Ex spiral arrow can go through Ryu's fireball.\r\n	491	2011-03-27 05:04:06.808499	2011-05-05 04:25:11.232986	1	0	Cammy	Ryu
119	DIVE KICK! DIVE KICK! DIVE KICK! Welcome to the Cammy matchup! \r\n\r\nWhen Cammy gets in she has a number of ways of keeping you guessing and locked down. If she attempts to attack you from the air you can use Cody's l.mk to slide underneath. This doesn't work on the instant dive kicks of course. \r\nAfter sliding underneath you can grab Cammy during her landing frames.\r\n\r\n	785	2011-04-01 19:58:36.528687	2011-05-05 04:25:11.827937	1	0	Cody	Cammy
125	Ryu is basically a better Sakura. This is a really tough fight for her so you need to capitalize on opportunities such as dropped combos and footsies opportunities.	701	2011-04-08 18:13:37.943633	2011-05-05 04:25:11.567666	34	0	Sakura	Ryu
127	c.mk + c.mp ducks under Shoto kick jumpins except for j.lk\r\nBuild Super. If they do any block string with c.mk, it's Super Punishable. If they c.mk xx Hadouken, that is also Super Punishable\r\nOutfootsie and punish Ryu for sticking out any limbs with c.hk	141	2011-04-12 06:49:51.517697	2011-06-28 06:41:55.28589	40	0	Chun Li	Ryu
128	Meaty c.mk on Viper's wakeup takes care of wake up Thunder Knuckle. If she does wakeup DP, your hitbox is low enough to whiff. It also recovers in time to be safe against wake up EX Seismos. Take care of wakeup backdashes with c.lk > 3k sweep option selects.\r\n\r\n**c.mk ducks under all air burning kicks. USE IT.**	167	2011-04-12 06:52:56.190357	2011-06-28 06:41:55.301774	40	0	Chun Li	C Viper
129	-jab all balls to stop ball pressure\r\n-lame it out, whoever is holding down-back will win if they have the lead\r\n-U1 to punish all balls\r\n-Focus crossup rainbow balls\r\n-c.mk ducks his crossup j.mk	146	2011-04-12 06:54:47.974808	2011-06-28 06:41:55.304362	40	0	Chun Li	Blanka
130	After a forward throw midscreen, dash and j.lk. It's an unblockable and ambiguous to which side you'll land on	155	2011-04-12 06:56:46.085279	2011-06-28 06:41:55.306791	40	0	Chun Li	Cammy
131	After forward throw, Dash, jump, and hold down back HP, HP+HK. It stuffs all Balrog wakeup options. If they EX Dash punch, it will cross under you and you will get her down-forward HK crossup and it will chase Balrog down. The option select punishes backdashes with a sweep.\r\n\r\nAlso, standing fierce is your goto anti-air. All day.	151	2011-04-12 06:59:09.248733	2011-06-28 06:41:55.309395	40	0	Chun Li	Balrog
132	cs.hk Demon Flip throws for REAL SOVIET DAMAGE. Otherwise, block and nj.hk obvious Demon Flips.\r\n\r\nAlso, if you can, trade air fireballs with sweeps. It's in your favor. And Ultra 1 air fireballs. Massive delay when he lands.	158	2011-04-12 07:00:42.658377	2011-06-28 06:41:55.316164	40	0	Chun Li	Akuma
133	cs.hk Demon Flip throws for REAL SOVIET DAMAGE. Otherwise, block and nj.hk obvious Demon Flips.\r\n\r\nAlso, if you can, trade air fireballs with sweeps. It's in your favor. And Ultra 1 air fireballs. Massive delay when he lands.	158	2011-04-12 07:00:43.337781	2011-06-28 06:41:55.318643	40	0	Chun Li	Akuma
134	Don't know if it works on AE timing, but you CAN Focus Backdash her Kunai Vortex.	165	2011-04-12 07:38:30.675341	2011-06-28 06:41:55.325967	40	0	Chun Li	Ibuki
135	s.mk all Chicken Wings for FREEEEEE	156	2011-04-12 07:39:36.69755	2011-06-28 06:41:55.336406	40	0	Chun Li	Fei Long
136	Duck all Bunshin Flip mixups and elbows with the following moves: c.mk, c.mp, c.hk	159	2011-04-12 07:40:40.499226	2011-06-28 06:41:55.342476	40	0	Chun Li	Guy
137	If you lose this matchup, you're doing something fundamentally wrong with Chun-Li as a character.	162	2011-04-12 07:41:51.77707	2011-06-28 06:41:55.345572	40	0	Chun Li	Dan
138	Oh, and if you wanna show who's boss, air throw Blanka out of his Ultra 1 at the correct range. If Blanka tries to go for cross-up U1 shenanigans, EX SBK beats it out CLEANLY.	146	2011-04-12 07:43:22.856356	2011-06-28 06:41:55.348324	40	0	Chun Li	Blanka
139	Rose uses her down-foward.MK to move in on you as a zoning tool. Viper's overhead will move her hitbox above the slide and come down on Rose. Depending on the spacing the timing is different, because you need to get Viper's hitbox off the ground before Rose can hit it. You can link this into a combo! *This also works with a spinning bird kick.\r\n	930	2011-04-12 17:12:47.834673	2011-06-28 06:41:55.35278	35	0	C Viper	Rose
140	If Rose activates her orbs ( she totally will if she runs U2 ) try and run from her. If she backs you into a corner use Vipers' super jump flame kick to get to the other side of the screen. You might be able to run the orbs out of time. 	930	2011-04-12 17:38:27.899068	2011-06-28 06:41:55.361918	35	0	C Viper	Rose
141	You just got knocked down, here comes the C. Viper burning kick wake up over head! No problem, use EX. Soul Spiral and gets you out of the mix up.	692	2011-04-12 17:44:11.835843	2011-06-28 06:41:55.364969	35	0	Rose	C Viper
142	Not exactly sure on the timing or if this works on wake-up, but if you see a C. Viper superjump in your direction you can activate your orbs and catch her in it.	692	2011-04-12 17:54:05.624557	2011-06-28 06:41:55.368753	35	0	Rose	C Viper
143	To avoid Seismo hammers you can use lp.uppercut on reaction.	27	2011-04-12 20:54:22.180003	2011-06-28 06:41:55.385214	35	0	Ryu	C Viper
144	If you try and chip Balrog with Ultra 2 he can Ex.Headbutt ( on wakeup) through it and make you sad.	781	2011-04-12 23:47:44.89958	2011-05-05 04:25:11.683785	35	0	Cody	Balrog
145	A lot of Codys use their ultra 2 to try and chip people out. The spray from his ultra 2 counts as a physical attack and will trigger Cammy's ultra 2 counter if activated on reaction.	513	2011-04-13 15:01:11.579629	2011-05-05 04:25:11.267082	35	0	Cammy	Cody
146	I wouldn't recommend using Ultra 2 for this match. Both ultras can punish Cody's Ultra 2 on reaction. At mid screen Cammy can even Ex drill kick through the spray adding for even less chances to do it safety. 	785	2011-04-13 20:08:41.987262	2011-05-05 04:25:11.830972	35	0	Cody	Cammy
147	You don't do thast shit ro your grandma.\r\n\r\nYou let her win a couple in checkers.\r\n	1143	2011-04-17 03:09:36.000339	2011-05-05 04:25:12.550262	35	0	Juri	Cody
148	Abel's roll has very low recovery. In order to hit it use a attack with long lasting frames to hit the small window of opportunity. Cody's couch mk works great for this.	798	2011-04-19 01:05:11.373663	2011-05-05 04:25:11.870626	35	0	Cody	Abel
149	Getting inside is the hardest part. Standing Fierce beats oil slide, and a lot of Sonic Booms can end up being unpunishable. Once you get in there, go nuts and oil rocket to your heart's extent; you cannot afford to let him get away. Ultra 1 is probably your best bet here.	1186	2011-04-23 01:31:51.560574	2011-05-05 04:25:12.606001	41	0	Hakan	Seth
150	The safest way to get in is using a chicken wing over a sonic boom or a sloppy standing fierce. Spin kicks are scary stuff; know when to back off, but never give Seth the reins.	556	2011-04-23 01:55:20.388192	2011-05-05 04:25:11.311532	41	0	Fei Long	Seth
152	If a Balrog player is silly enough to do a fullscreen EX.Rush punch you can easily do a command grab when he gets close to punish.	1061	2011-05-01 16:57:03.875655	2011-05-05 04:25:12.284939	35	0	Seth	Balrog
153	Option select throw (command or normal) if you think Abel will do an ex roll, it will catch him.  	1078	2011-05-01 16:58:06.93791	2011-05-05 04:25:12.3096	2	0	Seth	Abel
154	Abel can actually falling sky (anti-air grab) and catch your stretchy arms, so don't be too predictable with them.	1078	2011-05-01 16:59:02.605359	2011-05-05 04:25:12.311875	2	0	Seth	Abel
155	Cody's Hk.Ruffian beats all of T. Hawk's jump in options.	784	2011-05-02 01:32:25.783644	2011-06-28 06:41:55.394817	35	0	Cody	T Hawk
156	Make sure all your block strings/frame traps are tight. Otherwise T.Hawks high priority command grab will score huge damage on you.	784	2011-05-02 14:18:09.624507	2011-06-28 06:41:55.397983	35	0	Cody	T Hawk
160	You can stuff Bison's Scissor kick with crouching.mk clean! 	\N	2011-05-11 21:43:50.51971	2011-06-28 06:41:55.400784	35	0	Cody	M Bison
161	Use fierce punch to keep a bingo charged in case your opponent follows up head-stomp with the punch.	\N	2011-05-11 21:45:19.697262	2011-06-28 06:41:55.40337	35	0	Cody	M Bison
163	You can punish a blocked EX psycho crusher with U2.	\N	2011-05-11 21:46:42.760622	2011-06-28 06:41:55.406177	35	0	Cody	M Bison
164	nj. hp is BEASTLY against headstomp, and easy as piss on reaction. Just listen for the "hup" when he jumps. If he comes at you, you give him a nice slam straight down. If he reverses away from you, you have plenty of time to land, block, backdash, regroup, whatever.\r\n\r\nBeats ex headstomp too, unless done too late. Even then, it often trades.\r\n\r\n- Originally posted by *CoreySword at SRK	\N	2011-05-11 21:50:34.001439	2011-06-28 06:41:55.408622	35	0	Cody	M Bison
165	After a anti air strong DP or after a DP combo you can cross Cammy up with a cross up short for free. Her DP has a 5 frame start up making this jump in free. (Excluding her Ultra 2)	\N	2011-05-13 04:38:04.471543	2011-05-13 04:38:04.471543	45	0	Ken	Cammy
166	You can stuff all Ryu crossups with the cr.mk.	\N	2011-05-13 22:06:51.278338	2011-05-13 22:06:51.278338	46	0	Guy	Ryu
168	at the beginning of the match most Ryu players tend to back away and shoot fireballs. try to absorb some before you move in. absorbing them will give you a slight damage boost on your next attacks.	\N	2011-05-20 07:18:30.989627	2011-05-20 07:18:30.989627	49	0	Rose	Ryu
171	Standing Fierce Punch beats Cody's jump-ins for free.	\N	2011-05-24 03:20:38.957014	2011-05-24 03:20:38.957014	55	0	Adon	Cody
172	Close Standing Fierce Punch beats Guy's Bushin Flip.	\N	2011-05-24 03:21:30.379945	2011-05-24 03:21:30.379945	55	0	Adon	Guy
173	Jump-in OS HK.jk beats out EX Psycho Crusher.	\N	2011-05-24 03:23:10.169383	2011-06-28 06:41:55.439098	55	0	Adon	M Bison
174	NJ.hk OS HK.jk beats out Buttslam and EX Headbutt.	\N	2011-05-24 03:25:28.862335	2011-06-28 06:41:55.441852	55	0	Adon	E Honda
175	honda can headbutt thru low TS but not high TS. you'd be surprised how many ppl don't know this.	\N	2011-05-24 06:52:34.622562	2011-06-28 06:41:55.456402	56	0	Sagat	E Honda
176	how to deal with bison's headstomp:\r\n1) j. HP (have to time early)\r\n2) empty jump back--timed late when bison is about to stomp you. if you're lucky, you can get a free combo [j. HK] cr. MK xx LTS on him when he lands\r\n3) f. HK (same timing as empty jump back). free combo if timed correctly	\N	2011-05-24 07:11:17.811746	2011-06-28 06:41:55.45903	56	0	Sagat	M Bison
177	keep seismo-happy vipers thinking twice with kara knees	\N	2011-05-24 07:13:43.058219	2011-06-28 06:41:55.464539	56	0	Sagat	C Viper
178	angry scar (breaks focus) or ex TU to make gouken guess twice about doing armored demon flips. punish palms with reversal TU if deep or cr. LP xx LTS if they're a bit far	\N	2011-05-24 07:21:55.063552	2011-05-24 07:21:55.063552	56	0	Sagat	Gouken
179	Just about every Habanero Dash followup can be beat by a Tiger Uppercut. Your EX Dashes are going to be the main usage of your meter.	\N	2011-05-27 00:30:27.541956	2011-05-27 00:30:27.541956	41	0	El Fuerte	Sagat
180	Use Zangief's Ex Banishing Fist to go through any fireballs.	\N	2011-05-28 22:17:32.137462	2011-05-28 22:17:32.137462	58	0	Zangief	Ryu
181	By pressing forward+ M.Kick Guile can go through Sagat's low Tiger Shots if timed correctly.	\N	2011-05-28 22:19:26.821214	2011-05-28 22:19:26.821214	58	0	Guile	Sagat
182	Lk sobat over low tigers, slide under high tigers to keep charge	\N	2011-05-31 07:04:35.513807	2011-05-31 07:04:35.513807	60	0	Dee Jay	Sagat
183	Juris EX Pinwheel will go through all of Bisons Psycho Crushers and his ultra 2!	\N	2011-06-02 07:14:49.060402	2011-06-28 06:41:55.756823	61	0	Juri	M Bison
185	Change in timing for fireballs will lead Zangief to second question his lariat making it harder for him to approach Gouken. Watch out for empty drop in ultras and  s.H punch will punish green hand if timed correctly. Keep Zangief on the other side of the map and if he comes close enough and lariats, punish with c.H kick and get enough time for backing up.	\N	2011-06-04 23:11:16.921867	2011-06-04 23:11:16.921867	62	0	Gouken	Zangief
187	Gouken can easily win any fireball game ryu can show. Always be prepared for cross up tatsu and be wary when ryu has super when you are having a fireball war. Mix up the fireball war with the occasional demon flip mix-up when you have meter to spend to easily punish his hadoken. Keep him out of the sky and do not jump in as much. Let him come to you and spend meter to bring his health down.	\N	2011-06-04 23:14:55.499477	2011-06-04 23:14:55.499477	62	0	Gouken	Ryu
188	Ken having the worst fireball in the game (IMO) makes it easy to win any fireball war against this character which has him to approach you with jump ins and leg pokes. Expect a lot of low hit game play for a lot of ken's combos start with C.l kick. Be wary of tatsu and prevent from jumping into him while hes on the ground because that will allow for easy l. srk punish. Demonflip armor cancel will be a great tool to fake out his punishes, and do  be afraid to spend meter to get closer for heavy damage.	\N	2011-06-04 23:19:26.798438	2011-06-04 23:19:26.798438	62	0	Gouken	Ken
189	M.p gohadoken will shut down Adon's Jaguar tooth and ultra 1 if timed correctly. Adon will have heavy overhead game which is bad for gouken since adon will be able to stand over him and jaguar kick mix-up. It is best to keep him away and catch him in between specials for punishment. Be wary when countering adon for his jaguar kicks will break armor and his retreating heavy kick will activate the counter but he will not be hit thus giving him time for real punishment. 	\N	2011-06-04 23:23:26.115091	2011-06-04 23:23:26.115091	62	0	Gouken	Adon
190	One of the bad match-ups for gouken where his fireballs can be matched by Sagat's speedy fireballs. Demon flips could also be easily punished by him when he does standing heavy kick. The best approach for gouken is to demon palm (slide punch)through his fireballs up close. Keep medium distance to him for if he is too far he will spam fireballs and punish any demon slide or flip. Sagats will also bait demon slide and punish with ultra 1. observe the sagats patterns when it comes to fireballs and time ex demon flips/slides for heavy punishment. Demon flip armor will absorb tiger uppercut unless it is EX or angry scarred. Up-close encounter is best here for gouken.	\N	2011-06-04 23:28:17.629941	2011-06-04 23:28:17.629941	62	0	Gouken	Sagat
191	This is a great match-up for gouken for most of chun-li's moves can be countered and fireball wars is not a problem. For when chun-li follows her light fireballs, counter the fireball and the counter will damage chun-li or at least make her back up. If you ever jump in on a downed chun-li, Crouch to avoid the ex spinning bird kick and punish with a crouching heavy into demon palm. Use fireballs sparingly when chun-li has ultra 1 and bait with l. Punch to punish a thrown out ultra by her. You can also counter her cross over special kick with counter which will lead her to use it sparingly. watch out for c. heavy punch and kick and keep her spaced until her ultra 1 is ready. That's when you change it up with fire ball bait and up close mix-ups.	\N	2011-06-04 23:32:55.964828	2011-06-28 06:41:55.773756	62	0	Gouken	Chun Li
192	Blanka will spam the back slide under Gouken's fireballs, so block low when blanka is near and punish cannon ball with l. demon palm or ex demon palm. Jumping in on blanka will usually lead to lightning storm or anti-air cannon ball. You can punish cannon ball also with ex ground tatsu since the invincibility frame start-up will prevent the hit from landing. Bait back slides and counter low when blank tends to jump behind you. 	\N	2011-06-04 23:36:44.358254	2011-06-04 23:36:44.358254	62	0	Gouken	Blanka
193	Punish all head butts with l.p gohadokens and do not go in for the jumps for he'll jumping neutral m.p You can also catch his head butts with ex ground tatsu. Counter his butt slams and watch out for command grabs. E. Honda can be easily spaced out with l.p fireball. punish jump ins with jumping forward or backwards m.p. keep spaced away amd punish jump ins as much as possible leaving e. honda second guessing his next move. watch out for empty jump in cmd grab or ultra 2.	\N	2011-06-04 23:43:11.382881	2011-06-28 06:41:55.778024	62	0	Gouken	E Honda
194	Fireball wars will dominate Guile and countering his l. sonic boom while he follows it will prevent that mix-up from happening. Do not jump in or demon flip armor for flash kick will dominate both leaving him to throw a chipping sonic boom and follow up with low heavy or up-close combos. If you ever block his c.h kick's first hit, you have enough time to low counter the second hit. Stay on the ground and watch out for air command throws. Also, well timed ex demon flip grab will make guile second guess his fireball game.	\N	2011-06-04 23:49:05.991747	2011-06-04 23:49:05.991747	62	0	Gouken	Guile
195	Be careful with approaching Dhalsim and his c.h punch. Dhalsim will throw out his limbs when they back jump making it easy to counter. When a dalsim shoots out a fireball and teleports behind you. it is best to counter the fireball or punish the teleportation with s.l punch. You may also demon slide through his c.h punch while you are at medium distance from him. Be sure to demon flip armor if you attempt to get closer with it. a good chance the dalsim will attempt to anit air you with his knee which is only a single hit.  	\N	2011-06-04 23:53:13.778275	2011-06-04 23:53:13.778275	62	0	Gouken	Dhalsim
196	Counter his head butts and mix up the timing of gouken's l.p fireballs to catch him in the middle of his turn punch. The turn punch can also be punished with ultra 1 or ex. ground tatsu when he attempts to dodge your fireballs. They will also try to ex armor punch through your balls which can be punished by the similar way. Expect a change in game when Balrog has his ultra 1. Do your best to not get cornered for balrog has great corner pressure. If stuck in corner try to h. Demon flip behind him and block for any kind of charge punch he has prepared for trying to punish your escape. keep him out in the open at long distances.  	\N	2011-06-04 23:58:07.461708	2011-06-04 23:58:07.461708	62	0	Gouken	Balrog
197	Stay on the ground for this Vega can easily punish with his wall bounces and air grabs. Expect a lot of claw pokes and keep him distant with fireballs. When he attempts to wall bounce into over head double claw,  counter the claws or attempt to predict with h.p gohadoken. His ex wall bounce to front claw will go through fireballs but can be punished with ex. ground tatsu or block then l.p demon palm slide. you can also counter his ground roll, but not his backflips which break armor. Vega will be moving from wall to wall so keep an eye out and punish any of his invincible frame back flips with s.h into demon palm slide	\N	2011-06-05 00:07:05.122199	2011-06-05 00:07:05.122199	62	0	Gouken	Vega
198	M.Bison is a bad match-up for gouken if not ready for the different approaches he has. Always block his overhead space jump and counter his second hit if he decides to follow up with it. You cannot counter it if he ex's. You may counter his first ultra but players tend to use his second one more. Thus when he has it use fireballs sparingly and attempt to bait it. When he does psycho crusher while you are downed you may punish with ex wake up ground tatsu. A lot of his specials can be countered except PC and his space jump overheads. Expect for empty space jumps trying to bait you into countering which will lead him to be able to maximize his punishment ability. 	\N	2011-06-05 00:11:46.085716	2011-06-28 06:41:55.785866	62	0	Gouken	M Bison
199	This is a great match-up for gouken when it comes to spacing out since T.Hawk's hit box is huge. You'll always want to keep shooting l.p gohadokens and block his dive attack which can be punished on block with l.p demon palm slide. If you want to keep him guessing m.p gohadokens are great since he needs to crouch or jump from up close to dodge which can lead to heavy punishment from gouken. Watch out for empty jump in ultra 1 grabs and stay away from corners with h.demon flips and ex air tatsu. I prefer ultra 2 in this case since you can also punish his air dive charges with that also. (when he's in the air that is). Keep him far and the fireballs will do the rest	\N	2011-06-05 00:15:57.878691	2011-06-28 06:41:55.789189	62	0	Gouken	T Hawk
200	Fireball must be really tricky with cammy or she'll slide through them, under them, or even ultra 1 them. From distance though she has to dodge or eat. Do not attempt to jump in or her srk kicks will punish you. You also cannot demon flip armor for they armor break. expect cammy to dive kick over you when you're down. Rising counter will easily solve this problem, but she will catch on sooner or later. Crouch and punish with c.h punch when cammy cannon ball jumps across the screen to try to punish a fireball. Punish jump ins easily with jumping m. punch or s.l punch. 	\N	2011-06-05 00:24:13.276682	2011-06-05 00:24:13.276682	62	0	Gouken	Cammy
201	Gouken has a fair match-up against his character since he has a lot of punish options against fei long's approaches. he can counter both rekka or chicken wing (the last hit of CW) or even s.h Punch. Expect a lot of c.h punch he throws out and when he blocks your cross-ups then flame kicks to attempt to keep you off. Fei-long has really good corner pressure and it is hard for gouken to get out. The best way to go is rising block and either h. demon flip out or slip out through c.H kicks then jumping over. Fireballs will keep him back, and switch it up with light demon palm slide when he attempts to focus cancel through them. 	\N	2011-06-05 00:32:09.825923	2011-06-05 00:32:09.825923	62	0	Gouken	Fei Long
202	Fireballs wars will dominate deejay in this match-up since gouken has a great upper hand in this fight. Watch out for slide kicks that deejay will attempt to avoid your fireballs and standing over him will usually have him do his special kicks that armor break. Do not attempt to demon flip approach since he has armor breaking capabilities with his air special kicks. You can though punish his fireballs with the demon flip mix-ups. Counter his fireballs if he attempts to walk behind them and keep him in the corner if possible for he has limited exit strategies when trying to escape the corner. Keep him distant and punish his jumps with j.m punch or c.h punch	\N	2011-06-05 00:37:56.470495	2011-06-05 00:37:56.470495	62	0	Gouken	Dee Jay
203	Be very afraid of Akuma's demon flip mix-up options when he is over you when you are downed. Fireball wars are limited due to his 3 hit charged fire ball ability. Though you may punish it with demon flip or demon slide depending on distance from akuma. You can counter his air hadokens since most tend to jump forward with it and try to combo after the ball hits. Punish his demon flips with j.m punch, but watch out for ex demon flips which most will use the moment they have the meter to do it. They will ex demon flip in attempt to punish a fireball thrown by gouken so it is best to slow down a bit after every fireball to prevent being punished. Jump in are easily punished by akuma with hus first ultra, srk, or he'll retreat with a air hadoken covering his retreat. Get him with heavy hits and he'll go down without much of a fight. If you're caught in his vortex he will be a huge pain in the ass. Keep on the ground and stay standing by avoiding any kind of sweep he throws.  	\N	2011-06-05 00:45:34.793587	2011-06-05 00:45:34.793587	62	0	Gouken	Akuma
204	Ex counter will be your friend in preventing him from doing his dash attack mix-ups. Beware of the air grabs and be prepared to counter a high hit when he bounces off the wall in attempt to dodge a fireball no matter what direction it goes. Be wary around him when he's up close for he will slide under with c.h kick that will also dodge fireballs. You can counter his air cannon ball into elbow dive with the upper counter. You really do not have to worry about his "duck under into back shoulder hit" special unless it is ex'd since gouken's recovery time after fireballs isn't long. You can punish with ex. ground tatsu if they attempt to do that or you can just block. Watch out for wake-up dp from guy for when you counter it he'll be out of reach from the blow and he'll be able to punish. 	\N	2011-06-05 00:54:20.127198	2011-06-05 00:54:20.127198	62	0	Gouken	Guy
205	Fireball wars is in gouken's favor unless she sends them back right towards back at him or absorb them. demon flip will greatly help punish her slow recovery time after she shoots out her sparks. When rose does a wake-up get out of jail ultra 2, you can do an instant ex ground tatsu that will go through the balls and hit her cause them to disappear. You must be standing over her to do this which is great bait for her to do it. Watch out for her leg pokes and keep her at a medium distant so you may dish out the punishments with jump in h. punches into demon palm slides or demon flip mix- ups when ever she uses her fireballs.  	\N	2011-06-05 01:01:02.883719	2011-06-05 01:01:02.883719	62	0	Gouken	Rose
206	This is an easy match-up for gouken since sakura lacks potential fireball game and her approach consist of ex. hand spikes or simply just jumping over the fireballs which makes it easily punishable. She can be very dangerous if she is up close or has cornered you. Mix up with the fireballs to keep her guessing and she'll have a hard time approaching you. When she has meter be careful for her ex hand spikes, but you can punish with hadoken bait then jumping m. punch. Keep her away and you'll have it in the bag	\N	2011-06-05 01:08:27.713832	2011-06-05 01:08:27.713832	62	0	Gouken	Sakura
207	Fireball war against dan will shut him down and he lacks any really approach against gouken. be careful of dan's tatsu attack since it is quick and breaks armor so it cannot be countered. Keep him far away for he does have potential damage with up-close fighting. Other than that, you can easily demon palm slide pass his projectile and deal heavy damage to him up close or far away. This is one of gouken's best match-ups	\N	2011-06-05 01:14:30.65633	2011-06-05 01:14:30.65633	62	0	Gouken	Dan
208	Use fireballs sparingly against Cody or he will either ex slide kick past it, ex criminal upper, z. Knuckle, and even ultra 2. Use his power against him and punish his slow heavy hits with counters. Do not attempt to demon flip regularly against cody since his h. kick slide will armor break and even allow him to ultra 1. rocks can be annoying, but demon flip or slide will easily punish them. Watch out for fake rock throws and change the timing with charging fireballs to have him guess when he needs to slide under. If he gets in and keeps in he'll eventually and mosy likely stun you and make you look free. Keep him far, but be careful of his slides when he reaches medium ranges. 	\N	2011-06-05 01:18:46.593877	2011-06-05 01:18:46.593877	62	0	Gouken	Cody
209	Dudley tends to duck charge through fireballs so a well placed delayed or regular fireball will keep dudley guessing when he needs to duck which can lead to easy punishments. Since dudly cannot cross up, they tend to stay on the ground and keep swinging forward till they land a hit. Ex counter will help keep him back. Gouken cannot counter his forward punch after he does a duck since it inherits a armor breaking tribute from the duck charge. Watch out for his ex. machine gun punch will keep him close to you, but they tend to use it when they can chip you out with it. When they have ultra 1 they can dive under the fireballs and punish you so use sparingly after he obtains enough revenge meter to use it. 	\N	2011-06-05 01:24:41.198915	2011-06-05 01:24:41.198915	62	0	Gouken	Dudley
210	Gouken shuts down Ibuki's vortex since he can counter her air kunai. Use fireballs lightly for she can easily slide under and get free damage. It's best to throw a fireball out then just crouch. Ibukies tend to throw out neck break slides for the second one. The best thing to do is block the slide and back throw into ultra/j.m.punch into ex tatsu/j.m/punch into c.H punch into light demonflip mix-up. If you land heavy hits on her and keep her from sliding and punishing your fireballs you are good for this match-up. Watch out for her ability to run past and get behind you. If you're not sure where to punch c.L punch is great for keeping her back no matter if she is in front or just dashed behind you. 	\N	2011-06-05 01:30:01.511075	2011-06-05 01:30:01.511075	62	0	Gouken	Ibuki
211	Makoto has very limited approaching options. She either has dash punch or simply jumping over. Watch out for her ultra 2 that can punish fireballs, but most makotos tend to use ultra 1 since you can use cmd grab into it. Watch out for empty jump in cmd grabs and over head armor breaking chops. you can counter her dash punches and even just shoot fireballs at her. If you place a well timed ex demon palm slide you can also catch her in the middle of the dash. You can counter her over head air heel kick that a lot of makotos use when standing over Goukens. Keep her distant and punish her with ex. ground tatsu  	\N	2011-06-05 01:36:45.184339	2011-06-05 01:36:45.184339	62	0	Gouken	Makoto
212	Gouken can counter her air fire kicks, but be careful of her taser charge or ground pounds which armor break. You should not demon flip against her for her anti air taser will armor break if you attempt to do so. It's best to keep on the ground and demon palm slide past her gound pounds and stay in close. If she does a boosted jump you can easily punish with j.m punch Use fireballs carefully for she can just ground pound then jump in for even more damage. Try to ex. demon flip into dive kick to punish any ground pounds. Stay close to her and corner her. Keep an eye out to guard low for ground pounds and counter the incoming fire kick after them. 	\N	2011-06-05 01:41:40.405045	2011-06-28 06:41:55.834562	62	0	Gouken	C Viper
213	With both ultras being able to punish fireballs, this match-up requires gouken to rely on his normals and sweeps. Abel's roll is his main tool of closing in on fireball characters and a well charged firball mix-up will make him roll even before you throw it out causing him to second guess his rolls. Switch up your fighting against Abel when he has either ultra ready to use for when you throw out a fireball he'll take that moment to punish you tremendously with his strong hitting across the screen ultras. Baiting is highly recommended when he has his ultras for he has great recovery time after being blocked or jumped over. His ex over head kick will go through fire balls, but with a revenge meter and ultra 1 you have enough time to punish it. Abels tend to roll into normal or cmd grabs. When you are downed with an able over you it is best to dash back or jump up for abel's cmd grab can keep gouken down for a long time. 	\N	2011-06-05 01:48:11.434427	2011-06-05 01:48:11.434427	62	0	Gouken	Abel
214	If El Fuerte can keep you guessing when you are on downed on the ground they can do some serious damage. When you are faced with this sometimes ex counter is a good option since 2/3 options for his dash is to hit high or low. This can be easily punished if he decides to just grab instead. Back dashing or jumping will help you get out of this situation. You can counter his wall bounce hits and armor break his charge with demon palm slide. If they are on the other side of the screen and they have meter expect a ex armor charge attack. This can be punished by ultra 1 or demon palm slide. Watch out for el fuerte's ability to slide under fireballs and bait them and counter low to keep him second guessing. They can also use ultra 2 to slide under fireballs so use fireballs sparingly when el fuerte has ultra 2. 	\N	2011-06-05 01:53:04.347247	2011-06-05 01:53:04.347247	62	0	Gouken	El Fuerte
215	Rufus's dive kick and tornado are his key moves for approaching. You can counter the dive kick but electric tornado will armor break. Watch out for Rufus's cr.h punches and his ex messiah kicks. These are great ways to get hits on gouken when he is within medium ranges. Electric tornado will not take both hits of the gohadoken if charged all the way. Anti Air gohadokens are recommended against Rufus since his huge hit box will even allow him to get hit with a m. gohadoken when he's standing close. Bait his electric tornadoes and punish with cr.h kick sweeps or jump over to cross up with cr/s. H punch into demon palm slide. Taking both approaching advantages from Rufus will make it hard for him to get in close. Keep him at far medium to long distances. When he has ultra 2 use fireballs sparingly.   	\N	2011-06-05 01:59:24.261742	2011-06-05 01:59:24.261742	62	0	Gouken	Rufus
216	Seth's low health plays a huge factor when playing against the hard hitting gouken. Seth will attempt to wall bounce into kick which can be countered by gouken and gouken's focus attack will out do seth's. Keep pressure on seth and keep him close. If seth tends to stand on the other side, fireball war with him until you get meter for ex demon flip into grab then you're close to him again. Seths will tend to retreat with back jump H. punch which is the one where he stretches his arms out. This can be countered and even punished with ultra 1 if timed correctly. Demon flip mix-ups against seth is very crucial for winning against him for you may armor through his srk which has a long recovery time. Be careful when he has ultra 1 which can go through fireballs and punish gouken so use it sparingly when seth has enough revenge bar. 	\N	2011-06-05 02:05:30.692395	2011-06-05 02:05:30.692395	62	0	Gouken	Seth
217	You must defeat me to ever stand a chance! Xbox Live Gamer Tag : Deaths Command. Gouken vs. Gouken matches is all about predicting what the other one will do and doing the correct punish. These are tips to beating any Gouken. Punish his demon flips with jumping attacks or any kind of ex srk. If you block his Demon palm slide you can instantly do a DP punish (or in this case an ex ground tatsu). Gouken needs to demon slide though the other one's fireballs and bait counters so they can back throw. #1 rule to defeating Gouken..... TECH THE BACK THROW! His back throw has a 1.5 second delay for the tech so wait that extra second and a half to push him back or prepare to eat a full ultra 1 (until AE comes out then back throw will be scaled).	\N	2011-06-05 02:14:32.678157	2011-06-05 02:14:32.678157	62	0	Gouken	Gouken
218	Watch out for Juri's dive kick. It can break armor so it cannot be blocked and a ex version can go into her ultra 2. This can easily be stopped by Gouken's m.p Gohadoken. The angle of that fireball is almost perfect to the angle Juri will be coming in. Expect her to ex dive kick when she has ultra 2. Keep her at a distance and don't stand over for her pin wheel kick will just knock you back. You can cross her up though when she does the pin wheel kick. Juri will also attempt to counter Gouken's fireballs to get in closer for damage. Expect her to counter and stay crouched for she does a low hit after the counter. After blocking the low hit you can cr.h into demon palm slide and she is back on the other side of the screen. 	\N	2011-06-05 02:19:02.377446	2011-06-05 02:19:02.377446	62	0	Gouken	Juri
219	Watch out for his body slide under your fireballs so use them sparingly and guard low. If blocked you can throw Hakan forward or back. He will also use his oil shower to dodge incoming fireballs and his sliding focus attack to get past fireballs. Play keep away when playing hakan and watch out for cmd grabs and ultra grab. Never jump in on hakan when he has his ultra 2 unless you plan to bait with air tatsu past him. Keep him at long distances and don't let him get too close.	\N	2011-06-05 02:22:01.027656	2011-06-05 02:22:01.027656	62	0	Gouken	Hakan
220	The battle of the old geasers. Watch out for Gen's srk bicycle kick that can break armor and his wall bounce into straight down dive kick that also armor breaks. Gen uses a lot of pokes and cross overs to keep you in the middle of the screen while he bounces around everywhere. You can at least keep him on the ground with anti-air gohadokens. Watch out for the ground roll similar to Vega which can also be countered (Gen will use this as a way of approaching from medium distances). Jumping up and hitting him is also a good way to put him on the ground also. Although Gen has an option to hit the ground early which can be used to bait Gouken into jumping. Keep close to Gen and keep him out of the skies. 	\N	2011-06-05 02:27:42.352821	2011-06-05 02:27:42.352821	62	0	Gouken	Gen
222	You can stuff a Blanka ball with a well timed jab. Try this in training more to get the timing down. This can become a huge tool in the matchup.	\N	2011-07-01 21:39:38.118792	2011-07-01 21:39:38.118792	35	0	Ryu	Blanka
223	You can stuff a Blanka ball with a well timed jab. Try this in training mode to get the timing down. This can become a huge tool in the matchup.	\N	2011-07-01 21:40:06.787467	2011-07-01 21:40:06.787467	35	0	Ken	Blanka
224	You can stuff a Blanka ball with a well timed jab. Try this in training more to get the timing down. This can become a huge tool in the matchup.	\N	2011-07-01 21:40:17.805546	2011-07-01 21:40:17.805546	35	0	Adon	Blanka
225	You can stuff a Blanka ball with a well timed jab. Try this in training more to get the timing down. This can become a huge tool in the matchup.	\N	2011-07-01 21:40:30.00495	2011-07-01 21:40:30.00495	35	0	Sagat	Blanka
234	You can stuff a Blanka ball with a well timed jab.	\N	2011-07-02 21:04:07.005857	2011-07-02 21:04:07.005857	35	0	T Hawk	Blanka
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY users (id, email, encrypted_password, password_salt, reset_password_token, remember_token, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, admin, name) FROM stdin;
1	ashskutches@gmail.com	8ee63899af47494f2f8c80400a8effe04fddc49f	x-I-8aONWwjrnhah6UhR	\N	\N	\N	62	2011-04-02 17:06:02.721488	2011-04-01 21:08:09.70251	71.58.108.6	216.169.171.25	2011-01-24 01:27:51.416393	2011-04-02 17:06:02.722613	t	WaKkWaKk
2	jia@meng.com	0def24a50a5feb5fe120bf1889586258d09d7536	7hkMVh_4BDAOCAWJYWGm	\N	sl9u_3dKtpJonwzB6fS_	2011-03-10 03:06:56.550389	15	2011-05-01 16:57:10.637208	2011-03-25 03:25:23.241959	68.232.114.231	68.232.114.231	2011-01-24 02:04:49.124115	2011-05-01 16:57:10.638287	t	LemonMeringue
3	1redcalvin@gmail.com	82134b97197fe312d5c24d57decf983abf755cdc	pGPdhhuRTJiCp5tI3kH8	6SZhlYDvxPMzn_fnNePF	\N	\N	2	2011-01-25 16:03:25.05148	2011-01-25 15:52:20.59443	68.232.117.207	68.232.117.207	2011-01-25 15:52:20.573571	2011-01-25 16:03:25.076516	\N	SpazzyAshley
4	andycpsu@gmail.com	a378a65c517df8da5125d3baaf4cd9cf59f6d651	FAGrO6Gjf17hNt5PFYmH	\N	\N	\N	2	2011-02-21 20:18:42.735993	2011-01-25 16:09:24.192696	128.118.153.52	128.118.153.52	2011-01-25 16:09:24.187001	2011-02-21 20:18:42.736732	\N	andycpsu
5	dhsieh12@gmail.com	7911004858e69cf1e4f1e411e896c66fd2bda3ec	mL89PxZG_yonq2mJS9il	\N	\N	\N	1	2011-01-25 16:54:57.635695	2011-01-25 16:54:57.635695	173.163.172.113	173.163.172.113	2011-01-25 16:54:57.629679	2011-01-25 16:54:57.63781	\N	dhsieh
6	theamazingchris@gmail.com	ef80d948660e7c75957c433fdb8f8648bef438ed	_s8WX2z4Gr5ROUDf6WA4	\N	\N	\N	1	2011-01-25 17:14:57.291907	2011-01-25 17:14:57.291907	98.235.87.10	98.235.87.10	2011-01-25 17:14:57.2862	2011-01-25 17:14:57.293875	\N	ssj4sephirothkagome
7	manscorpion_left@yahoo.com	140a18e22efd0e9ab4ae6abbd556669c03edb347	Thbj74qWkh0IrhMCnyiA	\N	\N	\N	1	2011-01-27 15:52:15.611511	2011-01-27 15:52:15.611511	146.186.206.227	146.186.206.227	2011-01-27 15:52:15.139016	2011-01-27 15:52:15.612325	\N	redimpactclawbutts
8	geezy14@gmail.com	ef7faed39e17affda2d60e27c45d0732b80c2d29	Oiw8ZWJi4ZdhR47SwCZe	\N	\N	\N	1	2011-01-27 21:23:07.816972	2011-01-27 21:23:07.816972	72.80.250.127	72.80.250.127	2011-01-27 21:23:07.804808	2011-01-27 21:23:07.818809	\N	railworker1
9	Icweaner@aol.com	fad57e00b3eaee3a8bb8eaae403c2f03a84b2bee	QVJZpnS1C7wDuCi0vDn6	\N	\N	\N	1	2011-01-29 01:16:30.295483	2011-01-29 01:16:30.295483	72.92.105.137	72.92.105.137	2011-01-29 01:16:30.16968	2011-01-29 01:16:30.297676	\N	Bob
10	tollenstein@gmail.com	d853e88dc537b6cdfb3e2d1647c72ebc306cff78	Cwo9vk15or23nozA0VVU	\N	\N	\N	1	2011-02-01 14:52:43.65058	2011-02-01 14:52:43.65058	216.169.171.25	216.169.171.25	2011-02-01 14:52:43.426019	2011-02-01 14:52:43.671736	\N	Troll
11	trollolol@gmail.com	1bd397948ea982719ec45970258597bbcbbfa06d	g_OLuwy5XstLn8nk08bQ	\N	\N	\N	1	2011-02-03 15:29:33.423729	2011-02-03 15:29:33.423729	216.169.171.25	216.169.171.25	2011-02-03 15:29:33.253868	2011-02-03 15:29:33.425965	\N	trollolol
12	trollinator@gmail.com	ec1900a286676ffaeba03bc7710a06278f5cbc44	RdZyQUsqeGNDQYNG3rdO	\N	\N	\N	1	2011-02-07 17:18:05.137434	2011-02-07 17:18:05.137434	216.169.171.25	216.169.171.25	2011-02-07 17:18:04.970442	2011-02-07 17:18:05.138222	\N	trollinator
13	zchjohnston@gmail.com	727a55f471687a9451725b91a9350d5ca4d7ab03	BgzF6EOgcfYJR1tCuZLO	\N	\N	\N	1	2011-02-11 04:54:00.16971	2011-02-11 04:54:00.16971	216.169.171.85	216.169.171.85	2011-02-11 04:53:59.973974	2011-02-11 04:54:00.171707	\N	johnzach
14	facetronicon@gmail.com	1a23810d1e0f2e931deb7c7794a1a4b8e1a3ff86	pF9ZXmtl-EzwwTfVdZxB	\N	\N	\N	1	2011-02-21 19:24:34.781921	2011-02-21 19:24:34.781921	38.114.210.35	38.114.210.35	2011-02-21 19:24:34.522708	2011-02-21 19:24:34.78285	\N	PooGod
15	ooogooman@yahoo.com	bc41ba4a8f1468692cac67ac0e1a54495edf76b7	5SRfxuMJv8Ws0nj103Tt	\N	\N	\N	2	2011-02-22 05:07:50.206149	2011-02-21 21:34:52.566385	96.242.29.101	128.235.65.2	2011-02-21 21:34:52.563094	2011-02-22 05:07:50.208269	\N	Toptomcat
16	writejm@gmail.com	d827a29cd9a135a0bc46f72e61c92ff8c4eaefc3	mdoCcvhooHU4_B9uzJJD	\N	\N	\N	2	2011-04-09 16:32:33.8992	2011-02-21 22:21:16.424755	66.177.167.28	66.177.167.28	2011-02-21 22:21:16.421435	2011-04-09 16:32:33.900702	\N	johmas
17	ewicexclamationpoint@gmail.com	107d0b63ac3f874c13ed94b585d3dd1406395614	8upiSJ3U0d8SQySS0_iG	\N	\N	\N	1	2011-02-22 02:49:33.243673	2011-02-22 02:49:33.243673	70.181.20.156	70.181.20.156	2011-02-22 02:49:33.240444	2011-02-22 02:49:33.244366	\N	ewic
18	julian.b@westnet.com.au	c748989a45f639f06c8bbb080dc9f2202ae15b20	ZSG7D_PEvf-sJgYjtkAS	\N	\N	\N	1	2011-02-22 10:54:31.868515	2011-02-22 10:54:31.868515	58.178.201.105	58.178.201.105	2011-02-22 10:54:31.640457	2011-02-22 10:54:31.869432	\N	jul1an
19	eightfivezero@googlemail.com	2f90b3a23f8437043a3c2e6cca8375bffa64de4a	WvNrQXcEfLjeE4bskHWq	\N	\N	\N	1	2011-02-22 14:43:45.819447	2011-02-22 14:43:45.819447	80.152.227.183	80.152.227.183	2011-02-22 14:43:45.759376	2011-02-22 14:43:45.820357	\N	eightboy
20	gbursine@gmail.com	1548af7c7b99597ea5754ed52274afb3ed07111d	X3WUJauUmo9P9soyDa9P	\N	\N	\N	1	2011-02-26 19:29:06.756331	2011-02-26 19:29:06.756331	65.198.75.98	65.198.75.98	2011-02-26 19:29:06.120742	2011-02-26 19:29:06.758873	\N	gbursine
21	adamiswoot@hotmail.com	51d4ed4af9b5fd2578051a1e527d99279c3ea20b	ErmrrmOjZT4pxWhKWHEQ	\N	\N	\N	1	2011-03-01 23:54:11.5595	2011-03-01 23:54:11.5595	74.167.121.68	74.167.121.68	2011-03-01 23:54:11.368933	2011-03-01 23:54:11.560303	\N	baconsticks
22	abelasola@hotmail.com	124263fd2304c7a9a5cfcb986fe7d4fe8422b8f7	uqkRLEHz3Z73SizM2vtH	\N	\N	\N	1	2011-03-03 08:21:15.218495	2011-03-03 08:21:15.218495	66.215.184.170	66.215.184.170	2011-03-03 08:21:15.14433	2011-03-03 08:21:15.21925	\N	starfox132
23	clinton@j-udy.com	27d1fdfc5c48aeaccab15a6b690fce2f0b2d55e2	_WCbxWiObjsIKG7HrmGR	\N	\N	\N	1	2011-03-03 20:17:46.605866	2011-03-03 20:17:46.605866	216.169.171.25	216.169.171.25	2011-03-03 20:17:46.495961	2011-03-03 20:17:46.606622	\N	Judy
24	ashskutches@yahoo.com	4491b8502e03afffc8343e868b5aa715681636b4	-gn6rgxLCQ05_35bmKeu	\N	\N	\N	1	2011-03-03 20:48:26.682382	2011-03-03 20:48:26.682382	216.169.171.25	216.169.171.25	2011-03-03 20:48:26.675888	2011-03-03 20:48:26.683372	\N	hackanator
26	xylee11@yahoo.com	0f27f379fbb22ed0556df5ddce2144b5f772dcec	9L54sY_-udx5huIYcfbq	\N	\N	\N	1	2011-03-04 08:21:07.193498	2011-03-04 08:21:07.193498	180.192.1.114	180.192.1.114	2011-03-04 08:21:06.860286	2011-03-04 08:21:07.194261	\N	xyke06
27	wayne_ramarez@yahoo.com	ea8e932d89ca01a2d97bfc90e94701bffa79501f	R09F_T6uxsFpzxyNVJPW	\N	\N	\N	1	2011-03-06 03:57:52.375727	2011-03-06 03:57:52.375727	24.13.57.198	24.13.57.198	2011-03-06 03:57:51.537928	2011-03-06 03:57:52.376546	\N	WAYNE
28	chokitrans@hotmail.com	3785d9ec0f9fec99031147809c95565d0938e48a	zqzsAB4DDVV6e0Q01yp-	\N	\N	\N	1	2011-03-09 02:23:18.841225	2011-03-09 02:23:18.841225	190.21.111.225	190.21.111.225	2011-03-09 02:23:18.671235	2011-03-09 02:23:18.841995	\N	chocapik
29	pitredmexico@yahoo.com	bfc02a81057c019bcacb4f772974ac65992c2a7e	xnaBWdIO8tGU2352a4u0	\N	\N	\N	1	2011-03-11 08:22:08.880101	2011-03-11 08:22:08.880101	68.111.229.52	68.111.229.52	2011-03-11 08:22:08.519716	2011-03-11 08:22:08.881057	\N	Yoshie
30	acantuguzman@yahoo.com	7914ac4c5adb187ee4337fbd64270c22bf285b09	3ioUIGy7BgWU9a9TXKhF	\N	\N	\N	1	2011-03-18 07:21:50.59185	2011-03-18 07:21:50.59185	75.141.84.58	75.141.84.58	2011-03-18 07:21:50.464921	2011-03-18 07:21:50.59387	\N	TWEEZ509
31	trollio@gmail.com	918ab33ce3138bd6b8dbcd54f643d3e4010fd2fa	xCpiRAAIVhzdGnDDZ9zk	\N	\N	\N	1	2011-03-31 21:31:24.946333	2011-03-31 21:31:24.946333	216.169.171.25	216.169.171.25	2011-03-31 21:31:24.861413	2011-03-31 21:31:25.021315	\N	trollio
32	krysta5130@gmail.com	0321c89a712ac74c16835c3fcaa125e2daa251d8	ya16tlv8DRd3yI_XqP2S	\N	\N	\N	1	2011-03-31 21:35:42.37207	2011-03-31 21:35:42.37207	207.7.162.39	207.7.162.39	2011-03-31 21:35:42.339842	2011-03-31 21:35:42.373172	\N	krysta5130
34	arc143@psu.edu	$2a$10$/Z9.kXP4okF4YXeYW8g8k.LnEQgV.PtSpbpw8Fu7gQ.J1qkO5WjrO		\N	\N	\N	1	2011-04-08 18:12:14.204273	2011-04-08 18:12:14.204273	128.118.153.52	128.118.153.52	2011-04-08 18:12:14.129562	2011-04-08 18:12:14.205099	\N	Andrew Calvin
35	hallowvisage@yahoo.com	$2a$10$ZxCVsn9UPjyYGp/psl2M.eELBiEl72P8yiBwbNNBxmUG.IBb4WRTa		\N	\N	\N	122	2011-07-12 15:23:13.579875	2011-07-12 15:17:19.187236	173.161.170.225	173.161.170.225	2011-04-08 19:18:50.462324	2011-07-12 15:23:13.580736	t	Ash Skutches
36	justin.fedick@gmail.com	$2a$10$81K2a/jjRDwK91E.sJwGxuBK3UjBpsADmEI.NT.9aPP9.xYOVjDRG		\N	\N	\N	4	2011-05-12 15:18:31.661919	2011-04-15 21:15:00.501734	216.169.171.25	216.169.171.25	2011-04-08 22:15:32.302659	2011-05-12 15:18:31.674243	\N	Justin Fedick
37	scoobydoo@gmail.com	$2a$10$JsuOFjXj/oqoUyyL6tIgjeKoHkwrO7SQRIDc4qixOaSvBdNrmkT9e		\N	\N	\N	1	2011-04-08 22:19:53.165657	2011-04-08 22:19:53.165657	127.0.0.1	127.0.0.1	2011-04-08 22:19:53.154983	2011-04-08 22:20:42.026107	t	scoobydoo
38	apps+200476873308924.9387853.0b97a913cd775d833cf29c4ac60d3738@proxymail.facebook.com	$2a$10$qJ18Njl3nqs/weIQjkGuQ.7Am1MZq37q04PL.2uP1CcmzK9HD0djG		\N	\N	\N	6	2011-05-21 00:59:07.855135	2011-05-16 02:55:44.399116	71.58.91.154	24.229.63.52	2011-04-09 15:19:29.150726	2011-05-21 00:59:07.856118	\N	Krysta Marie
39	veserius@gmail.com	$2a$10$vhbA6Za9XC7boZ37st74VePHHfkjRPBWRSccCPKDbQEkQ1WyEQ6mG		\N	\N	\N	1	2011-04-11 17:54:18.21815	2011-04-11 17:54:18.21815	96.39.243.1	96.39.243.1	2011-04-11 17:54:17.918467	2011-04-11 17:54:18.219069	\N	Justin Sumlin
40	rafreyes@ucdavis.edu	$2a$10$UEJP9nZ4dwWFXY7R44HgTu8BQvKc7SBfQ0c4o9qaE7fm7GTFkDb9O		\N	\N	\N	2	2011-04-12 07:37:50.170387	2011-04-12 06:46:25.90437	98.244.55.240	98.244.55.240	2011-04-12 06:46:25.63324	2011-04-12 07:37:50.177773	\N	icilby
41	shaleblade@gmail.com	$2a$10$8oClgFsuplMk7guQdIeZsepybsvC4x6ZSHe2gFqw/uiGBqZDVh0Wa		\N	\N	\N	2	2011-05-27 00:25:56.131472	2011-04-23 01:28:35.034318	68.37.5.108	68.37.5.108	2011-04-23 01:28:34.776611	2011-05-27 00:25:56.132347	\N	Will Uhl
42	atessono@verizon.net	$2a$10$KTV6M9qGXhDD0NhRc6di6OVIvvzeozdAoxvETs5QYKY2CaGJhWKwK		\N	\N	\N	1	2011-05-10 00:09:20.956278	2011-05-10 00:09:20.956278	108.27.68.20	108.27.68.20	2011-05-10 00:09:20.864661	2011-05-10 00:09:20.957078	\N	Allritch Tessono
43	devonregresado30@gmail.com	$2a$10$T7vN7n8iJkyc1btXunMOZemaFTgio5Z6ZBDow8mAOgzLkrEjpy/Ju		\N	\N	\N	1	2011-05-11 02:30:02.824073	2011-05-11 02:30:02.824073	24.23.140.51	24.23.140.51	2011-05-11 02:30:02.383377	2011-05-11 02:30:02.824924	\N	Devon Regresado
44	bonymac23@yahoo.com	$2a$10$k9vDu.mKYLT4fibAfLbaaukT4NYJ4K16fxBKA/NdWoIo390Dj/8Pa		\N	\N	\N	1	2011-05-12 18:54:55.689573	2011-05-12 18:54:55.689573	138.162.8.58	138.162.8.58	2011-05-12 18:54:55.382992	2011-05-12 18:54:55.752502	\N	Jermaine Benjamin
45	lilevilsf@hotmail.com	$2a$10$03MQneU3FsRnGBrdTny6z.svaE2IbbUoHy1anluyhfu4DWk5B7YO2		\N	\N	\N	2	2011-05-13 04:38:38.008235	2011-05-13 04:36:38.397877	150.70.172.104	24.90.14.38	2011-05-13 04:36:38.236559	2011-05-13 04:38:38.009763	\N	Jefford Lilevil Castillo
46	espantaliebres@gmail.com	$2a$10$T2nY3sMe5o/k6NXUyCwqs.JkYlqOb5aVkG.WdFe9h1PxKsQcB5Zua		\N	\N	\N	1	2011-05-13 22:06:02.880491	2011-05-13 22:06:02.880491	87.222.154.113	87.222.154.113	2011-05-13 22:06:00.695869	2011-05-13 22:06:02.881241	\N	Ian Miles
47	j_raven_90@hotmail.com	$2a$10$kZp.OQ6OkJx/VnF/..Ztg.zgrZb9R7zA/i9MCZ.tsQDB.vbt8KbE6		\N	\N	\N	1	2011-05-15 20:19:03.301986	2011-05-15 20:19:03.301986	69.62.153.116	69.62.153.116	2011-05-15 20:19:02.628813	2011-05-15 20:19:03.304184	\N	Jason Scott Lee
48	codyboyd1987@yahoo.com	$2a$10$IsVtiGoaJqxdqJBDqYJSouhVYUMCqKxZ11543YcV7pUHKvdzXX1nS		\N	\N	\N	1	2011-05-18 21:19:46.065864	2011-05-18 21:19:46.065864	206.109.101.109	206.109.101.109	2011-05-18 21:19:45.688947	2011-05-18 21:19:46.066668	\N	Cody Boyd
49	chrisxlv70@yahoo.com	$2a$10$2.zMPVtH24X3l1GuP/W98up/FFc4.tcHCBlrrKaPUo12WF9flpuUK		\N	\N	\N	2	2011-05-20 07:30:42.993948	2011-05-20 07:15:36.8085	24.227.222.75	24.227.222.75	2011-05-20 07:15:36.490888	2011-05-20 07:30:42.997091	\N	Christopher Juarez
50	lionheartkid2@yahoo.com	$2a$10$AVfdMr0fywP/VoRMVXoEkuOuE3Oe329ElWFFfaR0CaMmf/m6wjm9q		\N	\N	\N	1	2011-05-21 09:31:01.846582	2011-05-21 09:31:01.846582	98.150.201.242	98.150.201.242	2011-05-21 09:31:01.30283	2011-05-21 09:31:01.847537	\N	Sam Willis
51	natesxhomie@aol.com	$2a$10$vTX3kbWVZYUzbd3G277OG.MePbDCmfvP9rE7YYb4MXzODcFh6Ec4G		\N	\N	\N	3	2011-05-28 00:37:19.658965	2011-05-21 21:03:52.910548	72.81.45.152	72.94.129.156	2011-05-21 16:48:54.508774	2011-05-28 00:37:19.67463	t	Joseph Skutches
52	jprepetit92@gmail.com	$2a$10$EWgwpfkw5MO2fsnaeU6fOORf3w9fzzvNUgoLo0zXqbh5U1si31vFG		\N	\N	\N	1	2011-05-23 05:41:03.029973	2011-05-23 05:41:03.029973	74.101.118.144	74.101.118.144	2011-05-23 05:41:02.084988	2011-05-23 05:41:03.031136	\N	Joham Prepetit
53	mustachemonster@yahoo.com	$2a$10$1ixtxaXNqb9k7swtJMGTPO1EqN19WKam35qYBM0n7DoEPpZGqTQ2e		\N	\N	\N	1	2011-05-23 17:29:55.220458	2011-05-23 17:29:55.220458	64.42.94.41	64.42.94.41	2011-05-23 17:29:54.727326	2011-05-23 17:29:55.231513	\N	Rick Kite
54	marcelo.abans@gmail.com	$2a$10$WL7A8sqFtysHBFjVybpv9O8AM5rD3fvifPc1.VGAp6fdzAOgZN8gu		\N	\N	\N	1	2011-05-24 03:00:55.495615	2011-05-24 03:00:55.495615	70.181.251.6	70.181.251.6	2011-05-24 03:00:55.446022	2011-05-24 03:00:55.496406	\N	Marcelo Abans
55	hydrogeddon55@yahoo.com	$2a$10$xCxctZC/2on2IR.0vy5yXevYlEKFFsCDItkJP1cuXRCsCg8P48gSu		\N	\N	\N	1	2011-05-24 03:19:53.726203	2011-05-24 03:19:53.726203	99.135.231.180	99.135.231.180	2011-05-24 03:19:53.722544	2011-05-24 03:19:53.727132	\N	Jordan Spears
56	vicenteflorida@gmail.com	$2a$10$3q3uSWZ/94VCUdqZ6XwBjOPazdrIc9RQb4ztFISIwNy1KhAf0A4Rm		\N	\N	\N	1	2011-05-24 06:50:18.244981	2011-05-24 06:50:18.244981	68.202.4.17	68.202.4.17	2011-05-24 06:50:18.240521	2011-05-24 06:50:18.245937	\N	Vicente Florida
57	r_heimbach2391@yahoo.com	$2a$10$DNrFJzO3Cd6LY3n4Fd5hweyC55aMFsk1kUH3FPEtPHcMxe0WhP4/W		\N	\N	\N	2	2011-06-29 04:47:14.497386	2011-05-26 20:20:27.754261	96.245.136.62	96.227.3.143	2011-05-26 20:20:27.455853	2011-06-29 04:47:14.500581	t	Robert Heimbach
58	sloppyunderdog@aol.com	$2a$10$Ew2qf.hqS/Q089w6NagcC.fLJjBrwYEQWfBDFy8KEFkdBRANxmcMy		\N	\N	\N	1	2011-05-28 22:15:33.545594	2011-05-28 22:15:33.545594	71.50.110.119	71.50.110.119	2011-05-28 22:15:32.992425	2011-05-28 22:15:33.546511	\N	Brandon Lewis
59	megaman7319@att.net	$2a$10$KBQpHlHAUZkhTzBh3Y9Nm.3HtEwVMVBm9uR6vw7zRTKJ4J5fT1YEC		\N	\N	\N	1	2011-05-29 07:21:28.992958	2011-05-29 07:21:28.992958	75.31.166.251	75.31.166.251	2011-05-29 07:21:28.940375	2011-05-29 07:21:28.993747	\N	Joshua Johnson
60	rockit.scientist@gmail.com	$2a$10$tbFwj3aJszLXdl87HQJGqeq/XHaKgxWomhrL2qc3V0Pe/posF7rNm		\N	\N	\N	1	2011-05-31 07:03:08.397883	2011-05-31 07:03:08.397883	71.204.137.70	71.204.137.70	2011-05-31 07:03:07.513556	2011-05-31 07:03:08.398661	\N	Robert Parmenter
61	danceinthedark2355@yahoo.com	$2a$10$hIRiP2vE5So6KolGZk7RJekJXH.YsuRmSi3WeTl05Jn4a.bbgZwMe		\N	\N	\N	1	2011-06-02 07:14:15.543663	2011-06-02 07:14:15.543663	67.190.52.150	67.190.52.150	2011-06-02 07:14:14.934899	2011-06-02 07:14:15.545361	\N	Reyes Garcia Jr
62	cummins1550@gmail.com	$2a$10$eWpEuDP8KThtwOsrNOOrP.b.9C6UUVA2mDpjNI.yRrQaRh9H.BEXe		\N	\N	\N	1	2011-06-04 23:07:53.034531	2011-06-04 23:07:53.034531	74.160.0.182	74.160.0.182	2011-06-04 23:07:52.027426	2011-06-04 23:07:53.067767	\N	Mark Cummins
63	gokuslilbrother@comcast.net	$2a$10$lB/Sdad//l6X9IngGoZC5OFFRps912kACSQDsPcZv1THx0PAMtsEW		\N	\N	\N	1	2011-06-15 23:57:43.64614	2011-06-15 23:57:43.64614	98.210.149.108	98.210.149.108	2011-06-15 23:57:43.449863	2011-06-15 23:57:43.651797	\N	Shiro Nodrog
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: character_tips_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY character_tips
    ADD CONSTRAINT character_tips_pkey PRIMARY KEY (id);


--
-- Name: characters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);


--
-- Name: feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: likes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: matchups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY matchups
    ADD CONSTRAINT matchups_pkey PRIMARY KEY (id);


--
-- Name: tips_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tips
    ADD CONSTRAINT tips_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM ash;
GRANT ALL ON SCHEMA public TO ash;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

