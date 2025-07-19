import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FoodItemGrid extends StatelessWidget {
  const FoodItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          height: 230,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // For left alignment
            children: [
              Center(
                child: Image.asset(
                  "assets/images/burger.png",
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 5),

              // Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Hum Burger",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),

              // Kcal and Time Row
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Icon(Iconsax.flash, size: 15),
                    SizedBox(width: 5),
                    Text("120 Kcal", style: TextStyle(fontSize: 10)),

                    SizedBox(width: 10),

                    Icon(Iconsax.timer_1, size: 15),
                    SizedBox(width: 5),
                    Text("12 Min", style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
