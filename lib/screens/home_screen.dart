import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of pages for each BottomNavigationBar item
  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    StatisticsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The body will display the page according to the currentIndex
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Set the current index when tapped
          });
        },
        backgroundColor: Colors.blue, // Background color
        selectedItemColor: Colors.blueAccent, // Color of selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.run_circle_outlined),
            label: 'Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq_rounded),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Center the content
      children: [
        Image.asset(
          'assets/home.png',  // Ensure the path matches the one in pubspec.yaml
          width: 700,
          height: 700,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Center the content
      children: [
        Image.asset(
          'assets/data.png',  // Ensure the path matches the one in pubspec.yaml
          width: 700,
          height: 700,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Center the content
      children: [
        Image.asset(
          'assets/Stast.png',  // Ensure the path matches the one in pubspec.yaml
          width: 700,
          height: 700,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // Center the content
      children: [
        Image.asset(
          'assets/sett.png',  // Ensure the path matches the one in pubspec.yaml
          width: 700,
          height: 700,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
