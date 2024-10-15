import 'package:flutter/material.dart';
import 'package:home_rent/homepage.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 3,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Center main image
                    Positioned(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyaminmellish-186077.jpg&fm=jpg'), // Replace with your main image URL
                      ),
                    ),
                    // Small surrounding images
                    Positioned(
                      top: 30,
                      left: 50,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyaminmellish-186077.jpg&fm=jpg'), // Replace with small image URLs
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 50,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyaminmellish-186077.jpg&fm=jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyaminmellish-186077.jpg&fm=jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      right: 80,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyaminmellish-186077.jpg&fm=jpg'),
                      ),
                    ),
                    // Add more Positioned widgets for additional images
                  ],
                ),
              ),
            ),
            // Text section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    "Discover Home, Where Your Story Begins",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Unlock Your Dream Home",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Explore button
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle explore button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.redAccent, // Button color
                ),
                child: Text("Explore"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
