import 'package:pedagogik_mahorat/model/test/answer.dart';
import 'package:pedagogik_mahorat/model/test/test.dart';

class TestData {
  static List<TestModel> testList = [
    /// 1
    TestModel(
        question:
            "Pedagoglik kasbining o‘ziga xos mahorat talabining ahamiyati",
        answerList: [
          Answer(
              answer: "O‘quvchilarni har tomonlama tayyorlaydi", isCorrect: 1),
          Answer(
              answer: "Ta’lim-tarbiya samaradorligini ta’minlaydi",
              isCorrect: 0),
          Answer(
              answer: "O‘quvchilarning bilim saviyasini oshiradi",
              isCorrect: 0),
          Answer(answer: "Jamiyat talablarini bajaradi", isCorrect: 0),
        ],
        isSelected: false),

    /// 2
    TestModel(
        question: "Pedagogik mahorat qanday hosil qilinadi?",
        answerList: [
          Answer(
              answer: "O‘qish, o‘rganish, mashq qilish, tajriba", isCorrect: 1),
          Answer(answer: "O‘qish, o‘rganish, mashq qilish", isCorrect: 0),
          Answer(answer: "O‘qish va o‘rganish", isCorrect: 0),
          Answer(answer: "Tajriba asosida", isCorrect: 0),
        ],
        isSelected: false),

    /// 3
    TestModel(
        question: "Pedagogik mahorat nima?",
        answerList: [
          Answer(
              answer:
                  "Pedagogik mahorat-yuksak darajada pedagogik faoliyat yuritishga o‘zini yo‘naltira bilishi uchun zarur bo‘lgan shaxsiy xususiyatlar yig‘indisidir.",
              isCorrect: 1),
          Answer(
              answer: "Kasbiy ko‘nikma va malakalar yig‘indisi.", isCorrect: 0),
          Answer(
              answer:
                  "Kasb bilimdonligi va ularni yoshlarga etkazib berish qobliyati",
              isCorrect: 0),
          Answer(
              answer:
                  "Pedagogik texnika.O‘zini boshqarish, jamoaga va ayrim o‘quvchiga ta’sir ko‘rsatish",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 4
    TestModel(
        question: "O‘qituvchilik kasbining faxrli jihatlarini ko‘rsatining",
        answerList: [
          Answer(
              answer:
                  "Har qanday kasb egasi dastlabki ma’lumotni o‘qituvchidan oladi va jamiyat taraqqiyotiga bevosita hissa qo‘shadi",
              isCorrect: 1),
          Answer(answer: "Yosh avlodni tarbiyalaydi", isCorrect: 0),
          Answer(answer: "O‘qituvchining obro‘si oshadi", isCorrect: 0),
          Answer(
              answer:
                  "O‘qituvchilar uchun davlat tomonidan bir qancha imtiyozlar beriladi",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 5
    TestModel(
        question: "O‘qituvchilik kasbining mas’uliyatli jihatini ko‘rsating",
        answerList: [
          Answer(
              answer:
                  "Jamiyat uning qo‘liga ishongan holda yosh avlodni topshiradi",
              isCorrect: 1),
          Answer(
              answer: "Har qanday soha egasi o‘qituvchi qo‘lida saboq oladi",
              isCorrect: 0),
          Answer(
              answer: "O‘qituvchilar juda katta yuklama ostida ishlaydilar",
              isCorrect: 0),
          Answer(
              answer: "Har bir o‘qituvchi odobli, vijdonan pok bo‘lishi lozim",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 6
    TestModel(
        question: "O‘qituvchilik kasbining ijtimoiy mohiyatini ani",
        answerList: [
          Answer(answer: "Hamma javob to‘g‘ri", isCorrect: 1),
          Answer(
              answer: "Har tomonlama etuk kadrlarni tayyorlash", isCorrect: 0),
          Answer(answer: "Jamiyat taraqqiyotiga hissa qo‘shish", isCorrect: 0),
          Answer(
              answer: "Yosh avlodni har tomonlama kamolga etkazish",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 7
    TestModel(
        question: "O‘qituvchining kiyinish nafosatini qanday tasavvur qilasiz?",
        answerList: [
          Answer(answer: "O‘ziga mos, oddiy, toza", isCorrect: 1),
          Answer(answer: "Moda bo‘yicha", isCorrect: 0),
          Answer(answer: "Qimmatbaho, firmali", isCorrect: 0),
          Answer(answer: "Kiyinishga e’tibor berish shart emas", isCorrect: 0),
        ],
        isSelected: false),

    /// 8
    TestModel(
        question:
            "O‘qituvchi fikrining yo‘nalishini ifodalovchi harakatlarni aniqlang",
        answerList: [
          Answer(answer: "Ma’qullovchi harakatlar", isCorrect: 1),
          Answer(answer: "Psixologik harakatlar", isCorrect: 0),
          Answer(answer: "Tasvirlovchi harakatlar", isCorrect: 0),
          Answer(answer: "Urg‘u beruvchi harakatlar", isCorrect: 0),
        ],
        isSelected: false),

    /// 9
    TestModel(
        question: "Gapirish texnikasining xususiyatini aniqlang",
        answerList: [
          Answer(answer: "Tashqi dunyoga munosabat bildirish", isCorrect: 1),
          Answer(answer: "Fikr almashish", isCorrect: 0),
          Answer(answer: "Nafasni rostlash", isCorrect: 0),
          Answer(answer: "Axborot berish", isCorrect: 0),
        ],
        isSelected: false),

    /// 10
    TestModel(
        question:
            "Auditoriya diqqatini jalb qilishning eng asosiy metodlarition",
        answerList: [
          Answer(answer: "Passiv va tashabbuskorona", isCorrect: 1),
          Answer(answer: "Passiv ", isCorrect: 0),
          Answer(answer: "Tashabbuskorona", isCorrect: 0),
          Answer(answer: "Ta’lim metodlari", isCorrect: 0),
        ],
        isSelected: false),

    /// 11
    TestModel(
        question:
            "Qaysi holatda o‘qituvchi va o‘quvchilar munosabati erkin, ochiqqo‘ngillik va xushfe’llikka amal qilishi zarur?",
        answerList: [
          Answer(answer: "Sinfdan tashqari tadbirda", isCorrect: 1),
          Answer(answer: "Dars jarayonida", isCorrect: 0),
          Answer(answer: "Tarbiyaviy tadbirda", isCorrect: 0),
          Answer(answer: "Ekskursiyada", isCorrect: 0),
        ],
        isSelected: false),

    /// 12
    TestModel(
        question: "Pedagogik hamkorlikning vazifasi nimalardan iborat?",
        answerList: [
          Answer(
              answer: "O‘qituvchi va o‘quvchilarning hamkorlik faoliyati",
              isCorrect: 1),
          Answer(answer: "O‘quvchilarning hamkorlik faoliyati", isCorrect: 0),
          Answer(
              answer:
                  "Bilim olish jarayonidagi o‘qituvchi va o‘quvchi faoliyati",
              isCorrect: 0),
          Answer(
              answer: "O‘qituvchining bilim berishdagi hamkorlik faoliyati",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 13
    TestModel(
        question:
            "O‘qituvchi darsda maqsadga erishish uchun eng avvalo nimaga e’tibor berish  kerak?",
        answerList: [
          Answer(
              answer:
                  "O‘quvchilar bilan pedagogik hamkorlik o‘rnata olishi kerak",
              isCorrect: 1),
          Answer(
              answer: "Dars rejaga asosan tashkil etilishi zarur",
              isCorrect: 0),
          Answer(answer: "Pedagogik mahoratni qo‘llash kerak", isCorrect: 0),
          Answer(
              answer: "Dars asosiy prinsiplarga mos bo‘lish zarur",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 14
    TestModel(
        question: "Tarbiyachining shaxsiy namunasi deganda nimani tushunasiz?",
        answerList: [
          Answer(
              answer: "O‘quvchilarga ibrat-namuna ko‘rsatishini", isCorrect: 1),
          Answer(answer: "Maktabda o‘zini tutishini", isCorrect: 0),
          Answer(answer: "O‘quvchilarni hurmat qilishini", isCorrect: 0),
          Answer(
              answer: "Qiziqarli tadbirlar o‘tkazib turishini", isCorrect: 0),
        ],
        isSelected: false),

    /// 15
    TestModel(
        question: "Tarbiyalanuvchida o‘ziga ishonch hosil qildirish:",
        answerList: [
          Answer(answer: "Faoliyatining natijasi", isCorrect: 1),
          Answer(answer: "Tarbiyachining asosiy maqsadi", isCorrect: 0),
          Answer(answer: "Tarbiyachining vazifasi", isCorrect: 0),
          Answer(answer: "Tarbiyachilik qobiliyati", isCorrect: 0),
        ],
        isSelected: false),

    /// 16
    TestModel(
        question:
            "Pedagogika fanida tarbiyachilik mahorati qaysi qismlarga bo‘lib o‘rganilishi ko‘rsatilgan?",
        answerList: [
          Answer(answer: "Etik (axloqiy) tizimga", isCorrect: 1),
          Answer(answer: "Texnologik tizimga", isCorrect: 0),
          Answer(answer: "Munosabatlar tizimiga", isCorrect: 0),
          Answer(
              answer: "Texnologik, munosabatlar va etik (axloqiy) tizimga",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 17
    TestModel(
        question: "O‘qituvchining nutqiga qanday talablar qo‘yiladi?",
        answerList: [
          Answer(answer: "Ma’naviy, kasbiy, pedagogik", isCorrect: 1),
          Answer(answer: "Madaniy, kasbiy, pedagogik", isCorrect: 0),
          Answer(answer: "Ta’limiy, tarbiyaviy, pedagogik", isCorrect: 0),
          Answer(answer: "Madaniy, tarbiyaviy", isCorrect: 0),
        ],
        isSelected: false),

    /// 18
    TestModel(
        question:
            "Yoshlar tarbiyasi haqidagi nodir asarlardan biri hisoblanadigan «Qobusnoma»ning muallifi kim?",
        answerList: [
          Answer(answer: "Unsurul Maoliy Kaykovus", isCorrect: 1),
          Answer(answer: "Abu Nasr Farobiy", isCorrect: 0),
          Answer(answer: "Abu Rayxon Beruniy", isCorrect: 0),
          Answer(answer: "Burxoniddin Marg‘inoniy", isCorrect: 0),
        ],
        isSelected: false),

    /// 19
    TestModel(
        question: "Pedagogik mahorat tizimiga quyidagilar kiradi…",
        answerList: [
          Answer(
              answer:
                  "Kasbga oid bilimlar,pedagogik qobiliyat, pedagogik texnika",
              isCorrect: 1),
          Answer(
              answer:
                  "Tadbirni tanlash, uni tayyorlash va o‘tkazish, tahlil qilish",
              isCorrect: 0),
          Answer(
              answer:
                  "His-hayajonni anglatuvchi so‘zlar ishlatish, o‘zgalarni tushunish, yolg‘on xushomad qilish",
              isCorrect: 0),
          Answer(
              answer: "Nafas olish, ovoz o‘zgarishi, ravon nutq madaniyati",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 20
    TestModel(
        question: "Notiqlik san’atini Yunonistonda qanday nomlashgan?",
        answerList: [
          Answer(answer: "“San’atlar shohi”", isCorrect: 1),
          Answer(answer: "“Tinglovchiga halovat bag‘ishlovchi”", isCorrect: 0),
          Answer(answer: "“Siyosiy tribuna”", isCorrect: 0),
          Answer(answer: "“Yuksak iqtidorli ovoz sohibi”", isCorrect: 0),
        ],
        isSelected: false),

    /// 21
    TestModel(
        question:
            "Nutq texnikasi bo‘yicha ishlab chiqilgan mashqlar turkumiga qaysilar kiradi?",
        answerList: [
          Answer(
              answer: "Ichki va tashqi nutq, dialogik va monologik nutqlar",
              isCorrect: 1),
          Answer(
              answer: "Yozma va og‘zaki nutq organlari, ichki nutq apparati",
              isCorrect: 0),
          Answer(
              answer: "Ovoz o‘zgarishi, nafas olish, ravon nutq ovoz pasligi",
              isCorrect: 0),
          Answer(
              answer: "Nutq organlari, nutq apparati, nutq odobi nutq aniqligi",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 22
    TestModel(
        question:
            "O‘qituvchi pedagogik nazokatining asosiy mohiyatini belgilang?",
        answerList: [
          Answer(
              answer:
                  "Ixtisoslikka doir vijdon, adolatparvarlik, har qanday vaziyatda o‘zini tuta bilishi, pedagogik oriyat",
              isCorrect: 1),
          Answer(
              answer:
                  "Etnopedagogik tuyg‘ular, milliy qadriyatlar,tavoze va muomala madaniyati",
              isCorrect: 0),
          Answer(
              answer:
                  "O‘qituvchi tashqi o‘quvchilarga demokratik talablar asosida dars o‘tishi",
              isCorrect: 0),
          Answer(
              answer: "Har qanday vaziyatda o‘zini tuta bilishi", isCorrect: 0),
        ],
        isSelected: false),

    /// 23
    TestModel(
        question: "Pedagogik jarayonning harakat vositasi... ?",
        answerList: [
          Answer(answer: "Pedagogik o‘zaro ta’sir", isCorrect: 1),
          Answer(answer: "Faoliyat va jarayonlar", isCorrect: 0),
          Answer(answer: "Pedagogik vaziyat", isCorrect: 0),
          Answer(answer: "Pedagogik hodisa", isCorrect: 0),
        ],
        isSelected: false),

    /// 24
    TestModel(
        question: "Darsning an’anaviy metodlarini ko‘rsating?",
        answerList: [
          Answer(answer: "Og‘zaki, ko‘rgazmali, amaliy", isCorrect: 1),
          Answer(
              answer: "Ko‘rgazmali, mantiqiy, ommaviy metodlari", isCorrect: 0),
          Answer(
              answer:
                  "Og‘zaki,  ko‘rgazmali, o‘z-o‘zini nazorat qilish metodlari",
              isCorrect: 0),
          Answer(
              answer: "Mantiqiy, o‘z-o‘zini nazorat qilish metodlari",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 25
    TestModel(
        question: "Pedagogik jarayonning vazifasi nimalardan iborat?",
        answerList: [
          Answer(answer: "Bilim, ko‘nikma, malaka hosil qilish", isCorrect: 1),
          Answer(
              answer: "O‘quv fanlari mazmunini o‘zlashtirib olish",
              isCorrect: 0),
          Answer(
              answer: "Bilim berish, tarbiyalash, rivojlantirish",
              isCorrect: 0),
          Answer(answer: "Bilish faoliyatini rivojlantirish", isCorrect: 0),
        ],
        isSelected: false),

    /// 26
    TestModel(
        question:
            "“Ustoz muallimsiz qolganda zamon nodonlikdan qora bo‘lardi jahon” baytining muallifi kim?",
        answerList: [
          Answer(answer: "Abu Nasr Forobiy", isCorrect: 1),
          Answer(answer: "Abu Rayhon Beruniy", isCorrect: 0),
          Answer(answer: "Abu Ali ibn Sino", isCorrect: 0),
          Answer(answer: "Abdurahmon Jomiy", isCorrect: 0),
        ],
        isSelected: false),

    /// 27
    TestModel(
        question:
            "O‘zbekiston Respublikasi “Yosh o‘qituvchilar assotsiatsiyasi” qachon tashkil etilgan?",
        answerList: [
          Answer(answer: "1992-yilda", isCorrect: 1),
          Answer(answer: "2009-yilda", isCorrect: 0),
          Answer(answer: "2001-yilda", isCorrect: 0),
          Answer(answer: "2004-yilda", isCorrect: 0),
        ],
        isSelected: false),

    /// 28
    TestModel(
        question:
            "Kasbiy pedagogik mahorat mazmunini “Ilg‘or o‘qituvchi”, “Ijodkor o‘qituvchi”, “Novator o‘qituvchi ” timsolida tasavvur etgan olim kim?",
        answerList: [
          Answer(answer: "Malla Ochilov", isCorrect: 1),
          Answer(answer: "Hikmatulla Abdullayev", isCorrect: 0),
          Answer(answer: "Komil Zaripov", isCorrect: 0),
          Answer(answer: "Cho’lpon", isCorrect: 0),
        ],
        isSelected: false),

    /// 29
    TestModel(
        question:
            "XI-XV asrlarda, Sharq mamlakatlarida notiqlik san’ati maktablarini rivojlantirish hamda o‘sha davr notiqlari haqida ma’lumotlar berilgan asar va uning muallifi.",
        answerList: [
          Answer(answer: "Alisher Navoiy: 'Mahbub ul-qulub'", isCorrect: 1),
          Answer(
              answer: "Kayqovus: «Qobusnoma» (pandnoma, nasihatnoma)",
              isCorrect: 0),
          Answer(
              answer: "R Mahmudov: “Degonimni ulusqa marg‘ub et …”.",
              isCorrect: 0),
          Answer(
              answer: "Mirzakalon Ismoiliy: “Odamiylik qissasi”.",
              isCorrect: 0),
        ],
        isSelected: false),

    /// 30
    TestModel(
        question:
            "Antik davr mutafakkirlaridan kimlar pedagogning kasbiy mahorati va notiqlik san’ati haqida fikr bildirganlar?",
        answerList: [
          Answer(answer: "Sokrat, Platon, Demosfen", isCorrect: 1),
          Answer(answer: "Aristotel, Gegel, Isey, I Sino", isCorrect: 0),
          Answer(answer: "Farg‘oniy,A Navoiy", isCorrect: 0),
          Answer(answer: "Suqrot, Giperid, A Avloniy", isCorrect: 0),
        ],
        isSelected: false),
  ];
}
