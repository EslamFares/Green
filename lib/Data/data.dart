import 'package:flutter/material.dart';

class DataSource {
  static List<Map<String, dynamic>> departInfo = [
    {
      'name': 'النمو الشخصى',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567099617.png'
    },
    {
      'name': 'السياسة والإقتصاد',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1583419210.png',
    },
    {
      'name': 'ريادة الأعمال',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567099523.png'
    },
    {
      'name': 'التسويق والمبيعات',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567099687.png',
    },
    {
      'name': 'الصحة واللياقة',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567099108.png'
    },
    {
      'name': 'القيادةوالإدارة',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567099408.png'
    },
    {
      'name': 'مهارات التواصل',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567102471.png'
    },
    {
      'name': 'الفكر والفلسفه',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1583418629.png'
    },
    {
      'name': 'المال والاستثمار',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567101650.png'
    },
    {
      'name': 'علوم إسلامية',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1583419099.png'
    },
    {
      'name': 'نفس واجتماع',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567101966.png'
    },
    {
      'name': 'السير والتاريخ',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567102266.png'
    },
    {
      'name': 'العلوم والمعارف',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567101867.png'
    },
    {
      'name': 'الأبوة والأمومه',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567102329.png'
    },
    {
      'name': 'العلاقات العاطفية',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567101779.png'
    },
    {
      'name': 'التكنولوجيا والمستقبل',
      'icon': 'https://www.a5dr.com/a5dr/public/images/category/1567102383.png'
    },
  ];
  // static List namesDepart = [
  //   'النمو الشخصى',
  //   'السياسة والإقتصاد',
  //   'ريادة الأعمال',
  //   'التسويق والمبيعات',
  //   'الصحة واللياقة',
  //   'القيادةوالإدارة',
  //   'مهارات التواصل',
  //   'الفكر والفلسفه',
  //   'المال والاستثمار',
  // ];
  // static List iconImg = [
  //   1'https://www.a5dr.com/a5dr/public/images/category/1567099523.png',
  //  2 'https://www.a5dr.com/a5dr/public/images/category/1567099687.png',
  //  3 'https://www.a5dr.com/a5dr/public/images/category/1567099108.png',
  //   4'https://www.a5dr.com/a5dr/public/images/category/1567099408.png',
  //  5 'https://www.a5dr.com/a5dr/public/images/category/1567102471.png',
  //   6'https://www.a5dr.com/a5dr/public/images/category/1567101650.png',
  //  7 'https://www.a5dr.com/a5dr/public/images/category/1583418629.png',
  //  8 'https://www.a5dr.com/a5dr/public/images/category/1583419099.png',
  //  9 'https://www.a5dr.com/a5dr/public/images/category/1567101966.png',
  //  10 'https://www.a5dr.com/a5dr/public/images/category/1567102266.png',
  //  11 'https://www.a5dr.com/a5dr/public/images/category/1567101867.png',
  //  12 'https://www.a5dr.com/a5dr/public/images/category/1567102329.png',
  //  13 'https://www.a5dr.com/a5dr/public/images/category/1567101779.png',
  //  14 'https://www.a5dr.com/a5dr/public/images/category/1567102383.png',
  //  15 'https://www.a5dr.com/a5dr/public/images/category/1583419210.png'
  // ];
  static List iconDepart = [
    Icons.insert_chart,
    Icons.monetization_on,
    Icons.work,
    Icons.person_outline,
    Icons.fitness_center,
    Icons.headset_mic,
    Icons.people,
    Icons.payment,
    Icons.favorite,
  ];

  static List titleBookreviwe = [
    'صناعة اللوم',
    'فخ السعادة',
    'الغيرة والخيانه',
    'تكوين المفكر',
    'دماغك تحت تأثير الباحية',
    'داء إرضاء الاخرين',
    'كيف تتدث فيصغى إاليك الصغار',
    'الهشاشه النفسية',
    'أدر مهامك اليومية',
    'رجولة القلب'
        '',
  ];
  static List booksInfo = [
    {
      'name': 'علم نفس قرانى',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603649889.jpg',
      'writer': 'مصطفي محمود',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': 'روح الإجتماع',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603663599.jpg',
      'writer': 'غوستاف لوبون',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': 'علم النفس الشرعى',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603872039.jpg',
      'writer': 'ديفيد كانتر',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': 'المرشد في طب النفس',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603663147.jpg',
      'writer': ' نخبة من أستاذة الطب النفسي',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': 'السعادة تنبع من الداخل ',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603662107.jpg',
      'writer': 'جان باول اليسوعى',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': 'دماغك تحت تأثير الاجابية ',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603661696.jpg',
      'writer': 'جاري ويلسون',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': 'الهشاشة النفسيه',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603660884.jpg',
      'writer': 'الين مازليش واديل نابلر',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': ' أدر مهامك اليومية',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603660528.jpg',
      'writer': 'جوسلين كية جلاى',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
    {
      'name': ' نظام التفاهة',
      'imgurl': 'https://www.a5dr.com/a5dr/public/images/books/1603649155.jpg',
      'writer': 'ألان دونو',
      'content':
          'لا شك ان هناك اختلافا بين علم النفس والدين في علاج الأمراض النفسية .فعلم النفس لا يري إمكنا لتبديل النفس أو تغيرها جوهرياز لأنها تأخذ شكلها النهائي في السنوات الخمس الأولى من الطفولة ....',
    },
  ];
  static List imageMonthe=[
    'https://www.a5dr.com/a5dr/public/images/groups/1601530468.jpg',
    'https://www.a5dr.com/a5dr/public/images/groups/1604204616.jpg',
    'https://www.a5dr.com/a5dr/public/images/groups/1596347251.png',
    'https://www.a5dr.com/a5dr/public/images/groups/1601530590.jpg',
    'https://www.a5dr.com/a5dr/public/images/groups/1601530679.jpg',
    'https://www.a5dr.com/a5dr/public/images/groups/1593578745.png',
    'https://www.a5dr.com/a5dr/public/images/groups/1601530644.jpg',
    'https://www.a5dr.com/a5dr/public/images/groups/1601530785.jpg',
    'https://www.a5dr.com/a5dr/public/images/groups/1595693139.png',
    'https://www.a5dr.com/a5dr/public/images/groups/1573237227.jpg'
  ];
  static List bookReviewsicon=[
    'https://i.ibb.co/qDnWR55/a5dr-com-367-1604014371.jpg',
    'https://i.ibb.co/56zfD7H/a5dr-com-130-1601243055.jpg',
    'https://i.ibb.co/M5HKBTN/a5dr-com-413-1602590201.jpg',
    'https://i.ibb.co/tByBPMZ/a5dr-com-739-1603323458.jpg',
    'https://i.ibb.co/j5LmvxJ/a5dr-com-742-1600733107.jpg',
    'https://i.ibb.co/r2rHMmG/a5dr-com-750-1600384180.jpg',
    'https://i.ibb.co/vvC6mSW/a5dr-com-869-1602065283.jpg',
    'https://i.ibb.co/KVDNkkH/a5dr-com-960-1603750999.jpg',
    'https://i.ibb.co/qDnWR55/a5dr-com-367-1604014371.jpg',
    'https://i.ibb.co/56zfD7H/a5dr-com-130-1601243055.jpg',
    'https://i.ibb.co/M5HKBTN/a5dr-com-413-1602590201.jpg',
  ];
}
