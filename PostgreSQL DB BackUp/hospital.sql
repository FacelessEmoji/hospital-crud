PGDMP     +    1                {            hosp    14.4    14.4 j    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    116152    hosp    DATABASE     X   CREATE DATABASE hosp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE hosp;
                admin    false            �            1259    116153    appointments    TABLE     }   CREATE TABLE public.appointments (
    appointmentid integer NOT NULL,
    prescriptionid integer,
    medicineid integer
);
     DROP TABLE public.appointments;
       public         heap    admin    false            �            1259    116156    appointments_appointmentid_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.appointments_appointmentid_seq;
       public          admin    false    209            �           0    0    appointments_appointmentid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.appointments_appointmentid_seq OWNED BY public.appointments.appointmentid;
          public          admin    false    210            �            1259    116157    contacts    TABLE     �   CREATE TABLE public.contacts (
    contactid integer NOT NULL,
    phone character varying(20),
    address character varying(100)
);
    DROP TABLE public.contacts;
       public         heap    admin    false            �            1259    116160    contacts_contactid_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_contactid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contacts_contactid_seq;
       public          admin    false    211            �           0    0    contacts_contactid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contacts_contactid_seq OWNED BY public.contacts.contactid;
          public          admin    false    212            �            1259    116161 	   diagnoses    TABLE     n   CREATE TABLE public.diagnoses (
    diagnosisid integer NOT NULL,
    diagnosisname character varying(100)
);
    DROP TABLE public.diagnoses;
       public         heap    admin    false            �            1259    116164    diagnoses_diagnosisid_seq    SEQUENCE     �   CREATE SEQUENCE public.diagnoses_diagnosisid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.diagnoses_diagnosisid_seq;
       public          admin    false    213            �           0    0    diagnoses_diagnosisid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.diagnoses_diagnosisid_seq OWNED BY public.diagnoses.diagnosisid;
          public          admin    false    214            �            1259    116165    doctors    TABLE     �   CREATE TABLE public.doctors (
    doctorid integer NOT NULL,
    hospitalid integer,
    personid integer,
    specializationid integer,
    licensenumber character varying(20),
    salary numeric(10,2)
);
    DROP TABLE public.doctors;
       public         heap    admin    false            �            1259    116168    doctors_doctorid_seq    SEQUENCE     �   CREATE SEQUENCE public.doctors_doctorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctors_doctorid_seq;
       public          admin    false    215            �           0    0    doctors_doctorid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctors_doctorid_seq OWNED BY public.doctors.doctorid;
          public          admin    false    216            �            1259    116169    forms    TABLE     _   CREATE TABLE public.forms (
    formid integer NOT NULL,
    formname character varying(50)
);
    DROP TABLE public.forms;
       public         heap    admin    false            �            1259    116172    forms_formid_seq    SEQUENCE     �   CREATE SEQUENCE public.forms_formid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.forms_formid_seq;
       public          admin    false    217            �           0    0    forms_formid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.forms_formid_seq OWNED BY public.forms.formid;
          public          admin    false    218            �            1259    116173    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          admin    false            �            1259    116174 	   hospitals    TABLE     �   CREATE TABLE public.hospitals (
    hospitalid integer NOT NULL,
    contactid integer,
    hospitalname character varying(100)
);
    DROP TABLE public.hospitals;
       public         heap    admin    false            �            1259    116177    hospitals_hospitalid_seq    SEQUENCE     �   CREATE SEQUENCE public.hospitals_hospitalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.hospitals_hospitalid_seq;
       public          admin    false    220            �           0    0    hospitals_hospitalid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.hospitals_hospitalid_seq OWNED BY public.hospitals.hospitalid;
          public          admin    false    221            �            1259    116178 	   medicines    TABLE     �   CREATE TABLE public.medicines (
    medicineid integer NOT NULL,
    formid integer,
    medicinename character varying(50),
    description text,
    contraindications text
);
    DROP TABLE public.medicines;
       public         heap    admin    false            �            1259    116183    medicines_medicineid_seq    SEQUENCE     �   CREATE SEQUENCE public.medicines_medicineid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.medicines_medicineid_seq;
       public          admin    false    222            �           0    0    medicines_medicineid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.medicines_medicineid_seq OWNED BY public.medicines.medicineid;
          public          admin    false    223            �            1259    116184    patients    TABLE     �   CREATE TABLE public.patients (
    patientid integer NOT NULL,
    hospitalid integer,
    personid integer,
    insurancenumber character varying(20)
);
    DROP TABLE public.patients;
       public         heap    admin    false            �            1259    116187    patients_patientid_seq    SEQUENCE     �   CREATE SEQUENCE public.patients_patientid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.patients_patientid_seq;
       public          admin    false    224            �           0    0    patients_patientid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.patients_patientid_seq OWNED BY public.patients.patientid;
          public          admin    false    225            �            1259    116188    people    TABLE     �   CREATE TABLE public.people (
    personid integer NOT NULL,
    contactid integer,
    firstname character varying(50),
    lastname character varying(50),
    dateofbirth date
);
    DROP TABLE public.people;
       public         heap    admin    false            �            1259    116191    people_personid_seq    SEQUENCE     �   CREATE SEQUENCE public.people_personid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.people_personid_seq;
       public          admin    false    226            �           0    0    people_personid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.people_personid_seq OWNED BY public.people.personid;
          public          admin    false    227            �            1259    116192    prescriptions    TABLE     �   CREATE TABLE public.prescriptions (
    prescriptionid integer NOT NULL,
    visitid integer,
    patientid integer,
    doctorid integer,
    datecreated date
);
 !   DROP TABLE public.prescriptions;
       public         heap    admin    false            �            1259    116195     prescriptions_prescriptionid_seq    SEQUENCE     �   CREATE SEQUENCE public.prescriptions_prescriptionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.prescriptions_prescriptionid_seq;
       public          admin    false    228            �           0    0     prescriptions_prescriptionid_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.prescriptions_prescriptionid_seq OWNED BY public.prescriptions.prescriptionid;
          public          admin    false    229            �            1259    116196    specializations    TABLE     ~   CREATE TABLE public.specializations (
    specializationid integer NOT NULL,
    specializationname character varying(100)
);
 #   DROP TABLE public.specializations;
       public         heap    admin    false            �            1259    116199 $   specializations_specializationid_seq    SEQUENCE     �   CREATE SEQUENCE public.specializations_specializationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.specializations_specializationid_seq;
       public          admin    false    230            �           0    0 $   specializations_specializationid_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.specializations_specializationid_seq OWNED BY public.specializations.specializationid;
          public          admin    false    231            �            1259    116200    visits    TABLE     �   CREATE TABLE public.visits (
    visitid integer NOT NULL,
    patientid integer,
    doctorid integer,
    diagnosisid integer,
    visitdate date,
    reason text
);
    DROP TABLE public.visits;
       public         heap    admin    false            �            1259    116205    visits_visitid_seq    SEQUENCE     �   CREATE SEQUENCE public.visits_visitid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.visits_visitid_seq;
       public          admin    false    232            �           0    0    visits_visitid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.visits_visitid_seq OWNED BY public.visits.visitid;
          public          admin    false    233            �           2604    116206    appointments appointmentid    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointmentid SET DEFAULT nextval('public.appointments_appointmentid_seq'::regclass);
 I   ALTER TABLE public.appointments ALTER COLUMN appointmentid DROP DEFAULT;
       public          admin    false    210    209            �           2604    116207    contacts contactid    DEFAULT     x   ALTER TABLE ONLY public.contacts ALTER COLUMN contactid SET DEFAULT nextval('public.contacts_contactid_seq'::regclass);
 A   ALTER TABLE public.contacts ALTER COLUMN contactid DROP DEFAULT;
       public          admin    false    212    211            �           2604    116208    diagnoses diagnosisid    DEFAULT     ~   ALTER TABLE ONLY public.diagnoses ALTER COLUMN diagnosisid SET DEFAULT nextval('public.diagnoses_diagnosisid_seq'::regclass);
 D   ALTER TABLE public.diagnoses ALTER COLUMN diagnosisid DROP DEFAULT;
       public          admin    false    214    213            �           2604    116209    doctors doctorid    DEFAULT     t   ALTER TABLE ONLY public.doctors ALTER COLUMN doctorid SET DEFAULT nextval('public.doctors_doctorid_seq'::regclass);
 ?   ALTER TABLE public.doctors ALTER COLUMN doctorid DROP DEFAULT;
       public          admin    false    216    215            �           2604    116210    forms formid    DEFAULT     l   ALTER TABLE ONLY public.forms ALTER COLUMN formid SET DEFAULT nextval('public.forms_formid_seq'::regclass);
 ;   ALTER TABLE public.forms ALTER COLUMN formid DROP DEFAULT;
       public          admin    false    218    217            �           2604    116211    hospitals hospitalid    DEFAULT     |   ALTER TABLE ONLY public.hospitals ALTER COLUMN hospitalid SET DEFAULT nextval('public.hospitals_hospitalid_seq'::regclass);
 C   ALTER TABLE public.hospitals ALTER COLUMN hospitalid DROP DEFAULT;
       public          admin    false    221    220            �           2604    116212    medicines medicineid    DEFAULT     |   ALTER TABLE ONLY public.medicines ALTER COLUMN medicineid SET DEFAULT nextval('public.medicines_medicineid_seq'::regclass);
 C   ALTER TABLE public.medicines ALTER COLUMN medicineid DROP DEFAULT;
       public          admin    false    223    222            �           2604    116213    patients patientid    DEFAULT     x   ALTER TABLE ONLY public.patients ALTER COLUMN patientid SET DEFAULT nextval('public.patients_patientid_seq'::regclass);
 A   ALTER TABLE public.patients ALTER COLUMN patientid DROP DEFAULT;
       public          admin    false    225    224            �           2604    116214    people personid    DEFAULT     r   ALTER TABLE ONLY public.people ALTER COLUMN personid SET DEFAULT nextval('public.people_personid_seq'::regclass);
 >   ALTER TABLE public.people ALTER COLUMN personid DROP DEFAULT;
       public          admin    false    227    226            �           2604    116215    prescriptions prescriptionid    DEFAULT     �   ALTER TABLE ONLY public.prescriptions ALTER COLUMN prescriptionid SET DEFAULT nextval('public.prescriptions_prescriptionid_seq'::regclass);
 K   ALTER TABLE public.prescriptions ALTER COLUMN prescriptionid DROP DEFAULT;
       public          admin    false    229    228            �           2604    116216     specializations specializationid    DEFAULT     �   ALTER TABLE ONLY public.specializations ALTER COLUMN specializationid SET DEFAULT nextval('public.specializations_specializationid_seq'::regclass);
 O   ALTER TABLE public.specializations ALTER COLUMN specializationid DROP DEFAULT;
       public          admin    false    231    230            �           2604    116217    visits visitid    DEFAULT     p   ALTER TABLE ONLY public.visits ALTER COLUMN visitid SET DEFAULT nextval('public.visits_visitid_seq'::regclass);
 =   ALTER TABLE public.visits ALTER COLUMN visitid DROP DEFAULT;
       public          admin    false    233    232            b          0    116153    appointments 
   TABLE DATA           Q   COPY public.appointments (appointmentid, prescriptionid, medicineid) FROM stdin;
    public          admin    false    209   ^|       d          0    116157    contacts 
   TABLE DATA           =   COPY public.contacts (contactid, phone, address) FROM stdin;
    public          admin    false    211   �|       f          0    116161 	   diagnoses 
   TABLE DATA           ?   COPY public.diagnoses (diagnosisid, diagnosisname) FROM stdin;
    public          admin    false    213   &~       h          0    116165    doctors 
   TABLE DATA           j   COPY public.doctors (doctorid, hospitalid, personid, specializationid, licensenumber, salary) FROM stdin;
    public          admin    false    215   �~       j          0    116169    forms 
   TABLE DATA           1   COPY public.forms (formid, formname) FROM stdin;
    public          admin    false    217   M       m          0    116174 	   hospitals 
   TABLE DATA           H   COPY public.hospitals (hospitalid, contactid, hospitalname) FROM stdin;
    public          admin    false    220   �       o          0    116178 	   medicines 
   TABLE DATA           e   COPY public.medicines (medicineid, formid, medicinename, description, contraindications) FROM stdin;
    public          admin    false    222   �       q          0    116184    patients 
   TABLE DATA           T   COPY public.patients (patientid, hospitalid, personid, insurancenumber) FROM stdin;
    public          admin    false    224   M�       s          0    116188    people 
   TABLE DATA           W   COPY public.people (personid, contactid, firstname, lastname, dateofbirth) FROM stdin;
    public          admin    false    226   �       u          0    116192    prescriptions 
   TABLE DATA           b   COPY public.prescriptions (prescriptionid, visitid, patientid, doctorid, datecreated) FROM stdin;
    public          admin    false    228   �       w          0    116196    specializations 
   TABLE DATA           O   COPY public.specializations (specializationid, specializationname) FROM stdin;
    public          admin    false    230   ��       y          0    116200    visits 
   TABLE DATA           ^   COPY public.visits (visitid, patientid, doctorid, diagnosisid, visitdate, reason) FROM stdin;
    public          admin    false    232   �       �           0    0    appointments_appointmentid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.appointments_appointmentid_seq', 23, true);
          public          admin    false    210            �           0    0    contacts_contactid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contacts_contactid_seq', 30, true);
          public          admin    false    212            �           0    0    diagnoses_diagnosisid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.diagnoses_diagnosisid_seq', 15, true);
          public          admin    false    214            �           0    0    doctors_doctorid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.doctors_doctorid_seq', 8, true);
          public          admin    false    216            �           0    0    forms_formid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.forms_formid_seq', 6, true);
          public          admin    false    218            �           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          admin    false    219            �           0    0    hospitals_hospitalid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.hospitals_hospitalid_seq', 2, true);
          public          admin    false    221            �           0    0    medicines_medicineid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.medicines_medicineid_seq', 27, true);
          public          admin    false    223            �           0    0    patients_patientid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.patients_patientid_seq', 20, true);
          public          admin    false    225            �           0    0    people_personid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.people_personid_seq', 28, true);
          public          admin    false    227            �           0    0     prescriptions_prescriptionid_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.prescriptions_prescriptionid_seq', 16, true);
          public          admin    false    229            �           0    0 $   specializations_specializationid_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.specializations_specializationid_seq', 5, true);
          public          admin    false    231            �           0    0    visits_visitid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.visits_visitid_seq', 20, true);
          public          admin    false    233            �           2606    116219    appointments appointments_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointmentid);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            admin    false    209            �           2606    116221    contacts contacts_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (contactid);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            admin    false    211            �           2606    116223    diagnoses diagnoses_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_pkey PRIMARY KEY (diagnosisid);
 B   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_pkey;
       public            admin    false    213            �           2606    116225    doctors doctors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctorid);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            admin    false    215            �           2606    116227    forms forms_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (formid);
 :   ALTER TABLE ONLY public.forms DROP CONSTRAINT forms_pkey;
       public            admin    false    217            �           2606    116229    hospitals hospitals_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hospitals
    ADD CONSTRAINT hospitals_pkey PRIMARY KEY (hospitalid);
 B   ALTER TABLE ONLY public.hospitals DROP CONSTRAINT hospitals_pkey;
       public            admin    false    220            �           2606    116231    medicines medicines_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.medicines
    ADD CONSTRAINT medicines_pkey PRIMARY KEY (medicineid);
 B   ALTER TABLE ONLY public.medicines DROP CONSTRAINT medicines_pkey;
       public            admin    false    222            �           2606    116233    patients patients_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patientid);
 @   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
       public            admin    false    224            �           2606    116235    people people_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (personid);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public            admin    false    226            �           2606    116237     prescriptions prescriptions_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_pkey PRIMARY KEY (prescriptionid);
 J   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_pkey;
       public            admin    false    228            �           2606    116239 $   specializations specializations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.specializations
    ADD CONSTRAINT specializations_pkey PRIMARY KEY (specializationid);
 N   ALTER TABLE ONLY public.specializations DROP CONSTRAINT specializations_pkey;
       public            admin    false    230            �           2606    116241    visits visits_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_pkey PRIMARY KEY (visitid);
 <   ALTER TABLE ONLY public.visits DROP CONSTRAINT visits_pkey;
       public            admin    false    232            �           2606    116242 )   appointments appointments_medicineid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_medicineid_fkey FOREIGN KEY (medicineid) REFERENCES public.medicines(medicineid);
 S   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_medicineid_fkey;
       public          admin    false    209    3260    222            �           2606    116247 -   appointments appointments_prescriptionid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_prescriptionid_fkey FOREIGN KEY (prescriptionid) REFERENCES public.prescriptions(prescriptionid);
 W   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_prescriptionid_fkey;
       public          admin    false    3266    228    209            �           2606    116252    doctors doctors_hospitalid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_hospitalid_fkey FOREIGN KEY (hospitalid) REFERENCES public.hospitals(hospitalid);
 I   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_hospitalid_fkey;
       public          admin    false    220    215    3258            �           2606    116257    doctors doctors_personid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_personid_fkey FOREIGN KEY (personid) REFERENCES public.people(personid);
 G   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_personid_fkey;
       public          admin    false    215    3264    226            �           2606    116262 %   doctors doctors_specializationid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_specializationid_fkey FOREIGN KEY (specializationid) REFERENCES public.specializations(specializationid);
 O   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_specializationid_fkey;
       public          admin    false    215    230    3268            �           2606    116267 "   hospitals hospitals_contactid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospitals
    ADD CONSTRAINT hospitals_contactid_fkey FOREIGN KEY (contactid) REFERENCES public.contacts(contactid);
 L   ALTER TABLE ONLY public.hospitals DROP CONSTRAINT hospitals_contactid_fkey;
       public          admin    false    3250    211    220            �           2606    116272    medicines medicines_formid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicines
    ADD CONSTRAINT medicines_formid_fkey FOREIGN KEY (formid) REFERENCES public.forms(formid);
 I   ALTER TABLE ONLY public.medicines DROP CONSTRAINT medicines_formid_fkey;
       public          admin    false    3256    217    222            �           2606    116277 !   patients patients_hospitalid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_hospitalid_fkey FOREIGN KEY (hospitalid) REFERENCES public.hospitals(hospitalid);
 K   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_hospitalid_fkey;
       public          admin    false    3258    220    224            �           2606    116282    patients patients_personid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_personid_fkey FOREIGN KEY (personid) REFERENCES public.people(personid);
 I   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_personid_fkey;
       public          admin    false    3264    226    224            �           2606    116287    people people_contactid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_contactid_fkey FOREIGN KEY (contactid) REFERENCES public.contacts(contactid);
 F   ALTER TABLE ONLY public.people DROP CONSTRAINT people_contactid_fkey;
       public          admin    false    226    3250    211            �           2606    116292 )   prescriptions prescriptions_doctorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_doctorid_fkey FOREIGN KEY (doctorid) REFERENCES public.doctors(doctorid);
 S   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_doctorid_fkey;
       public          admin    false    228    3254    215            �           2606    116297 *   prescriptions prescriptions_patientid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_patientid_fkey FOREIGN KEY (patientid) REFERENCES public.patients(patientid);
 T   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_patientid_fkey;
       public          admin    false    224    3262    228            �           2606    116302 (   prescriptions prescriptions_visitid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_visitid_fkey FOREIGN KEY (visitid) REFERENCES public.visits(visitid);
 R   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_visitid_fkey;
       public          admin    false    232    3270    228            �           2606    116307    visits visits_diagnosisid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_diagnosisid_fkey FOREIGN KEY (diagnosisid) REFERENCES public.diagnoses(diagnosisid);
 H   ALTER TABLE ONLY public.visits DROP CONSTRAINT visits_diagnosisid_fkey;
       public          admin    false    232    3252    213            �           2606    116312    visits visits_doctorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_doctorid_fkey FOREIGN KEY (doctorid) REFERENCES public.doctors(doctorid);
 E   ALTER TABLE ONLY public.visits DROP CONSTRAINT visits_doctorid_fkey;
       public          admin    false    3254    215    232            �           2606    116317    visits visits_patientid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT visits_patientid_fkey FOREIGN KEY (patientid) REFERENCES public.patients(patientid);
 F   ALTER TABLE ONLY public.visits DROP CONSTRAINT visits_patientid_fkey;
       public          admin    false    3262    224    232            b   e   x���A�s+�J������a��B�fgk1z۝���G/[�͔��n���+.K.Q���.ʐO�x=�p)b��TL�j�)�?Dߏ����      d   C  x�U��N�0E��W��2~�D����&ҦX��Z�~�&�$SZ�;�8L샋)�R��<�g�~5�|�.��d�$����I��˥:x���e�����Բ�L��I��4�V���da_��h�N&Ss2I8؇�4�ا�jiNF��#�1L��u���P������Pѽ��w�A�#��2�NZ��
������4?�,��Q Iە� ����� H�h;��� ��t��ܞ�w�8օĳV ���{m (�w9+Y�Gm$�BIK �ޙ�����`{�%�j����� ���C�5l��|�c��s�N      f   �   x����@E뙯��+�D�`"���du��٥��w�Nnr�1�.kdd���n-�Kh�n�Mj���2i̮$ì�t�Q�X�#��3d�),x�*į#<B5G	OP�m�fw�{vBh��)��B޲�IuȏI494��+�P��1Ԭ���C|n�|~9�      h   d   x�-���0E��u1_;�%���a��=P�Q�G���D�5��Gnl�[�e��'��9����Y��U�S0��nv��>��iN��x����j�����{��>�B      j   C   x�3�IL�I-�2����JM.����2�t.JM��2����+�M�+�2�tO��2��,*-������ ��      m   5   x�3�4�t���I)J�S��/.�,I��2�4�t�,�TpO�K-J�A���qqq ��      o   X  x��VMo�6=/o��F��������ֽ�¥F��R�@R�׿�o��~[�{�����y�Ŭ����}h#��?�J��ΑL������'^_�L̺2�H���}ȺK���m��7>�9 oJn�ӏ �_�7GX�9�K���B�+AN-G�[X�>�ϛ����]�9�V���,u�;Z.�2�;�^�Jm]�@�2Emt${L�CܐNp����.�D�Ǖ��3T}�f��I}���|p��pچ�F^0\��=�Y:@W�	aט����5�������)[�|�#
�N*Ҳ�6�����߄�ȇ��:�=����)��+J0�v�XdZL sy���-�Eu�.9�XR� p;DU����-:�,ϣI��x"�6\���rK3i�Vs�|q]fkҩ;�x6�O���Bf�/N�\~��lͯ��#y6�S���Bf�O���I�<�������hCߙ	��K2���B��8Bvԭ0h��������K2�wk	�:��6g��1�#LU�X>�]/\��P�wR���1<�h�y�R�'8�1�{��W� |�ơ���;�؁��3X�a��9CҐ3>L�o�U��z�f��sg��U�vP͋���뺌�����h�}���b/iTrF�NQ��j>�]��V؛.��3&e�K㱷�%����o2�ۧʳ���%o���j3}�-z����G3֤F�7�DӮu��`���D]k������5�i:l��DI���o�&�3��M1�e�}��`�8]��$ܱJ�R'*�B� εv�Dq�LnCq��T�k��Ҍ��=�\��4�H-��������.����ƯB�04�}5t7��t͘��֡ҹ[P��R"5��S'��N?`)�H�/�͋Ap�B��M�P�X�[ege�����N\W�?�jM��N�?���Gt-� m��O�,I�,�y-�Y2?�nS
��ۧ�����h�ն�<�iE[%ךg\"W��&�p=��"����Ƙ}���̣��|�a,I2;<�L�cz��n�?�G���	ޭ�,���]h�u�7��g�m�O=��٬H7h���"�K����^�tki=�3�����~���۵vA      q   �   x�5ιC1�X���n�����:L�|��C��V(��ơV�6�@7�Fp�C38ͩ\��ns��yt�׼�fG}� �p���m4�sp]���32����,�sp%[���7�r�jͥ������,6M      s     x�U�KS1���q���"� IA�\r1��q�ؔwXj�ק5y\-j��Lm��t;�y$k�hfm{e���1|��<�}NR���aUQC��y�~����(�V�Zs�jj����ׅ����TC����<�͓��j�TK=]�	��� y��5[m��@�����A�����v]����P���2j f�L>�Ӿ�b��4
 [tL�G�ι�uX�Qe�
�8ڤ�/��0�IV��|�妐0���ۏV������}xt�]���uS)��.���ʋ4\�N�qGw�a���ѕ'���Fs��1��{�<�Mޕ���O���
ph���{���/�F���o�a�EN'�r��(d�n����O�$N�I�ԭo-�Y�~F p����~�C�/L���{�Ú���❶F��5��ǜ�t���]Æ5j�6�=�xLo.��^Lm[T�y����eQ8�v���.�'�fQ0�m{�p�7�f���
� �RxO��������\b|�'�Bjۨ��R����      u   �   x�5�ˑ1B�"m	��O.�+�=�;a,
����X�D�Upyb�������Ǫ�fdxLg�l�Y�H�����{�mm,;�{�?F�!t���8����
��r)�m��+8ĺ;�G@�G�;��,QwM:7\b�A�p����iyg�-~w> �ř4)      w   C   x�3�tN,J����O�,.�2��K--��9RS2K�2�3�L8��ar��.�E��%0~� x�      y   �  x��Tˎ�0]����
�ɶ����E�Y̦n��c#l1_�s��T�lZa%$��y܋z��B�UQ)]�'�v��Bhd?P��@����eG�1�s���W����/��2�*6��⧽���N��N��Fl��JkU��Kg͏s��d�X/���"XzT�V���I�)�֟�N6x䐉z5ַ2�4�6�>ۉ�`re���B��G�L!��S�p�m�A���"��}%���������<"th)ۋ=�V�B��Te!��0$�E��\&u��wD�E�0�C�*�m�a�$7�3u�f�`�4��1���=�m=�dg�ə��u4-�Ѝ\���(��vB�A|�[I���<> ���dGqdw6�;Ы؉���S��kFT��E�I<�������Q�
Mߤd�:�����aOw��: ZC/�{>]��`%�:;�Un>�����x'��ܒ�Y�U��=���G��ͦI� �!�^��ɠN%v�k;�)��˂`�~���{���bd���f��݄�=2W��NCLh��	� ��B솑FE�eQB�$M��Vh��}��߽9Y��8�z�3�n�i0��/�>h^��c����_�Nu��)h�L���'��F�u}��a�K�J�,xW�(������\eA�!?�	���&9|<	�l��~���M�f���W V��|���{��_��,� ���     