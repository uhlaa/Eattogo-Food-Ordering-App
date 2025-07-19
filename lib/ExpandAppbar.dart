import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ExpandableAppBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  ExpandableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            pinned: true,
            floating: false,
            expandedHeight: 125,
            backgroundColor: const Color.fromARGB(255, 233, 23, 23),
            elevation: 0,
            title: Image.asset('assets/images/logo.png', width: 85),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Iconsax.shopping_cart),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(
                  top: 85,
                  left: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search for your favorite food…',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
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
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(title: Text('Food item #$index'));
            }, childCount: 30),
          ),
        ],
      ),
    );
  }
}
