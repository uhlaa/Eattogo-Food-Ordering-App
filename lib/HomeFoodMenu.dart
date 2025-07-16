import 'package:eattogo_food_app/FoodMenu.dart';
import 'package:flutter/material.dart';

class HomeFoodMenu extends StatelessWidget {
  const HomeFoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          physics:
              const NeverScrollableScrollPhysics(), // 👈 disables scrolling
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // two items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 90 / 50,
          ),
          itemBuilder: (BuildContext context, int index) {
            final foodMenu = foodMenuList[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(foodMenu.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text(
                    foodMenu.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
