import 'package:akishop/screens/Cart.dart';
import 'package:akishop/screens/Favorite.dart';
import 'package:akishop/screens/Notification.dart';
import 'package:akishop/screens/Settings.dart';
import 'package:akishop/screens/home.dart';
import 'package:akishop/screens/splach_screens.dart';
// import 'package:akishop/screens/splach_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AkiShop',
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePagesState();
}

class _HomePagesState extends State<MainPage> {
  int myindex = 0;
  List<Widget> pages = [
    const HomePages(),
    const FavoritePages(),
    const Cartpages(),
    const NotificationPages(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          currentIndex: myindex,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          unselectedItemColor: const Color(0xffe395b7),
          selectedItemColor: const Color(0xff99d8e0),
          selectedFontSize: 16,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: pages.elementAt(myindex),
    );
  }
}
