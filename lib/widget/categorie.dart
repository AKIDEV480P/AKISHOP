import 'package:flutter/material.dart';

class ListeViewCategorie extends StatelessWidget {
  ListeViewCategorie({super.key});
  List<String> categorie = [
    "Clothing",
    "Shoes",
    "Accessories",
    "Jewelry",
    "Beauty & Skincare",
    "Lingerie & Sleepwear",
    "Fitness & Sportswear",
    "Ethnic & Traditional Wear",
    "Home & Lifestyle",
    "Seasonal Wear",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorie.length,
          itemBuilder: (BuildContext contxt, int index) {
            return Card(
              color: const Color(0xffe395b7),
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffe395b7),
                  ),
                  child: Center(
                      child: Text(
                    categorie[index],
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ))),
            );
          }),
    );
  }
}
