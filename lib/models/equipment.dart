class Equipment {
  String id;
  String title;
  String category;
  int price;
  String information;
  List<String> day;
  int duration;
  String imageUrl;
  bool isFavorit;

  Equipment(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.information,
      required this.day,
      required this.duration,
      required this.imageUrl,
      this.isFavorit = false});
}
