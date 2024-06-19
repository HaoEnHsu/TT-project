--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: art_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.art_class (
    index bigint,
    text text,
    sort_type text,
    semtarget text
);


ALTER TABLE public.art_class OWNER TO postgres;

--
-- Name: num; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.num (
    index bigint,
    text text,
    num_type text
);


ALTER TABLE public.num OWNER TO postgres;

--
-- Name: onto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onto (
    index bigint,
    text text,
    onto_type text
);


ALTER TABLE public.onto OWNER TO postgres;

--
-- Name: out_syn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.out_syn (
    index bigint,
    text text,
    internal_q_complexity text
);


ALTER TABLE public.out_syn OWNER TO postgres;

--
-- Data for Name: art_class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.art_class (index, text, sort_type, semtarget) FROM stdin;
0	\N	\N	\N
1	manche Studenten	vagueQ	plurality_required
2	\N	\N	\N
3	fünf Kilo Äpfel	Meas	amount
4	\N	\N	\N
5	ein wenig Honig	vagueQ	amount
6	\N	\N	\N
7	Unmengen an Bier	vagueQ	amount
8	\N	\N	\N
9	solche Studenten	Typ	types
10	\N	\N	\N
11	vielerlei Studenten	Typ	types
12	\N	\N	\N
13	ein paar Autos	vagueQ	plurality_required
14	\N	\N	\N
15	Papas Bier	\N	\N
16	\N	\N	\N
17	eine schöne Stange Geld	Port	amount
18	\N	\N	\N
19	so eine Sauerei	Typ	types
20	\N	\N	\N
21	eine solche Sauerei	Typ	types
22	\N	\N	\N
23	ein so ein tolles Projekt	Typ	types
24	\N	\N	\N
25	ein Apfel	\N	\N
26	\N	\N	\N
27	drei Äpfel	\N	plurality_required
28	\N	\N	\N
29	genügend Geld	vagueQ	amount
30	\N	\N	\N
31	diese Studenten	\N	\N
32	\N	\N	\N
33	ein bisschen Milch	vagueQ	amount
34	\N	\N	\N
35	einem bisschen Milch	vagueQ	amount
36	\N	\N	\N
37	viele Karotten	vagueQ	plurality_required
38	\N	\N	\N
39	viel Karotten	vagueQ	amount
40	\N	\N	\N
41	\N	\N	\N
42	das Auto	\N	\N
43	\N	\N	\N
44	ein Stück Knoblauch	Unit	sing
45	eine Zehe Knoblauch	Unit	sing
46	ein Knollen Knoblauch	Unit	sing
47	\N	\N	\N
48	eine Scheibe Brot	Unit	sing
49	ein Laib Brot	Unit	sing
50	\N	\N	\N
51	eine Schar Nonnen	Coll	plurality_required
52	\N	\N	\N
53	eine Gruppe von Schauspielern	Coll	plurality_required
54	\N	\N	\N
55	eine Herde Ziegen	Coll	plurality_required
56	\N	\N	\N
57	eine Schachtel Zigaretten	Container	amount
58	\N	\N	\N
59	zwei Dosen Zucker	Container	amount
60	\N	\N	\N
61	eine Handvoll Kleingeld	Portion	amount
62	\N	\N	\N
63	eine Portion Suppe	Portion	amount
64	eine Portion Reis	Portion	amount
65	eine Portion Pommes	Portion	amount
66	eine Portion Nudeln	Portion	amount
67	eine Portion Apfel	Portion	amount
68	eine Portion Äpfel	Portion	amount
69	\N	\N	\N
70	drei Eimer Kieselsteine	Container	amount
71	\N	\N	\N
72	ein Liter Wasser	Measure	amount
73	\N	\N	\N
74	ein Kilo Erbsen	Measure	amount
75	\N	\N	\N
76	drei Stunden Unwetter	Measure	amount
77	\N	\N	\N
78	ein Paar Schuhe	Counter	plurality_required
79	??ein Paar Äpfel	Count	plurality_required
80	\N	\N	\N
81	ein Duzend Schuhe	Counter	plurality_required
82	ein Duzend Äpfel	Counter	plurality_required
83	\N	\N	\N
84	ein Haufen Sand	Portion	amount
85	ein haufen Sand	vagueQ	amount
86	\N	\N	\N
87	die Menge nätürlicher Zahlen	Counter	plurality_required
88	eine (ganze) menge Geldscheine	vagueQ	amount
89	eine (ganze) menge Kleingeld	vagueQ	amount
90	\N	\N	\N
91	ein bisschen Kleingeld	vagueQ	amount
92	etwas Kleingeld	vagueQ	amount
93	ein wenig Kleingeld	vagueQ	amount
94	\N	\N	\N
95	der Konum von Alkohol	Nominalization	\N
96	\N	\N	\N
97	mancherlei Wein	Typ	types
98	\N	\N	\N
99	eine Art von Würmern	Typ	types
100	\N	\N	\N
101	eine Sorte Nudeln	Typ	types
102	\N	\N	\N
103	\N	\N	\N
104	\N	\N	\N
105	viele Studenten	vagueQ	amount
106	viele Leute	vagueQ	amount
107	\N	\N	\N
108	eine Herde Gazellen	Coll	amount
109	\N	\N	\N
110	fünf Liter Wasser	Meas	amount
111	\N	\N	\N
112	manche der Steine	vagueQ	amount
113	\N	\N	\N
114	fünf Hektar Wald	Meas	amount
115	\N	\N	\N
116	drei Stunden Gewitter	Meas	amount
117	\N	\N	\N
118	ein so ein Sauwetter 	Typ	types
119	\N	\N	\N
120	manche Autos	vagueQ	types
121	\N	\N	\N
122	ein bisschen Liebe	vagueQ	amount
123	\N	\N	\N
124	mancherlei Schönheit	Typ	types
125	\N	\N	\N
126	ein Liter Wasser	Meas	amount
127	\N	\N	\N
128	fünf Kilo Reis	Meas	amount
129	eine Flasche Bier	Port	amount
130	\N	\N	\N
131	eine nette Familie	\N	\N
132	\N	Typ	\N
133	die Möbel	\N	\N
134	\N	\N	\N
135	ein Kilo Karotten	Meas	amount
136	\N	\N	\N
137	Gehölz	\N	\N
138	\N	\N	\N
139	der alte Verein	\N	\N
140	\N	Typ	\N
141	cat	\N	\N
142	ein Kilo Apfel	Meas	amount
143	\N	\N	\N
144	fünf französische Weine	Count	plurality_required
\.


--
-- Data for Name: num; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.num (index, text, num_type) FROM stdin;
0	\N	\N
1	manche Studenten	reg
2	\N	\N
3	fünf Kilo Äpfel	reg
4	\N	\N
5	ein wenig Honig	SG
6	\N	\N
7	Unmengen an Bier	SG
8	\N	\N
9	solche Studenten	reg
10	\N	\N
11	vielerlei Studenten	reg
12	\N	\N
13	ein paar Autos	reg
14	\N	\N
15	Papas Bier	SG
16	\N	\N
17	eine schöne Stange Geld	SG
18	\N	\N
19	so eine Sauerei	reg
20	\N	\N
21	eine solche Sauerei	reg
22	\N	\N
23	ein so ein tolles Projekt	reg
24	\N	\N
25	ein Apfel	reg
26	\N	\N
27	drei Äpfel	reg
28	\N	\N
29	genügend Geld	SG
30	\N	\N
31	diese Studenten	reg
32	\N	\N
33	ein bisschen Milch	SG
34	\N	\N
35	einem bisschen Milch	SG
36	\N	\N
37	viele Karotten	reg
38	\N	\N
39	viel Karotten	reg
40	\N	\N
41	\N	\N
42	das Auto	reg
43	\N	\N
44	ein Stück Knoblauch	SG
45	eine Zehe Knoblauch	SG
46	ein Knollen Knoblauch	SG
47	\N	\N
48	eine Scheibe Brot	SG
49	ein Laib Brot	SG
50	\N	\N
51	eine Schar Nonnen	reg
52	\N	\N
53	eine Gruppe von Schauspielern	reg
54	\N	\N
55	eine Herde Ziegen	reg
56	\N	\N
57	eine Schachtel Zigaretten	reg
58	\N	\N
59	zwei Dosen Zucker	SG
60	\N	\N
61	eine Handvoll Kleingeld	SG
62	\N	\N
63	eine Portion Suppe	SG
64	eine Portion Reis	SG
65	eine Portion Pommes	PL
66	eine Portion Nudeln	reg
67	eine Portion Apfel	reg
68	eine Portion Äpfel	reg
69	\N	\N
70	drei Eimer Kieselsteine	reg
71	\N	\N
72	ein Liter Wasser	SG
73	\N	\N
74	ein Kilo Erbsen	reg
75	\N	\N
76	drei Stunden Unwetter	SG
77	\N	\N
78	ein Paar Schuhe	reg
79	??ein Paar Äpfel	reg
80	\N	\N
81	ein Duzend Schuhe	reg
82	ein Duzend Äpfel	reg
83	\N	\N
84	ein Haufen Sand	SG
85	ein haufen Sand	SG
86	\N	\N
87	die Menge nätürlicher Zahlen	reg
88	eine (ganze) menge Geldscheine	reg
89	eine (ganze) menge Kleingeld	SG
90	\N	\N
91	ein bisschen Kleingeld	SG
92	etwas Kleingeld	SG
93	ein wenig Kleingeld	SG
94	\N	\N
95	der Konum von Alkohol	SG
96	\N	\N
97	mancherlei Wein	SG
98	\N	\N
99	eine Art von Würmern	reg
100	\N	\N
101	eine Sorte Nudeln	reg
102	\N	\N
103	\N	\N
104	\N	\N
105	viele Studenten	reg
106	viele Leute	PL
107	\N	\N
108	eine Herde Gazellen	reg
109	\N	\N
110	fünf Liter Wasser	SG
111	\N	\N
112	manche der Steine	reg
113	\N	\N
114	fünf Hektar Wald	reg
115	\N	\N
116	drei Stunden Gewitter	sg
117	\N	\N
118	ein so ein Sauwetter 	SG
119	\N	\N
120	manche Autos	reg
121	\N	\N
122	ein bisschen Liebe	SG
123	\N	\N
124	mancherlei Schönheit	SG
125	\N	\N
126	ein Liter Wasser	SG
127	\N	\N
128	fünf Kilo Reis	SG
129	eine Flasche Bier	SG
130	\N	\N
131	eine nette Familie	reg
132	\N	\N
133	die Möbel	PL
134	\N	\N
135	ein Kilo Karotten	reg
136	\N	\N
137	Gehölz	SG
138	\N	\N
139	der alte Verein	reg
140	\N	\N
141	cat	reg
142	ein Kilo Apfel	reg
143	\N	\N
144	fünf französische Weine	SG
\.


--
-- Data for Name: onto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.onto (index, text, onto_type) FROM stdin;
0	\N	\N
1	manche Studenten	human
2	\N	\N
3	fünf Kilo Äpfel	natural
4	\N	\N
5	ein wenig Honig	natural
6	\N	\N
7	Unmengen an Bier	artificial
8	\N	\N
9	solche Studenten	human
10	\N	\N
11	vielerlei Studenten	human
12	\N	\N
13	ein paar Autos	artificial
14	\N	\N
15	Papas Bier	artificial
16	\N	\N
17	eine schöne Stange Geld	artificial
18	\N	\N
19	so eine Sauerei	conceptual
20	\N	\N
21	eine solche Sauerei	conceptual
22	\N	\N
23	ein so ein tolles Projekt	conceptual
24	\N	\N
25	ein Apfel	natural
26	\N	\N
27	drei Äpfel	natural
28	\N	\N
29	genügend Geld	artificial
30	\N	\N
31	diese Studenten	human
32	\N	\N
33	ein bisschen Milch	natural
34	\N	\N
35	einem bisschen Milch	natural
36	\N	\N
37	viele Karotten	natural
38	\N	\N
39	viel Karotten	natural
40	\N	\N
41	\N	\N
42	das Auto	artificial
43	\N	\N
44	ein Stück Knoblauch	natural
45	eine Zehe Knoblauch	natural
46	ein Knollen Knoblauch	natural
47	\N	\N
48	eine Scheibe Brot	artificial
49	ein Laib Brot	artificial
50	\N	\N
51	eine Schar Nonnen	human
52	\N	\N
53	eine Gruppe von Schauspielern	human
54	\N	\N
55	eine Herde Ziegen	animate
56	\N	\N
57	eine Schachtel Zigaretten	artificial
58	\N	\N
59	zwei Dosen Zucker	artificial
60	\N	\N
61	eine Handvoll Kleingeld	artificial
62	\N	\N
63	eine Portion Suppe	artificial
64	eine Portion Reis	natural
65	eine Portion Pommes	artificial
66	eine Portion Nudeln	artificial
67	eine Portion Apfel	natural
68	eine Portion Äpfel	natural
69	\N	\N
70	drei Eimer Kieselsteine	natrual
71	\N	\N
72	ein Liter Wasser	natural
73	\N	\N
74	ein Kilo Erbsen	natural
75	\N	\N
76	drei Stunden Unwetter	natural
77	\N	\N
78	ein Paar Schuhe	artificial
79	??ein Paar Äpfel	natural
80	\N	\N
81	ein Duzend Schuhe	artificial
82	ein Duzend Äpfel	natural
83	\N	\N
84	ein Haufen Sand	natural
85	ein haufen Sand	natural
86	\N	\N
87	die Menge nätürlicher Zahlen	conceptual
88	eine (ganze) menge Geldscheine	artificial
89	eine (ganze) menge Kleingeld	artificial
90	\N	\N
91	ein bisschen Kleingeld	artificial
92	etwas Kleingeld	artificial
93	ein wenig Kleingeld	artificial
94	\N	\N
95	der Konum von Alkohol	artificial
96	\N	\N
97	mancherlei Wein	artificial
98	\N	\N
99	eine Art von Würmern	animate
100	\N	\N
101	eine Sorte Nudeln	artificial
102	\N	\N
103	\N	\N
104	\N	\N
105	viele Studenten	human
106	viele Leute	human
107	\N	\N
108	eine Herde Gazellen	animate
109	\N	\N
110	fünf Liter Wasser	natural
111	\N	\N
112	manche der Steine	natural
113	\N	\N
114	fünf Hektar Wald	natural
115	\N	\N
116	drei Stunden Gewitter	natural
117	\N	\N
118	ein so ein Sauwetter 	\N
119	\N	\N
120	manche Autos	artificial
121	\N	\N
122	ein bisschen Liebe	\N
123	\N	\N
124	mancherlei Schönheit	\N
125	\N	\N
126	ein Liter Wasser	natural
127	\N	\N
128	fünf Kilo Reis	natural
129	eine Flasche Bier	artificial
130	\N	\N
131	eine nette Familie	human
132	\N	\N
133	die Möbel	artificial
134	\N	\N
135	ein Kilo Karotten	natural
136	\N	\N
137	Gehölz	natural
138	\N	\N
139	der alte Verein	human
140	\N	\N
141	cat	animate
142	ein Kilo Apfel	natural
143	\N	\N
144	fünf französische Weine	artificial
\.


--
-- Data for Name: out_syn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.out_syn (index, text, internal_q_complexity) FROM stdin;
0	\N	\N
1	manche Studenten	Simple
2	\N	\N
3	fünf Kilo Äpfel	Simple
4	\N	\N
5	ein wenig Honig	Complex
6	\N	\N
7	Unmengen an Bier	Simple
8	\N	\N
9	solche Studenten	S-Complex
10	\N	\N
11	vielerlei Studenten	Complex
12	\N	\N
13	ein paar Autos	Complex
14	\N	\N
15	Papas Bier	Simple
16	\N	\N
17	eine schöne Stange Geld	Simple
18	\N	\N
19	so eine Sauerei	S-Complex
20	\N	\N
21	eine solche Sauerei	IA_S
22	\N	\N
23	ein so ein tolles Projekt	IA_S
24	\N	\N
25	ein Apfel	Simple
26	\N	\N
27	drei Äpfel	Simple
28	\N	\N
29	genügend Geld	?
30	\N	\N
31	diese Studenten	Simple
32	\N	\N
33	ein bisschen Milch	Complex
34	\N	\N
35	einem bisschen Milch	Complex
36	\N	\N
37	viele Karotten	Simple
38	\N	\N
39	viel Karotten	Simple
40	\N	\N
41	\N	\N
42	das Auto	Simple
43	\N	\N
44	ein Stück Knoblauch	Simple
45	eine Zehe Knoblauch	Simple
46	ein Knollen Knoblauch	Simple
47	\N	\N
48	eine Scheibe Brot	Simple
49	ein Laib Brot	Simple
50	\N	\N
51	eine Schar Nonnen	Simple
52	\N	\N
53	eine Gruppe von Schauspielern	Simple
54	\N	\N
55	eine Herde Ziegen	Simple
56	\N	\N
57	eine Schachtel Zigaretten	Simple
58	\N	\N
59	zwei Dosen Zucker	Simple
60	\N	\N
61	eine Handvoll Kleingeld	Simple
62	\N	\N
63	eine Portion Suppe	Simple
64	eine Portion Reis	Simple
65	eine Portion Pommes	Simple
66	eine Portion Nudeln	Simple
67	eine Portion Apfel	Simple
68	eine Portion Äpfel	Simple
69	\N	\N
70	drei Eimer Kieselsteine	Simple
71	\N	\N
72	ein Liter Wasser	Simple
73	\N	\N
74	ein Kilo Erbsen	Simple
75	\N	\N
76	drei Stunden Unwetter	Simple
77	\N	\N
78	ein Paar Schuhe	Simple
79	??ein Paar Äpfel	Simple
80	\N	\N
81	ein Duzend Schuhe	Simple
82	ein Duzend Äpfel	Simple
83	\N	\N
84	ein Haufen Sand	Simple
85	ein haufen Sand	Simple
86	\N	\N
87	die Menge nätürlicher Zahlen	Simple
88	eine (ganze) menge Geldscheine	Complex
89	eine (ganze) menge Kleingeld	Complex
90	\N	\N
91	ein bisschen Kleingeld	Complex
92	etwas Kleingeld	Complex
93	ein wenig Kleingeld	Complex
94	\N	\N
95	der Konum von Alkohol	Simple
96	\N	\N
97	mancherlei Wein	Complex
98	\N	\N
99	eine Art von Würmern	Simple
100	\N	\N
101	eine Sorte Nudeln	Simple
102	\N	\N
103	\N	\N
104	\N	\N
105	viele Studenten	Simple
106	viele Leute	Simple
107	\N	\N
108	eine Herde Gazellen	Simple
109	\N	\N
110	fünf Liter Wasser	Simple
111	\N	\N
112	manche der Steine	Complex
113	\N	\N
114	fünf Hektar Wald	Simple
115	\N	\N
116	drei Stunden Gewitter	Simple
117	\N	\N
118	ein so ein Sauwetter 	S-Complex
119	\N	\N
120	manche Autos	Complex
121	\N	\N
122	ein bisschen Liebe	Complex
123	\N	\N
124	mancherlei Schönheit	Complex
125	\N	\N
126	ein Liter Wasser	Simple
127	\N	\N
128	fünf Kilo Reis	Simple
129	eine Flasche Bier	Simple
130	\N	\N
131	eine nette Familie	Simple
132	\N	Simple
133	die Möbel	Simple
134	\N	\N
135	ein Kilo Karotten	Simple
136	\N	\N
137	Gehölz	Simple
138	\N	\N
139	der alte Verein	Simple
140	\N	Simple
141	cat	Simple
142	ein Kilo Apfel	Simple
143	\N	\N
144	fünf französische Weine	Simple
\.


--
-- Name: ix_art_class_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_art_class_index ON public.art_class USING btree (index);


--
-- Name: ix_num_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_num_index ON public.num USING btree (index);


--
-- Name: ix_onto_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_onto_index ON public.onto USING btree (index);


--
-- Name: ix_out_syn_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_out_syn_index ON public.out_syn USING btree (index);


--
-- PostgreSQL database dump complete
--

