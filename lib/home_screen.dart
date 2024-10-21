import 'package:flutter/material.dart';
import 'package:task/model_item.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ModelItem> list = [
    ModelItem("Melting Cheese", "assets/Pizza1.png", "44 calories", "\$9.5"),
    ModelItem(
        "Pizza Capricciosa", "assets/Pizza2.png", "54 calories", "\$12.55"),
    ModelItem("Melting Cheese", "assets/Pizza1.png", "44 calories", "\$9.5")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xffF68989),
              ),
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi Alex ",
              style: TextStyle(
                  color: Color(0xffF68989),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Find your Delicious Food ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(children: [
              Column(children: [
                Image.asset('assets/FoodType1.png'),
                const Text('Italian',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500))
              ]),
              Column(children: [
                Image.asset('assets/FoodType2.png'),
                const Text('Japanese',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500))
              ]),
            ]),
            const SizedBox(
              height: 70,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Popular',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              width: double.infinity,
              height: 272,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailsScreen()));
                        });
                      },
                      child: SizedBox(
                        width: 162,
                        height: 272,
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text(list[index].name,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(list[index].calories,
                                    style: const TextStyle(
                                        color: Color(0xffF68989),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  list[index].image,
                                  width: 145,
                                  height: 145,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(list[index].price,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 50,
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
    );
  }
}
