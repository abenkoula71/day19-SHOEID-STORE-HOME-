import 'dart:math';

import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List list = ['Men', 'Women', 'Kids', 'Gifts'];
  var curindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SHOEDI',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.black),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo='),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(110, 234, 234, 234),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Search shoes...',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(200, 0, 0, 0),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 70, top: 10, left: 30),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/fr/thumb/8/8e/Swoosh.svg/1200px-Swoosh.svg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 700,
                    width: 700,
                    margin: EdgeInsets.only(left: 180),
                    child: Image.network(
                      'https://github.com/abenkoula71/day19/blob/main/images-removebg-preview%20(1).png?raw=true',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GET DISCOUNT',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.3,
                                fontSize: 22,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Text(
                                'UP TO',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1.3,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                '30%',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 41, 50, 185),
                                    fontSize: 22,
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 41, 50, 185),
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          'New Collection',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      curindex = null;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15, left: 5),
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: curindex == null
                                      ? Colors.blue
                                      : Colors.transparent))),
                      child: Text(
                        'All',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: 1.3),
                      ),
                    ),
                  ),
                  ...List.generate(
                      list.length,
                      (index) => GestureDetector(
                            onTap: () {
                              curindex = index;
                              setState(() {});
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 2,
                                          color: index == curindex
                                              ? Colors.blue
                                              : Colors.transparent))),
                              margin: EdgeInsets.only(right: 15),
                              child: Text(
                                list[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    letterSpacing: 1.3),
                              ),
                            ),
                          ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  ...List.generate(
                      5,
                      (index) => Row(
                            children: [
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(right: 5),
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      height: 120,
                                      width: double.infinity,
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://github.com/abenkoula71/day19/blob/main/images-removebg-preview%20(1).png?raw=true')),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromARGB(
                                              255, 237, 237, 237)),
                                      child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Icon(Icons.favorite_border)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Nike Air Max',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      'Nike Air Max',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Text(
                                      '\$150',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(left: 5),
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      height: 120,
                                      width: double.infinity,
                                      alignment: Alignment.topLeft,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://github.com/abenkoula71/day19/blob/main/images-removebg-preview%20(1).png?raw=true')),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color.fromARGB(
                                              255, 237, 237, 237)),
                                      child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: Icon(Icons.favorite_border)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Nike Air Max',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      'Nike Air Max',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Text(
                                      '\$150',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
