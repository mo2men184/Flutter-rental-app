class Item {
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  String? price;

  Item(this.title, this.category, this.location, this.price, this.thumb_url);

  static List<Item> recommendation = [
    Item("Modern House for Renting", "House", "Georgia, USA", '2500',
        "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg"),
    Item("Big Villa", "Villa", "Miami, USA", '3000',
        'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs'),
    Item("Luxios Apartement", "Aprtment", "New York, USA", '800',
        "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs"),
    Item("Small House", "House", "Wesex, London", '1500',
        "https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg?auto=compress&"),
  ];
  static List<Item> nearby = [
    Item("Student Apartement", "Apartement", "Tunis, Tunsia", '150',
        'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs'),
    Item("Small Villa", "Villa", "Tunis, Tunisia", '300',
        "https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs"),
    Item("Family House", "House", "Manouba, Tunis", '200',
        "https://images.pexels.com/photos/8031875/pexels-photo-8031875.jpeg?auto=compress&cs"),
    Item("Province House", "House", "Kef, Tunis", '100',
        "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs"),
  ];
}
