import 'package:flutter/material.dart';

class Hotel_4 extends StatelessWidget {
  const Hotel_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Image with heart icon
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image.asset(
                      'assets/hotel.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Heart Icon on bottom right corner
              Positioned(
                bottom: 20.0,
                right: 40.0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),

          // Title with map link
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Pools',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Show map',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Subtitle
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Exotic pools are luxurious, unique swimming pools that stand out for their breathtaking designs and features. They often incorporate natural elements like waterfalls, lagoons, or tropical landscaping to create a resort-like atmosphere. These pools are designed to provide a relaxing, immersive experience, offering a perfect blend of beauty, tranquility, and luxury, often found in high-end resorts or private estates.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.justify,
            ),
          ),

          // Facilities Title
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              'Facilities',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // Facilities Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  _buildFacilityIcon(Icons.wifi, 'Heater'),
                  const SizedBox(width: 20),
                  _buildFacilityIcon(Icons.restaurant, 'Dinner'),
                  const SizedBox(width: 20),
                  _buildFacilityIcon(Icons.bathtub, 'Tub'),
                  const SizedBox(width: 20),
                  _buildFacilityIcon(Icons.pool, 'Pool'),
                ],
              ),
            ),
          ),

          // Price and Book Now Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    Text(
                      '\$250',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                // Book Now Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Facility Icon Builder with Label inside the icon
  Widget _buildFacilityIcon(IconData icon, String label) {
    return Container(
      width: 80, // Fixed width for the container
      height: 80, // Fixed height for the container
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light grey background color
        border: Border.all(
          color: Colors.grey, // Light blue stroke
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.grey, // Light blue icon color
              size: 28,
            ),
            const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(
                color: Colors.grey, // Light blue text color
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
