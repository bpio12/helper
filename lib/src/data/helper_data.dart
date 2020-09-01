class Helper {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double ratings;

  Helper(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.ratings});
}

final helpers = [
  Helper(
    id: "1",
    name: "Bianca",
    imagePath: "assets/images/boston",
    category: "1",
    price: 22.0,
    ratings: 99.0,
  ),
  Helper(
    id: "2",
    name: "Julia",
    imagePath: "assets/images/me",
    category: "2",
    price: 12.0,
    ratings: 89.0,
  ),
];
