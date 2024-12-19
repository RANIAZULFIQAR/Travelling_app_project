import 'package:flutter/material.dart';
import 'package:travelling_app/view/hotel.dart';
import 'package:travelling_app/view/food.dart';
import 'package:travelling_app/view/snow.dart';
import 'package:travelling_app/view/luxurious.dart';
import 'package:travelling_app/view/picture_1.dart';
import 'package:travelling_app/view/picture_2.dart';
import 'widgets/buildImagecard.dart';
import 'widgets/buildCategoryButton.dart';
import 'controllers/search_service.dart';
import 'package:travelling_app/view/second_screen.dart';
import 'package:travelling_app/view/h1.dart';
import 'package:travelling_app/view/h2.dart';
import 'package:travelling_app/view/h3.dart';
import 'package:travelling_app/view/h4.dart';
class Hotel extends StatefulWidget {
  const Hotel({super.key});
  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  int _selectedIndex = 0;

  // List of pages for each bottom navigation item
  static List<Widget> _pages = <Widget>[
    HomePage(),
    HeartPage(),
    ContactPage(),
    LocationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  SearchService _searchService = SearchService();
  List<String> _filteredItems = [];
  TextEditingController _searchController = TextEditingController();

  void _filterSearchResults(String query) {
    setState(() {
      _filteredItems = _searchService.filterSearchResults(query);
    });
    print(_filteredItems);  // Debugging line to check the filtered items
  }

  void _handleSuggestionTap(String selectedItem) {
    _searchService.handleSuggestionTap(selectedItem, context);
    setState(() {
      _searchController.text = selectedItem;
      _filteredItems.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Hotels of Aspen',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_on, color: Colors.blueAccent),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              TextField(
                controller: _searchController,
                onChanged: (value) {
                  _filterSearchResults(value);
                },
                decoration: InputDecoration(
                  hintText: 'Find things to do',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFFF3F8FE),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
              const SizedBox(height: 10),
              if (_filteredItems.isNotEmpty)
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_filteredItems[index]),
                        onTap: () {
                          _handleSuggestionTap(_filteredItems[index]);
                        },
                      );
                    },
                  ),
                ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCategoryButton(context, 'Location', () {}),
                    buildCategoryButton(context, 'Hotels of Aspen', () {}),
                    buildCategoryButton(context, 'Foods of Aspen', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Foods()),
                      );
                    }),

                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildImageCard(context, 'assets/hotel2.jpg', Hotel_1(), "white lagoon", 4.5, 150, 60),
                    buildImageCard(context, 'assets/hotel4.jpg', Hotel_2(), "white velvet", 4.1, 160, 200),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Recommended',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildSimpleImageCard(context, 'assets/hotel3.jpg', Hotel_3(), "Glass", 180, 150),
                    buildSimpleImageCard(context, 'assets/hotel.jpg', Hotel_4(), "Pool", 180, 150),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'White Restaurant',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Luxurious Pools',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.all(8),
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
                  padding: EdgeInsets.all(8),
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
                  padding: EdgeInsets.all(8),
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
                  padding: EdgeInsets.all(8),
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
        ),
      ),
    );
  }
}

// Dummy pages for each section of the bottom navigation
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Page', style: TextStyle(fontSize: 24)));
  }
}

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Location Page', style: TextStyle(fontSize: 24)));
  }
}

class HeartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Heart Page', style: TextStyle(fontSize: 24)));
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Contact Page', style: TextStyle(fontSize: 24)));
  }
}