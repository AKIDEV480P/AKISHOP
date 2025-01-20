import 'package:akishop/widget/SettingsWidget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false; // State for Dark Mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 100,
              decoration: const BoxDecoration(
                  color: Color(0xffe395b7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 90,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Card(
                color: const Color(0xffe395b7),
                child: Center(
                  child: ListTile(
                      leading: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "images/Logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: const Text(
                        "Alae el khoulani ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      subtitle: const Text(
                        "+212675750481",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Center(
                                      child: Text("Edit your Information")),
                                  content: Container(
                                    height: 120,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xffe395b7)),
                                          child: const TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                // label: Text("enter your name"),
                                                hintText: 'alae el khoulani',
                                                contentPadding:
                                                    EdgeInsets.all(15),
                                                hintStyle: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xffe395b7)),
                                          child: const TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                // label: Text("enter your name"),
                                                hintText: '0675750481',
                                                // suffixIcon: ,
                                                contentPadding:
                                                    EdgeInsets.all(15),
                                                hintStyle: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("Cancel")),
                                    FlatButton(
                                        onPressed: () {},
                                        child: const Icon(Icons.edit)),
                                  ],
                                );
                              });
                        },
                        icon: const Icon(Icons.edit),
                        color: const Color(0xff99d8e0),
                      )),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SettingsWidget(
            loading: const Icon(
              Icons.dark_mode,
              color: Colors.white,
            ),
            title: "Dark Mode",
            icons: Switch(
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value; // Toggle Dark Mode
                });
              },
              activeColor: const Color(0xff99d8e0),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey[300],
            ),
          ),
          SettingsWidget(
            loading: const Icon(
              Icons.language,
              color: Colors.white,
            ),
            title: "Language",
            icons: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                )),
          ),
          SettingsWidget(
            loading: const Icon(
              Icons.privacy_tip,
              color: Colors.white,
            ),
            title: "Privacy & Policy",
            icons: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.warning,
                  color: Colors.white,
                )),
          ),
          SettingsWidget(
              loading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: "Sign Out",
              icons: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.login),
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
