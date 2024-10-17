import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
                  child: Image.asset(
            'assets/image.jpg',
          ))),
          Text(
            'Hello I am',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Shafiq 7bar',
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ux Designer &  Developer ',
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: 120,
            height: 30,
            margin: EdgeInsets.all(25),
            child: TextButton(
              child: Text(
                'About Me',
                style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    fontSize: 10.0),
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 370,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '42',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0, left: 3),
                                    child: Text(
                                      'projects',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black26),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    '712',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0, left: 3),
                                    child: Text(
                                      'likes',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black26),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    '29',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0, left: 3),
                                    child: Text(
                                      'messages',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black26),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Specialized in",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                          )),
                                    ),
                                    Text("View All",
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ]),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/ic1.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.white,
                                          ),
                                          Text('Consept',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      )),
                                  Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/ic2.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.white,
                                          ),
                                          Text('Ui & Ux',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      )),
                                  Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/ic3.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.white,
                                          ),
                                          Text('design',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/ic4.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.white,
                                          ),
                                          Text('search',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      )),
                                  Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/ic5.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.white,
                                          ),
                                          Text('develop',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      )),
                                  Container(
                                      width: 100,
                                      height: 105,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/ic6.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.white,
                                          ),
                                          Text('animation',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/insta.webp',
                    width: 30,
                    height: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/linked.png',
                    width: 20,
                    height: 31,
                    color: Colors.white,
                  )),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  size: 20,
                ),
                color: Colors.white,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/twiter.png',
                    width: 20,
                    height: 30,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
