import 'package:akishop/main.dart';
import 'package:akishop/screens/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 180,
            ),
            const Center(
              child: Icon(
                Icons.person_rounded,
                color: Color(0xffe395b7),
                size: 100,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Enter your mail",
              style: TextStyle(
                  color: Color(0xffe395b7),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              // width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffe395b7)),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'alaeelkhoulani1@gmail.com',
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      contentPadding: EdgeInsets.symmetric(horizontal: 30)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Password",
              style: TextStyle(
                color: Color(0xffe395b7),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              // width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffe395b7)),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '**************',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 30)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                },
                child: Container(
                  width: 290,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffe395b7)),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                        text: 'if you don\'t have account ',
                        style:
                            TextStyle(color: Color(0xffe395b7), fontSize: 16)),
                    TextSpan(
                        text: '  SignUp! ',
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          })
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text("OR",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffe395b7),
                  ),
                  child: const Icon(
                    Icons.facebook,
                    size: 50,
                    color: Color(0xffffffff),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffe395b7),
                  ),
                  child: const Icon(
                    Icons.email,
                    size: 50,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
