import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                    radius: 25,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Yousef Mohamed Sayed",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(color: Colors.black12, width: 2)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    Text(
                      'Talabat',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.w900,
                          fontSize: 23),
                    ),
                    SizedBox(width: 85,),
                    CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      radius: 22.4,
                      child: Icon(Icons.search, size: 30, color: Colors.white
                        ,),
                    ),
                  ]),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepOrangeAccent,
                ),
                width: double.infinity,
                height: 160,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talabat Market\n20 mins delivery",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          "\nbla bla bla bla bla bla bla \nbla bla bla",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(top: 10),
                          width: 100,
                          height: 30,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        // width: 180,
                        height: 160,
                        margin: EdgeInsets.only(left: 40),
                        child: Image.asset(
                          "assets/images/cart.png",
                          fit: BoxFit.contain,
                        )),
                  ],
                ),
              ),
              Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesImages("first"),
                    CategoriesImages("second"),
                    CategoriesImages("third"),
                    CategoriesImages("fourth"),
                    CategoriesImages("fifth"),
                    CategoriesImages("sixth"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Offers",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 205,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.w900),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.deepOrangeAccent,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //SizedBox(height: 10,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      OffersImages("offer1"),
                      OffersImages("offer2"),
                      OffersImages("offer3"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 0,
        //backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepOrangeAccent,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              //color: Colors.black38,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
                // color: Colors.black38,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.discount_outlined,
                //color: Colors.black38,
              ),
              label: 'Vouchers'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_add_outlined,
                //color: Colors.black38,
              ),
              label: 'Offers'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                //color: Colors.black38,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}

class CategoriesImages extends StatelessWidget {
  String imageName = "";
  CategoriesImages(this.imageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 10),
      width: 150,
      height: 150,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        "assets/images/" + imageName + ".jpg",
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        //color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

class OffersImages extends StatelessWidget {
  String imageName = "";
  OffersImages(this.imageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 5),
      width: double.infinity,
      height: 200,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        "assets/images/" + imageName + ".jpg",
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        //color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
