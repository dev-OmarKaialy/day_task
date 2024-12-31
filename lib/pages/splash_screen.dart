import 'package:day_task/pages/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212832),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/background.png'),
            const SizedBox(
              height: 10,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Manage Your Task with\n'),
                  TextSpan(
                      text: 'DAYTASK',
                      style: TextStyle(color: Color(0xfffed36a))),
                ],
              ),
              style: TextStyle(
                  fontSize: 41, fontFamily: 'Pilat', color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 60),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    backgroundColor: const Color(0xfffed36a)),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ));
                },
                child: const Text(
                  'Let\'s Go',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
