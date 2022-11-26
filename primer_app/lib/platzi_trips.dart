import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';


class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips() 
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data:  Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
          textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Colors.indigoAccent))
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ""
            ),
          ],
        ),
      ),
    );
  }
}