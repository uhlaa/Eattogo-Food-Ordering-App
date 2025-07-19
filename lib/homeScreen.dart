import 'package:eattogo_food_app/FoodMenu.dart';
import 'package:eattogo_food_app/HomeFoodMenuScreen.dart';
import 'package:eattogo_food_app/SearchBarBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'FoodMenuScreenList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarBox(_searchController),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: HomeFoodMenuScreen(),
            ),
            const SizedBox(height: 10),
            Container(color: Colors.amber, height: 400, width: 100),
            const SizedBox(height: 10),
            Container(color: Colors.amber, height: 400, width: 100),
          ],
        ),
      ),
    );
  }

  
}
