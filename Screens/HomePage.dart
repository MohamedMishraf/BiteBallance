import 'package:bite_balance/Screens/MyProfile.dart';
import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'SearchScreen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getScreen(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
      ),
    );
  }

  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return const Dashboard();
      case 1:
        return const SearchScreen();
      case 2:
        return const MyProfile();
      default:
        return const Dashboard();
    }
  }
}

