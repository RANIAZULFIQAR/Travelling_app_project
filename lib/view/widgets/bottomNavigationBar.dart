import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<Widget> pages;

  // Constructor to accept pages
  CustomBottomNavigationBar({required this.pages});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0; // Track the selected tab

  // Update the selected index when a tab is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedIndex == 0 ? Colors.blueAccent : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedIndex == 1 ? Colors.blueAccent : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                color: _selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedIndex == 2 ? Colors.blueAccent : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.person,
                color: _selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _selectedIndex == 3 ? Colors.blueAccent : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.location_on,
                color: _selectedIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
