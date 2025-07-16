import 'package:eattogo_food_app/FoodMenu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FoodMenuScreenList extends StatelessWidget {
  const FoodMenuScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          "Food Menu",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left_2),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Iconsax.more),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // 👈 disables scrolling
                shrinkWrap: true,
                itemCount: foodMenuList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
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
          ],
        ),
      ),
    );
  }
}
