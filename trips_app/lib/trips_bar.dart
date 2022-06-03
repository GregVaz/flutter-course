import 'package:flutter/material.dart';
import 'package:trips_app/Place/ui/screens/home_trips.dart';
import 'package:trips_app/User/ui/screens/profile_trips.dart';
import 'search_trips.dart';

class TripsBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TripsBar();
  }
}

class _TripsBar extends State<TripsBar> {
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  int indexTab = 0;

  void onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
          ],
        ),
      ),
    );
  }
}
