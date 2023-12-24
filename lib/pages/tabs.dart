import 'package:flutter/material.dart';

import '../components/styles.dart' as style;
import '/pages/favorite.dart';
import '/pages/home.dart';
import '/pages/my_profile.dart';
import '/pages/my_trip.dart';

class TabsExample extends StatefulWidget {
  const TabsExample({Key? key}) : super(key: key);
  static const String id = 'Tabs';

  @override
  State<TabsExample> createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: (TabBar(
            labelColor: style.appColor,
            unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
            indicatorColor: Colors.transparent,
            labelPadding: const EdgeInsets.symmetric(horizontal: 0),
            labelStyle: const TextStyle(
              fontFamily: 'regular',
              fontSize: 12,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined,
                    color: _currentIndex == 0
                        ? style.appColor
                        : const Color.fromARGB(255, 185, 196, 207)),
              ),
              Tab(
                icon: Icon(Icons.favorite_border,
                    color: _currentIndex == 1
                        ? style.appColor
                        : const Color.fromARGB(255, 185, 196, 207)),
              ),
              Tab(
                icon: Icon(Icons.wallet_travel,
                    color: _currentIndex == 2
                        ? style.appColor
                        : const Color.fromARGB(255, 185, 196, 207)),
              ),
              Tab(
                icon: Icon(Icons.calendar_month,
                    color: _currentIndex == 3
                        ? style.appColor
                        : const Color.fromARGB(255, 185, 196, 207)),
              ),
              Tab(
                icon: Icon(Icons.person_outline,
                    color: _currentIndex == 4
                        ? style.appColor
                        : const Color.fromARGB(255, 185, 196, 207)),
              ),
            ],
          )),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            Favorite(),
            Home(),
            MyTrip(),
            MyProfile(),
          ],
        ),
      ),
    );
  }
}
