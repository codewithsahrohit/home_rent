import 'package:flutter/material.dart';
import 'package:home_rent/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blue[50]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Upper circle images
            const Stack(
              children: [
                // Large bottom circle
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/022/798/989/small/girl-while-traveling-beautiful-portrait-generative-ai-photo.jpeg', // Replace with actual image URL
                    ),
                  ),
                ),
                // Small top circle
                Positioned(
                  top: 20,
                  left: 100,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/695284482/photo/travel-concept-young-woman-traveling-in-asia.jpg?s=612x612&w=0&k=20&c=x7IMxOnxY_02QnBv-SjUoChKMETfrZ2-QqzZlP-Brks=', // Replace with actual image URL
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40.0),

            // "Let's Get Started" text
            const Text(
              "Let's Get Started",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40.0),

            // Join Now button
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  // Handle button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: const Text(
                  "JOIN NOW",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
