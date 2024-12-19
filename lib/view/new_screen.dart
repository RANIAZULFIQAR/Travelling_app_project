import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'widgets/customBtn.dart';

class NEW extends StatelessWidget {
  const NEW({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Aspen_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left by default
            children: [
              // "Aspen" title
              Center(
                child: Text(
                  "Aspen",
                  style: TextStyle(
                    fontFamily: 'Hiatus',
                    fontSize: 70,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 330), // Space before the "Plan your" text

              // "Plan your" aligned to the left
              Padding(
                padding: EdgeInsets.only(left: 20), // Add left padding to position it
                child: Text(
                  "Plan your",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              // "Luxurious Vacation" centered
              Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 180),
                    child: Text(
                      "Luxurious\n Vacation",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(-1.5, -1.5),
                            color: Colors.black,//top right shadow
                          ),
                          Shadow(
                            offset: Offset(1.5, -1.5),
                            color: Colors.black,//top-left
                          ),
                          Shadow(
                            offset: Offset(-1.5, 1.5),
                            color: Colors.black,
                          ),
                          Shadow(
                            offset: Offset(1.5, 1.5),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
              const SizedBox(height: 30), // Space before the button

              // Explore button
              Center(
                child: customBtn(
                  text: 'Explore',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
