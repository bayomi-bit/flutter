import 'package:flutter/material.dart';
import 'package:task/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isVisible = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
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
          Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                            ),
                            fillColor: const Color(0xffEDF3F5),
                            filled: true,
                            disabledBorder: InputBorder.none,
                            hintText: "Enter your Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ))),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextFormField(
                        obscureText: isVisible,
                        controller: password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Password";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                          fillColor: const Color(0xffEDF3F5),
                          filled: true,
                          hintText: "Enter your Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            icon: Icon(
                              isVisible
                                  ? Icons.visibility_off
                                  : Icons.remove_red_eye,
                              color: const Color(0xffF68989),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        )),
                  ],
                ),
              )),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: SizedBox(
              height: 49,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: const Color(0xffF68989),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
