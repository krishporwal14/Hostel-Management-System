-- DML Queries
-- TO INSSERT DATA INTO THE DATABASE

-- hostel_branch
INSERT INTO hostel_branch (hostel_id, hostel_name, address, number_of_rooms, number_of_students)
VALUES
    ("ANB",	"SMJV Andheri",	"208, Juhu Ln, Juhu Lane, Yadav Nagar, Andheri West, Mumbai, Maharashtra 400058",	90,	310),
	("SAB",	"SMJV Sandhurst Road",	"99/101, Keshavaji Nayak Rd, Chinchbunder, Mandvi, Mumbai, Maharashtra 400009",	37,	114),
	("PUB",	"SMJV Pune",	"844/A SMJV, Agarkar Rd, next to BMCC Road, Deccan Gymkhana, Pune, Maharashtra 411004",	130,	360);

-- employees
INSERT INTO employees (employee_id, name, gender, phone_number, hostel_id, salary, date_of_join, date_of_leave)
VALUES
    ("SAB21203653", "VIRENDRA VYAS", "M", "6280350523", "SAB", 600000, "2016-09-28", "2022-10-05"),
    ("SAB2130214", "HERMANT SINGH", "M", "2963260934", "SAB", 480000, "2017-05-28", NULL),
    ("SAB2130331", "MOHANLAL PANDEY", "M", "5029951442", "SAB", 360000, "2017-06-29", NULL),
    ("SAB2130034", "SHAILESH RATHOD", "M", "7904228371", "SAB", 240000, "2014-03-04", NULL),
    ("SAB21204651", "BAJRANG SALGAR", "M", "4118189938", "SAB", 200000, "2017-06-17", NULL),
    ("SAB2130468", "YASHWANT RAO", "M", "4427900484", "SAB", 180000, "2013-06-29", NULL),
    ("SAB2130469", "NILESH PAWAR", "M", "9383311809", "SAB", 180000, "2015-02-01", "2023-02-10"),
    ("SAB21205468", "SANJU MAHARAJ", "M", "1194292750", "SAB", 280000, "2016-11-28", NULL);

-- rooms
INSERT INTO rooms (room_number, capacity, hostel_id)
VALUES
	(1, 0, "SAB"),
	(2, 0, "SAB"),
	(3, 3, "SAB"),
	(4, 4, "SAB"),
	(5, 3, "SAB"),
	(6, 4, "SAB"),
	(7, 4, "SAB"),
	(8, 4, "SAB"),
	(9,	4,	"SAB"),
	(10,	4,	"SAB"),
	(11,	4,	"SAB"),
	(12,	4,	"SAB"),
	(13,	3,	"SAB"),
	(14,	0,	"SAB"),
	(15,	4,	"SAB"),
	(16,	3,	"SAB"),
	(17,	4,	"SAB"),
	(18,	4,	"SAB"),
	(19,	4,	"SAB"),
	(20,	4,	"SAB"),
	(21,	4,	"SAB"),
	(22,	3,	"SAB"),
	(23,	3,	"SAB"),
	(24,	3,	"SAB"),
	(25,	1,	"SAB"),
	(26,	0,	"SAB"),
	(27,	4,	"SAB"),
	(28,	4,	"SAB"),
	(29,	4,	"SAB"),
	(30,	4,	"SAB"),
	(31,	4,	"SAB"),
	(32,	4,	"SAB"),
	(33,	4,	"SAB"),
	(34,	4,	"SAB"),
	(35,	4,	"SAB"),
	(36,	3,	"SAB"),
	(37,	3,	"SAB");

-- students
INSERT INTO students (student_id, name, address, age, course, student_phone_number, dependent_phone_number, date_of_join, date_of_leave, hostel_id)
VALUES
	("SAB2300349",	"AAGAM AMIT CHHAJED",	"INDORE",	18,	"BAF",	5214137572,	9012782755,	"2021-10-22",	"2026-11-20",	"SAB"),
    ("SAB2300387",	"AAGAM NILESH JAIN",	"PALI",	19,	"BFM",	4574875736,	6416609696,	"2023-07-17",	"2027-01-12",	"SAB"),
    ("SAB2300366",	"AYUSH SANDEEP LUNIA",	"PALI",	19,	"BBI",	5183387145,	8231412084,	"2022-01-07",	"2024-01-10",	"SAB"),
    ("SAB2300348",	"ABHISHEK SACHIN GANDHI",	"SHAHPUR",	19,	"BAF",	4538600955,	2681111293,	"2022-09-16",	"2024-09-25",	"SAB"),
    ("SAB22203051",	"AKSHAT RANJIT JAIN",	"KOLHAPUR",	20,	"BBI",	1276512618,	1389217821,	"2023-01-21",	"2024-07-26",	"SAB"),
    ("SAB22203012",	"AKSHAT JAYVANT JAIN",	"JODHPUR",	19,	"BTECH",	7931532782,	6341978051,	"2023-01-08",	"2026-12-18",	"SAB"),
    ("SAB22203039",	"AKSHAT MOHAN GANDHI",	"MALEGAON",	20,	"BAF",	6710939167,	3133947519,	"2022-11-07",	"2023-12-24",	"SAB"),
    ("SAB2300386",	"AKSHAT MUKESH DOSHI",	"UDAIPUR",	19,	"BVOC",	8193739921,	4053719927,	"2022-01-22",	"2025-07-29",	"SAB"),
    ("SAB2300395",	"AKSHAT VINOD LUNIA",	"BHIWANDI",	20,	"BBA",	2307327025,	5907732785,	"2022-08-12",	"2025-12-08",	"SAB"),
    ("SAB2300364",	"ARIHANT MAHENDRA KOTECHA",	"NAGPUR",	20,	"BCOM",	9141422674,	6104390242,	"2022-08-07",	"2023-11-29",	"SAB"),
    ("SAB22203077",	"ARYAN VISHAL KOTHARI",	"SURAT",	18,	"COMMERCE",	1154568601,	2132628100,	"2022-08-11",	"2024-09-25",	"SAB"),
    ("SAB2300398",	"ATHARVA ASHISH SISODIYA",	"VALSAD",	20,	"BAF",	8632351729,	9238034527,	"2021-08-21",	"2027-03-10",	"SAB"),
    ("SAB22203105",	"AVI AMIT SHAH",	"VALSAD",	19,	"BBI",	8164597866,	3391025788,	"2021-08-22",	"2025-02-18",	"SAB"),
    ("SAB2300361",	"AYUSH VIJAYKUMAR JAIN",	"BANGALORE",	20,	"BFM",	4344275441,	2087073965,	"2021-09-11",	"2026-05-30",	"SAB"),
    ("SAB22203049",	"AYUSH JAYESH JAIN",	"JODHPUR",	20,	"CA",	6238186246,	6574603747,	"2023-04-12",	"2026-12-15",	"SAB"),
    ("SAB2300390",	"CHAITYA VIKAS JAIN",	"MALEGAON",	17,	"COMMERCE",	1111439276,	2808025547,	"2022-05-31",	"2025-03-03",	"SAB"),
    ("SAB22203026",	"CHAYAN ANIL JAIN",	"BHIWANDI",	19,	"BBA",	2775598877,	9546792927,	"2022-02-25",	"2025-04-07",	"SAB"),
    ("SAB2300001",	"DAKSH DINESHKUMAR JAIN",	"JALGAON",	21,	"BCOM",	2499992151,	6960197174,	"2022-02-10",	"2024-08-27",	"SAB"),
    ("PUB22202070",	"DAKSH MANOJKUMAR JAIN",	"RATLAM",	20,	"CFA",	1981284522,	6234025566,	"2022-11-21",	"2023-08-09",	"SAB"),
    ("SAB2300354",	"DAKSH PINKESH JAIN",	"CHENNAI",	19,	"BBI",	5871998241,	1369227868,	"2022-10-09",	"2025-08-03",	"SAB"),
    ("SAB22203061",	"DAKSH VIKAS SISODIYA",	"INDORE",	20,	"BFM",	4094062348,	5878974355,	"2021-12-20",	"2023-07-15",	"SAB"),
    ("SAB22203106",	"DAMAN AMIT OSWAL",	"BIJAPUR",	21,	"BAF",	8570522394,	3643482237,	"2021-07-14",	"2024-02-27",	"SAB"),
    ("SAB2300378",	"DARSHAN AJIT RAIGANDHI",	"MALEGAON",	20,	"BTECH",	3929811878,	1453109832,	"2023-03-27",	"2023-08-20",	"SAB"),
    ("SAB22203036",	"DEEPAK INDRAKUMAR JAIN",	"MALKAPUR",	20,	"BAF",	9919782858,	1667870091,	"2022-04-26",	"2023-11-20",	"SAB"),
    ("SAB2300397",	"DEV HASMUKH KOTHARI",	"PUNE",	20,	"BFM",	9066545522,	8908939893,	"2022-07-24",	"2025-04-15",	"SAB"),
    ("SAB2300359",	"DEV SANCHINBHAI BAGADIYA",	"ERODE",	21,	"BBI",	6506499947,	1311979242,	"2021-07-30",	"2026-09-24",	"SAB"),
    ("SAB2300369",	"DEVAM RAJESH OSWAL",	"BIJAPUR",	19,	"BCOM",	7152531779,	2571922077,	"2022-02-07",	"2024-07-17",	"SAB"),
    ("SAB2300002",	"DHARMYA BHAVESH SHAH",	"BHAVNAGAR",	19,	"MBATECH",	5243031557,	9473565928,	"2023-07-06",	"2026-08-23",	"SAB"),
    ("SAB22203091",	"DHRUV NARESH BHOGAR",	"NASHIK",	20,	"BBI",	8489360668,	5960139275,	"2022-09-28",	"2024-01-19",	"SAB"),
    ("SAB22203015",	"DISHANK PRAVIN HARAN",	"JAIPUR",	20,	"BMM",	4623178280,	7560370773,	"2022-01-21",	"2027-05-22",	"SAB"),
    ("SAB2300381",	"DIVYA RAJENDRA BAFNA",	"AMRAVATI",	20,	"BFM",	5425738888,	8553577765,	"2023-04-27",	"2027-04-09",	"SAB"),
    ("SAB22203048",	"DIYANSH NARENDRA JAIN",	"AKOLA",	17,	"BAF",	6729338054,	8093033924,	"2023-03-25",	"2025-04-25",	"SAB"),
    ("SAB2300373",	"GARVIT TAKDEER NAKARIYA",	"ROHA",	19,	"BMS",	3970765481,	5278351802,	"2023-02-17",	"2025-08-04",	"SAB"),
    ("SAB2300344",	"GAURAV NARENDRA JAIN",	"NAGOTNA",	20,	"BTECH",	1915500075,	3833978329,	"2021-12-17",	"2025-08-02",	"SAB"),
    ("SAB22203060",	"GAUTAM DEEPAK BAFNA",	"RAIPUR",	20,	"BAF",	3303131870,	6424336450,	"2022-10-22",	"2024-01-01",	"SAB"),
    ("SAB22203084",	"HARDIK SHAILESH JAIN",	"PATNA",	20,	"BBA",	8508636026,	8981684548,	"2022-04-15",	"2023-09-01",	"SAB"),
    ("SAB22203052",	"HARSH DIVESH PORWAL",	"PALI",	16,	"BCOM",	2205556695,	8982663671,	"2023-01-17",	"2026-11-05",	"SAB"),
    ("SAB22203053",	"HARSH NARESHKUMAR DAGA",	"JODHPUR",	20,	"CFA",	2203312407,	8651543387,	"2022-12-11",	"2024-03-03",	"SAB"),
    ("SAB2300360",	"HARSH RAKESH JAIN",	"KHANDALA",	20,	"BAF",	2420952656,	1666013254,	"2023-01-31",	"2026-12-17",	"SAB"),
    ("SAB22203095",	"HARSH SAGAR DOSHI",	"NASHIK",	20,	"BFM",	2675411994,	2439787105,	"2022-06-15",	"2024-06-04",	"SAB"),
    ("SAB2300362",	"HARSHAL VINODKUMAR RATHORE",	"RATLAM",	20,	"BBI",	7944853758,	6679801461,	"2023-02-19",	"2024-11-11",	"SAB"),
    ("SAB22203085",	"HARSHIT ROHIT JAIN",	"SURAT",	21,	"BBA",	8428360759,	7336869801,	"2022-08-14",	"2026-09-16",	"SAB"),
    ("SAB2300351",	"HARSHIT SURESHKUMAR SHAH",	"BHAVNAGAR",	20,	"BMM",	3309443524,	2041710061,	"2022-12-27",	"2023-10-15",	"SAB"),
    ("SAB2300370",	"HEET MUKESH MODI",	"AHMEDABAD",	19,	"BFM",	4310200327,	6225178947,	"2022-09-17",	"2024-04-15",	"SAB"),
    ("SAB22203078",	"HEMANK MAHIPAL BAFNA",	"RAIPUR",	20,	"BMS",	3537405566,	3970521482,	"2021-09-06",	"2025-10-17",	"SAB"),
    ("SAB22203045",	"ISH DEEPAK JAIN",	"CH. SAMBHAJINAGAR",	17,	"BCOM",	3938467381,	3539824441,	"2022-08-07",	"2026-01-31",	"SAB"),
    ("SAB22203094",	"JAINAM AMIT GOLECHA",	"RAIPUR",	18,	"COMMERCE",	5728541625,	8201367388,	"2023-03-26",	"2024-08-17",	"SAB"),
    ("SAB2300377",	"JAINAM MANOJKUMAR RUPDA",	"PUNE",	20,	"BFM",	6457812260,	7856489554,	"2023-07-11",	"2025-01-14",	"SAB"),
    ("SAB2300367",	"JAY SANDEEP JAIN",	"INDORE",	20,	"BAF",	2080008323,	8264583583,	"2022-04-02",	"2025-06-11",	"SAB"),
    ("SAB2300332",	"JEETH AJITH GULECHA",	"CHENNAI",	19,	"BBA",	4210046783,	2922091181,	"2022-02-08",	"2024-02-23",	"SAB"),
    ("SAB22203017",	"KAVYA NARENDRA JAIN",	"AKOLA",	18,	"BBA",	1106043586,	2577958071,	"2023-03-06",	"2025-10-15",	"SAB"),
    ("SAB22203040",	"KETAN ANAND CHORDIYA",	"CH. SAMBHAJINAGAR",	20,	"BCOM",	2903672044,	2307785771,	"2021-12-26",	"2024-12-02",	"SAB"),
    ("SAB2300333",	"KEWAL PANKAJ BARBOTA",	"OOTY",	18,	"BBA",	3581499213,	9836651308,	"2023-03-06",	"2026-04-28",	"SAB"),
    ("SAB2300374",	"KITIK MAHENDRA MEHTA",	"NASHIK",	19,	"BBA",	2531504026,	8950394555,	"2022-02-07",	"2026-09-01",	"SAB"),
    ("SAB22203046",	"KRISH AMIT SHAH",	"KOPARGAON",	20,	"BTECH",	6819801811,	9809473646,	"2023-04-19",	"2026-12-27",	"SAB"),
    ("SAB2300368",	"KRISH BHARAT PORWAL",	"KOPARGAON",	18,	"BTECH",	5867489327,	1990889604,	"2023-08-31",	"2026-07-10",	"SAB"),
    ("SAB2300345",	"KRIYANG MUKESH JAIN",	"VAPI",	19,	"BBA",	9464299359,	2759724326,	"2022-11-09",	"2023-12-09",	"SAB"),
    ("SAB2300331",	"KUNAL JAYANTI KANKARIYA",	"SURAT",	20,	"BSC",	3634625152,	6050892207,	"2022-03-03",	"2024-06-02",	"SAB"),
    ("SAB22203083",	"KUSHAL PAVANKUMAR SANKLECHA",	"BHIWANDI", 20, "BCA",	1992081717,	4551608999,	"2022-11-08",	"2026-07-01",	"SAB"),
    ("SAB2300376",	"LAVESH SANTOSH JAIN",	"ROHA",	18,	"CA",	3314594411,	1857384799,	"2022-08-17",	"2023-08-23",	"SAB"),
    ("SAB22203004",	"MANAS RAMESHKUMAR SANKLECHA",	"BHIWANDI",	20,	"CFA",	8020778628,	4564065509,	"2022-10-22",	"2024-01-15",	"SAB"),
    ("SAB22203016",	"MANTHAN RUPESH JAIN",	"NAGOTNA", 17, "BCA",	1387694805,	6170934569,	"2023-05-28",	"2026-11-08",	"SAB"),
    ("SAB2300357",	"MAYAN AMITKUMAR JAIN",	"ROHA", 17, "BCA",	6344586898,	4213320442,	"2022-01-18",	"2027-02-21",	"SAB"),
    ("SAB2300350",	"MAYUR KRITIKUMAR JAIN",	"KARJAT",	27,	"LLB",	5713435079,	7958204319,	"2022-08-19",	"2025-10-06",	"SAB"),
    ("SAB2300365",	"MEHUL MAHAVIR JAIN",	"CHENNAI",	19,	"BAF",	7457879664,	5902517758,	"2023-05-24",	"2026-02-03",	"SAB"),
    ("SAB2300346",	"MOHAK ANANDRAJ KANKARIYA",	"BHIWANDI",	20,	"BFM",	9120079249,	8430545337,	"2021-08-13",	"2026-06-27",	"SAB"),
    ("SAB22203002",	"MOHIT SANJAY BOTRA",	"NAGPUR",	19,	"BFM",	6794237750,	5710208104,	"2022-09-18",	"2026-04-13",	"SAB"),
    ("SAB2300371",	"MOKSH HEMANT JAIN",	"ROHA",	20,	"BBA",	5565661498,	2641172357,	"2021-07-20",	"2024-12-03",	"SAB"),
    ("SAB22203003",	"NAMAN MANOJKUMAR JAIN",	"CHENNAI",	19,	"BMM",	6376970462,	9037417829,	"2023-03-03",	"2024-07-02",	"SAB"),
    ("SAB2300342",	"NAMAN VINOD JAIN",	"BANGALORE",	20,	"BAF",	1828472037,	5709825523,	"2022-07-20",	"2024-07-06",	"SAB"),
    ("SAB22203093",	"NEIL BHAVESH JAIN",	"ROHA",	16,	"BBI",	9770452653,	9370052176,	"2022-02-23",	"2027-05-12",	"SAB"),
    ("SAB2300003",	"NITYAM DILIP JAIN",	"ROHA",	20,	"BBI",	5468347320,	7525024848,	"2023-03-31",	"2023-05-16",	"SAB"),
    ("SAB22203033",	"OM PAVANKUMAR SHETIYA",	"OOTY",	20,	"BBI",	1508628640,	8028056189,	"2023-06-25",	"2026-07-14",	"SAB"),
    ("SAB2300392",	"PARAM SAGAR SHAH",	"BHIWANDI",	20,	"BCOM",	3718666249,	1034253913,	"2021-10-17",	"2025-04-30",	"SAB"),
    ("SAB22203028",	"PARTH VISHALKUMAR SHAH",	"SANGLI",	17,	"BBA",	5081292842,	9524134213,	"2022-03-17",	"2027-04-16",	"SAB"),
    ("SAB2300393",	"PEYUSH KAMLESH BHANSOLI",	"BHAVNAGAR",	19,	"CA",	7571081647,	6772529141,	"2023-01-31",	"2026-11-22",	"SAB"),
    ("SAB2300382",	"PRAJWAL PRADEEP JAIN",	"RAIPUR",	20,	"BAF",	7307082442,	6635283669,	"2023-01-05",	"2027-05-06",	"SAB"),
    ("SAB2300372",	"PRANAV PRAVEEN JAIN",	"JODHPUR",	20,	"BAF",	3405140843,	1231134110,	"2023-06-18",	"2025-12-07",	"SAB"),
    ("SAB22203102",	"PRASHAM ANIL JAIN",	"THANE",	17,	"COMMERCE",	9644440807,	4065413693,	"2022-10-03",	"2023-09-15",	"SAB"),
    ("SAB2300329",	"PRATHAM JITENDRA JAIN",	"ICHALKARANJI",	21,	"BBA",	5202729735,	1617384801,	"2023-02-18",	"2024-10-24",	"SAB"),
    ("SAB22203025",	"RAJ YOGESH SHAH",	"PUNE",	22,	"BCOM",	2626140250,	1302589357,	"2022-09-11",	"2025-07-03",	"SAB"),
    ("SAB2300358",	"RIDHAM RATANLAL JAIN",	"UDAIPUR",	20,	"BBA",	3011352615,	1936818622,	"2023-05-29",	"2024-05-20",	"SAB"),
    ("SAB2300341",	"RISHI BHARAT PITANI",	"NAGOTNA",	20,	"BBA",	3840640506,	7517532140,	"2022-06-29",	"2023-06-25",	"SAB"),
    ("SAB2300355",	"RISHI RAHUL JAIN",	"MEWAD",	16,	"BAF",	1301383629,	3086170460,	"2023-02-12",	"2024-06-04",	"SAB"),
    ("SAB2300343",	"ROHIT ASHISH BORA",	"NAGPUR",	19,	"BAF",	4571945895,	6634209716,	"2021-08-04",	"2024-11-06",	"SAB"),
    ("SAB22203054",	"ROSHAN SOHANLAL JAIN",	"YAVATMAL",	20,	"BCOM",	6932392536,	5763155545,	"2022-02-19",	"2025-09-08",	"SAB"),
    ("SAB22203079",	"RUSH RUPESH JAIN",	"ICHALKARANJI",	18,	"BMM",	5108379799,	3613517248,	"2022-05-27",	"2026-07-14",	"SAB"),
    ("SAB22203103",	"SAIYAM ANIL BAFNA",	"CH. SAMBHAJINAGAR",	20,	"BBI",	9206060948,	6077298397,	"2023-01-24",	"2024-02-20",	"SAB"),
    ("SAB22203075",	"SANYAM SUNIL JAIN",	"JAIPUR",	20,	"BFM",	9468619926,	4584772184,	"2021-07-12",	"2025-02-24",	"SAB"),
    ("SAB2300384",	"SAYAM NILESH KOTHARI",	"BHAVNAGAR",	20,	"BFM",	6270873232,	4979482154,	"2021-07-30",	"2026-03-23",	"SAB"),
    ("SAB22203076",	"SHLOK ANUP JAIN",	"SHAHPUR",	17,	"CA",	3823199956,	9544628402,	"2022-07-20",	"2024-05-21",	"SAB"),
    ("SAB2300391",	"SHIKAR RAKESH JAIN",	"KHOPOLI",	19,	"CA",	7860987691,	1599101493,	"2021-11-30",	"2026-12-10",	"SAB"),
    ("SAB22203067",	"SHREYANS AMARKUMAR JAIN",	"RATLAM",	20,	"BCOM",	8737718320,	8147677721,	"2021-11-19",	"2023-05-03",	"SAB"),
    ("SAB2300353",	"SHREYANSH AMIT JAIN",	"INDORE",	20,	"BBA",	6709783536,	8395683088,	"2022-11-16",	"2027-02-25",	"SAB"),
    ("SAB22203096",	"SHREYANS PRITAM BORA",	"CH. SAMBHAJINAGAR",	19,	"BAF",	5537812449,	6870189460,	"2023-04-13",	"2025-02-07",	"SAB"),
    ("SAB22203108",	"SHUBHAM ARUN JAIN",	"SURAT",	20,	"BMM",	3484098559,	7044691130,	"2023-03-13",	"2026-05-29",	"SAB"),
    ("SAB2300356",	"SIDDHARTH DHARMVEER NAHATA",	"RAIPUR",	20,	"BBI",	8503109086,	5593598964,	"2023-03-24",	"2026-09-22",	"SAB"),
    ("SAB2300363",	"SIDDHARTH MAYUR JAIN",	"PUNE",	20,	"BTECH",	6139922109,	5075591975,	"2022-06-01",	"2027-01-08",	"SAB"),
    ("SAB22203064",	"SUJAL ANUP SHAH",	"SANGLI",	20,	"BTECH",	8187227619,	9434709811,	"2022-05-04",	"2026-04-18",	"SAB"),
    ("SAB2300375",	"SUJAL JITENDRA BORA",	"BARAMATI",	20,	"LLB",	2885579287,	2634956923,	"2021-11-21",	"2024-09-16",	"SAB"),
    ("SAB2300389",	"SWYAM SUNILKUMAR LUNIA",	"BHIWANDI",	20,	"BLS",	7649206550,	2509481341,	"2022-05-22",	"2027-04-04",	"SAB"),
    ("SAB2300352",	"TANISH PRAVIN GANDHI",	"ERODE",	20,	"BMM",	9376167487,	6281989433,	"2022-09-02",	"2026-11-15",	"SAB"),
    ("SAB22203072",	"UMANG MUKESHKUMAR JAIN",	"BHIWANDI",	21,	"BFM",	8839634139,	7193576484,	"2022-12-07",	"2024-10-21",	"SAB"),
    ("SAB22203066",	"VAIBHAV GYAANCHAND JAIN",	"RAIPUR",	22,	"BAF",	9620913036,	9706935826,	"2022-03-17",	"2027-01-07",	"SAB"),
    ("SAB22203020",	"VARUN MOHANLAL JAIN",	"OOTY",	20,	"BAF",	4155038378,	9472019070,	"2023-02-09",	"2026-05-09",	"SAB"),
    ("SAB22203071",	"VIDIT SANDEEP JAIN",	"CHENNAI",	21,	"BMM",	5821909821,	3878013470,	"2021-08-30",	"2023-08-12",	"SAB"),
    ("SAB2300399",	"VINIL JAYDEEP JAIN",	"PALI",	20,	"BBI",	1983241791,	5945575800,	"2022-11-16",	"2023-09-12",	"SAB"),
    ("SAB22203074",	"VINIT GAUTAM JAIN",	"UDAIPUR",	21,	"BBA",	7138053754,	4399242085,	"2022-09-23",	"2025-02-23",	"SAB"),
    ("SAB2300347",	"VIPUL VINAYKUMAR PITALIYA",	"INDORE", 20, "BCA",	9659597083,	3528214555,	"2022-02-13",	"2026-12-15",	"SAB"),
    ("SAB22203068",	"YASH MAHENDRA JAIN",	"ROHA", 21,	"BCA",	4305609492,	4778228323,	"2023-04-17",	"2026-01-29",	"SAB"),
    ("PUB21100420",	"YASH VIJAY KHATOR",	"BHIWANDI",	23,	"BCOM",	8677255591,	7446380546,	"2022-06-17",	"2025-07-14",	"SAB"),
    ("SAB22203073",	"YUG MAHESH JAIN",	"ROHA",	17,	"BTECH",	1458062309,	9795790420,	"2022-07-24",	"2024-02-20",	"SAB"),
    ("SAB2300394",	"YUG VIKRAM JAIN",	"MALEGAON",	18,	"COMMERCE",	4634997436,	5750066324,	"2022-12-31",	"2023-08-18",	"SAB");

-- student_room_assignment
INSERT INTO student_room_assignment (student_id, hostel_id, room_number)
VALUES
    ("SAB2300349",	"SAB",	3),
    ("SAB2300387",	"SAB",	4),
    ("SAB2300366",	"SAB",	12),
    ("SAB2300348",	"SAB",	6),
    ("SAB22203051",	"SAB",	10),
    ("SAB22203012",	"SAB",	13),
    ("SAB22203039",	"SAB",	19),
    ("SAB2300386",	"SAB",	5),
    ("SAB2300395",	"SAB",	24),
    ("SAB2300364",	"SAB",	21),
    ("SAB22203077",	"SAB",	10),
    ("SAB2300398",	"SAB",	37),
    ("SAB22203105",	"SAB",	27),
    ("SAB2300361",	"SAB",	4),
    ("SAB22203049",	"SAB",	3),
    ("SAB2300390",	"SAB",	6),
    ("SAB22203026",	"SAB",	19),
    ("SAB2300001",	"SAB",	30),
    ("PUB22202070",	"SAB",	28),
    ("SAB2300354",	"SAB",	22),
    ("SAB22203061",	"SAB",	23),
    ("SAB22203106",	"SAB",	13),
    ("SAB2300378",	"SAB",	8),
    ("SAB22203036",	"SAB",	31),
    ("SAB2300397",	"SAB",	28),
    ("SAB2300359",	"SAB",	15),
    ("SAB2300369",	"SAB",	4),
    ("SAB2300002",	"SAB",	27),
    ("SAB22203091",	"SAB",	32),
    ("SAB22203015",	"SAB",	22),
    ("SAB2300381",	"SAB",	35),
    ("SAB22203048",	"SAB",	28),
    ("SAB2300373",	"SAB",	14),
    ("SAB2300344",	"SAB",	13),
    ("SAB22203060",	"SAB",	8),
    ("SAB22203084",	"SAB",	33),
    ("SAB22203052",	"SAB",	18),
    ("SAB22203053",	"SAB",	20),
    ("SAB2300360",	"SAB",	24),
    ("SAB22203095",	"SAB",	6),
    ("SAB2300362",	"SAB",	21),
    ("SAB22203085",	"SAB",	27),
    ("SAB2300351",	"SAB",	17),
    ("SAB2300370",	"SAB",	29),
    ("SAB22203078",	"SAB",	22),
    ("SAB22203045",	"SAB",	35),
    ("SAB22203094",	"SAB",	3),
    ("SAB2300377",	"SAB",	31),
    ("SAB2300367",	"SAB",	15),
    ("SAB2300332",	"SAB",	5),
    ("SAB22203017",	"SAB",	23),
    ("SAB22203040",	"SAB",	33),
    ("SAB2300333",	"SAB",	17),
    ("SAB2300374",	"SAB",	32),
    ("SAB22203046",	"SAB",	11),
    ("SAB2300368",	"SAB",	18),
    ("SAB2300345",	"SAB",	6),
    ("SAB2300331",	"SAB",	4),
    ("SAB22203083",	"SAB",	15),
    ("SAB2300376",	"SAB",	31),
    ("SAB22203004",	"SAB",	7),
    ("SAB22203016",	"SAB",	16),
    ("SAB2300357",	"SAB",	16),
    ("SAB2300350",	"SAB",	20),
    ("SAB2300365",	"SAB",	24),
    ("SAB2300346",	"SAB",	12),
    ("SAB22203002",	"SAB",	29),
    ("SAB2300371",	"SAB",	35),
    ("SAB22203003",	"SAB",	7),
    ("SAB2300342",	"SAB",	33),
    ("SAB22203093",	"SAB",	32),
    ("SAB2300003",	"SAB",	10),
    ("SAB22203033",	"SAB",	29),
    ("SAB2300392",	"SAB",	23),
    ("SAB22203028",	"SAB",	9),
    ("SAB2300393",	"SAB",	28),
    ("SAB2300382",	"SAB",	34),
    ("SAB2300372",	"SAB",	17),
    ("SAB22203102",	"SAB",	30),
    ("SAB2300329",	"SAB",	9),
    ("SAB22203025",	"SAB",	11),
    ("SAB2300358",	"SAB",	31),
    ("SAB2300341",	"SAB",	28),
    ("SAB2300355",	"SAB",	17),
    ("SAB2300343",	"SAB",	36),
    ("SAB22203054",	"SAB",	20),
    ("SAB22203079",	"SAB",	33),
    ("SAB22203103",	"SAB",	16),
    ("SAB22203075",	"SAB",	9),
    ("SAB2300384",	"SAB",	12),
    ("SAB22203076",	"SAB",	18),
    ("SAB2300391",	"SAB",	30),
    ("SAB22203067",	"SAB",	21),
    ("SAB2300353",	"SAB",	35),
    ("SAB22203096",	"SAB",	19),
    ("SAB22203108",	"SAB",	29),
    ("SAB2300356",	"SAB",	7),
    ("SAB2300363",	"SAB",	37),
    ("SAB22203064",	"SAB",	29),
    ("SAB2300375",	"SAB",	8),
    ("SAB2300389",	"SAB",	12),
    ("SAB2300352",	"SAB",	30),
    ("SAB22203072",	"SAB",	10),
    ("SAB22203066",	"SAB",	20),
    ("SAB22203020",	"SAB",	11),
    ("SAB22203071",	"SAB",	29),
    ("SAB2300399",	"SAB",	36),
    ("SAB22203074",	"SAB",	8),
    ("SAB2300347",	"SAB",	11),
    ("SAB22203068",	"SAB",	21),
    ("PUB21100420",	"SAB",	18),
    ("SAB22203073",	"SAB",	9),
    ("SAB2300394",	"SAB",	7);

-- dependents
INSERT INTO dependents (student_id, dependent_phone_number, name, age, relation)
VALUES
    ("SAB2300349",	9012782755,	"AMIT CHHAJED",	41,	"FATHER"),
    ("SAB2300387",	6416609696,	"NILESH JAIN",	54,	"FATHER"),
    ("SAB2300366",	8231412084,	"SANDEEP LUNIA",	53,	"FATHER"),
    ("SAB2300348",	2681111293,	"SACHIN GANDHI",	65,	"FATHER"),
    ("SAB22203051",	1389217821,	"RANJIT JAIN",	51,	"FATHER"),
    ("SAB22203012",	6341978051,	"JAYVANT JAIN",	49,	"FATHER"),
    ("SAB22203039",	3133947519,	"MOHAN GANDHI",	63,	"FATHER"),
    ("SAB2300386",	4053719927,	"MUKESH DOSHI",	38,	"FATHER"),
    ("SAB2300395",	5907732785,	"VINOD LUNIA",	40,	"FATHER"),
    ("SAB2300364",	6104390242,	"MAHENDRA KOTECHA",	37,	"FATHER"),
    ("SAB22203077",	2132628100,	"VISHAL KOTHARI",	41,	"FATHER"),
    ("SAB2300398",	9238034527,	"ASHISH SISODIYA",	37,	"FATHER"),
    ("SAB22203105",	3391025788,	"AMIT SHAH",	42,	"FATHER"),
    ("SAB2300361",	2087073965,	"VIJAYKUMAR JAIN",	58,	"FATHER"),
    ("SAB22203049",	6574603747,	"JAYESH JAIN",	58,	"FATHER"),
    ("SAB2300390",	2808025547,	"VIKAS JAIN",	39,	"FATHER"),
    ("SAB22203026",	9546792927,	"ANIL JAIN",	63,	"FATHER"),
    ("SAB2300001",	6960197174,	"DINESHKUMAR JAIN",	55,	"FATHER"),
    ("PUB22202070",	6234025566,	"MANOJKUMAR JAIN",	35,	"FATHER"),
    ("SAB2300354",	1369227868,	"PINKESH JAIN",	63,	"FATHER"),
    ("SAB22203061",	5878974355,	"VIKAS SISODIYA",	47,	"FATHER"),
    ("SAB22203106",	3643482237,	"AMIT OSWAL",	42,	"FATHER"),
    ("SAB2300378",	1453109832,	"AJIT RAIGANDHI",	55,	"FATHER"),
    ("SAB22203036",	1667870091,	"INDRAKUMAR JAIN",	60,	"FATHER"),
    ("SAB2300397",	8908939893,	"HASMUKH KOTHARI",	62,	"FATHER"),
    ("SAB2300359",	1311979242,	"SANCHINBHAI BAGADIYA",	37,	"FATHER"),
    ("SAB2300369",	2571922077,	"RAJESH OSWAL",	41,	"FATHER"),
    ("SAB2300002",	9473565928,	"BHAVESH SHAH",	64,	"FATHER"),
    ("SAB22203091",	5960139275,	"NARESH BHOGAR",	45,	"FATHER"),
    ("SAB22203015",	7560370773,	"PRAVIN HARAN",	44,	"FATHER"),
    ("SAB2300381",	8553577765,	"RAJENDRA BAFNA",	36,	"FATHER"),
    ("SAB22203048",	8093033924,	"NARENDRA JAIN",	51,	"FATHER"),
    ("SAB2300373",	5278351802,	"TAKDEER NAKARIYA",	57,	"FATHER"),
    ("SAB2300344",	3833978329,	"NARENDRA JAIN",	43,	"FATHER"),
    ("SAB22203060",	6424336450,	"DEEPAK BAFNA",	47,	"FATHER"),
    ("SAB22203084",	8981684548,	"SHAILESH JAIN",	65,	"FATHER"),
    ("SAB22203052",	8982663671,	"DIVESH PORWAL",	46,	"FATHER"),
    ("SAB22203053",	8651543387,	"NARESHKUMAR DAGA",	54,	"FATHER"),
    ("SAB2300360",	1666013254,	"RAKESH JAIN",	54,	"FATHER"),
    ("SAB22203095",	2439787105,	"SAGAR DOSHI",	41,	"FATHER"),
    ("SAB2300362",	6679801461,	"VINODKUMAR RATHORE",	35,	"FATHER"),
    ("SAB22203085",	7336869801,	"ROHIT JAIN",	38,	"FATHER"),
    ("SAB2300351",	2041710061,	"SURESHKUMAR SHAH",	47,	"FATHER"),
    ("SAB2300370",	6225178947,	"MUKESH MODI",	61,	"FATHER"),
    ("SAB22203078",	3970521482,	"MAHIPAL BAFNA",	39,	"FATHER"),
    ("SAB22203045",	3539824441,	"DEEPAK JAIN",	43,	"FATHER"),
    ("SAB22203094",	8201367388,	"AMIT GOLECHA",	35,	"FATHER"),
    ("SAB2300377",	7856489554,	"MANOJKUMAR RUPDA",	50,	"FATHER"),
    ("SAB2300367",	8264583583,	"SANDEEP JAIN",	53,	"FATHER"),
    ("SAB2300332",	2922091181,	"AJITH GULECHA",	35,	"FATHER"),
    ("SAB22203017",	2577958071,	"NARENDRA JAIN",	43,	"FATHER"),
    ("SAB22203040",	2307785771,	"ANAND CHORDIYA",	60,	"FATHER"),
    ("SAB2300333",	9836651308,	"PANKAJ BARBOTA",	48,	"FATHER"),
    ("SAB2300374",	8950394555,	"MAHENDRA MEHTA",	61,	"FATHER"),
    ("SAB22203046",	9809473646,	"AMIT SHAH",	53,	"FATHER"),
    ("SAB2300368",	1990889604,	"BHARAT PORWAL",	48,	"FATHER"),
    ("SAB2300345",	2759724326,	"MUKESH JAIN",	47,	"FATHER"),
    ("SAB2300331",	6050892207,	"JAYANTI KANKARIYA",	63,	"FATHER"),
    ("SAB22203083",	4551608999,	"PAVANKUMAR SANKLECHA",	36,	"FATHER"),
    ("SAB2300376",	1857384799,	"SANTOSH JAIN",	48,	"FATHER"),
    ("SAB22203004",	4564065509,	"RAMESHKUMAR SANKLECHA",	38,	"FATHER"),
    ("SAB22203016",	6170934569,	"RUPESH JAIN",	41,	"FATHER"),
    ("SAB2300357",	4213320442,	"AMITKUMAR JAIN",	37,	"FATHER"),
    ("SAB2300350",	7958204319,	"KRITIKUMAR JAIN",	64,	"FATHER"),
    ("SAB2300365",	5902517758,	"MAHAVIR JAIN",	48,	"FATHER"),
    ("SAB2300346",	8430545337,	"ANANDRAJ KANKARIYA",	54,	"FATHER"),
    ("SAB22203002",	5710208104,	"SANJAY BOTRA",	49,	"FATHER"),
    ("SAB2300371",	2641172357,	"HEMANT JAIN",	56,	"FATHER"),
    ("SAB22203003",	9037417829,	"MANOJKUMAR JAIN",	35,	"FATHER"),
    ("SAB2300342",	5709825523,	"VINOD JAIN",	39,	"FATHER"),
    ("SAB22203093",	9370052176,	"BHAVESH JAIN",	61,	"FATHER"),
    ("SAB2300003",	7525024848,	"DILIP JAIN",	45,	"FATHER"),
    ("SAB22203033",	8028056189,	"PAVANKUMAR SHETIYA",	50,	"FATHER"),
    ("SAB2300392",	1034253913,	"SAGAR SHAH",	51,	"FATHER"),
    ("SAB22203028",	9524134213,	"VISHALKUMAR SHAH",	62,	"FATHER"),
    ("SAB2300393",	6772529141,	"KAMLESH BHANSOLI",	35,	"FATHER"),
    ("SAB2300382",	6635283669,	"PRADEEP JAIN",	39,	"FATHER"),
    ("SAB2300372",	1231134110,	"PRAVEEN JAIN",	38,	"FATHER"),
    ("SAB22203102",	4065413693,	"ANIL JAIN",	37,	"FATHER"),
    ("SAB2300329",	1617384801,	"JITENDRA JAIN",	56,	"FATHER"),
    ("SAB22203025",	1302589357,	"YOGESH SHAH",	47,	"FATHER"),
    ("SAB2300358",	1936818622,	"RATANLAL JAIN",	51,	"FATHER"),
    ("SAB2300341",	7517532140,	"BHARAT PITANI",	51,	"FATHER"),
    ("SAB2300355",	3086170460,	"RAHUL JAIN",	40,	"FATHER"),
    ("SAB2300343",	6634209716,	"ASHISH BORA",	45,	"FATHER"),
    ("SAB22203054",	5763155545,	"SOHANLAL JAIN",	42,	"FATHER"),
    ("SAB22203079",	3613517248,	"RUPESH JAIN",	46,	"FATHER"),
    ("SAB22203103",	6077298397,	"ANIL BAFNA",	65,	"FATHER"),
    ("SAB22203075",	4584772184,	"SUNIL JAIN",	58,	"FATHER"),
    ("SAB2300384",	4979482154,	"NILESH KOTHARI",	51,	"FATHER"),
    ("SAB22203076",	9544628402,	"ANUP JAIN",	59,	"FATHER"),
    ("SAB2300391",	1599101493,	"RAKESH JAIN",	43,	"FATHER"),
    ("SAB22203067",	8147677721,	"AMARKUMAR JAIN",	37,	"FATHER"),
    ("SAB2300353",	8395683088,	"AMIT JAIN",	51,	"FATHER"),
    ("SAB22203096",	6870189460,	"PRITAM BORA",	50,	"FATHER"),
    ("SAB22203108",	7044691130,	"ARUN JAIN",	44,	"FATHER"),
    ("SAB2300356",	5593598964,	"DHARMVEER NAHATA",	49,	"FATHER"),
    ("SAB2300363",	5075591975,	"MAYUR JAIN",	65,	"FATHER"),
    ("SAB22203064",	9434709811,	"ANUP SHAH",	40,	"FATHER"),
    ("SAB2300375",	2634956923,	"JITENDRA BORA",	39,	"FATHER"),
    ("SAB2300389",	2509481341,	"SUNILKUMAR LUNIA",	57,	"FATHER"),
    ("SAB2300352",	6281989433,	"PRAVIN GANDHI",	57,	"FATHER"),
    ("SAB22203072",	7193576484,	"MUKESHKUMAR JAIN",	37,	"FATHER"),
    ("SAB22203066",	9706935826,	"GYAANCHAND JAIN",	41,	"FATHER"),
    ("SAB22203020",	9472019070,	"MOHANLAL JAIN",	61,	"FATHER"),
    ("SAB22203071",	3878013470,	"SANDEEP JAIN",	52,	"FATHER"),
    ("SAB2300399",	5945575800,	"JAYDEEP JAIN",	56,	"FATHER"),
    ("SAB22203074",	4399242085,	"GAUTAM JAIN",	42,	"FATHER"),
    ("SAB2300347",	3528214555,	"VINAYKUMAR PITALIYA",	43,	"FATHER"),
    ("SAB22203068",	4778228323,	"MAHENDRA JAIN",	40,	"FATHER"),
    ("PUB21100420",	7446380546,	"VIJAY KHATOR",	59,	"FATHER"),
    ("SAB22203073",	9795790420,	"MAHESH JAIN",	65,	"FATHER"),
    ("SAB2300394",	5750066324,	"VIKRAM JAIN",	49,	"FATHER");

-- fees
INSERT INTO fees (student_id, date, amount, paid_till_date, pending, mode_of_payment)
VALUES
    ("SAB2300349",	"2024-01-22",	80000, "2024-01-22",	0,	"NFT"),
    ("SAB2300387",	"2024-01-23",	80000, "2024-01-23",	0,	"NFT"),
    ("SAB2300366",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB2300348",	"2024-01-14",	80000, "2024-01-14",	0,	"NFT"),
    ("SAB22203051",	"2024-01-26",	80000, "2024-01-26",	0,	"NFT"),
    ("SAB22203012",	"2024-01-15",	80000, "2024-01-15",	0,	"NFT"),
    ("SAB22203039",	"2024-01-08",	80000, "2024-01-08",	0,	"NFT"),
    ("SAB2300386",	"2024-01-17",	80000, "2024-01-17",	0,	"NFT"),
    ("SAB2300395",	"2024-01-13",	80000, "2024-01-13",	0,	"NFT"),
    ("SAB2300364",	"2024-01-21",	80000, "2024-01-21",	0,	"NFT"),
    ("SAB22203077",	"2024-01-06",	80000, "2024-01-06",	0,	"NFT"),
    ("SAB2300398",	"2024-01-06",	80000, "2024-01-06",	0,	"NFT"),
    ("SAB22203105",	"2024-01-10",	80000, "2024-01-10",	0,	"NFT"),
    ("SAB2300361",	"2024-01-24",	80000, "2024-01-24",	0,	"NFT"),
    ("SAB22203049",	"2023-12-25",	80000, "2023-12-25",	0,	"NFT"),
    ("SAB2300390",	"2024-01-21",	80000, "2024-01-21",	0,	"NFT"),
    ("SAB22203026",	"2024-01-19",	80000, "2024-01-19",	0,	"NFT"),
    ("SAB2300001",	"2023-12-29",	80000, "2023-12-29",	0,	"NFT"),
    ("PUB22202070",	"2024-01-29",	80000, "2024-01-29",	0,	"NFT"),
    ("SAB2300354",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB22203061",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB22203106",	"2023-12-25",	80000, "2023-12-25",	0,	"NFT"),
    ("SAB2300378",	"2024-01-26",	80000, "2024-01-26",	0,	"NFT"),
    ("SAB22203036",	"2024-01-12",	80000, "2024-01-12",	0,	"NFT"),
    ("SAB2300397",	"2024-01-07",	80000, "2024-01-07",	0,	"NFT"),
    ("SAB2300359",	"2024-01-24",	80000, "2024-01-24",	0,	"NFT"),
    ("SAB2300369",	"2024-01-19",	80000, "2024-01-19",	0,	"NFT"),
    ("SAB2300002",	"2024-01-28",	80000, "2024-01-28",	0,	"NFT"),
    ("SAB22203091",	"2023-12-28",	80000, "2023-12-28",	0,	"NFT"),
    ("SAB22203015",	"2023-12-21",	80000, "2023-12-21",	0,	"NFT"),
    ("SAB2300381",	"2024-01-29",	80000, "2024-01-29",	0,	"NFT"),
    ("SAB22203048",	"2024-01-16",	80000, "2024-01-16",	0,	"NFT"),
    ("SAB2300373",	"2024-01-11",	80000, "2024-01-11",	0,	"NFT"),
    ("SAB2300344",	"2024-01-12",	80000, "2024-01-12",	0,	"NFT"),
    ("SAB22203060",	"2024-01-17",	80000, "2024-01-17",	0,	"NFT"),
    ("SAB22203084",	"2023-12-30",	80000, "2023-12-30",	0,	"NFT"),
    ("SAB22203052",	"2024-01-23",	80000, "2024-01-23",	0,	"NFT"),
    ("SAB22203053",	"2023-12-26",	80000, "2023-12-26",	0,	"NFT"),
    ("SAB2300360",	"2023-12-26",	80000, "2023-12-26",	0,	"NFT"),
    ("SAB22203095",	"2024-01-12",	80000, "2024-01-12",	0,	"NFT"),
    ("SAB2300362",	"2024-01-10",	80000, "2024-01-10",	0,	"NFT"),
    ("SAB22203085",	"2024-01-01",	80000, "2024-01-01",	0,	"NFT"),
    ("SAB2300351",	"2024-01-16",	80000, "2024-01-16",	0,	"NFT"),
    ("SAB2300370",	"2024-01-16",	80000, "2024-01-16",	0,	"NFT"),
    ("SAB22203078",	"2023-12-29",	80000, "2023-12-29",	0,	"NFT"),
    ("SAB22203045",	"2024-01-04",	80000, "2024-01-04",	0,	"NFT"),
    ("SAB22203094",	"2024-01-20",	80000, "2024-01-20",	0,	"NFT"),
    ("SAB2300377",	"2024-01-27",	80000, "2024-01-27",	0,	"NFT"),
    ("SAB2300367",	"2024-01-11",	80000, "2024-01-11",	0,	"NFT"),
    ("SAB2300332",	"2024-01-11",	80000, "2024-01-11",	0,	"NFT"),
    ("SAB22203017",	"2024-01-06",	80000, "2024-01-06",	0,	"NFT"),
    ("SAB22203040",	"2024-01-23",	80000, "2024-01-23",	0,	"NFT"),
    ("SAB2300333",	"2023-12-27",	80000, "2023-12-27",	0,	"NFT"),
    ("SAB2300374",	"2024-01-25",	80000, "2024-01-25",	0,	"NFT"),
    ("SAB22203046",	"2024-01-20",	80000, "2024-01-20",	0,	"NFT"),
    ("SAB2300368",	"2024-01-09",	80000, "2024-01-09",	0,	"NFT"),
    ("SAB2300345",	"2024-01-07",	80000, "2024-01-07",	0,	"NFT"),
    ("SAB2300331",	"2024-01-29",	80000, "2024-01-29",	0,	"NFT"),
    ("SAB22203083",	"2023-12-30",	80000, "2023-12-30",	0,	"NFT"),
    ("SAB2300376",	"2024-01-14",	80000, "2024-01-14",	0,	"NFT"),
    ("SAB22203004",	"2023-12-29",	80000, "2023-12-29",	0,	"NFT"),
    ("SAB22203016",	"2024-01-09",	80000, "2024-01-09",	0,	"NFT"),
    ("SAB2300357",	"2024-01-16",	80000, "2024-01-16",	0,	"NFT"),
    ("SAB2300350",	"2024-01-01",	80000, "2024-01-01",	0,	"NFT"),
    ("SAB2300365",	"2024-01-09",	80000, "2024-01-09",	0,	"NFT"),
    ("SAB2300346",	"2024-01-29",	80000, "2024-01-29",	0,	"NFT"),
    ("SAB22203002",	"2023-12-26",	80000, "2023-12-26",	0,	"NFT"),
    ("SAB2300371",	"2024-01-02",	80000, "2024-01-02",	0,	"NFT"),
    ("SAB22203003",	"2024-01-06",	80000, "2024-01-06",	0,	"NFT"),
    ("SAB2300342",	"2024-01-10",	80000, "2024-01-10",	0,	"NFT"),
    ("SAB22203093",	"2023-12-25",	80000, "2023-12-25",	0,	"NFT"),
    ("SAB2300003",	"2023-12-22",	80000, "2023-12-22",	0,	"NFT"),
    ("SAB22203033",	"2024-01-24",	80000, "2024-01-24",	0,	"NFT"),
    ("SAB2300392",	"2023-12-22",	80000, "2023-12-22",	0,	"NFT"),
    ("SAB22203028",	"2024-01-01",	80000, "2024-01-01",	0,	"NFT"),
    ("SAB2300393",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB2300382",	"2024-01-27",	80000, "2024-01-27",	0,	"NFT"),
    ("SAB2300372",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB22203102",	"2023-12-27",	80000, "2023-12-27",	0,	"NFT"),
    ("SAB2300329",	"2024-01-25",	80000, "2024-01-25",	0,	"NFT"),
    ("SAB22203025",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB2300358",	"2024-01-07",	80000, "2024-01-07",	0,	"NFT"),
    ("SAB2300341",	"2024-01-10",	80000, "2024-01-10",	0,	"NFT"),
    ("SAB2300355",	"2024-01-07",	80000, "2024-01-07",	0,	"NFT"),
    ("SAB2300343",	"2024-01-10",	80000, "2024-01-10",	0,	"NFT"),
    ("SAB22203054",	"2023-12-25",	80000, "2023-12-25",	0,	"NFT"),
    ("SAB22203079",	"2024-01-01",	80000, "2024-01-01",	0,	"NFT"),
    ("SAB22203103",	"2024-01-14",	80000, "2024-01-14",	0,	"NFT"),
    ("SAB22203075",	"2023-12-25",	80000, "2023-12-25",	0,	"NFT"),
    ("SAB2300384",	"2024-01-11",	80000, "2024-01-11",	0,	"NFT"),
    ("SAB22203076",	"2024-01-18",	80000, "2024-01-18",	0,	"NFT"),
    ("SAB2300391",	"2023-12-23",	80000, "2023-12-23",	0,	"NFT"),
    ("SAB22203067",	"2024-01-27",	80000, "2024-01-27",	0,	"NFT"),
    ("SAB2300353",	"2024-01-09",	80000, "2024-01-09",	0,	"NFT"),
    ("SAB22203096",	"2024-01-17",	80000, "2024-01-17",	0,	"NFT"),
    ("SAB22203108",	"2024-01-12",	80000, "2024-01-12",	0,	"NFT"),
    ("SAB2300356",	"2024-01-27",	80000, "2024-01-27",	0,	"NFT"),
    ("SAB2300363",	"2024-01-08",	80000, "2024-01-08",	0,	"NFT"),
    ("SAB22203064",	"2023-12-25",	80000, "2023-12-25",	0,	"NFT"),
    ("SAB2300375",	"2024-01-19",	80000, "2024-01-19",	0,	"NFT"),
    ("SAB2300389",	"2024-01-23",	80000, "2024-01-23",	0,	"NFT"),
    ("SAB2300352",	"2024-01-05",	80000, "2024-01-05",	0,	"NFT"),
    ("SAB22203072",	"2024-01-19",	80000, "2024-01-19",	0,	"NFT"),
    ("SAB22203066",	"2024-01-27",	80000, "2024-01-27",	0,	"NFT"),
    ("SAB22203020",	"2024-01-26",	80000, "2024-01-26",	0,	"NFT"),
    ("SAB22203071",	"2023-12-31",	80000, "2023-12-31",	0,	"NFT"),
    ("SAB2300399",	"2023-12-30",	80000, "2023-12-30",	0,	"NFT"),
    ("SAB22203074",	"2023-12-27",	80000, "2023-12-27",	0,	"NFT"),
    ("SAB2300347",	"2024-01-13",	80000, "2024-01-13",	0,	"NFT"),
    ("SAB22203068",	"2024-01-04",	80000, "2024-01-04",	0,	"NFT"),
    ("PUB21100420",	"2023-12-26",	80000, "2023-12-26",	0,	"NFT"),
    ("SAB22203073",	"2024-01-17",	80000, "2024-01-17",	0,	"NFT"),
    ("SAB2300394",	"2024-01-20",	80000, "2024-01-20",	0,	"NFT");

