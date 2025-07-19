class FoodItem {
  final int id;
  final String name;
  final String category;
  final String images; // Changed from String to List<String>
  final String description;
  final double price;
  final int kcal;
  final String time;
  final int rating;
  int quantity;

  FoodItem({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.quantity,
    required this.images,
    this.kcal = 0,
    this.time = '',
    this.rating = 0,
    // Updated to accept a list of strings
  });
}

List<FoodItem> FoodItemList = [
  FoodItem(
    id: 1,
    name: "COTTON - SILK KNIT",
    category: "Men",
    price: 45.95,
    description:
        "Knit top made of a spun cotton and silk blend. Round neck and short sleeves. Ribbed trims.",
    images: "asstes/images/burger.png",
    kcal: 145,
    time: "2 min",
    rating: 4,
    quantity: 1,
  ),
  FoodItem(
    id: 1,
    name: "COTTON - SILK KNIT",
    category: "Men",
    price: 45.95,
    description:
        "Knit top made of a spun cotton and silk blend. Round neck and short sleeves. Ribbed trims.",
    images: "asstes/images/french.png",
    kcal: 145,
    time: "2 min",
    rating: 4,
    quantity: 1,
  ),
];
