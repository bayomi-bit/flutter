import 'package:flutter/material.dart';
import 'package:task/home_screen.dart';
import 'package:task/model_item.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              const Text("Melting Cheese",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w600)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("\$9.47",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w500)),
              ),
              Image.asset(
                'assets/Pizza1.png',
                fit: BoxFit.contain,
                width: 268,
                height: 272,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                count--;
                              });
                            },
                            style: IconButton.styleFrom(
                              backgroundColor: const Color(0xffF68989),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            icon: Image.asset("assets/Subtract.png")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        count.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                            style: IconButton.styleFrom(
                              backgroundColor: const Color(0xffF68989),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            icon: Image.asset("assets/Plus Math.png")),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.9"),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(
                      Icons.local_fire_department,
                      color: Color(0xffFFCC4D),
                    ),
                    Text("44 Calories"),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(Icons.timer, color: Colors.blue),
                    Text("20 - 30 min"),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: SizedBox(
                  height: 49,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color(0xffF68989),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
