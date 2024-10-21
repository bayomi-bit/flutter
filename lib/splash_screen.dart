import 'package:flutter/material.dart';
import 'package:task/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset(
                'assets/im1.png',
                width: 414,
                height: 500,
              ),
            ),
            SizedBox(
              width: 344,
              height: 290,
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          text: const TextSpan(
                              text: "Quick Delivery at \n   your",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold),
                              children: [
                            TextSpan(
                              text: " Doorstep",
                              style: TextStyle(
                                  color: Color(0xffF68989),
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold),
                            )
                          ])),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Home delivery and onlione reservation \n      system for retaurants and cafe",
                      style: TextStyle(
                        color: Color(0xffBDBDBD),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 60,
                      width: 210,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffF68989),
                            elevation: 10,
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
