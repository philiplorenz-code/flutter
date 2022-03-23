class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  double money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/design_course/bildtischreservieren.png',
      title: 'Tisch reservieren',
      lessonCount: 12,
      money: 7,
      rating: 4.8,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/design_course/pizzamargherita.png',
      title: 'Pizza Margherita',
      lessonCount: 7,
      money: 7,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/pizzamozzarella.png',
      title: 'Pizza Mozzarella',
      lessonCount: 8,
      money: 8,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/design_course/pizzafunghi.png',
      title: 'Pizza Funghi',
      lessonCount: 8,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/design_course/pizzavegetarisch.png',
      title: 'Pizza Vegetarisch',
      lessonCount: 8,
      money: 8,
      rating: 4.9,
    ),
  ];
}
