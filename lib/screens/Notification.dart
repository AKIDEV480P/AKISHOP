import 'package:flutter/material.dart';

class NotificationPages extends StatelessWidget {
  const NotificationPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                  "Notification",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: 10, // Replace with the actual number of notifications
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffe395b7),
                  ),
                  child: const Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_cart,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Order Confirmed!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        "You've successfully purchased Iridescence New York. We'll notify you once it's shipped. Thank you for shopping with us!",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
