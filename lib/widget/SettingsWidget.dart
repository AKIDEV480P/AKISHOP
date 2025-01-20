import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget(
      {super.key,
      required this.loading,
      required this.title,
      required this.icons});
  final Widget loading;
  final String title;
  //dont not reauired
  final Widget icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 90,
        // width: 800,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Card(
            color: const Color(0xffe395b7),
            child: ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xff99d8e0)),
                  child: loading,
                ),
                title: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                trailing: icons),
          ),
        ),
      ),
    );
  }
}
