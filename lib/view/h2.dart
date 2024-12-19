import 'package:flutter/material.dart';

class Hotel_2 extends StatelessWidget {
  const Hotel_2({super.key});

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
                      'assets/hotel4.jpg',
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
                  'White Velvet',
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
              "White Velvet is an upscale restaurant known for its refined ambiance and exceptional dining experience. Offering a blend of exquisite flavors, it serves gourmet dishes with a focus on fresh ingredients and sophisticated presentation, making it a perfect destination for those seeking elegance and taste in every bite.",
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
                      '\$700',
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
