import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petsaurus/core/constants/colors.dart';
import 'package:petsaurus/core/router/app_router.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.location, color: Colors.white),
              SizedBox(width: 8),
              Text('Malang, Jawa Timur', style: TextStyle(color: Colors.white)),
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
                    color: const Color(0xFFE9F0F8),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                height: 400,
                child: Column(
                  children: [
                    //banner image
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://petshopindonesia.com/wp-content/uploads/2024/12/WEB-DESKTOP-PAWCATION-SPECIAL-GIFT-NATURE-BRIDGE-scaled.jpg',
                              ), // Memperbaiki penggunaan Image.network
                              //tinggi
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
