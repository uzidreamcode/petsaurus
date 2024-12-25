import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petsaurus/core/constants/colors.dart';
import 'package:petsaurus/core/router/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  final RootTab currentTab;

  const Homepage({
    Key? key,
    required this.currentTab,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.primary,
      navigationBar: CupertinoNavigationBar(
        //color background
        backgroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
        leading: Center(
          child: Column(
            children: [
              Text(
                'Current Location',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.location, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Malang, Jawa Timur',
                      style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
        ),
      ),
      child: SafeArea(
        //color background
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20),

              //search bar
              Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.97,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE6ECFC),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 20.0),
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 20.0),
                      Text(
                        "Apa yang anda butuhkan?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40),

              Container(
                //jarak antar elemen

                decoration: BoxDecoration(
                  color: Color(0xFFE6ECFC),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  //jarak antar elemen

                  children: [
                    //banner image
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://petshopindonesia.com/wp-content/uploads/2024/12/WEB-DESKTOP-PAWCATION-SPECIAL-GIFT-NATURE-BRIDGE-scaled.jpg',
                              ),
                              //tinggi
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.userDoctor,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'Pet Clinic',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      8.0), // Memberikan jarak antar elemen
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 150,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.pills,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'Pharmacy',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      8.0), // Memberikan jarak antar elemen
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 150,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.hotel,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'Pet Hotel',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.message,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'Pet Talks',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      8.0), // Memberikan jarak antar elemen
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 150,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.dog,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'Training',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      8.0), // Memberikan jarak antar elemen
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              height: 150,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.shoppingCart,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'Pet Shop',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
