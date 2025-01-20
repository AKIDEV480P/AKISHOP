import 'package:akishop/widget/abbbar.dart';
import 'package:akishop/widget/categorie.dart';
import 'package:akishop/widget/product.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(username: 'Alae'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const AppBarCustom(username: "Alae el Khoulani"),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xffe395b7),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: ListeViewCategorie(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular products",
                style: TextStyle(
                  color: Color(0xffe395b7),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),
            // Show the ProductGridView directly in the scrollable area
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ProductGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
