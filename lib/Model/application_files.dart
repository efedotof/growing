import 'package:flutter/material.dart';

class ApplicationFile with ChangeNotifier {
  List<Color?> colorsHabits = [
    const Color(0xFFFEB3EF),
    const Color(0xFF9DDEF2),
    const Color(0xFFF4F378),
    const Color(0xFFFEB3EF),
  ];

  List<String> namesHabits = [
    'Water',
    'Personal care',
    'Steps',
    'Productivity',
  ];

  List<Color?> colorsContainerSetPhysicalCondition = [
    const Color(0xFFFEB3EF),
    const Color(0xFFFAC8F0),
    const Color(0xFFFBE1F8),
    const Color(0xFFBFECFB),
    const Color(0xFF9DDEF2),
  ];
  List<String> nameContainerSetPhysicalCondition = [
    'Name',
    'Age',
    'Gender',
    'Height',
    'Weight',
  ];

  final TextEditingController _controller1ContainerSetPhysicalCondition =
      TextEditingController();
  final TextEditingController _controller2ContainerSetPhysicalCondition =
      TextEditingController();
  final TextEditingController _controller3ContainerSetPhysicalCondition =
      TextEditingController();
  final TextEditingController _controller4ContainerSetPhysicalCondition =
      TextEditingController();
  final TextEditingController _controller5ContainerSetPhysicalCondition =
      TextEditingController();

  late List<TextEditingController> controllersContainerSetPhysicalCondition;


  ApplicationFile() {
    controllersContainerSetPhysicalCondition = [
      _controller1ContainerSetPhysicalCondition,
      _controller2ContainerSetPhysicalCondition,
      _controller3ContainerSetPhysicalCondition,
      _controller4ContainerSetPhysicalCondition,
      _controller5ContainerSetPhysicalCondition,
    ];
  }

  List<Map<String, dynamic>> personalHygieneItems = [
  {
    'category': 'Уход за телом',
    'items': [
      'Гель для душа или мыло',
      'Шампунь для волос',
      'Зубная паста и зубная щетка',
      'Губная помада или бальзам для губ',
      'Крем для тела',
      'Пена или гель для бритья',
    ],
  },
  {
    'category': 'Уход за волосами',
    'items': [
      'Кондиционер',
      'Расческа или щетка для волос',
      'Эластички или заколки',
    ],
  },
  {
    'category': 'Уход за лицом',
    'items': [
      'Очищающее средство или мицеллярная вода',
      'Тоник для лица',
      'Увлажняющий крем',
      'Солнцезащитный крем (если необходимо)',
    ],
  },
  {
    'category': 'Уход за руками и ногтями',
    'items': [
      'Мыло для рук',
      'Крем для рук',
      'Пилка для ногтей',
      'Ножницы для ногтей',
    ],
  },
  {
    'category': 'Гигиеничные принадлежности',
    'items': [
      'Тампоны, прокладки или другие средства гигиены (для женщин)',
      'Влажные салфетки',
      'Вата или ватные диски',
    ],
  },
  {
    'category': 'Антиперспирант или дезодорант',
    'items': ['Дезодорант для тела'],
  },
  {
    'category': 'Одноразовые средства',
    'items': [
      'Зубочистки',
      'Бритвенный станок или лезвие (если используется)',
      'Ватные палочки',
    ],
  },
  {
    'category': 'Одежда',
    'items': [
      'Свежее белье',
      'Чистые носки и колготки',
      'Рубашка или футболка',
    ],
  },
  {
    'category': 'Средства для интимной гигиены',
    'items': [
      'Гель для интимной гигиены',
      'Средства для ухода за биоциклом (если необходимо)',
    ],
  },
  {
    'category': 'Средства для стоматологической гигиены',
    'items': ['Нить для зубов', 'Ополаскиватель для полости рта'],
  },
];

  List<Map<String, dynamic>> productivityData = [
  {
    'aspect': 'Учеба',
    'progress': 0,
    'description': 'Активное обучение новым навыкам и предметам.',
  },
  {
    'aspect': 'Работа',
    'progress': 0,
    'description': 'Эффективное выполнение задач на работе.',
  },
  {
    'aspect': 'Здоровье',
    'progress': 0,
    'description': 'Забота о физическом и психическом здоровье.',
  },
  {
    'aspect': 'Личное развитие',
    'progress': 0,
    'description': 'Постоянное стремление к личному росту.',
  },
  {
    'aspect': 'Спорт',
    'progress': 0,
    'description': 'Регулярные тренировки для поддержания физической формы.',
  },
  {
    'aspect': 'Творчество',
    'progress': 0,
    'description': 'Развитие творческих навыков и хобби.',
  },
  {
    'aspect': 'Семейные отношения',
    'progress': 0,
    'description': 'Ведение здоровых и поддерживающих отношений с семьей.',
  },
  {
    'aspect': 'Социальная активность',
    'progress': 0,
    'description': 'Участие в общественной и социальной жизни.',
  },
  {
    'aspect': 'Финансовая стабильность',
    'progress': 0,
    'description': 'Управление финансами и достижение финансовой стабильности.',
  },
  {
    'aspect': 'Эмоциональное благополучие',
    'progress': 0,
    'description': 'Управление эмоциями и стремление к внутренней удовлетворенности.',
  },
  {
    'aspect': 'Волонтёрская деятельность',
    'progress': 0,
    'description': 'Участие в волонтёрских и благотворительных мероприятиях.',
  },
  {
    'aspect': 'Профессиональный рост',
    'progress': 0,
    'description': 'Стремление к повышению квалификации и профессиональному развитию.',
  },
  {
    'aspect': 'Тайм-менеджмент',
    'progress': 0,
    'description': 'Эффективное управление временем и задачами.',
  },
  {
    'aspect': 'Целеустремленность',
    'progress': 0,
    'description': 'Ясное определение целей и стремление к их достижению.',
  },
  {
    'aspect': 'Отдых и релаксация',
    'progress': 0,
    'description': 'Правильный отдых для поддержания энергии и баланса.',
  },
  {
    'aspect': 'Спонтанные приключения',
    'progress': 0,
    'description': 'Участие в неожиданных и увлекательных событиях.',
  },
  {
    'aspect': 'Обучение новым языкам',
    'progress': 0,
    'description': 'Изучение иностранных языков для расширения кругозора.',
  },
  {
    'aspect': 'Экологическое сознание',
    'progress': 0,
    'description': 'Принятие мер для заботы об окружающей среде.',
  },
  {
    'aspect': 'Управление стрессом',
    'progress': 0,
    'description': 'Развитие навыков управления стрессом в повседневной жизни.',
  },
  {
    'aspect': 'Социальная ответственность',
    'progress': 0,
    'description': 'Активное участие в социальных и благотворительных инициативах.',
  },
  {
    'aspect': 'Планирование будущего',
    'progress': 0,
    'description': 'Разработка планов и целей на будущее.',
  },
  {
    'aspect': 'Участие в технологических проектах',
    'progress': 0,
    'description': 'Активное участие в создании и развитии технологических проектов.',
  },
  {
    'aspect': 'Исследовательская деятельность',
    'progress': 0,
    'description': 'Проведение исследований в области интересов.',
  },
  {
    'aspect': 'Уход за домашними питомцами',
    'progress': 0,
    'description': 'Забота о здоровье и комфорте домашних животных.',
  },
];

  List<Map<String, dynamic>> bodyneedsScreenData = [
    {
       'category': 'Activity level',
       'items': ['Very active', 'Moderate activity', 'Light activity', 'Sedentary'],
    },
    {
      'category': 'Heart rate training zone',
       'items': ['Peak', 'Cardio', 'Fat burning', 'Warm-up'],
    },
  ];

  List<String> assetsProfile = [
    'assets/icons/star_checkmark.svg',
    'assets/icons/darts.svg',
    'assets/icons/fluffy_bad.svg',
    'assets/icons/sun.svg',
  ];
    List<String> namesGrow = [
    'Perfect day',
    'Good day',
    'Bad day',
  ];
  List<int> itemsGrow = [
    4,5,7
  ];
  List<Color?> colorsGrow = [
    const Color(0xFFFEB3EF),
    const Color(0xFFB4EDFF),
    const Color(0xFFCBCBCB),
  ];

   List<String> nameContainerChange = [
    'water',
    'steps',
    'sport',
    'reading',
    'sleep',
  ];

  List<String> imagesContainerChange = [
    'assets/ImageToToday/water.png',
    'assets/ImageToToday/steps.png',
    'assets/ImageToToday/sport.png',
    'assets/ImageToToday/reading.png',
    'assets/ImageToToday/sleep.png'
  ];


}
