import 'package:akishop/screens/login.dart';
import 'package:flutter/material.dart';
// import 'package:your_app/home_page.dart'; // Replace with your actual home page.

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomePage after 3 seconds.
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LogInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffe395b7),
        body: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 300,
              ),
              Text(
                "Welcom To AKISHOP",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(height: 30),
              // Optional: Loading indicator
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ));
  }
}
