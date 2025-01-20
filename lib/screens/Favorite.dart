import 'package:flutter/material.dart';

import '../widget/Product_info.dart';

class FavoritePages extends StatelessWidget {
  const FavoritePages({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteImages = favoriteProducts.toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xffe395b7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "FAVORITE",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Favorites Grid
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: favoriteImages.isEmpty
                  ? const Center(
                      child: Text(
                        "No favorites yet!",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns in the grid
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1, // Aspect ratio of each grid item
                      ),
                      itemCount: favoriteImages.length,
                      itemBuilder: (context, index) {
                        final imagePath = favoriteImages[index];
                        return Column(
                          children: [
                            // Image Container
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: IconButton(
                                onPressed: () {
                                  favoriteProducts.remove(
                                      imagePath); // Remove from favorites
                                  (context as Element)
                                      .markNeedsBuild(); // Refresh UI
                                },
                                icon: const Icon(Icons.delete),
                                color: Colors.red,
                                iconSize: 24,
                              ),
                            )
                            // Remove Button
                          ],
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
