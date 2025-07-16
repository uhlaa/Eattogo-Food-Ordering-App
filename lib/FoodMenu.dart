class FoodMenu {
  final String name;
  final String image; // singular

  FoodMenu({required this.name, required this.image});
}

List<FoodMenu> foodMenuList = [
  FoodMenu(name: "Fast\nFood", image: "assets/images/fastfood.png"),
  FoodMenu(name: "Pizza\n& Pasta", image: "assets/images/pizza&pasta.png"),
  FoodMenu(name: "Healthy\nSalads", image: "assets/images/healthysalads.png"),
  FoodMenu(name: "Grilled\n& BBQ", image: "assets/images/grilled&bbq.png"),
  FoodMenu(name: "Lunch\n& Dinner", image: "assets/images/lunch&dinner.png"),
  FoodMenu(name: "Asian\n& Sushi", image: "assets/images/asian&sushi.png"),
  FoodMenu(name: "Noodles\n& Pasta", image: "assets/images/noodles&pasta.png"),
  FoodMenu(
    name: "Dessert\n& Sweets",
    image: "assets/images/dessert&sweets.png",
  ),
  FoodMenu(name: "Coffee\n& Tea", image: "assets/images/coffee&tea.png"),
  FoodMenu(
    name: "Juices\n& Soft Drinks",
    image: "assets/images/juices&softdrinks.png",
  ),
];
