import 'package:flutter/material.dart';

final Set<String> favoriteProducts =
    {}; // Store image paths of favorite products
// Holds the product names or unique identifiers

class ProductInfoPage extends StatelessWidget {
  final String image;
  final String productName;
  final String price;
  final String description;

  const ProductInfoPage({
    super.key,
    required this.image,
    required this.productName,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (favoriteProducts.contains(image)) {
            favoriteProducts
                .remove(image); // Remove the image if already in favorites
          } else {
            favoriteProducts.add(image); // Add the image to favorites
          }
          (context as Element).markNeedsBuild(); // Refresh the UI
        },
        backgroundColor: const Color(0xffe395b7),
        child: Icon(
          favoriteProducts.contains(image)
              ? Icons.favorite
              : Icons.favorite_border,
          color: favoriteProducts.contains(image) ? Colors.red : Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text(
          productName,
          style: const TextStyle(fontSize: 17),
        ),
        backgroundColor: const Color(0xffe395b7),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '\$$price',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffe395b7)),
                  child: const Center(
                      child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
