class SoraListItemModel {
  final int soraNumber;
  final String soraNameEn;
  final String soraNameAr;
  final String soraNumberOfVerses;

  const SoraListItemModel(
      {required this.soraNumber,
      required this.soraNameEn,
      required this.soraNameAr,
      required this.soraNumberOfVerses});

  static List<SoraListItemModel> soraList = const [
    SoraListItemModel(
      soraNumber: 1,
      soraNameEn: "Al-Fatiha",
      soraNameAr: "الفاتحة",
      soraNumberOfVerses: "7",
    ),
    SoraListItemModel(
      soraNumber: 2,
      soraNameEn: "Al-Baqarah",
      soraNameAr: "البقرة",
      soraNumberOfVerses: "286",
    ),
    SoraListItemModel(
      soraNumber: 3,
      soraNameEn: "Ali 'Imran",
      soraNameAr: "آل عمران",
      soraNumberOfVerses: "200",
    ),
    SoraListItemModel(
      soraNumber: 4,
      soraNameEn: "An-Nisa",
      soraNameAr: "النساء",
      soraNumberOfVerses: "176",
    ),
    SoraListItemModel(
      soraNumber: 5,
      soraNameEn: "Al-Ma'idah",
      soraNameAr: "المائدة",
      soraNumberOfVerses: "120",
    ),
    SoraListItemModel(
      soraNumber: 6,
      soraNameEn: "Al-An'am",
      soraNameAr: "الأنعام",
      soraNumberOfVerses: "165",
    ),
    SoraListItemModel(
      soraNumber: 7,
      soraNameEn: "Al-A'raf",
      soraNameAr: "الأعراف",
      soraNumberOfVerses: "206",
    ),
    SoraListItemModel(
      soraNumber: 8,
      soraNameEn: "Al-Anfal",
      soraNameAr: "الأنفال",
      soraNumberOfVerses: "75",
    ),
    SoraListItemModel(
      soraNumber: 9,
      soraNameEn: "At-Tawbah",
      soraNameAr: "التوبة",
      soraNumberOfVerses: "129",
    ),
    SoraListItemModel(
      soraNumber: 10,
      soraNameEn: "Yunus",
      soraNameAr: "يونس",
      soraNumberOfVerses: "109",
    ),
    SoraListItemModel(
      soraNumber: 11,
      soraNameEn: "Hud",
      soraNameAr: "هود",
      soraNumberOfVerses: "123",
    ),
    SoraListItemModel(
      soraNumber: 12,
      soraNameEn: "Yusuf",
      soraNameAr: "يوسف",
      soraNumberOfVerses: "111",
    ),
    SoraListItemModel(
      soraNumber: 13,
      soraNameEn: "Ar-Ra'd",
      soraNameAr: "الرعد",
      soraNumberOfVerses: "43",
    ),
    SoraListItemModel(
      soraNumber: 14,
      soraNameEn: "Ibrahim",
      soraNameAr: "إبراهيم",
      soraNumberOfVerses: "52",
    ),
    SoraListItemModel(
      soraNumber: 15,
      soraNameEn: "Al-Hijr",
      soraNameAr: "الحجر",
      soraNumberOfVerses: "99",
    ),
    SoraListItemModel(
      soraNumber: 16,
      soraNameEn: "An-Nahl",
      soraNameAr: "النحل",
      soraNumberOfVerses: "128",
    ),
    SoraListItemModel(
      soraNumber: 17,
      soraNameEn: "Al-Isra",
      soraNameAr: "الإسراء",
      soraNumberOfVerses: "111",
    ),
    SoraListItemModel(
      soraNumber: 18,
      soraNameEn: "Al-Kahf",
      soraNameAr: "الكهف",
      soraNumberOfVerses: "110",
    ),
    SoraListItemModel(
      soraNumber: 19,
      soraNameEn: "Maryam",
      soraNameAr: "مريم",
      soraNumberOfVerses: "98",
    ),
    SoraListItemModel(
      soraNumber: 20,
      soraNameEn: "Taha",
      soraNameAr: "طه",
      soraNumberOfVerses: "135",
    ),
    SoraListItemModel(
      soraNumber: 21,
      soraNameEn: "Al-Anbiya",
      soraNameAr: "الأنبياء",
      soraNumberOfVerses: "112",
    ),
    SoraListItemModel(
      soraNumber: 22,
      soraNameEn: "Al-Hajj",
      soraNameAr: "الحج",
      soraNumberOfVerses: "78",
    ),
    SoraListItemModel(
      soraNumber: 23,
      soraNameEn: "Al-Mu'minun",
      soraNameAr: "المؤمنون",
      soraNumberOfVerses: "118",
    ),
    SoraListItemModel(
      soraNumber: 24,
      soraNameEn: "An-Nur",
      soraNameAr: "النور",
      soraNumberOfVerses: "64",
    ),
    SoraListItemModel(
      soraNumber: 25,
      soraNameEn: "Al-Furqan",
      soraNameAr: "الفرقان",
      soraNumberOfVerses: "77",
    ),
    SoraListItemModel(
      soraNumber: 26,
      soraNameEn: "Ash-Shu'ara",
      soraNameAr: "الشعراء",
      soraNumberOfVerses: "227",
    ),
    SoraListItemModel(
      soraNumber: 27,
      soraNameEn: "An-Naml",
      soraNameAr: "النمل",
      soraNumberOfVerses: "93",
    ),
    SoraListItemModel(
      soraNumber: 28,
      soraNameEn: "Al-Qasas",
      soraNameAr: "القصص",
      soraNumberOfVerses: "88",
    ),
    SoraListItemModel(
      soraNumber: 29,
      soraNameEn: "Al-Ankabut",
      soraNameAr: "العنكبوت",
      soraNumberOfVerses: "69",
    ),
    SoraListItemModel(
      soraNumber: 30,
      soraNameEn: "Ar-Rum",
      soraNameAr: "الروم",
      soraNumberOfVerses: "60",
    ),
    SoraListItemModel(
      soraNumber: 31,
      soraNameEn: "Luqman",
      soraNameAr: "لقمان",
      soraNumberOfVerses: "34",
    ),
    SoraListItemModel(
      soraNumber: 32,
      soraNameEn: "As-Sajdah",
      soraNameAr: "السجدة",
      soraNumberOfVerses: "30",
    ),
    SoraListItemModel(
      soraNumber: 33,
      soraNameEn: "Al-Ahzab",
      soraNameAr: "الأحزاب",
      soraNumberOfVerses: "73",
    ),
    SoraListItemModel(
      soraNumber: 34,
      soraNameEn: "Saba",
      soraNameAr: "سبأ",
      soraNumberOfVerses: "54",
    ),
    SoraListItemModel(
      soraNumber: 35,
      soraNameEn: "Fatir",
      soraNameAr: "فاطر",
      soraNumberOfVerses: "45",
    ),
    SoraListItemModel(
      soraNumber: 36,
      soraNameEn: "Ya-Sin",
      soraNameAr: "يس",
      soraNumberOfVerses: "83",
    ),
    SoraListItemModel(
      soraNumber: 37,
      soraNameEn: "As-Saffat",
      soraNameAr: "الصافات",
      soraNumberOfVerses: "182",
    ),
    SoraListItemModel(
      soraNumber: 38,
      soraNameEn: "Sad",
      soraNameAr: "ص",
      soraNumberOfVerses: "88",
    ),
    SoraListItemModel(
      soraNumber: 39,
      soraNameEn: "Az-Zumar",
      soraNameAr: "الزمر",
      soraNumberOfVerses: "75",
    ),
    SoraListItemModel(
      soraNumber: 40,
      soraNameEn: "Ghafir",
      soraNameAr: "غافر",
      soraNumberOfVerses: "85",
    ),
    SoraListItemModel(
      soraNumber: 41,
      soraNameEn: "Fussilat",
      soraNameAr: "فصلت",
      soraNumberOfVerses: "54",
    ),
    SoraListItemModel(
      soraNumber: 42,
      soraNameEn: "Ash-Shura",
      soraNameAr: "الشورى",
      soraNumberOfVerses: "53",
    ),
    SoraListItemModel(
      soraNumber: 43,
      soraNameEn: "Az-Zukhruf",
      soraNameAr: "الزخرف",
      soraNumberOfVerses: "89",
    ),
    SoraListItemModel(
      soraNumber: 44,
      soraNameEn: "Ad-Dukhan",
      soraNameAr: "الدخان",
      soraNumberOfVerses: "59",
    ),
    SoraListItemModel(
      soraNumber: 45,
      soraNameEn: "Al-Jathiyah",
      soraNameAr: "الجاثية",
      soraNumberOfVerses: "37",
    ),
    SoraListItemModel(
      soraNumber: 46,
      soraNameEn: "Al-Ahqaf",
      soraNameAr: "الأحقاف",
      soraNumberOfVerses: "35",
    ),
    SoraListItemModel(
      soraNumber: 47,
      soraNameEn: "Muhammad",
      soraNameAr: "محمد",
      soraNumberOfVerses: "38",
    ),
    SoraListItemModel(
      soraNumber: 48,
      soraNameEn: "Al-Fath",
      soraNameAr: "الفتح",
      soraNumberOfVerses: "29",
    ),
    SoraListItemModel(
      soraNumber: 49,
      soraNameEn: "Al-Hujurat",
      soraNameAr: "الحجرات",
      soraNumberOfVerses: "18",
    ),
    SoraListItemModel(
      soraNumber: 50,
      soraNameEn: "Qaf",
      soraNameAr: "ق",
      soraNumberOfVerses: "45",
    ),
    SoraListItemModel(
      soraNumber: 51,
      soraNameEn: "Adh-Dhariyat",
      soraNameAr: "الذاريات",
      soraNumberOfVerses: "60",
    ),
    SoraListItemModel(
      soraNumber: 52,
      soraNameEn: "At-Tur",
      soraNameAr: "الطور",
      soraNumberOfVerses: "49",
    ),
    SoraListItemModel(
      soraNumber: 53,
      soraNameEn: "An-Najm",
      soraNameAr: "النجم",
      soraNumberOfVerses: "62",
    ),
    SoraListItemModel(
      soraNumber: 54,
      soraNameEn: "Al-Qamar",
      soraNameAr: "القمر",
      soraNumberOfVerses: "55",
    ),
    SoraListItemModel(
      soraNumber: 55,
      soraNameEn: "Ar-Rahman",
      soraNameAr: "الرحمن",
      soraNumberOfVerses: "78",
    ),
    SoraListItemModel(
      soraNumber: 56,
      soraNameEn: "Al-Waqi'ah",
      soraNameAr: "الواقعة",
      soraNumberOfVerses: "96",
    ),
    SoraListItemModel(
      soraNumber: 57,
      soraNameEn: "Al-Hadid",
      soraNameAr: "الحديد",
      soraNumberOfVerses: "29",
    ),
    SoraListItemModel(
      soraNumber: 58,
      soraNameEn: "Al-Mujadila",
      soraNameAr: "المجادلة",
      soraNumberOfVerses: "22",
    ),
    SoraListItemModel(
      soraNumber: 59,
      soraNameEn: "Al-Hashr",
      soraNameAr: "الحشر",
      soraNumberOfVerses: "24",
    ),
    SoraListItemModel(
      soraNumber: 60,
      soraNameEn: "Al-Mumtahanah",
      soraNameAr: "الممتحنة",
      soraNumberOfVerses: "13",
    ),
    SoraListItemModel(
      soraNumber: 61,
      soraNameEn: "As-Saff",
      soraNameAr: "الصف",
      soraNumberOfVerses: "14",
    ),
    SoraListItemModel(
      soraNumber: 62,
      soraNameEn: "Al-Jumu'ah",
      soraNameAr: "الجمعة",
      soraNumberOfVerses: "11",
    ),
    SoraListItemModel(
      soraNumber: 63,
      soraNameEn: "Al-Munafiqun",
      soraNameAr: "المنافقون",
      soraNumberOfVerses: "11",
    ),
    SoraListItemModel(
      soraNumber: 64,
      soraNameEn: "At-Taghabun",
      soraNameAr: "التغابن",
      soraNumberOfVerses: "18",
    ),
    SoraListItemModel(
      soraNumber: 65,
      soraNameEn: "At-Talaq",
      soraNameAr: "الطلاق",
      soraNumberOfVerses: "12",
    ),
    SoraListItemModel(
      soraNumber: 66,
      soraNameEn: "At-Tahrim",
      soraNameAr: "التحريم",
      soraNumberOfVerses: "12",
    ),
    SoraListItemModel(
      soraNumber: 67,
      soraNameEn: "Al-Mulk",
      soraNameAr: "الملك",
      soraNumberOfVerses: "30",
    ),
    SoraListItemModel(
      soraNumber: 68,
      soraNameEn: "Al-Qalam",
      soraNameAr: "القلم",
      soraNumberOfVerses: "52",
    ),
    SoraListItemModel(
      soraNumber: 69,
      soraNameEn: "Al-Haqqah",
      soraNameAr: "الحاقة",
      soraNumberOfVerses: "52",
    ),
    SoraListItemModel(
      soraNumber: 70,
      soraNameEn: "Al-Ma'arij",
      soraNameAr: "المعارج",
      soraNumberOfVerses: "44",
    ),
    SoraListItemModel(
      soraNumber: 71,
      soraNameEn: "Nuh",
      soraNameAr: "نوح",
      soraNumberOfVerses: "28",
    ),
    SoraListItemModel(
      soraNumber: 72,
      soraNameEn: "Al-Jinn",
      soraNameAr: "الجن",
      soraNumberOfVerses: "28",
    ),
    SoraListItemModel(
      soraNumber: 73,
      soraNameEn: "Al-Muzzammil",
      soraNameAr: "المزمل",
      soraNumberOfVerses: "20",
    ),
    SoraListItemModel(
      soraNumber: 74,
      soraNameEn: "Al-Muddathir",
      soraNameAr: "المدثر",
      soraNumberOfVerses: "56",
    ),
    SoraListItemModel(
      soraNumber: 75,
      soraNameEn: "Al-Qiyamah",
      soraNameAr: "القيامة",
      soraNumberOfVerses: "40",
    ),
    SoraListItemModel(
      soraNumber: 76,
      soraNameEn: "Al-Insan",
      soraNameAr: "الإنسان",
      soraNumberOfVerses: "31",
    ),
    SoraListItemModel(
      soraNumber: 77,
      soraNameEn: "Al-Mursalat",
      soraNameAr: "المرسلات",
      soraNumberOfVerses: "50",
    ),
    SoraListItemModel(
      soraNumber: 78,
      soraNameEn: "An-Naba",
      soraNameAr: "النبأ",
      soraNumberOfVerses: "40",
    ),
    SoraListItemModel(
      soraNumber: 79,
      soraNameEn: "An-Nazi'at",
      soraNameAr: "النازعات",
      soraNumberOfVerses: "46",
    ),
    SoraListItemModel(
      soraNumber: 80,
      soraNameEn: "Abasa",
      soraNameAr: "عبس",
      soraNumberOfVerses: "42",
    ),
    SoraListItemModel(
      soraNumber: 81,
      soraNameEn: "At-Takwir",
      soraNameAr: "التكوير",
      soraNumberOfVerses: "29",
    ),
    SoraListItemModel(
      soraNumber: 82,
      soraNameEn: "Al-Infitar",
      soraNameAr: "الإنفطار",
      soraNumberOfVerses: "19",
    ),
    SoraListItemModel(
      soraNumber: 83,
      soraNameEn: "Al-Mutaffifin",
      soraNameAr: "المطففين",
      soraNumberOfVerses: "36",
    ),
    SoraListItemModel(
      soraNumber: 84,
      soraNameEn: "Al-Inshiqaq",
      soraNameAr: "الانشقاق",
      soraNumberOfVerses: "25",
    ),
    SoraListItemModel(
      soraNumber: 85,
      soraNameEn: "Al-Buruj",
      soraNameAr: "البروج",
      soraNumberOfVerses: "22",
    ),
    SoraListItemModel(
      soraNumber: 86,
      soraNameEn: "At-Tariq",
      soraNameAr: "الطارق",
      soraNumberOfVerses: "17",
    ),
    SoraListItemModel(
      soraNumber: 87,
      soraNameEn: "Al-A'la",
      soraNameAr: "الأعلى",
      soraNumberOfVerses: "19",
    ),
    SoraListItemModel(
      soraNumber: 88,
      soraNameEn: "Al-Ghashiyah",
      soraNameAr: "الغاشية",
      soraNumberOfVerses: "26",
    ),
    SoraListItemModel(
      soraNumber: 89,
      soraNameEn: "Al-Fajr",
      soraNameAr: "الفجر",
      soraNumberOfVerses: "30",
    ),
    SoraListItemModel(
      soraNumber: 90,
      soraNameEn: "Al-Balad",
      soraNameAr: "البلد",
      soraNumberOfVerses: "20",
    ),
    SoraListItemModel(
      soraNumber: 91,
      soraNameEn: "Ash-Shams",
      soraNameAr: "الشمس",
      soraNumberOfVerses: "15",
    ),
    SoraListItemModel(
      soraNumber: 92,
      soraNameEn: "Al-Layl",
      soraNameAr: "الليل",
      soraNumberOfVerses: "21",
    ),
    SoraListItemModel(
      soraNumber: 93,
      soraNameEn: "Ad-Duha",
      soraNameAr: "الضحى",
      soraNumberOfVerses: "11",
    ),
    SoraListItemModel(
      soraNumber: 94,
      soraNameEn: "Ash-Sharh",
      soraNameAr: "الشرح",
      soraNumberOfVerses: "8",
    ),
    SoraListItemModel(
      soraNumber: 95,
      soraNameEn: "At-Tin",
      soraNameAr: "التين",
      soraNumberOfVerses: "8",
    ),
    SoraListItemModel(
      soraNumber: 96,
      soraNameEn: "Al-Alaq",
      soraNameAr: "العلق",
      soraNumberOfVerses: "19",
    ),
    SoraListItemModel(
      soraNumber: 97,
      soraNameEn: "Al-Qadr",
      soraNameAr: "القدر",
      soraNumberOfVerses: "5",
    ),
    SoraListItemModel(
      soraNumber: 98,
      soraNameEn: "Al-Bayyinah",
      soraNameAr: "البينة",
      soraNumberOfVerses: "8",
    ),
    SoraListItemModel(
      soraNumber: 99,
      soraNameEn: "Az-Zalzalah",
      soraNameAr: "الزلزلة",
      soraNumberOfVerses: "8",
    ),
    SoraListItemModel(
      soraNumber: 100,
      soraNameEn: "Al-Adiyat",
      soraNameAr: "العاديات",
      soraNumberOfVerses: "11",
    ),
    SoraListItemModel(
      soraNumber: 101,
      soraNameEn: "Al-Qari'ah",
      soraNameAr: "القارعة",
      soraNumberOfVerses: "11",
    ),
    SoraListItemModel(
      soraNumber: 102,
      soraNameEn: "At-Takathur",
      soraNameAr: "التكاثر",
      soraNumberOfVerses: "8",
    ),
    SoraListItemModel(
      soraNumber: 103,
      soraNameEn: "Al-Asr",
      soraNameAr: "العصر",
      soraNumberOfVerses: "3",
    ),
    SoraListItemModel(
      soraNumber: 104,
      soraNameEn: "Al-Humazah",
      soraNameAr: "الهمزة",
      soraNumberOfVerses: "9",
    ),
    SoraListItemModel(
      soraNumber: 105,
      soraNameEn: "Al-Fil",
      soraNameAr: "الفيل",
      soraNumberOfVerses: "5",
    ),
    SoraListItemModel(
      soraNumber: 106,
      soraNameEn: "Quraysh",
      soraNameAr: "قريش",
      soraNumberOfVerses: "4",
    ),
    SoraListItemModel(
      soraNumber: 107,
      soraNameEn: "Al-Ma'un",
      soraNameAr: "الماعون",
      soraNumberOfVerses: "7",
    ),
    SoraListItemModel(
      soraNumber: 108,
      soraNameEn: "Al-Kawthar",
      soraNameAr: "الكوثر",
      soraNumberOfVerses: "3",
    ),
    SoraListItemModel(
      soraNumber: 109,
      soraNameEn: "Al-Kafirun",
      soraNameAr: "الكافرون",
      soraNumberOfVerses: "6",
    ),
    SoraListItemModel(
      soraNumber: 110,
      soraNameEn: "An-Nasr",
      soraNameAr: "النصر",
      soraNumberOfVerses: "3",
    ),
    SoraListItemModel(
      soraNumber: 111,
      soraNameEn: "Al-Masad",
      soraNameAr: "المسد",
      soraNumberOfVerses: "5",
    ),
    SoraListItemModel(
      soraNumber: 112,
      soraNameEn: "Al-Ikhlas",
      soraNameAr: "الإخلاص",
      soraNumberOfVerses: "4",
    ),
    SoraListItemModel(
      soraNumber: 113,
      soraNameEn: "Al-Falaq",
      soraNameAr: "الفلق",
      soraNumberOfVerses: "5",
    ),
    SoraListItemModel(
      soraNumber: 114,
      soraNameEn: "An-Nas",
      soraNameAr: "الناس",
      soraNumberOfVerses: "6",
    ),
  ];
}
