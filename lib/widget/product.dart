import 'package:akishop/widget/Product_info.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  ProductGridView({super.key});

  final List<String> images = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
    'images/7.jpg',
    'images/8.jpg',
    'images/9.jpg',
    'images/10.jpg',
    // 'images/12.jpg',
  ];

  final List<String> productNames = [
    'Iridescence New York Master 1',
    'Iridescence New York Master 2',
    'Iridescence New York Master 3',
    'Iridescence New York Master 4',
    'Iridescence New York Master 5',
    'Iridescence New York Master 6',
    'Iridescence New York Master 7',
    'Iridescence New York Master 8',
    'Iridescence New York Master 9',
    'Iridescence New York Master 10',
  ];

  final List<String> prices = [
    '178.99',
    '128.99',
    '148.99',
    '158.99',
    '101.99',
    '144.99',
    '12.99',
    '154.99',
    '164.99',
    '164.99',
  ];
  final List<String> descriptions = [
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
    'Experience the elegance of modern design with the Iridescence New York Master 1. Featuring a sleek, minimalist aesthetic, this product is crafted to blend luxury with functionality. Perfect for any space, its durable materials ensure long-lasting quality, while its timeless style elevates your surroundings effortlessly.',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 3 / 4,
        mainAxisExtent: 270,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductInfoPage(
                  image: images[index],
                  productName: productNames[index],
                  price: prices[index],
                  description: descriptions[index],
                ),
              ),
            );
          },
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0xff99d8e0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(productNames[index]),
                  subtitle: Text(
                    prices[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
