import 'package:eattogo_food_app/FoodMenuScreenList.dart';
import 'package:eattogo_food_app/HomeFoodMenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/images/logo.png', width: 85),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Iconsax.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
            ),

            child: Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for your favorite food…',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    prefixIcon: Icon(
                      Iconsax.search_favorite,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear, color: Colors.grey),
                      onPressed: () => _searchController.clear(),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Food Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(FoodMenuScreenList());
                  },
                  child: const Text("See All", style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ),

          HomeFoodMenu(),
        ],
      ),
    );
  }
}
